//gives item location (not required for gaining item)
//Add to Diviner's dialogues


EXTEND_BOTTOM ~DIVINE~ 1

IF ~ Global("d2BlackLilyBigMetal","GLOBAL",0)
     Global("d2BlackLilyTalk","GLOBAL",0)
     Global("d2DivinerPulse","GLOBAL",0)
   ~ REPLY @30301 GOTO DivinerPulse

IF ~ Global("d2HasBigMetalRod","GLOBAL",0)
     GlobalGT("d2BlackLilyTalk","GLOBAL",0)
     Global("d2DivinerBigMetal","GLOBAL",0)
   ~ REPLY @30302 GOTO DivinerBigMetal

END


APPEND ~DIVINE~

IF ~~ BEGIN DivinerPulse
  SAY @30311  // Diviner says stuff
  IF ~~ DO ~ SetGlobal("d2DivinerPulse","GLOBAL",1)
             AddJournalEntry(%bg1jour03%)
           ~ GOTO 8
END

IF ~~ BEGIN DivinerBigMetal
  SAY @30312  // Diviner says stuff
  IF ~~ DO ~ SetGlobal("d2DivinerBigMetal","GLOBAL",1)
             AddJournalEntry(%bg1jour04%)
           ~ GOTO 8
END

END