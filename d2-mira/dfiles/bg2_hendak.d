//gives info on Repair Manual location
//Add to Hendak's dialogues


EXTEND_BOTTOM ~HENDAK~ 26 33

IF ~ Global("d2RibaldBigMetal","GLOBAL",1)
     Global("d2HendakBigMetal","GLOBAL",0)
   ~ REPLY @40401 GOTO HendakTalk

IF ~ Global("d2RibaldBigMetal","GLOBAL",1)
     Global("d2HendakBigMetal","GLOBAL",1)
   ~ REPLY @40402 GOTO HendakManual

END


APPEND ~HENDAK~

IF ~~ BEGIN HendakTalk
  SAY @40411  // Hendak says stuff
  IF ~~ REPLY @40421 DO ~ SetGlobal("d2HendakBigMetal","GLOBAL",1)
                          AddJournalEntry(@40005,QUEST)
                        ~ GOTO HendakManual
END

IF ~~ BEGIN HendakManual
  SAY @40431  // Hendak says stuff
    = @40432
  IF ~~ EXIT
END

END