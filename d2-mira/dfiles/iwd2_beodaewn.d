//for prototype Pulse (8000)
//Add to Beodaewn's dialogues
//no dialogue if already given by Zack


EXTEND_BOTTOM ~40BDAWN~ 1 2 3 4 10 11 12 14

IF ~ PartyHasItem("%bigmetalrod%")
     Global("d2OswaldBigMetal","GLOBAL",1)
     Global("d2HasPrototype","GLOBAL",0)
   ~ REPLY @20201 GOTO BeodaewnShowDrawing

END


APPEND ~40BDAWN~

IF ~~ BEGIN BeodaewnShowDrawing
  SAY @20211  // Beodaewn says stuff
  IF ~ PartyGoldGT(7999)  // if 8000 gold
     ~ REPLY @20221 DO ~ SetGlobal("d2HasPrototype","GLOBAL",1)  // accept offer
                       ~ GOTO BeodaewnPrototype
  IF ~
     ~ REPLY @20222 DO ~ SetGlobal("d2HasPrototype","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN BeodaewnPrototype
  SAY @20231  // Beodaewn says stuff
  IF ~~ DO ~ TakePartyGold(8000)
             GiveItemCreate("%prototype%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

END