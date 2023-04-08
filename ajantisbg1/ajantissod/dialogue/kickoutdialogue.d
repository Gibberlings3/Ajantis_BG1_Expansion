/* BDAJANTI.dlg Ajantis's kickout dialogue for SoD */
/* (T1) normal kickout dialogue after being kicked out of the party */

BEGIN ~BDAJANTI~

/* If kicked out in Avernus in bd4700.are
This sets Global("C#AjSoD_kicked_bd4700","global",1) which is used in bdcut58_patch.baf and bdcut59b_patch.baf */
/* Ajantis can't go home from here - so he will stay and say something brave. */
IF ~AreaCheck("bd4700")
    GlobalLT("bd_plot","global",570)~ THEN BEGIN kickout_1
  SAY @100 /* ~[Ajantis]I will be here and ready.~ */
  IF ~~ THEN DO ~SetGlobal("C#AjSoD_kicked_bd4700","global",1)
                 SetGlobal("bd_joined","locals",0)~ EXIT
END


/* if leaving unhappy */
IF ~  GlobalGT("bd_joined","locals",0)
HappinessLT(Myself,-290)
~ THEN BEGIN 1 // from:
  SAY #%2%14724
  IF ~~ THEN DO ~DestroyAllFragileEquipment(ADAMANTINE)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1) // will return to camp - the other SoD NPCs do this, too.
~ EXIT
END

/* If kicked out in Korlasz' Crypt */
IF ~OR(2)
      AreaCheck("bd0120")
      AreaCheck("bd0130")
    GlobalGT("bd_joined","locals",0)~ THEN BEGIN kickout_2
  SAY #%2%14730 /* ~But... but... we were a team, we were bound by... by honor! *sigh* Why is everything always so complicated?~ */
/* commented out - this reply options doesn't *do* anything - maybe it gets fixed at some point
  + ~OR(2)
    !Range("ff_camp",999)
    NextTriggerObject("ff_camp")
    !IsOverMe("jaheira")~ THEN REPLY #%2%66314 /* ~I would. Go to the crypt entrance and wait for me there.~ */ DO ~SetGlobal("bd_npc_camp","locals",1) + kickout_6
*/
  ++ @101 /* ~[PC Reply]Please wait here until I return.~ */ + kickout_3
  ++ @102 /* ~[PC Reply]Please stay with the group, Ajantis.~ */ + kickout_4
END

IF ~~ THEN BEGIN kickout_3
  SAY @103 /* ~[Ajantis]Well then, but do not tarry for too long. As a paladin, I must look after many tasks!~ */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END

IF ~~ THEN BEGIN kickout_4
  SAY #%2%15443 /* As it should be! Let us go! */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

/* kicked out somewhere else (not bd4700.are in Avernus, not Korlasz' Crypt) */
IF ~GlobalGT("bd_joined","locals",0)~ THEN BEGIN kickout_5
  SAY #%2%14730 /* ~But... but... we were a team, we were bound by... by honor! *sigh* Why is everything always so complicated?~ */
  + ~GlobalGT("bd_npc_camp_chapter","global",1)
     GlobalLT("bd_npc_camp_chapter","global",5)
     OR(2)
       !Range("ff_camp",999)
       NextTriggerObject("ff_camp")
     !IsOverMe("Ajantis")~ + @104 /* ~[PC Reply]Please, go back to the camp.~ */ DO ~SetGlobal("bd_npc_camp","locals",1)~ + kickout_6
  ++ @101 /* ~[PC Reply]Please wait here until I return.~ */ + kickout_3
  ++ @102 /* ~[PC Reply]Please stay with the group, Ajantis.~ */ + kickout_4
END

IF ~~ THEN BEGIN kickout_6
  SAY #3519 //As you will. (same for EET)
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END

/* join-up after leaving the group */
IF ~Global("bd_joined","locals",0)
!InPartyAllowDead("Dorn")~ THEN join_again
  SAY #%2%15442 /* ~No doubt you have returned to your senses and wish to continue our glorious fight against evil! A wise and fortuitous decision.~ */
+ ~Global("C#AjSoD_Quest","GLOBAL",1)~ + @105 /* ~[PC Reply]Something else, first. We met Waterdhavian soldiers named Haiva and Rickon who told us to say hello. And Rickon is waiting for his duel.~ */ DO ~SetGlobal("C#AjSoD_Quest","GLOBAL",2)~ + met_rickon
  ++ #%2%15420 /* ~You are correct! We shall resume our quest to bring justice throughout the land!~ */ + kickout_4
  ++ #%2%15419 /* ~You are mistaken. I do not wish you to return to my service just yet.~ */ + kickout_3
END

IF ~Global("bd_joined","locals",0)
InPartyAllowDead("Dorn")~ THEN no_joining_dorn
SAY @106 /* ~[Ajantis]I see the evil blackguard next to you, <CHARNAME>. There is no place alongside you for me in this case.~ */
IF ~~ THEN EXIT
END

/* SoD Quest */
IF ~~ THEN met_rickon
SAY @107 /* ~[Ajantis]Haiva is here? I'll look foreward to meeting her. And Rickon... (sigh) He doesn't give up, does he. Thank you for letting me know. Do you have need of me now?~ */
  ++ #%2%15420 /* ~You are correct! We shall resume our quest to bring justice throughout the land!~ */ + kickout_4
  ++ #%2%15419 /* ~You are mistaken. I do not wish you to return to my service just yet.~ */ + kickout_3
END