//for Pulse Ammunition (prototype)
//Add to Black Lily's dialogues


EXTEND_BOTTOM ~BLACKL~ 0

IF ~ !PartyHasItem("%metalrodb%")     // no Big Metal Rod
     !PartyHasItem("%bigmetalrod%")
     Global("d2HasBigMetalRod","GLOBAL",0)
     Global("d2BlackLilyBigMetal","GLOBAL",0)
   ~ GOTO BlackLilyTalk

IF ~ !PartyHasItem("%prototype%")
     OR(2)
       PartyHasItem("%metalrodb%")    // has Big Metal Rod
       PartyHasItem("%bigmetalrod%")
     Global("d2HasPrototype","GLOBAL",0)
   ~ GOTO BlackLilyOffer

END


APPEND ~BLACKL~

IF ~~ BEGIN BlackLilyTalk
  SAY @30111  // Black Lily says stuff
  IF ~~ DO ~ SetGlobal("d2BlackLilyBigMetal","GLOBAL",1)
             StartStore("stoblack",LastTalkedToBy)
           ~ EXIT
END

IF ~~ BEGIN BlackLilyOffer
  SAY @30112  // Black Lily says stuff
  IF ~ PartyGoldGT(9999)  // if 10000 gold
     ~ REPLY @30121 DO ~ SetGlobal("d2HasPrototype","GLOBAL",1)  // accept offer
                       ~ GOTO BlackLilyPrototype
  IF ~
     ~ REPLY @30122 DO ~ SetGlobal("d2HasPrototype","GLOBAL",0)  // reject offer
                         StartStore("stoblack",LastTalkedToBy)
                       ~ EXIT
END

IF ~~ BEGIN BlackLilyPrototype
  SAY @30131  // Black Lily says stuff
  IF ~~ DO ~ TakePartyGold(10000)
             GiveItemCreate("%prototype%",LastTalkedToBy,0,0,0) 
             StartStore("stoblack",LastTalkedToBy)
           ~ EXIT
END

END