//Trade for Pulse III
//Add to Cespenar's dialogues


EXTEND_BOTTOM ~BOTSMITH~ 4  // full recipe list

IF ~ OR(3)
       PartyHasItem("%bigmetalrod%")  // has Big Metal Rod
       PartyHasItem("%metalrodb%")
       PartyHasItem("secret01")
     Global("d2CespenarBigMetal","GLOBAL",0)
   ~ GOTO CespenarShowRod

END


APPEND ~BOTSMITH~

IF ~~ BEGIN CespenarShowRod
  SAY @40201  // Cespenar says stuff
  IF ~ !PartyHasItem("%prototype%")
       !PartyHasItem("%prototypeb%")   // no Pulse
       !PartyHasItem("%pulse%")
       !PartyHasItem("secret02")
     ~ GOTO CespenarNoPulse
  IF ~ OR(4)
         PartyHasItem("%prototype%")
         PartyHasItem("%prototypeb%")  // has Pulse
         PartyHasItem("%pulse%")
         PartyHasItem("secret02")
     ~ GOTO CespenarHasPulse
END

IF ~~ BEGIN CespenarNoPulse
  SAY @40211  // Cespenar says stuff
  IF ~~ GOTO CespenarRecipes
END

IF ~~ BEGIN CespenarHasPulse
  SAY @40221  // Cespenar says stuff
  IF ~ PartyGoldLT(15000)
     ~ REPLY @40231 GOTO 10  // not enough gold
  IF ~ PartyGoldGT(14999)
     ~ REPLY @40232 DO ~ SetGlobal("d2CespenarBigMetal","GLOBAL",1)  // accept offer
                         TakePartyGold(15000)
                         TakePartyItemNum("%prototype%",1)
                         TakePartyItemNum("%prototypeb%",1)
                         TakePartyItemNum("%pulse%",1)
                         TakePartyItemNum("secret02",1)
                         DestroyItem("%prototype%")
                         DestroyItem("%prototypeb%")
                         DestroyItem("%pulse%")
                         DestroyItem("secret02")
                         DestroyGold(15000)
                       ~ GOTO 11
  IF ~~ REPLY @40233 GOTO CespenarRecipes  // reject offer
END

IF ~~ BEGIN CespenarRecipes
  SAY @40241  // Cespenar says stuff
  COPY_TRANS ~BOTSMITH~ 4  // recipe list (continue from after this recipe)
END

END