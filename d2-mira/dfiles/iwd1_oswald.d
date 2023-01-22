//for Pulse Ammunition (prototype)
//Add to Oswald's dialogues


EXTEND_BOTTOM ~DOSWALD~ 12 14 31 33

IF ~ PartyHasItem("%bigmetalrod%")
     Global("d2OswaldBigMetal","GLOBAL",0)
   ~ REPLY @10101 GOTO OswaldShowRod

IF ~ PartyHasItem("%bigmetalrod%")
     Global("d2OswaldBigMetal","GLOBAL",1)
   ~ REPLY @10102 GOTO OswaldShowRod

IF ~ !PartyHasItem("%bigmetalrod%")
     Global("d2OswaldBigMetal","GLOBAL",0)
     Global("d2OswaldNoRodTalk","GLOBAL",0)
   ~ REPLY @10141 GOTO OswaldNoRod

END


APPEND ~DOSWALD~

IF ~~ BEGIN OswaldShowRod
  SAY @10111  // Oswald says stuff
    = @10112  // Oswald makes offer
  IF ~ PartyGoldGT(2999)  // if 3000 gold
     ~ REPLY @10121 DO ~ SetGlobal("d2OswaldBigMetal","GLOBAL",2)  // accept offer
                       ~ GOTO OswaldPrototype
  IF ~
     ~ REPLY @10122 DO ~ SetGlobal("d2OswaldBigMetal","GLOBAL",1)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN OswaldPrototype
  SAY @10131  // Oswald says stuff
  IF ~~ DO ~ TakePartyGold(3000)
             GiveItemCreate("%prototype%",LastTalkedToBy,0,0,0)
             AddJournalEntry(%iwdjour02%)
           ~ EXIT
END

IF ~~ BEGIN OswaldNoRod
  SAY @10151  // Oswald says stuff
    = @10152
  IF ~~ DO ~ SetGlobal("d2OswaldNoRodTalk","GLOBAL",1)
           ~ EXIT
END

END