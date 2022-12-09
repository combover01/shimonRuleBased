import argparse
import random
import time
import numpy as np
import matplotlib.pyplot as plt

from pythonosc import udp_client
from pythonosc import dispatcher
from pythonosc import osc_server
from threading import Timer, Thread, Event
np.set_printoptions(suppress=True)
plt.switch_backend('Agg') 

parser = argparse.ArgumentParser()
labIp = "143.215.124.213"
homeIp = "192.168.0.108"
curIp = "143.215.112.90"

parser.add_argument("--ip", default=curIp, help="The ip to listen on")
parser.add_argument("--portServer", type=int, default=5004, help="The port to listen for max on")
parser.add_argument("--portClient", type=int, default=7980, help="The port to send to max")
args = parser.parse_args()

client = udp_client.SimpleUDPClient(args.ip, args.portClient)
curMidiArr = np.array([[0,0]])
curNoteInd = 0
playing = False
playbackType = 1
npsArrLength = 10
curNPSArr = np.zeros((npsArrLength,1))
curNPSInd = 0
prevTimeStamp = time.time()
experimentalInverting = False
experimentalRetrograde = True
quantizeFlag = True
masterBpm = 120

# source for resettable timer: https://code.activestate.com/recipes/577407-resettable-timer-class-a-little-enhancement-from-p/
def TimerReset(*args, **kwargs):
    """ Global function for Timer """
    return _TimerReset(*args, **kwargs)
class _TimerReset(Thread):
    """Call a function after a specified number of seconds:
    t = TimerReset(30.0, f, args=[], kwargs={})
    t.start()
    t.cancel() # stop the timer's action if it's still waiting
    """
    def __init__(self, interval, function, args=[], kwargs={}):
        Thread.__init__(self)
        self.interval = interval
        self.function = function
        self.args = args
        self.kwargs = kwargs
        self.finished = Event()
        self.resetted = True
    def cancel(self):
        """Stop the timer if it hasn't finished yet"""
        self.finished.set()
    def run(self):
        print ("Time: %s - timer running..." % time.asctime())
        while self.resetted:
            print ("Time: %s - timer waiting for timeout in %.2f..." % (time.asctime(), self.interval))
            self.resetted = False
            self.finished.wait(self.interval)
        if not self.finished.isSet():
            self.function(*self.args, **self.kwargs)
        self.finished.set()
        print ("Time: %s - timer finished!" % time.asctime())
        self.reset()
    def reset(self, interval=None):
        """ Reset the timer """
        if interval:
            print ("Time: %s - timer resetting to %.2f..." % (time.asctime(), interval))
            self.interval = interval
        else:
            print ("Time: %s - timer resetting..." % time.asctime())
        self.resetted = True
        self.finished.set()
        self.finished.clear()

def bpmToMs(bpm):
  ms = 60000/bpm
  return ms

def pitch_changer(origPitch):
  changedPitch = origPitch
  print(origPitch)

  # random chance the pitch changes 
  # +3,+7, -3, -7
  curRand = random.random()
  if curRand < 0.25:
    changedPitch = origPitch - 7
  elif curRand < 0.5:
    changedPitch = origPitch - 3
  elif curRand < 0.75:
    changedPitch = origPitch + 3
  elif curRand < 1:
    changedPitch = origPitch + 7

  return changedPitch


# def sendTremolo(onOrOff):
#   if onOrOff == True:
#     client.send_message("/tremolo", 3)
#   if onOrOff == False:
#     client.send_message("/tremolo", 4)

#   print("sent tremolo on: ", onOrOff)

def processMidi(curMidiArr):
  print("in processMIDI")
  global quantizeFlag
  global masterBpm
  counter = 0
  transposeFlag = False
  curTremoloState = False
  transposeValue = 0
  transposeOptions = [-7, -3, 3, 7]
  numOfOptions = len(transposeOptions)
  randStep = 1/numOfOptions

  jump = 0
  timeJump = 0
  numOfChordsLeft = 0
  majorChordsFlag = False
  minorChordsFlag = False

  # chord state: 0 for no chord, 1 for major, 2 for minor
  curChordState = 0
  # curMidiArr = np.delete(curMidiArr,len(curMidiArr)-1,0) # this removes every note that is longer than 2500 ms
  curMidiArr = np.delete(curMidiArr, np.where((curMidiArr >= 2500))[0], axis=0)
  curMidiArr = np.delete(curMidiArr, np.where((curMidiArr == 0))[0], axis=0)

  # removes every note that is shorter than 75 ms (hopefully removing blips)
  # print("curmidiarr:", curMidiArr[0][1::2])
  # curMidiArr = np.delete(curMidiArr, np.where((curMidiArr[1] < 75))[0], axis=0)

  

  curMidiArr = curMidiArr[:][1:]
  print("FINALCURMIDIARR")
  print(curMidiArr)
  print(len(curMidiArr))
  print(curMidiArr[:,0])
  print(curMidiArr[:,1])
  curmidiarrlength = len(curMidiArr)

  # PLOTTING THE CONTOUR
  # this is a subplot to be more compatible with multithreading
  fig, ax = plt.subplots()
  timeline = np.zeros(len(curMidiArr[:,1]))
  # populate the "timeline" array here. this converts lengths of notes to a theoretical timeline
  if len(curMidiArr[:,1]) > 1:
    for time in range(1, len(curMidiArr[:,1])):
      timeline[time] = curMidiArr[time,1] + timeline[time-1]
      # print(timeline)
  ax.plot(timeline, curMidiArr[:,0])
  ax.set_xlabel('time in ms')
  ax.set_ylabel('midi note number')
  ax.set_title("Contour of input melody")
  plt.savefig('origcontour.png')

  # find the peak and see if there are surroundings that are lower and if so how much lower?
  # CREATE THE SAVED ARRAY, give it a max length and then trim it down later
  repeatLaterArr = np.zeros([7, 2])
  noteslist = curMidiArr[:,0]
  lengthslist = curMidiArr[:,1]

  if len(noteslist) > 0: 
    peakInd = np.argmax(noteslist)
    if peakInd > 1:
      if peakInd > 3:
        lengthOfLine = np.random.randint(1,7)
      else:
        lengthOfLine = np.random.randint(1, peakInd * 2)
      print(lengthOfLine)
      startInd = peakInd - int(np.ceil(lengthOfLine / 2))
      print(startInd)

      for i in range(0,lengthOfLine):
        if (startInd + lengthOfLine - 1) < len(noteslist):
          repeatLaterArr[i] = noteslist[startInd+i],lengthslist[startInd+i]
        else:
          repeatLaterArr[i] = noteslist[:-i],lengthslist[:-i]

        # repeatLaterArr[i,1] = lengthslist[startInd:startInd+lengthOfLine]
      # repeatLaterArr = [noteslist[startInd:startInd+lengthOfLine], lengthslist[startInd:startInd+lengthOfLine]]


  print("repeatlaterarr:",repeatLaterArr)
  # we need repeatLaterArr to be in format curPitch, curLength

  outputMidiArr = np.zeros((1,4))
  print("beginnign input:", curMidiArr)
  print("beginnign output:", outputMidiArr)

  # currently thinking of ways to make the output not dependent on length of input. 
  # we could just make "row" into "rows" and then trigger adding more rows if the rules apply there...
  # ok success. next step is to make rules as to when more rows should be added.
  # add the repeat later array when a note is long

  for noteInd in curMidiArr:
    moreRows = np.zeros([1,4])
    retrogradeInd = counter
    if experimentalRetrograde:
      print("we are in experimental retrograde")
      retrogradeInd = len(curMidiArr) - counter - 1
      print(retrogradeInd)

    origPitch = noteInd[0] 
    curLength = noteInd[1]
    # print("origPitch: ", origPitch)

    if experimentalRetrograde:
      origPitch = curMidiArr[retrogradeInd][0]
      curLength = curMidiArr[retrogradeInd][1]

    if counter > 0:
      jump = origPitch - curMidiArr[counter-1][0]
      timeJump = curLength - curMidiArr[counter-1][1]


    
    if experimentalInverting:
      print("experimental time")
      # this is inverting time and frequency
      origPitch = np.abs(origPitch + (timeJump/15))
      curLength = np.abs(curLength +(jump * 5))
      if curLength < 100:
        curLength = curLength * 3

    # transpose notes that are above and below the regular range of a piano
    while origPitch > 100:
      origPitch = origPitch - 12
      print("transposed down to:", origPitch)
    while origPitch < 30:
      origPitch = origPitch + 12
      print("transposed up to:", origPitch)

    # tremolo controls
    if curLength > 1000:
      # turn it into a tremolo note
      curTremoloState = True
      # sendTremolo(curTremoloState)

      # the next notes until after another long note should be transposed.
      if not transposeFlag:
        chance = random.random()
        if chance >= 0.5:
          transposeFlag = True
          transposeValue = random.random()
      else:
        transposeFlag = False

    else:
      # send no tremolo if length is shorter than 1000 ms
      curTremoloState = False
      # sendTremolo(curTremoloState)
    
    # CHANGE because being over a certain length is not good. we need to make the interjections musical...
    if curLength > 200:
        # add the repeatlaterar
        for i in range(0,len(repeatLaterArr)):
          print(i)
          print(repeatLaterArr)
          print(repeatLaterArr[i,0])
          newRow = np.array([repeatLaterArr[i,0],repeatLaterArr[i,1],0,0]).reshape(1,4)
          print(np.shape(newRow))
          print(np.shape(moreRows))
          moreRows = np.append(moreRows, newRow, axis=0)
          print("morerows:",moreRows)

    if transposeFlag:
      # choose a random way to transpose based on transposeValue
      curTransposeStep = transposeOptions[int(np.floor(transposeValue/randStep))]
      curPitch = origPitch + curTransposeStep
    else:
      curPitch = origPitch

    # QUANTIZING SETTINGS!
    if quantizeFlag:
      # (closest to 125 ms multiples)
      curMs = bpmToMs(masterBpm) * 2

      rounded = curMs * round(curLength / curMs)
      curLength = rounded
      print("curms:", curMs)
      print("rounded:", rounded)

    if abs(jump) == 4:
      # this is a major jump. the next random number between 1 and 5 notes will be major chords with the played note being the root (this is easiest so far, in the future i can implement a chord detection process here)
      chance = random.random()
      numOfChordsLeft = np.ceil(chance/0.2)
      majorChordsFlag = True
    elif abs(jump) == 3:
      # this is a minor jump. the next random number between 1 and 5 notes will be minor chords with the played note being the root (this is easiest so far, in the future i can implement a chord detection process here)
      chance = random.random()
      numOfChordsLeft = np.ceil(chance/0.2)
      minorChordsFlag = True

    if majorChordsFlag:
      print("playing a major chord")
      numOfChordsLeft = numOfChordsLeft - 1
      curChordState = 1
      if numOfChordsLeft == 0:
        majorChordsFlag = False
    elif minorChordsFlag:
      print("playing a minor chord")
      numOfChordsLeft = numOfChordsLeft - 1
      curChordState = 2
      if numOfChordsLeft == 0:
        minorChordsFlag = False
    else:
      curChordState = 0


# next friday with a saxophone, interaction (can be just repeating if needed)
# second task: sophositicated changing algorithms - using any of the three paradigms
# quantization option (optional) - is there a quantize object i could use in max without predetermined tempo?

# bring back ideas at unexpected times - memory. also repeating lines


    # populate output array. [pitch, length, tremolo]
    row = np.array([[int(curPitch), curLength, int(curTremoloState), int(curChordState)]])
    print(row)
    print([moreRows])
    print(np.size(row))
    print(np.size(moreRows))
    rows = np.append(row, moreRows, axis = 0)
    print(rows)
    outputMidiArr = np.append(outputMidiArr, rows, axis=0)
    # print("output at end of loop:", outputMidiArr)
    counter = counter + 1

# next step: figure out why there are so many morerows with 0s all around - the memory doesnt have anything

  # remove rows with zero length since moreRows may be empty and the first row is empty
  outputMidiArr = np.delete(outputMidiArr, np.where((outputMidiArr[:,1] == 0))[0], axis=0)
  print("final outputMidiArr:", outputMidiArr)
  return outputMidiArr



def playMidi(outputMidiArr):
  global playing
  global prevTimeStamp
  global curMidiArr

  for i in range(len(outputMidiArr)):
    print("playingmidi")
    print(outputMidiArr[i])
    client.send_message("/max", [outputMidiArr[i][0], outputMidiArr[i][1]])
    time.sleep(outputMidiArr[i][1] / 1000)

  client.send_message("/listenmode", 1)
  playing = False
  prevTimeStamp = time.time()
  print("set prevtimestamp to", prevTimeStamp)


  curMidiArr = curMidiArr[[0]]


  t.cancel()
  newTimer()
  t.start()

def populateArr(fake, pitch, length):
  global curNoteInd
  global curMidiArr
  global prevTimeStamp
  global playbackType

  curMidiArr = np.append(curMidiArr, [[pitch, length]], axis = 0)
  # print("curMidiArr was appended to:")
  # print(curMidiArr)
  curNoteInd = curNoteInd + 1


  if playbackType == 1:
    print("playback type is 1")
    randomInterjectionChance = random.random()
    if randomInterjectionChance <= 0.09:
      print("randomly interrupting now!")
      bangplay(0,0)


  print("populatedarr at index", curNoteInd - 1)
  print("resetting to 2 secs")
  t.reset(2)
  
  # if the random chance is on, then interject 20% of the time (may need to be adjusted)


def timerThread():
  print("calling startprocessing at end of timer")
  startProcessing(0,3*1000,playbackType)



def npsCalculator(fake, length):
  global npsArrLength
  global curNPSArr
  global curNPSInd
  # print(length)
  # print(type(length))
  # curLength = float(length)
  curNPS = 1/(length/1000)
  # print("CURNPS")
  curNPSArr[curNPSInd] = curNPS
  averageNPS = np.average(curNPSArr)
  # print(curNPS)
  # print(averageNPS)

  curNPSInd = np.mod(curNPSInd + 1, npsArrLength)

  client.send_message("/curnps", curNPS)
  client.send_message("/avenps", averageNPS)


def startProcessing(fake, timeSilent, playbackType):
  global playing
  # processYN = 0
  print("input to startprocessing:",  timeSilent, playbackType)

  if playbackType == 0:
    # print("silence for more than 2 secs")
    if timeSilent > 2000 and not playing:
      client.send_message("/listenmode", 0)
      playing = True    
      outputMidiArr = processMidi(curMidiArr)
      playMidi(outputMidiArr)

    # check if silence happens for more than 2 secs and if it does then start playback
  elif playbackType == 1:
    # print("silence for more than 2 secs or random")
    randomInterjectionChance = random.random()
    if randomInterjectionChance < 0.01:
      client.send_message("/listenmode", 0)
      playing = True    
      outputMidiArr = processMidi(curMidiArr)
      playMidi(outputMidiArr)
    elif timeSilent > 2000 and not playing:
      client.send_message("/listenmode", 0)
      playing = True    
      outputMidiArr = processMidi(curMidiArr)
      playMidi(outputMidiArr)


    # check if silence happens for more than 2 secs and if it does then start playback
    # random change of interrupting you

  else:
    print("not processing")
    playing = False
    # go here when it is done playing as well. set processYN = 0
    client.send_message("/notplaying", 0)


    # print("curmidiarr:", curMidiArr)
    # outputMidiArr = processMidi(curMidiArr)
    # playMidi(outputMidiArr)
def setPlaybackType(fake,typeNum):
  global playbackType
  if typeNum == 0:
    playbackType = 0
  elif typeNum == 1:
    playbackType = 1

def bangplay(fake, bang):
  global playing
  playing = True
  client.send_message("/listenmode", 0)    
  outputMidiArr = processMidi(curMidiArr)
  playMidi(outputMidiArr)

def turnOnExperimentalProcessing(fake, flag):
  global experimentalRetrograde
  global experimentalInverting
  if flag == 1:
    experimentalInverting = True
    experimentalRetrograde = False
  elif flag == 2:
    experimentalRetrograde = True
    experimentalInverting = False
  elif flag == 3:
    experimentalRetrograde = True
    experimentalInverting = True
  else:
    experimentalInverting = False
    experimentalRetrograde = False
  
  print("experimental mode:", flag)

def turnOnQuantizer(fake, flag):
  global quantizeFlag
  if flag == 1:
    quantizeFlag = True
  else:
    quantizeFlag = False
def setBpm(fake, bpm):
  global masterBpm
  masterBpm = bpm

def newTimer():
  global t 
  t = TimerReset(300, timerThread)
newTimer()
if __name__ == "__main__":

  # global tim
  # prevOnsetTime = time.perf_counter


  dispatcher = dispatcher.Dispatcher()
  dispatcher.map("/midinoteandlength",populateArr)
  # dispatcher.map("/test", testOutputtingArrs)
  dispatcher.map("/timeinms", npsCalculator)
  # dispatcher.map("/timeandplaytype", startProcessing)
  dispatcher.map("/playbackTypeSetter", setPlaybackType)
  dispatcher.map("/playMIDI", bangplay)
  dispatcher.map("/experimental", turnOnExperimentalProcessing)
  dispatcher.map("/quantize", turnOnQuantizer)
  dispatcher.map("/bpm", setBpm)

  # dispatcher.map("playback")
  # dispatcher.map("/playbacktype", startProcessing)

  t.cancel()
  newTimer()
  t.start()


  server = osc_server.ThreadingOSCUDPServer(
      (args.ip, args.portServer), dispatcher)
  print("Serving on {}".format(server.server_address))
  server.serve_forever()








# def play_melodies(self):
#         input("press enter to play target")
#         pattern = self.target_obj.pattern
#         for i in range(len(pattern)):
#             tempo = 200
#             duration_mult = 60000 / tempo
#             dur = pattern[i][0] * duration_mult
#             self.client.send_message("/max", [pattern[i][1], dur])
#             print(pattern[i])
#             time.sleep(dur / 1000)
#         for p in range(1):
#             input("press enter to play next match")
#             self.population.sort(key = lambda x: x.fitness)
#             pattern = self.population[p].get_pattern()
#             for i in range(len(pattern)):
#                 tempo = 200
#                 duration_mult = 60000 / tempo 
#                 dur = pattern[i][0] * duration_mult
#                 self.client.send_message("/max", [pattern[i][1], dur])
#                 print(pattern[i])
#                 time.sleep(dur / 1000)