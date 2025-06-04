//for Big Metal Unit
//Add to Tiernon's dialogues


EXTEND_BOTTOM ~DTIERNON~ %tiernon_states%

IF ~ PartyHasItem("%gold%")
     PartyHasItem("%silver%")
     PartyHasItem("%bronze%")
     Global("d2TiernonBigMetal","GLOBAL",0)
   ~ REPLY @10301 GOTO TiernonShowPantaloons

END


APPEND ~DTIERNON~

IF ~~ BEGIN TiernonShowPantaloons
  SAY @10311  // Tiernon makes offer
  IF ~~ REPLY @10321 DO ~ SetGlobal("d2TiernonBigMetal","GLOBAL",1)  // accept offer
                       ~ GOTO TiernonBigMetalUnit
  IF ~~ REPLY @10322 DO ~ SetGlobal("d2TiernonBigMetal","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN TiernonBigMetalUnit
  SAY @10331  // Tiernon says stuff
  IF ~~ DO ~ TakePartyItem("%gold%")
             TakePartyItem("%silver%")
             TakePartyItem("%bronze%")
             DestroyItem("%silver%")
             DestroyItem("%bronze%")
             GiveItemCreate("%bigmetalunit%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

END