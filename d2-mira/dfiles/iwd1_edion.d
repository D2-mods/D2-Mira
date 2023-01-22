//for Silver/Bronze pants (only if not previously gained)
//Add to Edion's dialogues


EXTEND_BOTTOM ~DEDION~ 9 10 11 12 16 29

IF ~ !PartyHasItem("%silver%")
     Global("d2HasSilverPants","GLOBAL",0)
   ~ REPLY @10501 GOTO EdionSilver

IF ~ !PartyHasItem("%bronze%")
     PartyHasItem("%silver%") 
     Global("d2HasBronzePants","GLOBAL",0)
   ~ REPLY @10502 GOTO EdionBronze

END


APPEND ~DEDION~

IF ~~ BEGIN EdionSilver
  SAY @10511  // Edion says stuff
  IF ~ PartyGoldGT(14999)  // if 15000 gold
     ~ REPLY @10521 DO ~ SetGlobal("d2HasSilverPants","GLOBAL",1)  // accept offer
                         TakePartyGold(15000)
                         GiveItemCreate("%silver%",LastTalkedToBy,0,0,0) 
                       ~ EXIT
  IF ~
     ~ REPLY @10523 DO ~ SetGlobal("d2HasSilverPants","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN EdionBronze
  SAY @10512  // Edion says stuff
  IF ~ PartyGoldGT(7999)  // if 8000 gold
     ~ REPLY @10522 DO ~ SetGlobal("d2HasBronzePants","GLOBAL",1)  // accept offer
                         TakePartyGold(8000)
                         GiveItemCreate("%bronze%",LastTalkedToBy,0,0,0) 
                       ~ EXIT
  IF ~
     ~ REPLY @10523 DO ~ SetGlobal("d2HasBronzePants","GLOBAL",0)  // reject offer
                       ~ EXIT
END

END