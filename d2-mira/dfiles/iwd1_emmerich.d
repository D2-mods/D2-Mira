//Gives Rod and/or Pulse Ammo (only if not previously gained)
//Add to Emmerich's dialogues


EXTEND_BOTTOM ~DEMMRCH~ 1 2 3 6 19 20 25 36

IF ~ !PartyHasItem("%bigmetalrod%")
     Global("d2HasBigMetalRod","GLOBAL",0)
   ~ REPLY @10601 GOTO EmmerichGivesRod

IF ~ PartyHasItem("%bigmetalrod%")
     !PartyHasItem("%pulse%")
     !PartyHasItem("%prototype%")
     Global("d2HasPulseAmmo","GLOBAL",0)
   ~ REPLY @10602 GOTO EmmerichGivesPulse

END


APPEND ~DEMMRCH~

IF ~~ BEGIN EmmerichGivesRod
  SAY @10611  // Emmerich says stuff
  IF ~~ DO ~ SetGlobal("d2HasBigMetalRod","GLOBAL",1)
             GiveItemCreate("%bigmetalrod%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

IF ~~ BEGIN EmmerichGivesPulse
  SAY @10612  // Emmerich says stuff
  IF ~ PartyGoldGT(4999)  // if 5000 gold
     ~ REPLY @10621 DO ~ SetGlobal("d2HasPulseAmmo","GLOBAL",1)  // accept offer
                         TakePartyGold(5000)
                         %destroygold%(5000)
                         GiveItemCreate("%pulse%",LastTalkedToBy,0,0,0) 
                       ~ EXIT
  IF ~
     ~ REPLY @10622 DO ~ SetGlobal("d2HasPulseAmmo","GLOBAL",0)  // reject offer
                       ~ EXIT
END

END