//Kuldahar: Gives  Rod and/or Pulse Ammo (only if not previously gained)
//Add to Oswald's dialogues


EXTEND_BOTTOM ~11OSWALD~ 82 83

IF ~ !PartyHasItem("%bigmetalrod%")
     Global("d2HasBigMetalRod","GLOBAL",0)    // variable set in AR4000.BCS (Western Pass)
   ~ REPLY @20801 GOTO d2OswaldGivesRod

IF ~ PartyHasItem("%bigmetalrod%")
     !PartyHasItem("%pulse%")
     !PartyHasItem("%prototype%")
     Global("d2HasPulseAmmo","GLOBAL",0)      // variable set when Pulse is gained by an NPC
   ~ REPLY @20802 GOTO d2OswaldGivesPulse

END


APPEND ~11OSWALD~

IF ~~ BEGIN d2OswaldGivesRod
  SAY @20811  // Oswald says stuff
  IF ~~ DO ~ SetGlobal("d2HasBigMetalRod","GLOBAL",1)
             GiveItemCreate("%bigmetalrod%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

IF ~~ BEGIN d2OswaldGivesPulse
  SAY @20812  // Oswald says stuff
  IF ~~ DO ~ SetGlobal("d2HasPulseAmmo","GLOBAL",1)
             GiveItemCreate("%pulse%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

END