//gives info for gaining Pulse Ammunition (prototype)
//Add to Oswald's dialogues


EXTEND_BOTTOM ~11OSWALD~ 37 38 39 40 42 43 44 45 46 48 50

IF ~ PartyHasItem("%bigmetalrod%")
     Global("d2OswaldBigMetal","GLOBAL",0)
     Global("d2HasPrototype","GLOBAL",0)
   ~ REPLY @20101 GOTO OswaldShowRod

IF ~ PartyHasItem("%bigmetalrod%")
     Global("d2OswaldBigMetal","GLOBAL",1)
     Global("d2HasPrototype","GLOBAL",0)
   ~ REPLY @20102 GOTO OswaldTalkPrototype

END


APPEND ~11OSWALD~

IF ~~ BEGIN OswaldShowRod
  SAY @20111  // Oswald says stuff
  IF ~~ REPLY @20121 JOURNAL @20001
        GOTO OswaldTalkPrototype
END

IF ~~ BEGIN OswaldTalkPrototype
  SAY @20131  // Oswald says stuff
  IF ~~ REPLY @20141 GOTO OswaldGiveDrawing
END

IF ~~ BEGIN OswaldGiveDrawing
  SAY @20151  // Oswald says stuff
  IF ~~ REPLY @20161 GOTO OswaldTalkPulse
END

IF ~~ BEGIN OswaldTalkPulse
  SAY @20171  // Oswald says stuff
  IF ~~ DO ~ SetGlobal("d2OswaldBigMetal","GLOBAL",1)
           ~ JOURNAL @20002 EXIT
END

END