//for Big Metal Unit
//Add to Conlan's dialogues


EXTEND_BOTTOM ~60CONLA2~ 10 14 16 17 18 19 20 21 23 24 26 30

IF ~ PartyHasItem("%gold%")
     PartyHasItem("%silver%")
     PartyHasItem("%bronze%")
     Global("d2ConlanBigMetal","GLOBAL",0)
   ~ REPLY @20601 GOTO ConlanShowPantaloons

END


APPEND ~60CONLA2~

IF ~~ BEGIN ConlanShowPantaloons
  SAY @20611  // Conlan says stuff
  IF ~~ REPLY @20621 DO ~ SetGlobal("d2ConlanBigMetal","GLOBAL",1)  // accept offer
                       ~ GOTO ConlanBigMetalUnit
  IF ~~ REPLY @20622 DO ~ SetGlobal("d2ConlanBigMetal","GLOBAL",0)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN ConlanBigMetalUnit
  SAY @20631  // Conlan says stuff
  IF ~~ DO ~ TakePartyItem("%gold%")
             TakePartyItem("%silver%")
             TakePartyItem("%bronze%")
             DestroyItem("%silver%")
             DestroyItem("%bronze%")
             GiveItemCreate("%bigmetalunit%",LastTalkedToBy,0,0,0) 
           ~ EXIT
END

END