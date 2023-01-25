//for Pulse III Ammunition
//Add to Riki's dialogues


EXTEND_BOTTOM ~20RIKI~ 1 28 31 32 37 41 43 44

IF ~ PartyHasItem("%bigmetalrod%")  // has Big Metal Rod
     OR(2)
       PartyHasItem("%pulse%")      // has Pulse Ammunition
       PartyHasItem("%prototype%")  // or Pulse (prototype)
     Global("d2RikiBigMetal","GLOBAL",0)
     !Gender(LastTalkedToBy,MALE)
   ~ REPLY @20701 GOTO RikiShowPulse1

IF ~ PartyHasItem("%bigmetalrod%")  // has Big Metal Rod
     OR(2)
       PartyHasItem("%pulse%")      // has Pulse Ammunition
       PartyHasItem("%prototype%")  // or Pulse (prototype)
     Global("d2RikiBigMetal","GLOBAL",0)
     Gender(LastTalkedToBy,MALE)
   ~ REPLY @20701 GOTO RikiShowPulse2

END


APPEND ~20RIKI~

IF ~~ BEGIN RikiShowPulse1
  SAY @20711  // Riki makes offer
    = @20713
  IF ~ PartyGoldGT(14999)  // if 15000 gold
     ~ REPLY @20721 DO ~ SetGlobal("d2RikiBigMetal","GLOBAL",1)  // accept offer
                       ~ GOTO RikiPulseIII
  IF ~
     ~ REPLY @20722 DO ~ SetGlobal("d2RikiBigMetal","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN RikiShowPulse2
  SAY @20712  // Riki makes offer
    = @20713
  IF ~ PartyGoldGT(14999)  // if 15000 gold
     ~ REPLY @20721 DO ~ SetGlobal("d2RikiBigMetal","GLOBAL",1)  // accept offer
                       ~ GOTO RikiPulseIII
  IF ~
     ~ REPLY @20722 DO ~ SetGlobal("d2RikiBigMetal","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN RikiPulseIII
  SAY @20731  // Riki says stuff
  IF ~~ DO ~ TakePartyGold(15000)
             TakePartyItem("%pulse%")
             TakePartyItem("%prototype%")
             GiveItemCreate("%pulseIII%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

END