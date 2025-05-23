//for Pulse Ammunition (prototype)
//Add to Black Lily's dialogues


EXTEND_BOTTOM ~BLACKL~ 0

IF ~ !PartyHasItem("%metalrodb%")     // no Big Metal Rod
     !PartyHasItem("%bigmetalrod%")
     Global("d2HasBigMetalRod","GLOBAL",0)
     Global("d2BlackLilyTalk","GLOBAL",0)
   ~ GOTO BlackLilyTalk

%lilytalk%

/*lilytalk if game has OR() action
IF ~ OR(2)
       PartyHasItem("%metalrodb%")    // has Big Metal Rod
       PartyHasItem("%bigmetalrod%")
     Global("d2BlackLilyBigMetal","GLOBAL",0)
   ~ GOTO BlackLilyOffer
*/

/*lilytalk if no OR() action
IF ~ PartyHasItem("%metalrodb%")    // has Big Metal Rod
     Global("d2BlackLilyBigMetal","GLOBAL",0)
   ~ GOTO BlackLilyOffer

IF ~ PartyHasItem("%bigmetalrod%")    // bg2 text
     Global("d2BlackLilyBigMetal","GLOBAL",0)
   ~ GOTO BlackLilyOffer
*/

END


APPEND ~BLACKL~

IF ~~ BEGIN BlackLilyTalk
  SAY @30111  // Black Lily says stuff
  IF ~~ DO ~ SetGlobal("d2BlackLilyTalk","GLOBAL",1)
             StartStore("stoblack",LastTalkedToBy)
           ~ EXIT
END

IF ~~ BEGIN BlackLilyOffer
  SAY @30112  // Black Lily says stuff
  IF ~ PartyGoldGT(9999)  // if 10000 gold
     ~ REPLY @30121 DO ~ SetGlobal("d2BlackLilyBigMetal","GLOBAL",1)  // accept offer
                         TakePartyGold(10000)
                         %destroygold%(10000)
                         GiveItemCreate("%prototypeb%",LastTalkedToBy,0,0,0) 
                       ~ GOTO BlackLilyPrototype
  IF ~
     ~ REPLY @30122 DO ~ SetGlobal("d2BlackLilyBigMetal","GLOBAL",0)  // reject offer
                         StartStore("stoblack",LastTalkedToBy)
                       ~ EXIT
END

IF ~~ BEGIN BlackLilyPrototype
  SAY @30131  // Black Lily says stuff
  IF ~~ DO ~ StartStore("stoblack",LastTalkedToBy)
           ~ EXIT
END

END