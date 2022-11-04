import argparse
import random
import time
import numpy as np

from pythonosc import udp_client
from pythonosc import dispatcher
from pythonosc import osc_server
from threading import Thread
np.set_printoptions(suppress=True)

parser = argparse.ArgumentParser()
labIp = "143.215.124.213"
homeIp = "192.168.0.108"
curIp = "10.0.0.228"

parser.add_argument("--ip", default=curIp, help="The ip to listen on")
parser.add_argument("--portServer", type=int, default=5004, help="The port to listen for max on")
parser.add_argument("--portClient", type=int, default=7980, help="The port to send to max")
args = parser.parse_args()

client = udp_client.SimpleUDPClient(args.ip, args.portClient)
curMidiArr = np.array([[0,0]])
curNoteInd = 0
# prevOnsetTime = time.time()
prevNoteWasOff = True
playing = False
playbackType = 0
npsArrLength = 10
curNPSArr = np.zeros((npsArrLength,1))
curNPSInd = 0


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



def midiHandler(pitch, length):
  # populate the midi array here. then it can be sent out after

  print("pitch: {0}, length: {1}".format(pitch, length))

# def sendMIDI(pitch, length):
#   while True:
#     client.send_message("/filter", random.random())
#     print("sent message")
#     time.sleep(1)

def sendMidiOut(curMidiArr):
  client.send_message("/mididata", curMidiArr)
  print("sent midi data chunk over")
  # this does not work - have to figure out best way to send midi data back to max. should I just populate a midi file?

# def sendTremolo(onOrOff):
#   if onOrOff == True:
#     client.send_message("/tremolo", 3)
#   if onOrOff == False:
#     client.send_message("/tremolo", 4)

#   print("sent tremolo on: ", onOrOff)

def processMidi(curMidiArr):
  print("in processMIDI")
  counter = 0
  transposeFlag = False
  curTremoloState = False
  transposeValue = 0
  transposeOptions = [-7, -3, 3, 7]
  numOfOptions = len(transposeOptions)
  randStep = 1/numOfOptions

  jump = 0
  numOfChordsLeft = 0
  majorChordsFlag = False
  minorChordsFlag = False

  # chord state: 0 for no chord, 1 for major, 2 for minor
  curChordState = 0

  curmidiarrlength = len(curMidiArr)
  outputMidiArr = np.zeros((curmidiarrlength,8))

  for noteInd in curMidiArr:
    origPitch = noteInd[0] 
    curLength = noteInd[1]
    if counter > 0:
      jump = origPitch - curMidiArr[counter-1][0]

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
    
    if transposeFlag:
      # choose a random way to transpose based on transposeValue
      curTransposeStep = transposeOptions[int(np.floor(transposeValue/randStep))]
      curPitch = origPitch + curTransposeStep
    else:
      curPitch = origPitch

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
    outputMidiArr[counter][0] = counter
    outputMidiArr[counter][1] = int(curPitch)
    outputMidiArr[counter][2] = 127 #velocity
    outputMidiArr[counter][3] = 1 #channel
    outputMidiArr[counter][4] = curLength
    outputMidiArr[counter][5] = curLength

    outputMidiArr[counter][6] = int(curTremoloState)
    outputMidiArr[counter][7] = int(curChordState)
    counter = counter + 1


  print(outputMidiArr)

  return outputMidiArr

def playMidi(outputMidiArr):
  global playing

  for i in range(len(outputMidiArr)):
    print("playingmidi")
    print(outputMidiArr[i])
    client.send_message("/max", [outputMidiArr[i][1], outputMidiArr[i][4]])
    time.sleep(outputMidiArr[i][4] / 1000)


  client.send_message("/listenmode", 1)
  playing = False
    # for i in range(len(pattern)):
#             tempo = 200
#             duration_mult = 60000 / tempo
#             dur = pattern[i][0] * duration_mult
#             self.client.send_message("/max", [pattern[i][1], dur])
#             print(pattern[i])
#             time.sleep(dur / 1000)

  


prevTimeStamp = time.time()
def populateArr(fake, pitch, length):
  global curNoteInd
  global curMidiArr
  global prevTimeStamp

  curMidiArr = np.append(curMidiArr, [[pitch, length]], axis = 0)
  print("curMidiArr was appended to:")
  print(curMidiArr)
  curNoteInd = curNoteInd + 1
  
  curTimeStamp = time.time()
  print("current time diff:", curTimeStamp-prevTimeStamp)
  if (curTimeStamp - prevTimeStamp) > 3:
    # play!
    startProcessing(0,(curTimeStamp - prevTimeStamp)*1000,playbackType)
  prevTimeStamp = curTimeStamp
  
  # if playing:
  #   curNoteInd = 0
  #   print("about to processmidi!")
  #   outputMidiArr = processMidi(curMidiArr)
  #   playMidi(outputMidiArr)


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
  print(curNPS)
  print(averageNPS)

  curNPSInd = np.mod(curNPSInd + 1, npsArrLength)

  client.send_message("/curnps", curNPS)
  client.send_message("/avenps", averageNPS)


def startProcessing(fake, timeSilent, playbackType):
  global playing
  # processYN = 0
  print("input to startprocessing:",  timeSilent, playbackType)

  if playbackType == 0:
    print("silence for more than 2 secs")
    if timeSilent > 2000 and not playing:
      client.send_message("/listenmode", 0)
      playing = True    
      outputMidiArr = processMidi(curMidiArr)
      playMidi(outputMidiArr)

    # check if silence happens for more than 2 secs and if it does then start playback
  elif playbackType == 1:
    print("silence for more than 2 secs or random")
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
    playbackType == 1

def bangplay(fake, bang):
  global playing
  playing = True
  client.send_message("/listenmode", 0)    
  outputMidiArr = processMidi(curMidiArr)
  playMidi(outputMidiArr)

if __name__ == "__main__":

  # prevOnsetTime = time.perf_counter


  dispatcher = dispatcher.Dispatcher()
  dispatcher.map("/midinoteandlength",populateArr)
  # dispatcher.map("/test", testOutputtingArrs)
  dispatcher.map("/timeinms", npsCalculator)
  # dispatcher.map("/timeandplaytype", startProcessing)
  dispatcher.map("/playbackTypeSetter", setPlaybackType)
  dispatcher.map("/playMIDI", bangplay)

  # dispatcher.map("playback")
  # dispatcher.map("/playbacktype", startProcessing)




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