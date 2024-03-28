//gives info on Repair Manual location
//Add to Lehtinan's dialogues


EXTEND_BOTTOM ~LEHTIN~ 0 14

IF ~ Global("d2RibaldBigMetal","GLOBAL",1)
     Global("d2LehtinanBigMetal","GLOBAL",0)
   ~ REPLY @40301 GOTO LehtinanTalk

END


APPEND ~LEHTIN~

IF ~~ BEGIN LehtinanTalk
  SAY @40311  // Lehtinan says stuff
  IF ~~ REPLY @40321
        GOTO LehtinanOffer
END

IF ~~ BEGIN LehtinanOffer
  SAY @40331  // Lehtinan says stuff
  IF ~ PartyGoldGT(499)  // if 500 gold
     ~ REPLY @40341 DO ~ SetGlobal("d2LehtinanBigMetal","GLOBAL",1)  // accept offer
                       ~ GOTO LehtinanManual
  IF ~
     ~ REPLY @40342 DO ~ SetGlobal("d2LehtinanBigMetal","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN LehtinanManual
  SAY @40351  // Lehtinan says stuff
  IF ~~ DO ~ TakePartyGold(500)
             DestroyGold(500)
             AddJournalEntry(@40004,QUEST)
           ~ EXIT
END

END