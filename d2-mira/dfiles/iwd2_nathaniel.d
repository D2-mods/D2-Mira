//for Silver/Bronze pants (only if not previously gained)
//Add to Nathaniel's dialogues


EXTEND_BOTTOM ~60NATHA2~ 0 1 2 3 4 7 8 9 10 11 12 13 14 21 23 24 25 26 28 29

IF ~ !PartyHasItem("%silver%")
     Global("d2HasSilverPants","GLOBAL",0)
   ~ REPLY @20901 GOTO NathanielSilver

IF ~ !PartyHasItem("%bronze%")
     PartyHasItem("%silver%") 
     Global("d2HasBronzePants","GLOBAL",0)
   ~ REPLY @20902 GOTO NathanielBronze

END


APPEND ~60NATHA2~

IF ~~ BEGIN NathanielSilver
  SAY @20911  // Nathaniel says stuff
  IF ~ PartyGoldGT(5999)  // if 6000 gold
     ~ REPLY @20921 DO ~ SetGlobal("d2HasSilverPants","GLOBAL",1)  // accept offer
                         TakePartyGold(6000)
                         GiveItemCreate("%silver%",LastTalkedToBy,0,0,0) 
                       ~ EXIT
  IF ~
     ~ REPLY @20923 DO ~ SetGlobal("d2HasSilverPants","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN NathanielBronze
  SAY @20912  // Nathaniel says stuff
  IF ~ PartyGoldGT(2999)  // if 3000 gold
     ~ REPLY @20922 DO ~ SetGlobal("d2HasBronzePants","GLOBAL",1)  // accept offer
                         TakePartyGold(3000)
                         GiveItemCreate("%bronze%",LastTalkedToBy,0,0,0) 
                       ~ EXIT
  IF ~
     ~ REPLY @20923 DO ~ SetGlobal("d2HasBronzePants","GLOBAL",0)  // reject offer
                       ~ EXIT
END

END