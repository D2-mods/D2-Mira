//for Pulse Ammunition
//Add to Orrick's dialogues


EXTEND_BOTTOM ~DORRICK~ %orrick_states%

IF ~ PartyHasItem("%prototype%")            // has prototype
     PartyHasItem("%bigmetalrod%")          // has Big Metal Rod
     GlobalLT("Chapter","GLOBAL",3)         // pre-Chapter 3
     Global("d2OswaldBigMetal","GLOBAL",2)  // Oswald gave prototype
     Global("d2OrrickBigMetal","GLOBAL",0)  // not mentioned before
   ~ REPLY @10201 GOTO OrrickShowPrototype1

IF ~ PartyHasItem("%prototype%")            // has prototype
     PartyHasItem("%bigmetalrod%")          // has Big Metal Rod
     GlobalGT("Chapter","GLOBAL",2)         // Chapter 3 or later
     Global("d2OswaldBigMetal","GLOBAL",2)  // Oswald gave prototype
     Global("d2OrrickBigMetal","GLOBAL",0)  // not mentioned before
   ~ REPLY @10201 GOTO OrrickShowPrototype2

IF ~ PartyHasItem("%prototype%")            // has prototype
     PartyHasItem("%bigmetalrod%")          // has Big Metal Rod
     GlobalGT("Chapter","GLOBAL",2)         // Chapter 3 or later
     Global("d2OswaldBigMetal","GLOBAL",2)  // Oswald gave prototype
     Global("d2OrrickBigMetal","GLOBAL",1)  // has been mentioned before
   ~ REPLY @10202 GOTO OrrickShowPrototype3

END



APPEND ~DORRICK~

IF ~~ BEGIN OrrickShowPrototype1  // pre-Chapter 3
  SAY @10211  // Orrick says stuff
  IF ~~ DO ~ SetGlobal("d2OrrickBigMetal","GLOBAL",1)
             AddJournalEntry(%iwdjour03%)
           ~ EXIT
END

IF ~~ BEGIN OrrickShowPrototype2  // Chapter 3 or later (not mentioned before)
  SAY @10221  // Orrick says stuff
    = @10222  // Orrick makes offer
  IF ~ PartyGoldGT(4999)  // if 5000 gold
     ~ REPLY @10241 DO ~ SetGlobal("d2OrrickBigMetal","GLOBAL",2)  // accept offer
                       ~ GOTO OrrickPulse
  IF ~
     ~ REPLY @10242 DO ~ SetGlobal("d2OrrickBigMetal","GLOBAL",1)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN OrrickShowPrototype3  // Chapter 3 or later
  SAY @10231  // Orrick makes offer
  IF ~ PartyGoldGT(4999)  // if 5000 gold
     ~ REPLY @10241 DO ~ SetGlobal("d2OrrickBigMetal","GLOBAL",2)  // accept offer
                       ~ GOTO OrrickPulse
  IF ~
     ~ REPLY @10242 DO ~ SetGlobal("d2OrrickBigMetal","GLOBAL",1)  // reject offer
                       ~ EXIT
END

IF ~~ BEGIN OrrickPulse
  SAY @10251  // Orrick says stuff
    = @10252
  IF ~~ DO ~ TakePartyGold(5000)
             TakePartyItem("%prototype%")
             %destroygold%(5000)
             DestroyItem("%prototype%")
             GiveItemCreate("%pulse%",LastTalkedToBy,0,0,0)
             AddJournalEntry(%iwdjour04%)
           ~ EXIT
END

END