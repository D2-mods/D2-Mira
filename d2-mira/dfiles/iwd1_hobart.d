//for Pulse III Ammunition
//Add to Hobart's dialogues


EXTEND_BOTTOM ~DHOBART~ 19 29 38 39

IF ~ PartyHasItem("%bigmetalrod%")  // has Big Metal Rod
     OR(2)
       PartyHasItem("%pulse%")      // has Pulse Ammunition
       PartyHasItem("%prototype%")  // or Pulse (prototype)
     Global("d2HobartBigMetal","GLOBAL",0)
   ~ REPLY @10401 GOTO HobartShowPulse

END


APPEND ~DHOBART~

IF ~~ BEGIN HobartShowPulse
  SAY @10411  // Hobart makes offer
  IF ~ PartyGoldGT(14999)  // if 15000 gold
     ~ REPLY @10421 DO ~ SetGlobal("d2HobartBigMetal","GLOBAL",1)  // accept offer
                       ~ GOTO HobartPulseIII
  IF ~
     ~ REPLY @10422 DO ~ SetGlobal("d2HobartBigMetal","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN HobartPulseIII
  SAY @10431  // Hobart says stuff
  IF ~~ DO ~ TakePartyGold(15000)
             TakePartyItem("%pulse%")
             TakePartyItem("%prototype%")
             GiveItemCreate("%pulseIII%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

END