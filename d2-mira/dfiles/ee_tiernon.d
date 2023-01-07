//for Big Metal Unit
//Add to Tiernon's dialogues


EXTEND_BOTTOM ~DTIERNON~ 16 17 26 27 28 33 46 78

IF ~ PartyHasItem("%gold%")
     PartyHasItem("%silver%")
     PartyHasItem("%bronze%")
     Global("d2TiernonBigMetal","GLOBAL",0)
   ~ REPLY @10301 GOTO d2TiernonShowPantaloons

END


APPEND ~DTIERNON~

IF ~~ BEGIN d2TiernonShowPantaloons
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
             GiveItemCreate("%bigmetalunit%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

END