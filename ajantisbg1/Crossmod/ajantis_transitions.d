APPEND %AJANTIS_JOINED%

/* Korpasz dead: dialogue inside Korlasz' Crypta 
## needs other trigger in "ajbg1_bd0130.baf" to work */


/* Korpasz was killed although tried to surrender - will lead into the unused original dialogue */
IF WEIGHT #-1
~!%ENDOFBG1_1% Global("C#Ajantis_BG1KorlaszKilled","GLOBAL",1)~ THEN sarevok_defeated
SAY @22 /* ~Korlasz begged for her life before you killed her, <CHARNAME>.~ */
IF ~~ THEN DO ~SetGlobal("C#Ajantis_BG1KorlaszKilled","GLOBAL",2)~ + sarevok_defeated_01
END

/* this is the original SoD dialogue, but without the other NPC interjections */
IF ~~ THEN sarevok_defeated_01
  SAY #%46137% /* ~That was unnecessary, <CHARNAME>. What did that slaughter gain us? ~ */
  IF ~~ THEN REPLY #%46138% /* ~This is a bloody business we're in, Ajantis Ilvarstarr. Sometimes, we must do things we would find... distasteful... to ensure a venture's success.~ */ GOTO sarevok_defeated_02
  IF ~~ THEN REPLY #%46139% /* ~Sarevok's collaborators being brought to justice isn't enough. They must be destroyed, wiped from the face of Toril.~ */ GOTO sarevok_defeated_02
  IF ~~ THEN REPLY #%46140% /* ~It gained me the satisfaction of seeing the last servant of my half-brother struck down by my hand.~ */ GOTO sarevok_defeated_02
END

IF ~~ THEN sarevok_defeated_02
  SAY #%46145% /* ~It wasn't right, <CHARNAME>. It simply wasn't right.~ */
  IF ~~ THEN EXIT
  IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + sarevok_defeated_03
END

IF ~~ THEN sarevok_defeated_03
SAY @5
IF ~~ THEN + sarevok_defeated_04
END

IF WEIGHT #-1
~!%ENDOFBG1_1% Global("C#Ajantis_BG1KorlaszDefeated","GLOBAL",1)~ THEN sarevok_defeated_04
SAY @3 /* ~We... we *did* it! Sarevok and his allies, all defeated.~ */
= @4 /* ~And we are both alive, love! This is a joyous moment. It is also the moment we were both talking about. I will leave soon for Waterdeep. But not just now - I want to relish the peaceful moment with you, love. And... we also need to leave this dungeon, after all. (smiles)~ */
IF ~~ THEN DO ~SetGlobal("C#Ajantis_BG1KorlaszDefeated","GLOBAL",2)~ EXIT
END

END //APPEND


/* Transitions. after all quests are done, post-Korlasz 
Ajantis will comment but only leave if PC wants him to. */
/* DO ~SetGlobal("#L_PKExitModded","LOCALS",0)~ */
CHAIN
IF WEIGHT #-1
~Global("C#AjantisBG1_TransitionsKD","GLOBAL",1)~ THEN %AJANTIS_JOINED% post_korlasz
@23 /* ~This is a glorious moment, <CHARNAME>. We achieved what I was sent to accomplish, and more.~ */
DO ~SetGlobal("C#AjantisBG1_TransitionsKD","GLOBAL",2)~
== %AJANTIS_JOINED% IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @24 /* ~I am ready to set out to report to my Oder. This would mean farewell.~ */
== %AJANTIS_JOINED% IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @25 /* ~I am ready to set out to seek consent from my family and report to my Order. This would mean good bye.~ */
END
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ + @26 /* ~I understand that you are eager to leave. Thank you for everything, I am sure we will met again. Farewell.~ */ + bg1_leave_nr
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @27 /* ~I understand that you are eager to leave. Have a good trip, and I am looking foreward to our reunion.~ */ + bg1_leave_01
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ + @28 /* ~I would have more need of you, Ajantis. Please let us continue our travels and follow up on some things we had to leave unfinished to pursue our main goal.~ */ + post_korlasz_01_nr
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @28 /* ~I would have more need of you, Ajantis. Please let us continue our travels and follow up on some things we had to leave unfinished to pursue our main goal.~ */ + post_korlasz_01
++ @29 /* ~You might leave later, but not with this equipment.~ */ + post_korlasz_01_nr


APPEND %AJANTIS_JOINED%

IF ~~ THEN post_korlasz_01
SAY @30 /* ~I understand. I will enjoy travelling at your side some more.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN post_korlasz_01_nr
SAY @31 /* ~I understand. I will stand ready to follow your orders some more.~ */
IF ~~ THEN EXIT
END



/* Transitions. SoD AND direct BGII transition. Ajantis will leave. */
/* 
IF ~OR(3)

		Global("#L_StartCaelarAttack","GLOBAL",1) 
		Global("#L_StartCaelarAttack","GLOBAL",2) 
		Global("#L_StartCaelarAttack","GLOBAL",3)~ THEN DO ~SetGlobal("#L_SoDExitModded","LOCALS",0)~ EXIT 
IF ~Global("#L_StartBG2","GLOBAL",1)~ THEN DO ~SetGlobal("#L_BG2ExitModded","LOCALS",0)~ EXIT


*/

/* non-romance case */
IF WEIGHT #-1
~Global("C#AjantisBG1_TransitionsLeave","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN bg1_leave_nr
SAY @0 /* ~It was an honor to cleanse this place from the bandit threat and the rising war with you. My task here is done. I shall return home to call on the Order of the Radiant Heart. I will report the happenings and your part in it. I, ahem, will also mention my part in it, and hope I will be found worthy to receive knighthood. I thank you for combining forces with me. Farewell!~ */ 
IF ~~ THEN DO ~SetGlobal("#L_SoDExitModded","LOCALS",0)
SetGlobal("C#AjantisBG1_TransitionsLeave","GLOBAL",2)
TakePartyItem("x#ajshld")
DestroyItem("x#ajshld")~ EXIT 
IF ~Global("#L_StartBG2","GLOBAL",1)~ THEN DO ~SetGlobal("#L_BG2ExitModded","LOCALS",0)
SetGlobal("C#AjantisBG1_TransitionsLeave","GLOBAL",2)
TakePartyItem("x#ajshld")
DestroyItem("x#ajshld")~ EXIT
IF ~Global("C#AjantisBG1_TransitionsLeave","GLOBAL",0)~ THEN DO ~TakePartyItem("x#ajshld")
DestroyItem("x#ajshld")
LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
EscapeArea()~ EXIT
END

/* romance case */
IF WEIGHT #-1
~Global("C#AjantisBG1_TransitionsLeave","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN bg1_leave
SAY @1 /* ~<CHARNAME>, I fear time has come to say good bye. The war is stopped, Sarevok is defeated, the task the Order gave me is done. It is time for me to report back, but I will travel to Waterdeep first, as we already agreed upon. Nothing will detain me from seeking my parents' answer concerning our plans for marriage, now that our foe is defeated and peace has come back to the lands, at last. I am so looking foreward to talking to them, <CHARNAME>, my love. Talking to them and telling them of the love I hold for you.~ */
IF ~~ THEN + bg1_leave_01
END

IF ~~ THEN bg1_leave_01
SAY @2 /* ~My heart aches to leave you. I will send you messages about my whereabouts as often as I can. And be it Waterdeep, Athkatla, or here that we meet again, be assured I will come for you - or await you, no matter where we are destined to be reunited. Farewell, 'Heroine of Baldur's Gate' (smiles). Relish the people's gratitude and praise while they are still willing to give it, <CHARNAME>. You earned it.~ */
IF ~~ THEN DO ~SetGlobal("#L_SoDExitModded","LOCALS",0)
SetGlobal("C#AjantisBG1_TransitionsLeave","GLOBAL",2)
TakePartyItem("x#ajshld")
DestroyItem("x#ajshld")~ EXIT 
IF ~Global("#L_StartBG2","GLOBAL",1)~ THEN DO ~SetGlobal("#L_BG2ExitModded","LOCALS",0)
SetGlobal("C#AjantisBG1_TransitionsLeave","GLOBAL",2)
TakePartyItem("x#ajshld")
DestroyItem("x#ajshld")~ EXIT
IF ~Global("C#AjantisBG1_TransitionsLeave","GLOBAL",0)~ THEN DO ~TakePartyItem("x#ajshld")
DestroyItem("x#ajshld")
LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
EscapeArea()~ EXIT
END

END //APPEND
