//for Rod and Pulse (prototype)
//Add to Ribald's dialogues


EXTEND_BOTTOM ~RIBALD~ 0 37 41 44 45 52

IF ~ PartyHasItem("%brokenrod%")
     Global("d2RibaldBigMetal","GLOBAL",0)    // Standard Installation
   ~ REPLY @40101 GOTO RibaldTalkRod

IF ~ PartyHasItem("%brokenrod%")
     PartyHasItem("%repairbook%")
     Global("d2RibaldBigMetal","GLOBAL",1)
   ~ REPLY @40102 GOTO RibaldGiveManual

IF ~ PartyHasItem("%bigmetalrod%")
     Global("d2RibaldBigMetal","GLOBAL",0)    // Start with core items
   ~ REPLY @40103 GOTO RibaldOffer

END



//skips these states if "d2RibaldRepair" is set to 1
ADD_STATE_TRIGGER ~RIBALD~ 0
  ~ Global("d2RibaldRepair","GLOBAL",0) 
  ~ 20 24



APPEND ~RIBALD~

IF ~~ BEGIN RibaldTalkRod
  SAY @40111  // Ribald says stuff
    = @40112
    = @40113
  IF ~~ DO ~ SetGlobal("d2RibaldBigMetal","GLOBAL",1)
             AddJournalEntry(@40001,QUEST)
           ~ EXIT
END

IF ~~ BEGIN RibaldGiveManual
  SAY @40121  // Ribald says stuff
  IF ~~ DO ~ SetGlobal("d2RibaldBigMetal","GLOBAL",2)
             TakePartyItem("%brokenrod%")
             TakePartyItem("%repairbook%")
           ~ GOTO RibaldFixRod
END

IF ~~ BEGIN RibaldFixRod
  SAY @40122  // Ribald says stuff
  IF ~~ DO ~ SetGlobal("d2RibaldRepair","GLOBAL",1)
             StartCutSceneMode()
             StartCutScene("d2tecfix")
           ~ EXIT
END

IF ~ Global("d2RibaldRepair","GLOBAL",1)
   ~ BEGIN RibaldRepair
  SAY @40123  // Ribald says stuff
  IF ~~ REPLY @40141 DO ~ SetGlobal("d2RibaldRepair","GLOBAL",0)
                          DestroyItem("%brokenrod%")
                          GiveItemCreate("%bigmetalrod%",LastTalkedToBy,0,0,0)
                          GiveItemCreate("%prototype%",LastTalkedToBy,0,0,0)
                          AddJournalEntry(@40003,QUEST_DONE)
                          EraseJournalEntry(@40001)
                          EraseJournalEntry(@40002)
                          EraseJournalEntry(@40004)
                          EraseJournalEntry(@40005)
                        ~ GOTO RibaldPrototype
END

IF ~~ BEGIN RibaldOffer
  SAY @40131  // Ribald makes offer
  IF ~ PartyGoldGT(2999)  // if 3000 gold
     ~ REPLY @40142 DO ~ SetGlobal("d2RibaldBigMetal","GLOBAL",2)  // accept offer
                         TakePartyGold(3000)
                         GiveItemCreate("%prototype%",LastTalkedToBy,0,0,0) 
                       ~ GOTO RibaldPrototype
  IF ~
     ~ REPLY @40143 DO ~ SetGlobal("d2RibaldBigMetal","GLOBAL",0)  // reject offer
                       ~ GOTO RibaldReject
END

IF ~~ BEGIN RibaldPrototype
  SAY @40151  // Ribald says stuff
    = @40152
  IF ~~ EXIT
END

IF ~~ BEGIN RibaldReject
  SAY @40153  // Ribald says stuff
  IF ~~ EXIT
END

END