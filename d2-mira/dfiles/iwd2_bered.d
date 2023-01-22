//for Pulse Ammunition (5000)
//Add to Bered's dialogues
//no dialogue if already given by Nym


EXTEND_BOTTOM ~52BERED~ 0 1 2 3 13 17 18 19 20 21

IF ~ PartyHasItem("%prototype%")
     PartyHasItem("%bigmetalrod%")
     Global("d2HasPulseAmmo","GLOBAL",0)
   ~ REPLY @20501 GOTO BeredShowPrototype

END


APPEND ~52BERED~

IF ~~ BEGIN BeredShowPrototype
  SAY @20511  // Bered says stuff
    = @20512  // Bered makes offer
  IF ~ PartyGoldGT(4999)  // if 5000 gold
     ~ REPLY @20521 DO ~ SetGlobal("d2HasPulseAmmo","GLOBAL",1)  // accept offer
                       ~ GOTO BeredPulse
  IF ~
     ~ REPLY @20522 DO ~ SetGlobal("d2HasPulseAmmo","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN BeredPulse
  SAY @20531  // Bered says stuff
  IF ~~ DO ~ TakePartyGold(5000)
             TakePartyItem("%prototype%")
             GiveItemCreate("%pulse%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

END