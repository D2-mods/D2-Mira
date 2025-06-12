//add to Lucky Aello's dialogue
//tells you where rod is (v4.15: now required to get the item)


EXTEND_BOTTOM ~LUCKY~ 0

IF ~ !PartyHasItem("%metalrodb%")    // no Big Metal Rod
     !PartyHasItem("%bigmetalrod%")
     Global("d2HasBigMetalRod","GLOBAL",0)
     GlobalGT("d2LuckyAelloBigMetal","GLOBAL",0)    // this is set after Black Lily talk
//     Global("d2DivinerBigMetal","GLOBAL",1)       // this talk no longer requires diviner talk
   ~ REPLY @30401 GOTO LuckyRod

END


//skips these states if "d2LuckyStory" is set to 1
ADD_STATE_TRIGGER ~LUCKY~ 0
  ~ Global("d2LuckyStory","GLOBAL",0) 
  ~


APPEND ~LUCKY~

IF ~~ BEGIN LuckyRod
  SAY @30411  // he says stuff
  IF ~~ DO ~ SetGlobal("d2LuckyStory","GLOBAL",1)
             StartCutSceneMode()
             StartCutScene("d2mtluck")
           ~ EXIT
END

IF ~ Global("d2LuckyStory","GLOBAL",1)
   ~ BEGIN LuckyBarrel
  SAY @30412  // he says stuff
    = @30413
  IF ~~ DO ~ SetGlobal("d2LuckyStory","GLOBAL",0)
           ~ EXIT
END

END