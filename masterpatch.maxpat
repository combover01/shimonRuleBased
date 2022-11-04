{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 88.0, 1372.0, 779.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1250.0, 885.0, 150.0, 100.0 ],
					"text" : "bypass coll object w python ...\nfigure out why long notes keep playing (get rid in python)\nmore musical manipulation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1615.0, 858.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1627.0, 808.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1555.5, 589.0, 50.0, 62.0 ],
					"text" : "53. 127. 1. 22973. 22973."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1560.0, 529.0, 41.0, 22.0 ],
					"text" : "length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2056.0, 651.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1376.0, 296.0, 50.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1339.0, 250.0, 97.0, 22.0 ],
					"text" : "route /notplaying"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1315.0, 602.0, 145.0, 22.0 ],
					"text" : "udpsend 10.0.0.228 5004"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1315.0, 562.0, 129.0, 22.0 ],
					"text" : "prepend /playbacktyoe"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1315.0, 525.0, 50.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1374.0, 432.0, 150.0, 127.0 ],
					"text" : "radio buttons for playback types. \n0: if silence for more than 2 secs, playback sounds.\n1: silence for more than 2 secs with random chance of interrupting.\n2: manually trigger playback"
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0, 0, 0 ],
					"id" : "obj-165",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1346.0, 457.5, 18.0, 50.0 ],
					"size" : 3,
					"value" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1436.0, 357.0, 151.0, 47.0 ],
					"text" : "if currently playing, we are in playback mode. if not, we are in listen mode."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1599.833335876464844, 357.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1599.833335876464844, 328.0, 34.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1200.0, 648.0, 75.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2003.5, 651.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1436.0, 328.0, 133.0, 22.0 ],
					"text" : "if $i1 == 1 then 0 else 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1469.5, 278.0, 50.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1469.5, 244.0, 81.0, 22.0 ],
					"text" : "route /playing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 229.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1071.0, 499.0, 39.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1073.0, 688.0, 177.0, 22.0 ],
					"text" : "udpsend 143.215.114.164 5004"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1073.0, 648.0, 110.0, 22.0 ],
					"text" : "prepend /timesilent"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1073.0, 611.0, 146.0, 22.0 ],
					"text" : "if $i1 > 2000 then 1 else 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 643.0, 544.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1073.0, 565.0, 146.0, 22.0 ],
					"text" : "2100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1146.0, 432.0, 63.0, 22.0 ],
					"text" : "metro 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "" ],
					"patching_rect" : [ 1073.0, 441.0, 35.0, 22.0 ],
					"text" : "timer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1104.0, 368.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1019.0, 368.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 411.5, 830.0, 177.0, 22.0 ],
					"text" : "udpsend 143.215.114.164 5004"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 135.0, 294.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 175.0, 247.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 143.5, 858.0, 177.0, 22.0 ],
					"text" : "udpsend 143.215.114.164 5004"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 354.5, 718.0, 107.0, 22.0 ],
					"text" : "prepend /timeinms"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1740.0, 204.0, 81.0, 22.0 ],
					"text" : "route /avenps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1740.0, 204.0, 100.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1644.0, 199.0, 79.0, 22.0 ],
					"text" : "route /curnps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1644.0, 199.0, 100.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 333.0, 605.0, 50.0, 22.0 ],
					"text" : "53"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 328.0, 557.0, 55.0, 22.0 ],
					"text" : "zl.slice 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 328.0, 557.0, 100.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 329.0, 459.0, 67.0, 22.0 ],
					"text" : "zl stream 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 411.5, 417.0, 34.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 411.5, 277.0, 48.0, 22.0 ],
					"text" : "change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 329.0, 247.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 329.0, 203.0, 43.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 329.0, 166.0, 32.0, 22.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 235.5, 330.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 354.5, 759.0, 177.0, 22.0 ],
					"text" : "udpsend 143.215.112.179 5004"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 354.5, 687.0, 80.0, 22.0 ],
					"text" : "159.637188"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1737.0, 250.0, 50.0, 35.0 ],
					"text" : "15.907196"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1644.0, 303.0, 59.0, 22.0 ],
					"text" : "6.264205"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 329.0, 495.0, 50.0, 22.0 ],
					"text" : "71 53"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 442.0, 459.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 411.5, 459.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 411.5, 381.0, 50.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 661.0, 1010.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 411.5, 347.0, 61.0, 22.0 ],
					"text" : "counter 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 465.0, 244.0, 150.0, 33.0 ],
					"text" : "current midi number including silence as 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 443.0, 309.0, 150.0, 33.0 ],
					"text" : "bang every new note and off (0) note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 411.5, 309.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 411.5, 247.0, 50.0, 22.0 ],
					"text" : "53."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 411.5, 203.0, 141.0, 22.0 ],
					"text" : "if $f1== 0 then 0 else $f2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 795.0, 759.0, 150.0, 20.0 ],
					"text" : "wav file player for testing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1019.000024795532227, 38.0, 94.0, 22.0 ],
					"text" : "receive~ samp1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 636.0, 238.769218444824219, 81.0, 22.0 ],
					"text" : "send~ samp1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 329.0, 29.0, 94.0, 22.0 ],
					"text" : "receive~ samp1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 797.5, 718.0, 81.0, 22.0 ],
					"text" : "send~ samp1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-64",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 883.5, 718.0, 129.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -70 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 894.5, 573.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 894.5, 602.0, 54.0, 23.0 ],
					"text" : "loop $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 876.5, 543.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 911.5, 629.0, 47.0, 23.0 ],
					"text" : "pause"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 848.0, 605.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 857.0, 664.0, 47.0, 22.0 ],
					"saved_object_attributes" : 					{
						"basictuning" : 440,
						"followglobaltempo" : 0,
						"formantcorrection" : 0,
						"mode" : "basic",
						"originallength" : [ 10582.119999999998981, "ticks" ],
						"originaltempo" : 120.0,
						"pitchcorrection" : 0,
						"quality" : "basic",
						"timestretch" : [ 0 ]
					}
,
					"text" : "sfplay~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-32",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 398.0, 127.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-15",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 329.0, 127.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 329.0, 78.0, 69.0, 22.0 ],
					"text" : "pitchDetect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1271.25, 702.0, 305.5, 100.0 ],
					"text" : "bonk object, tcp? to check if we lose packages\nrhythm detection and rules\nturn taking rules - decide when phrase ends based on note lengths. read about phrasing rules.. \nconfusion (noises) cause interruption (as example)\nlook into librosa for onsets and stuff\npitch and scale analysis?"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1634.5, 466.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1634.5, 766.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1634.5, 735.0, 41.0, 22.0 ],
					"text" : "sel 24"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1634.5, 702.0, 29.5, 22.0 ],
					"text" : "15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 93.5, 539.0, 53.0, 22.0 ],
					"text" : "zl.filter 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.5, 508.0, 144.0, 22.0 ],
					"text" : "if $f1 < 50 then 0 else $f1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1644.5, 563.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1851.5, 278.0, 150.0, 22.0 ],
					"text" : "260 71. 127. 1. 159. 159."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1851.5, 246.0, 55.0, 22.0 ],
					"text" : "zl.slice 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1851.5, 205.0, 125.0, 35.0 ],
					"text" : "260 71. 127. 1. 159. 159. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1851.5, 176.0, 39.0, 22.0 ],
					"text" : "zl.join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1851.5, 145.0, 50.0, 22.0 ],
					"text" : "260"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1851.5, 116.0, 73.0, 22.0 ],
					"text" : "expr int($f1)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1851.5, 86.5, 50.0, 22.0 ],
					"text" : "260."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1851.5, 52.0, 55.0, 22.0 ],
					"text" : "zl.slice 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1653.0, 86.5, 187.0, 22.0 ],
					"text" : "260. 71. 127. 1. 159. 159. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1653.0, 49.0, 76.0, 22.0 ],
					"text" : "route /output"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2013.833335876464844, 552.0, 33.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1757.333335876464844, 560.0, 171.0, 20.0 ],
					"text" : "or just enter a starting index #"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1963.333335876464844, 509.0, 72.0, 22.0 ],
					"text" : "renumber 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2023.833335876464844, 460.0, 173.0, 20.0 ],
					"text" : "renumber the file if necessary"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1978.333335876464844, 477.0, 120.0, 20.0 ],
					"text" : "load in a notelist file"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1941.333335876464844, 477.0, 35.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1773.333335876464844, 601.0, 236.0, 20.0 ],
					"text" : "pitch, velocity, channel, duration, deltatime"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 1723.333335876464844, 529.0, 93.0, 22.0 ],
					"text" : "counter"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1808.333335876464844, 638.0, 138.0, 20.0 ],
					"text" : "delay for \"deltatime\" ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1861.333335876464844, 694.0, 338.0, 20.0 ],
					"text" : "delay note-off for \"duration\" ms (note that velocity is left as 0)"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 261,
						"data" : [ 							{
								"key" : 1,
								"value" : [ 60.0, 127.0, 1.0, 26766.0, 26766.0 ]
							}
, 							{
								"key" : 2,
								"value" : [ 55.0, 127.0, 1.0, 1130.0, 1130.0 ]
							}
, 							{
								"key" : 0,
								"value" : [ 0.0, 127.0, 1.0, 0.0, 0.0 ]
							}
, 							{
								"key" : 3,
								"value" : [ 61.0, 127.0, 1.0, 2915.0, 2915.0 ]
							}
, 							{
								"key" : 4,
								"value" : [ 56.0, 127.0, 1.0, 28850.0, 28850.0 ]
							}
, 							{
								"key" : 5,
								"value" : [ 57.0, 127.0, 1.0, 59.0, 59.0 ]
							}
, 							{
								"key" : 6,
								"value" : [ 58.0, 127.0, 1.0, 100.0, 100.0 ]
							}
, 							{
								"key" : 7,
								"value" : [ 57.0, 127.0, 1.0, 290.0, 290.0 ]
							}
, 							{
								"key" : 8,
								"value" : [ 56.0, 127.0, 1.0, 50.0, 50.0 ]
							}
, 							{
								"key" : 9,
								"value" : [ 52.0, 127.0, 1.0, 5834.0, 5834.0 ]
							}
, 							{
								"key" : 10,
								"value" : [ 50.0, 127.0, 1.0, 140.0, 140.0 ]
							}
, 							{
								"key" : 11,
								"value" : [ 55.0, 127.0, 1.0, 149.0, 149.0 ]
							}
, 							{
								"key" : 12,
								"value" : [ 54.0, 127.0, 1.0, 110.0, 110.0 ]
							}
, 							{
								"key" : 13,
								"value" : [ 51.0, 127.0, 1.0, 579.0, 579.0 ]
							}
, 							{
								"key" : 14,
								"value" : [ 53.0, 127.0, 1.0, 2490.0, 2490.0 ]
							}
, 							{
								"key" : 15,
								"value" : [ 53.0, 127.0, 1.0, 22973.0, 22973.0 ]
							}
, 							{
								"key" : 16,
								"value" : [ 55.0, 127.0, 1.0, 43925.0, 43925.0 ]
							}
, 							{
								"key" : 17,
								"value" : [ 58.0, 127.0, 1.0, 1070.0, 1070.0 ]
							}
, 							{
								"key" : 18,
								"value" : [ 53.0, 127.0, 1.0, 669.0, 669.0 ]
							}
, 							{
								"key" : 19,
								"value" : [ 56.0, 127.0, 1.0, 630.0, 630.0 ]
							}
, 							{
								"key" : 20,
								"value" : [ 55.0, 127.0, 1.0, 569.0, 569.0 ]
							}
, 							{
								"key" : 21,
								"value" : [ 53.0, 127.0, 1.0, 299.0, 299.0 ]
							}
, 							{
								"key" : 22,
								"value" : [ 60.0, 127.0, 1.0, 519.0, 519.0 ]
							}
, 							{
								"key" : 23,
								"value" : [ 55.0, 127.0, 1.0, 16838.0, 16838.0 ]
							}
, 							{
								"key" : 24,
								"value" : [ 65.0, 127.0, 1.0, 210.0, 210.0 ]
							}
, 							{
								"key" : 25,
								"value" : [ 53.0, 127.0, 1.0, 769.0, 769.0 ]
							}
, 							{
								"key" : 26,
								"value" : [ 52.0, 127.0, 1.0, 370.0, 370.0 ]
							}
, 							{
								"key" : 27,
								"value" : [ 50.0, 127.0, 1.0, 419.0, 419.0 ]
							}
, 							{
								"key" : 28,
								"value" : [ 60.0, 127.0, 1.0, 25364.0, 25364.0 ]
							}
, 							{
								"key" : 29,
								"value" : [ 72.0, 127.0, 1.0, 719.0, 719.0 ]
							}
, 							{
								"key" : 30,
								"value" : [ 70.0, 127.0, 1.0, 339.0, 339.0 ]
							}
, 							{
								"key" : 31,
								"value" : [ 65.0, 127.0, 1.0, 409.0, 409.0 ]
							}
, 							{
								"key" : 32,
								"value" : [ 68.0, 127.0, 1.0, 61721.0, 61721.0 ]
							}
, 							{
								"key" : 33,
								"value" : [ 72.0, 127.0, 1.0, 28801.0, 28801.0 ]
							}
, 							{
								"key" : 34,
								"value" : [ 60.0, 127.0, 1.0, 900.0, 900.0 ]
							}
, 							{
								"key" : 35,
								"value" : [ 72.0, 127.0, 1.0, 920.0, 920.0 ]
							}
, 							{
								"key" : 36,
								"value" : [ 70.0, 127.0, 1.0, 240.0, 240.0 ]
							}
, 							{
								"key" : 37,
								"value" : [ 68.0, 127.0, 1.0, 180.0, 180.0 ]
							}
, 							{
								"key" : 38,
								"value" : [ 67.0, 127.0, 1.0, 200.0, 200.0 ]
							}
, 							{
								"key" : 39,
								"value" : [ 65.0, 127.0, 1.0, 289.0, 289.0 ]
							}
, 							{
								"key" : 40,
								"value" : [ 63.0, 127.0, 1.0, 210.0, 210.0 ]
							}
, 							{
								"key" : 41,
								"value" : [ 62.0, 127.0, 1.0, 27629.0, 27629.0 ]
							}
, 							{
								"key" : 42,
								"value" : [ 70.0, 127.0, 1.0, 80.0, 80.0 ]
							}
, 							{
								"key" : 43,
								"value" : [ 72.0, 127.0, 1.0, 80.0, 80.0 ]
							}
, 							{
								"key" : 44,
								"value" : [ 65.0, 127.0, 1.0, 109.0, 109.0 ]
							}
, 							{
								"key" : 45,
								"value" : [ 53.0, 127.0, 1.0, 330.0, 330.0 ]
							}
, 							{
								"key" : 46,
								"value" : [ 72.0, 127.0, 1.0, 29396.0, 29396.0 ]
							}
, 							{
								"key" : 47,
								"value" : [ 62.0, 127.0, 1.0, 90.0, 90.0 ]
							}
, 							{
								"key" : 48,
								"value" : [ 72.0, 127.0, 1.0, 140.0, 140.0 ]
							}
, 							{
								"key" : 49,
								"value" : [ 53.0, 127.0, 1.0, 89.0, 89.0 ]
							}
, 							{
								"key" : 50,
								"value" : [ 72.0, 127.0, 1.0, 360.0, 360.0 ]
							}
, 							{
								"key" : 51,
								"value" : [ 54.0, 127.0, 1.0, 26546.0, 26546.0 ]
							}
, 							{
								"key" : 52,
								"value" : [ 65.0, 127.0, 1.0, 149.0, 149.0 ]
							}
, 							{
								"key" : 53,
								"value" : [ 58.0, 127.0, 1.0, 370.0, 370.0 ]
							}
, 							{
								"key" : 54,
								"value" : [ 65.0, 127.0, 1.0, 220.0, 220.0 ]
							}
, 							{
								"key" : 55,
								"value" : [ 48.0, 127.0, 1.0, 240.0, 240.0 ]
							}
, 							{
								"key" : 56,
								"value" : [ 39.0, 127.0, 1.0, 60.0, 60.0 ]
							}
, 							{
								"key" : 57,
								"value" : [ 42.0, 127.0, 1.0, 209.0, 209.0 ]
							}
, 							{
								"key" : 58,
								"value" : [ 104.0, 127.0, 1.0, 240.0, 240.0 ]
							}
, 							{
								"key" : 59,
								"value" : [ 63.0, 127.0, 1.0, 25534.0, 25534.0 ]
							}
, 							{
								"key" : 60,
								"value" : [ 83.0, 127.0, 1.0, 230.0, 230.0 ]
							}
, 							{
								"key" : 61,
								"value" : [ 52.0, 127.0, 1.0, 260.0, 260.0 ]
							}
, 							{
								"key" : 62,
								"value" : [ 55.0, 127.0, 1.0, 89.0, 89.0 ]
							}
, 							{
								"key" : 63,
								"value" : [ 54.0, 127.0, 1.0, 340.0, 340.0 ]
							}
, 							{
								"key" : 64,
								"value" : [ 53.0, 127.0, 1.0, 960.0, 960.0 ]
							}
, 							{
								"key" : 65,
								"value" : [ 54.0, 127.0, 1.0, 370.0, 370.0 ]
							}
, 							{
								"key" : 66,
								"value" : [ 53.0, 127.0, 1.0, 140.0, 140.0 ]
							}
, 							{
								"key" : 67,
								"value" : [ 53.0, 127.0, 1.0, 220.0, 220.0 ]
							}
, 							{
								"key" : 68,
								"value" : [ 52.0, 127.0, 1.0, 820.0, 820.0 ]
							}
, 							{
								"key" : 69,
								"value" : [ 51.0, 127.0, 1.0, 169.0, 169.0 ]
							}
, 							{
								"key" : 70,
								"value" : [ 50.0, 127.0, 1.0, 60.0, 60.0 ]
							}
, 							{
								"key" : 71,
								"value" : [ 51.0, 127.0, 1.0, 410.0, 410.0 ]
							}
, 							{
								"key" : 72,
								"value" : [ 80.0, 127.0, 1.0, 1609.0, 1609.0 ]
							}
, 							{
								"key" : 73,
								"value" : [ 52.0, 127.0, 1.0, 39548.0, 39548.0 ]
							}
, 							{
								"key" : 74,
								"value" : [ 58.0, 127.0, 1.0, 80.0, 80.0 ]
							}
, 							{
								"key" : 75,
								"value" : [ 45.0, 127.0, 1.0, 34938.0, 34938.0 ]
							}
, 							{
								"key" : 77,
								"value" : [ 49.0, 127.0, 1.0, 50.0, 50.0 ]
							}
, 							{
								"key" : 78,
								"value" : [ 48.0, 127.0, 1.0, 360.0, 360.0 ]
							}
, 							{
								"key" : 79,
								"value" : [ 49.0, 127.0, 1.0, 720.0, 720.0 ]
							}
, 							{
								"key" : 80,
								"value" : [ 80.0, 127.0, 1.0, 269.0, 269.0 ]
							}
, 							{
								"key" : 81,
								"value" : [ 48.0, 127.0, 1.0, 500.0, 500.0 ]
							}
, 							{
								"key" : 82,
								"value" : [ 80.0, 127.0, 1.0, 420.0, 420.0 ]
							}
, 							{
								"key" : 83,
								"value" : [ 48.0, 127.0, 1.0, 240.0, 240.0 ]
							}
, 							{
								"key" : 84,
								"value" : [ 50.0, 127.0, 1.0, 50.0, 50.0 ]
							}
, 							{
								"key" : 85,
								"value" : [ 50.0, 127.0, 1.0, 80.0, 80.0 ]
							}
, 							{
								"key" : 86,
								"value" : [ 49.0, 127.0, 1.0, 169.0, 169.0 ]
							}
, 							{
								"key" : 87,
								"value" : [ 48.0, 127.0, 1.0, 590.0, 590.0 ]
							}
, 							{
								"key" : 88,
								"value" : [ 51.0, 127.0, 1.0, 580.0, 580.0 ]
							}
, 							{
								"key" : 89,
								"value" : [ 83.0, 127.0, 1.0, 1140.0, 1140.0 ]
							}
, 							{
								"key" : 90,
								"value" : [ 52.0, 127.0, 1.0, 369.0, 369.0 ]
							}
, 							{
								"key" : 91,
								"value" : [ 51.0, 127.0, 1.0, 430.0, 430.0 ]
							}
, 							{
								"key" : 92,
								"value" : [ 83.0, 127.0, 1.0, 789.0, 789.0 ]
							}
, 							{
								"key" : 93,
								"value" : [ 49.0, 127.0, 1.0, 150.0, 150.0 ]
							}
, 							{
								"key" : 94,
								"value" : [ 51.0, 127.0, 1.0, 229.0, 229.0 ]
							}
, 							{
								"key" : 95,
								"value" : [ 52.0, 127.0, 1.0, 190.0, 190.0 ]
							}
, 							{
								"key" : 96,
								"value" : [ 57.0, 127.0, 1.0, 120.0, 120.0 ]
							}
, 							{
								"key" : 97,
								"value" : [ 55.0, 127.0, 1.0, 1960.0, 1960.0 ]
							}
, 							{
								"key" : 98,
								"value" : [ 50.0, 127.0, 1.0, 229.0, 229.0 ]
							}
, 							{
								"key" : 99,
								"value" : [ 52.0, 127.0, 1.0, 1880.0, 1880.0 ]
							}
, 							{
								"key" : 100,
								"value" : [ 52.0, 127.0, 1.0, 400.0, 400.0 ]
							}
, 							{
								"key" : 101,
								"value" : [ 55.0, 127.0, 1.0, 980.0, 980.0 ]
							}
, 							{
								"key" : 102,
								"value" : [ 52.0, 127.0, 1.0, 420.0, 420.0 ]
							}
, 							{
								"key" : 103,
								"value" : [ 49.0, 127.0, 1.0, 110.0, 110.0 ]
							}
, 							{
								"key" : 104,
								"value" : [ 53.0, 127.0, 1.0, 1900.0, 1900.0 ]
							}
, 							{
								"key" : 76,
								"value" : [ 80.0, 127.0, 1.0, 160.0, 160.0 ]
							}
, 							{
								"key" : 105,
								"value" : [ 83.0, 127.0, 1.0, 40264.0, 40264.0 ]
							}
, 							{
								"key" : 106,
								"value" : [ 51.0, 127.0, 1.0, 229.0, 229.0 ]
							}
, 							{
								"key" : 107,
								"value" : [ 52.0, 127.0, 1.0, 170.0, 170.0 ]
							}
, 							{
								"key" : 108,
								"value" : [ 51.0, 127.0, 1.0, 360.0, 360.0 ]
							}
, 							{
								"key" : 109,
								"value" : [ 52.0, 127.0, 1.0, 680.0, 680.0 ]
							}
, 							{
								"key" : 110,
								"value" : [ 51.0, 127.0, 1.0, 489.0, 489.0 ]
							}
, 							{
								"key" : 111,
								"value" : [ 52.0, 127.0, 1.0, 60.0, 60.0 ]
							}
, 							{
								"key" : 112,
								"value" : [ 50.0, 127.0, 1.0, 160.0, 160.0 ]
							}
, 							{
								"key" : 113,
								"value" : [ 69.0, 127.0, 1.0, 100.0, 100.0 ]
							}
, 							{
								"key" : 114,
								"value" : [ 51.0, 127.0, 1.0, 240.0, 240.0 ]
							}
, 							{
								"key" : 115,
								"value" : [ 49.0, 127.0, 1.0, 50.0, 50.0 ]
							}
, 							{
								"key" : 116,
								"value" : [ 50.0, 127.0, 1.0, 440.0, 440.0 ]
							}
, 							{
								"key" : 117,
								"value" : [ 52.0, 127.0, 1.0, 60.0, 60.0 ]
							}
, 							{
								"key" : 118,
								"value" : [ 51.0, 127.0, 1.0, 769.0, 769.0 ]
							}
, 							{
								"key" : 119,
								"value" : [ 53.0, 127.0, 1.0, 90.0, 90.0 ]
							}
, 							{
								"key" : 120,
								"value" : [ 54.0, 127.0, 1.0, 60.0, 60.0 ]
							}
, 							{
								"key" : 121,
								"value" : [ 55.0, 127.0, 1.0, 420.0, 420.0 ]
							}
, 							{
								"key" : 122,
								"value" : [ 56.0, 127.0, 1.0, 760.0, 760.0 ]
							}
, 							{
								"key" : 123,
								"value" : [ 51.0, 127.0, 1.0, 90.0, 90.0 ]
							}
, 							{
								"key" : 124,
								"value" : [ 50.0, 127.0, 1.0, 400.0, 400.0 ]
							}
, 							{
								"key" : 125,
								"value" : [ 51.0, 127.0, 1.0, 400.0, 400.0 ]
							}
, 							{
								"key" : 126,
								"value" : [ 50.0, 127.0, 1.0, 400.0, 400.0 ]
							}
, 							{
								"key" : 127,
								"value" : [ 51.0, 127.0, 1.0, 440.0, 440.0 ]
							}
, 							{
								"key" : 128,
								"value" : [ 50.0, 127.0, 1.0, 289.0, 289.0 ]
							}
, 							{
								"key" : 129,
								"value" : [ 49.0, 127.0, 1.0, 560.0, 560.0 ]
							}
, 							{
								"key" : 130,
								"value" : [ 90.0, 127.0, 1.0, 1060.0, 1060.0 ]
							}
, 							{
								"key" : 131,
								"value" : [ 61.0, 127.0, 1.0, 320.0, 320.0 ]
							}
, 							{
								"key" : 132,
								"value" : [ 61.0, 127.0, 1.0, 109.0, 109.0 ]
							}
, 							{
								"key" : 133,
								"value" : [ 62.0, 127.0, 1.0, 170.0, 170.0 ]
							}
, 							{
								"key" : 134,
								"value" : [ 61.0, 127.0, 1.0, 149.0, 149.0 ]
							}
, 							{
								"key" : 135,
								"value" : [ 62.0, 127.0, 1.0, 570.0, 570.0 ]
							}
, 							{
								"key" : 136,
								"value" : [ 61.0, 127.0, 1.0, 200.0, 200.0 ]
							}
, 							{
								"key" : 137,
								"value" : [ 60.0, 127.0, 1.0, 140.0, 140.0 ]
							}
, 							{
								"key" : 138,
								"value" : [ 60.0, 127.0, 1.0, 249.0, 249.0 ]
							}
, 							{
								"key" : 139,
								"value" : [ 59.0, 127.0, 1.0, 110.0, 110.0 ]
							}
, 							{
								"key" : 140,
								"value" : [ 51.0, 127.0, 1.0, 1689.0, 1689.0 ]
							}
, 							{
								"key" : 141,
								"value" : [ 52.0, 127.0, 1.0, 410.0, 410.0 ]
							}
, 							{
								"key" : 142,
								"value" : [ 76.0, 127.0, 1.0, 369.0, 369.0 ]
							}
, 							{
								"key" : 143,
								"value" : [ 58.0, 127.0, 1.0, 230.0, 230.0 ]
							}
, 							{
								"key" : 144,
								"value" : [ 58.0, 127.0, 1.0, 80.0, 80.0 ]
							}
, 							{
								"key" : 145,
								"value" : [ 59.0, 127.0, 1.0, 1000.0, 1000.0 ]
							}
, 							{
								"key" : 146,
								"value" : [ 54.0, 127.0, 1.0, 520.0, 520.0 ]
							}
, 							{
								"key" : 147,
								"value" : [ 50.0, 127.0, 1.0, 329.0, 329.0 ]
							}
, 							{
								"key" : 148,
								"value" : [ 52.0, 127.0, 1.0, 60.0, 60.0 ]
							}
, 							{
								"key" : 149,
								"value" : [ 51.0, 127.0, 1.0, 210.0, 210.0 ]
							}
, 							{
								"key" : 150,
								"value" : [ 52.0, 127.0, 1.0, 249.0, 249.0 ]
							}
, 							{
								"key" : 151,
								"value" : [ 51.0, 127.0, 1.0, 540.0, 540.0 ]
							}
, 							{
								"key" : 152,
								"value" : [ 53.0, 127.0, 1.0, 260.0, 260.0 ]
							}
, 							{
								"key" : 153,
								"value" : [ 52.0, 127.0, 1.0, 80.0, 80.0 ]
							}
, 							{
								"key" : 154,
								"value" : [ 51.0, 127.0, 1.0, 1150.0, 1150.0 ]
							}
, 							{
								"key" : 155,
								"value" : [ 83.0, 127.0, 1.0, 600.0, 600.0 ]
							}
, 							{
								"key" : 156,
								"value" : [ 54.0, 127.0, 1.0, 569.0, 569.0 ]
							}
, 							{
								"key" : 157,
								"value" : [ 55.0, 127.0, 1.0, 300.0, 300.0 ]
							}
, 							{
								"key" : 158,
								"value" : [ 54.0, 127.0, 1.0, 80.0, 80.0 ]
							}
, 							{
								"key" : 159,
								"value" : [ 55.0, 127.0, 1.0, 180.0, 180.0 ]
							}
, 							{
								"key" : 160,
								"value" : [ 54.0, 127.0, 1.0, 320.0, 320.0 ]
							}
, 							{
								"key" : 161,
								"value" : [ 52.0, 127.0, 1.0, 60.0, 60.0 ]
							}
, 							{
								"key" : 162,
								"value" : [ 53.0, 127.0, 1.0, 50.0, 50.0 ]
							}
, 							{
								"key" : 163,
								"value" : [ 52.0, 127.0, 1.0, 220.0, 220.0 ]
							}
, 							{
								"key" : 164,
								"value" : [ 54.0, 127.0, 1.0, 289.0, 289.0 ]
							}
, 							{
								"key" : 165,
								"value" : [ 55.0, 127.0, 1.0, 440.0, 440.0 ]
							}
, 							{
								"key" : 166,
								"value" : [ 48.0, 127.0, 1.0, 670.0, 670.0 ]
							}
, 							{
								"key" : 167,
								"value" : [ 53.0, 127.0, 1.0, 1400.0, 1400.0 ]
							}
, 							{
								"key" : 168,
								"value" : [ 59.0, 127.0, 1.0, 430.0, 430.0 ]
							}
, 							{
								"key" : 169,
								"value" : [ 51.0, 127.0, 1.0, 89.0, 89.0 ]
							}
, 							{
								"key" : 170,
								"value" : [ 45.0, 127.0, 1.0, 1320.0, 1320.0 ]
							}
, 							{
								"key" : 171,
								"value" : [ 76.0, 127.0, 1.0, 450.0, 450.0 ]
							}
, 							{
								"key" : 172,
								"value" : [ 49.0, 127.0, 1.0, 320.0, 320.0 ]
							}
, 							{
								"key" : 173,
								"value" : [ 48.0, 127.0, 1.0, 120.0, 120.0 ]
							}
, 							{
								"key" : 174,
								"value" : [ 46.0, 127.0, 1.0, 409.0, 409.0 ]
							}
, 							{
								"key" : 175,
								"value" : [ 43.0, 127.0, 1.0, 210.0, 210.0 ]
							}
, 							{
								"key" : 176,
								"value" : [ 46.0, 127.0, 1.0, 349.0, 349.0 ]
							}
, 							{
								"key" : 177,
								"value" : [ 47.0, 127.0, 1.0, 102265.0, 102265.0 ]
							}
, 							{
								"key" : 178,
								"value" : [ 64.0, 127.0, 1.0, 520.0, 520.0 ]
							}
, 							{
								"key" : 179,
								"value" : [ 49.0, 127.0, 1.0, 289.0, 289.0 ]
							}
, 							{
								"key" : 180,
								"value" : [ 54.0, 127.0, 1.0, 440.0, 440.0 ]
							}
, 							{
								"key" : 181,
								"value" : [ 46.0, 127.0, 1.0, 84460.0, 84460.0 ]
							}
, 							{
								"key" : 182,
								"value" : [ 49.0, 127.0, 1.0, 200.0, 200.0 ]
							}
, 							{
								"key" : 183,
								"value" : [ 47.0, 127.0, 1.0, 170.0, 170.0 ]
							}
, 							{
								"key" : 184,
								"value" : [ 48.0, 127.0, 1.0, 929.0, 929.0 ]
							}
, 							{
								"key" : 185,
								"value" : [ 80.0, 127.0, 1.0, 510.0, 510.0 ]
							}
, 							{
								"key" : 186,
								"value" : [ 49.0, 127.0, 1.0, 760.0, 760.0 ]
							}
, 							{
								"key" : 187,
								"value" : [ 48.0, 127.0, 1.0, 380.0, 380.0 ]
							}
, 							{
								"key" : 188,
								"value" : [ 47.0, 127.0, 1.0, 230.0, 230.0 ]
							}
, 							{
								"key" : 189,
								"value" : [ 48.0, 127.0, 1.0, 100.0, 100.0 ]
							}
, 							{
								"key" : 190,
								"value" : [ 70.0, 127.0, 1.0, 1080.0, 1080.0 ]
							}
, 							{
								"key" : 191,
								"value" : [ 52.0, 127.0, 1.0, 540.0, 540.0 ]
							}
, 							{
								"key" : 192,
								"value" : [ 51.0, 127.0, 1.0, 1900.0, 1900.0 ]
							}
, 							{
								"key" : 193,
								"value" : [ 53.0, 127.0, 1.0, 100.0, 100.0 ]
							}
, 							{
								"key" : 194,
								"value" : [ 54.0, 127.0, 1.0, 109.0, 109.0 ]
							}
, 							{
								"key" : 195,
								"value" : [ 53.0, 127.0, 1.0, 210.0, 210.0 ]
							}
, 							{
								"key" : 196,
								"value" : [ 51.0, 127.0, 1.0, 140.0, 140.0 ]
							}
, 							{
								"key" : 197,
								"value" : [ 52.0, 127.0, 1.0, 580.0, 580.0 ]
							}
, 							{
								"key" : 198,
								"value" : [ 53.0, 127.0, 1.0, 60.0, 60.0 ]
							}
, 							{
								"key" : 199,
								"value" : [ 51.0, 127.0, 1.0, 160.0, 160.0 ]
							}
, 							{
								"key" : 200,
								"value" : [ 51.0, 127.0, 1.0, 129.0, 129.0 ]
							}
, 							{
								"key" : 201,
								"value" : [ 50.0, 127.0, 1.0, 400.0, 400.0 ]
							}
, 							{
								"key" : 202,
								"value" : [ 83.0, 127.0, 1.0, 190.0, 190.0 ]
							}
, 							{
								"key" : 203,
								"value" : [ 51.0, 127.0, 1.0, 289.0, 289.0 ]
							}
, 							{
								"key" : 204,
								"value" : [ 52.0, 127.0, 1.0, 90.0, 90.0 ]
							}
, 							{
								"key" : 205,
								"value" : [ 51.0, 127.0, 1.0, 209.0, 209.0 ]
							}
, 							{
								"key" : 206,
								"value" : [ 55.0, 127.0, 1.0, 190.0, 190.0 ]
							}
, 							{
								"key" : 207,
								"value" : [ 51.0, 127.0, 1.0, 860.0, 860.0 ]
							}
, 							{
								"key" : 208,
								"value" : [ 50.0, 127.0, 1.0, 340.0, 340.0 ]
							}
, 							{
								"key" : 209,
								"value" : [ 51.0, 127.0, 1.0, 280.0, 280.0 ]
							}
, 							{
								"key" : 210,
								"value" : [ 50.0, 127.0, 1.0, 469.0, 469.0 ]
							}
, 							{
								"key" : 211,
								"value" : [ 55.0, 127.0, 1.0, 230.0, 230.0 ]
							}
, 							{
								"key" : 212,
								"value" : [ 54.0, 127.0, 1.0, 240.0, 240.0 ]
							}
, 							{
								"key" : 213,
								"value" : [ 51.0, 127.0, 1.0, 300.0, 300.0 ]
							}
, 							{
								"key" : 214,
								"value" : [ 70.0, 127.0, 1.0, 340.0, 340.0 ]
							}
, 							{
								"key" : 215,
								"value" : [ 83.0, 127.0, 1.0, 209.0, 209.0 ]
							}
, 							{
								"key" : 216,
								"value" : [ 52.0, 127.0, 1.0, 220.0, 220.0 ]
							}
, 							{
								"key" : 217,
								"value" : [ 51.0, 127.0, 1.0, 470.0, 470.0 ]
							}
, 							{
								"key" : 218,
								"value" : [ 50.0, 127.0, 1.0, 429.0, 429.0 ]
							}
, 							{
								"key" : 219,
								"value" : [ 51.0, 127.0, 1.0, 60.0, 60.0 ]
							}
, 							{
								"key" : 220,
								"value" : [ 50.0, 127.0, 1.0, 680.0, 680.0 ]
							}
, 							{
								"key" : 221,
								"value" : [ 51.0, 127.0, 1.0, 140.0, 140.0 ]
							}
, 							{
								"key" : 222,
								"value" : [ 48.0, 127.0, 1.0, 60.0, 60.0 ]
							}
, 							{
								"key" : 223,
								"value" : [ 51.0, 127.0, 1.0, 640.0, 640.0 ]
							}
, 							{
								"key" : 224,
								"value" : [ 83.0, 127.0, 1.0, 130.0, 130.0 ]
							}
, 							{
								"key" : 225,
								"value" : [ 50.0, 127.0, 1.0, 560.0, 560.0 ]
							}
, 							{
								"key" : 226,
								"value" : [ 83.0, 127.0, 1.0, 769.0, 769.0 ]
							}
, 							{
								"key" : 227,
								"value" : [ 50.0, 127.0, 1.0, 80.0, 80.0 ]
							}
, 							{
								"key" : 228,
								"value" : [ 51.0, 127.0, 1.0, 130.0, 130.0 ]
							}
, 							{
								"key" : 229,
								"value" : [ 51.0, 127.0, 1.0, 50.0, 50.0 ]
							}
, 							{
								"key" : 230,
								"value" : [ 50.0, 127.0, 1.0, 740.0, 740.0 ]
							}
, 							{
								"key" : 231,
								"value" : [ 51.0, 127.0, 1.0, 520.0, 520.0 ]
							}
, 							{
								"key" : 232,
								"value" : [ 53.0, 127.0, 1.0, 160.0, 160.0 ]
							}
, 							{
								"key" : 233,
								"value" : [ 51.0, 127.0, 1.0, 140.0, 140.0 ]
							}
, 							{
								"key" : 234,
								"value" : [ 73.0, 127.0, 1.0, 80.0, 80.0 ]
							}
, 							{
								"key" : 235,
								"value" : [ 52.0, 127.0, 1.0, 180.0, 180.0 ]
							}
, 							{
								"key" : 236,
								"value" : [ 51.0, 127.0, 1.0, 90.0, 90.0 ]
							}
, 							{
								"key" : 237,
								"value" : [ 50.0, 127.0, 1.0, 129.0, 129.0 ]
							}
, 							{
								"key" : 238,
								"value" : [ 49.0, 127.0, 1.0, 1080.0, 1080.0 ]
							}
, 							{
								"key" : 239,
								"value" : [ 50.0, 127.0, 1.0, 470.0, 470.0 ]
							}
, 							{
								"key" : 240,
								"value" : [ 52.0, 127.0, 1.0, 69.0, 69.0 ]
							}
, 							{
								"key" : 241,
								"value" : [ 44.0, 127.0, 1.0, 1110.0, 1110.0 ]
							}
, 							{
								"key" : 242,
								"value" : [ 44.0, 127.0, 1.0, 250.0, 250.0 ]
							}
, 							{
								"key" : 243,
								"value" : [ 60.0, 127.0, 1.0, 189.0, 189.0 ]
							}
, 							{
								"key" : 244,
								"value" : [ 43.0, 127.0, 1.0, 400.0, 400.0 ]
							}
, 							{
								"key" : 245,
								"value" : [ 44.0, 127.0, 1.0, 160.0, 160.0 ]
							}
, 							{
								"key" : 246,
								"value" : [ 58.0, 127.0, 1.0, 70.0, 70.0 ]
							}
, 							{
								"key" : 247,
								"value" : [ 46.0, 127.0, 1.0, 69.0, 69.0 ]
							}
, 							{
								"key" : 248,
								"value" : [ 45.0, 127.0, 1.0, 50.0, 50.0 ]
							}
, 							{
								"key" : 249,
								"value" : [ 57.0, 127.0, 1.0, 500.0, 500.0 ]
							}
, 							{
								"key" : 250,
								"value" : [ 49.0, 127.0, 1.0, 463494.0, 463494.0 ]
							}
, 							{
								"key" : 251,
								"value" : [ 50.0, 127.0, 1.0, 159.0, 159.0 ]
							}
, 							{
								"key" : 252,
								"value" : [ 48.0, 127.0, 1.0, 970.0, 970.0 ]
							}
, 							{
								"key" : 253,
								"value" : [ 51.0, 127.0, 1.0, 59.0, 59.0 ]
							}
, 							{
								"key" : 254,
								"value" : [ 64.0, 127.0, 1.0, 320576.0, 320576.0 ]
							}
, 							{
								"key" : 255,
								"value" : [ 54.0, 127.0, 1.0, 69.0, 69.0 ]
							}
, 							{
								"key" : 256,
								"value" : [ 53.0, 127.0, 1.0, 100.0, 100.0 ]
							}
, 							{
								"key" : 257,
								"value" : [ 52.0, 127.0, 1.0, 208.0, 208.0 ]
							}
, 							{
								"key" : 258,
								"value" : [ 70.0, 127.0, 1.0, 960.0, 960.0 ]
							}
, 							{
								"key" : 259,
								"value" : [ 52.0, 127.0, 1.0, 69.0, 69.0 ]
							}
, 							{
								"key" : 260,
								"value" : [ 71.0, 127.0, 1.0, 159.0, 159.0 ]
							}
 ]
					}
,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1723.333335876464844, 600.0, 50.5, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"precision" : 6
					}
,
					"text" : "coll"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1723.333335876464844, 637.0, 83.0, 22.0 ],
					"text" : "pipe 0 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1724.0, 749.0, 61.0, 22.0 ],
					"text" : "noteout a"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1786.333335876464844, 693.0, 73.0, 22.0 ],
					"text" : "pipe 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1691.333335876464844, 678.0, 27.0, 22.0 ],
					"text" : "b 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1723.333335876464844, 560.0, 37.0, 22.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1786.333335876464844, 499.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1723.333335876464844, 461.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1744.833335876464844, 463.0, 196.0, 20.0 ],
					"text" : "click here to start at the beginning"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1469.5, 205.0, 144.0, 35.0 ],
					"text" : "/output 260. 71. 127. 1. 159. 159. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1469.5, 81.0, 59.0, 22.0 ],
					"text" : "port 5005"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1469.5, 147.0, 160.0, 22.0 ],
					"text" : "udpreceive 143.215.114.164"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1205.0, 287.0, 150.0, 87.0 ],
					"text" : "this works for continuous melodies where the note is triggered after silence. other triggering systems may be used if this is not the case"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1114.0, 756.0, 150.0, 20.0 ],
					"text" : "turn on/off tremolo here"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 782.0, 268.5, 112.0, 33.0 ],
					"text" : "listen (look at player)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 654.5, 268.5, 114.0, 33.0 ],
					"text" : "playback (look at itself)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 782.0, 238.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 782.0, 201.5, 34.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 734.5, 201.5, 34.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 734.5, 238.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 59.5, 150.0, 33.0 ],
					"text" : "toggle on for listen mode, off for playback mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 734.5, 96.5, 82.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 93.5, 793.0, 177.0, 22.0 ],
					"text" : "udpsend 143.215.112.179 5004"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.5, 763.0, 157.0, 22.0 ],
					"text" : "prepend /midinoteandlength"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.5, 731.0, 80.0, 22.0 ],
					"text" : "71 159"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 93.5, 697.0, 37.0, 22.0 ],
					"text" : "zl.rev"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.5, 665.0, 80.0, 22.0 ],
					"text" : "159 71"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.5, 629.0, 54.0, 22.0 ],
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-94",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 93.5, 474.0, 87.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "" ],
					"patching_rect" : [ 93.5, 444.0, 35.0, 22.0 ],
					"text" : "timer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1098.000024795532227, 157.0, 150.0, 33.0 ],
					"text" : "the threshold is 0.05 (very low) but it works!"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-80",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1104.0, 257.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 128.5, 393.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1104.0, 316.0, 62.0, 22.0 ],
					"text" : "past -0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1104.0, 288.0, 29.5, 22.0 ],
					"text" : "!- 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 93.5, 393.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1019.0, 284.0, 58.0, 22.0 ],
					"text" : "past 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1019.0, 229.0, 103.0, 22.0 ],
					"text" : "0.019547"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "int" ],
					"patching_rect" : [ 1019.0, 188.5, 39.0, 22.0 ],
					"text" : "mean"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1019.0, 154.0, 67.0, 22.0 ],
					"text" : "zl stream 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1212.5, 794.0, 29.5, 22.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1167.5, 794.0, 29.5, 22.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1114.0, 794.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1114.0, 830.0, 93.0, 22.0 ],
					"text" : "s rjsstrikermode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1019.0, 116.269218444824219, 107.0, 22.0 ],
					"text" : "0.019943"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1019.000024795532227, 75.269218444824219, 88.0, 22.0 ],
					"text" : "peakamp~ 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 512.5, 424.0, 336.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 129.75, 108.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 636.0, 171.5, 45.0, 45.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"order" : 1,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 1 ],
					"order" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 1 ],
					"order" : 0,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"order" : 1,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"order" : 1,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"order" : 0,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"order" : 1,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"order" : 0,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"order" : 2,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 1,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 3,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 1 ],
					"order" : 0,
					"source" : [ "obj-113", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"order" : 1,
					"source" : [ "obj-113", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"order" : 0,
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"order" : 1,
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"order" : 0,
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"order" : 1,
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 1 ],
					"order" : 0,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"order" : 1,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 1 ],
					"order" : 0,
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"order" : 1,
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"order" : 1,
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"order" : 0,
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"source" : [ "obj-137", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 1 ],
					"order" : 0,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"order" : 1,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 1 ],
					"order" : 0,
					"source" : [ "obj-145", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"order" : 1,
					"source" : [ "obj-145", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 1 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 1 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 1 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 1 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 0,
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"order" : 1,
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 1 ],
					"order" : 0,
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"order" : 1,
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"order" : 2,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"order" : 1,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"order" : 0,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 4,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"order" : 3,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"order" : 2,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"order" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 2023.333335876464844, 580.5, 1732.833335876464844, 580.5 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 1950.833335876464844, 590.0, 1732.833335876464844, 590.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-28", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 1 ],
					"order" : 0,
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"order" : 1,
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 1 ],
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"order" : 2,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 2 ],
					"order" : 1,
					"source" : [ "obj-29", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 1,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 3 ],
					"midpoints" : [ 1796.833335876464844, 669.0, 1849.833335876464844, 669.0 ],
					"source" : [ "obj-29", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 2 ],
					"midpoints" : [ 1775.500002543131586, 675.5, 1831.833335876464844, 675.5 ],
					"order" : 0,
					"source" : [ "obj-29", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 1732.833335876464844, 682.0, 1795.833335876464844, 682.0 ],
					"order" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 1732.833335876464844, 668.0, 1700.833335876464844, 668.0 ],
					"order" : 2,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"order" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"order" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"order" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"order" : 1,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 2 ],
					"midpoints" : [ 1849.833335876464844, 738.0, 1775.5, 738.0 ],
					"source" : [ "obj-36", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"midpoints" : [ 1822.833335876464844, 731.0, 1754.5, 731.0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 1795.833335876464844, 724.0, 1733.5, 724.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 1,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"order" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 1700.833335876464844, 709.0, 1677.333335876464844, 709.0, 1677.333335876464844, 508.0, 1732.833335876464844, 508.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"order" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"order" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"order" : 1,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 2 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"order" : 2,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 1,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 1732.833335876464844, 492.0, 1795.833335876464844, 492.0 ],
					"order" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"order" : 3,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"order" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"order" : 1,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 1 ],
					"order" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"order" : 1,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"order" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"order" : 1,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"order" : 1,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"order" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 1 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"order" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"order" : 1,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 1,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 1 ],
					"order" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 1 ],
					"order" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"order" : 1,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 1 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 1972.833335876464844, 590.0, 1732.833335876464844, 590.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 1 ],
					"order" : 0,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"order" : 1,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 1 ],
					"order" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"order" : 1,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"order" : 2,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"order" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"order" : 1,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 1 ],
					"order" : 0,
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"order" : 1,
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-4::obj-64" : [ "live.gain~", "live.gain~", 0 ],
			"obj-64" : [ "live.gain~[1]", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "pitchDetect.maxpat",
				"bootpath" : "~/Documents/COLLEGE/CLASSES FALL 2022/7100",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "fiddle~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "jfc-style",
				"default" : 				{
					"editing_bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"selectioncolor" : [ 0.219607843137255, 0.996078431372549, 0.345098039215686, 1.0 ],
					"color" : [ 0.317647058823529, 0.305882352941176, 0.996078431372549, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"locked_bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"bgcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"stripecolor" : [ 0.811764705882353, 0.811764705882353, 0.811764705882353, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : [ 11.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.737254901960784, 0.737254901960784, 0.737254901960784, 1.0 ],
						"color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
						"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.5,
						"autogradient" : 0.0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
