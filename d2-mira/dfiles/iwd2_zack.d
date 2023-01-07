//for prototype Pulse (3000)
//Add to Zack's dialogues
//no dialogue if already given by Beodaewn


EXTEND_BOTTOM ~41ZACK~ 0 5 13 24 25 26 30 41

IF ~ PartyHasItem("%bigmetalrod%")
     Global("d2OswaldBigMetal","GLOBAL",1)
     Global("d2HasPrototype","GLOBAL",0)
   ~ REPLY @20301 GOTO d2ZackShowDrawing

END


APPEND ~41ZACK~

IF ~~ BEGIN d2ZackShowDrawing
  SAY @20311  // Zack says stuff
  IF ~ PartyGoldGT(2999)  // if 3000 gold
     ~ REPLY @20321 DO ~ SetGlobal("d2HasPrototype","GLOBAL",1)  // accept offer
                       ~ GOTO d2ZackPrototype
  IF ~
     ~ REPLY @20322 DO ~ SetGlobal("d2HasPrototype","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN d2ZackPrototype
  SAY @20331  // Zack says stuff
  IF ~~ DO ~ TakePartyGold(3000)
             GiveItemCreate("%prototype%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

END