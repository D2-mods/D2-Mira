//for Pulse Ammunition (10000)
//Add to Nym's dialogues


EXTEND_BOTTOM ~50NYM~ 10 11 13 14

IF ~ PartyHasItem("%prototype%")
     PartyHasItem("%bigmetalrod%")
     Global("d2HasPulseAmmo","GLOBAL",0)
   ~ REPLY @20401 GOTO NymShowPrototype

END


APPEND ~50NYM~

IF ~~ BEGIN NymShowPrototype
  SAY @20411  // Nym says stuff
    = @20412
    = @20413  // Nym makes offer

  IF ~ PartyGoldGT(9999)  // if 10000 gold
      !Race(LastTalkedToBy, Elf)
     ~ REPLY @20421 DO ~ SetGlobal("d2HasPulseAmmo","GLOBAL",1)  // accept offer (PC not elf)
                       ~ GOTO NymPulse1

  IF ~ PartyGoldGT(9999)  // if 10000 gold
       Race(LastTalkedToBy, Elf)
     ~ REPLY @20421 DO ~ SetGlobal("d2HasPulseAmmo","GLOBAL",1)  // accept offer (PC is elf)
                       ~ GOTO NymPulse2

  IF ~
     ~ REPLY @20422 DO ~ SetGlobal("d2HasPulseAmmo","GLOBAL",0)  // reject offer
                       ~ EXIT
END


IF ~~ BEGIN NymPulse1
  SAY @20431  // Nym says stuff
  IF ~~ DO ~ TakePartyGold(10000)
             TakePartyItem("%prototype%")
             GiveItemCreate("%pulse%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

IF ~~ BEGIN NymPulse2
  SAY @20432  // Nym says stuff
  IF ~~ DO ~ TakePartyGold(10000)
             TakePartyItem("%prototype%")
             GiveItemCreate("%pulse%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

END