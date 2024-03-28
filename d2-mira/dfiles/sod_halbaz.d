//Gives Rod and/or Pulse Ammo (only if not previously gained)
//Add to Halbazzer's dialogues


EXTEND_BOTTOM ~BDHALBAZ~ 0 1 2 4 8 16

IF ~ !PartyHasItem("%metalrodb%")     // no Big Metal Rod
     !PartyHasItem("%bigmetalrod%")
     Global("d2HasBigMetalRod","GLOBAL",0)
     Global("d2HalbazBigMetal","GLOBAL",0)
   ~ REPLY @30201 GOTO HalbazzerGivesRod

IF ~ OR(2)
       PartyHasItem("%metalrodb%")    // has Big Metal Rod
       PartyHasItem("%bigmetalrod%")
     !PartyHasItem("%prototypeb%")
     Global("d2HasPrototype","GLOBAL",0)
   ~ REPLY @30202 GOTO HalbazzerGivesPulse

END


APPEND ~BDHALBAZ~

IF ~~ BEGIN HalbazzerGivesRod
  SAY @30211  // Halbazzer says stuff
    = @30212
  IF ~~ DO ~ SetGlobal("d2HalbazBigMetal","GLOBAL",1)
             GiveItemCreate("%bigmetalrod%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

IF ~~ BEGIN HalbazzerGivesPulse
  SAY @30213  // Halbazzer says stuff
  IF ~ PartyGoldGT(2999)  // if 3000 gold
     ~ REPLY @30221 DO ~ SetGlobal("d2HasPrototype","GLOBAL",1)  // accept offer
                         TakePartyGold(3000)
                         DestroyGold(3000)
                         GiveItemCreate("%prototypeb%",LastTalkedToBy,0,0,0) 
                       ~ EXIT
  IF ~
     ~ REPLY @30222 DO ~ SetGlobal("d2HasPrototype","GLOBAL",0)  // reject offer
                       ~ EXIT
END

END