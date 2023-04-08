

/* Make Corwin mention Ajantis's whereabouts in BG city */
I_C_T bdschael 39 C#AjSoD_bdschael_39
== bdschael IF ~!Dead("Ajantis") !InPartyAllowDead("Ajantis") 
OR(2)
	BeenInParty("Ajantis")
	Global("SOD_fromimport","GLOBAL",0)
~ THEN @0 /* [Corwin]The Order of the Most Radiant Heart gave us note that they sent their squire Ajantis for support. He should arrive at the palace soon. */
END

/* HC is working with doppelganger of prison */
I_C_T BDFFDOPP 11 C#AjSoD_BDFFDOPP_11
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @1 /* [Ajantis]There is no way I will stand by while a doppelganger is being freed from a palace cell! Do not open that door, <CHARNAME>, or I will have to act accordingly. */
END

/* conspiring nobles. Check whether the PC was straight or not */
ADD_TRANS_ACTION BDARAYA BEGIN 1 END BEGIN 0 END ~SetGlobal("C#AjantisSoD_NoblesSoD","GLOBAL",1)~

/* conspiring nobles dead */
CHAIN
IF ~OR(2)
Global("C#AjantisSoD_NoblesSoD","GLOBAL",2)
Global("C#AjantisSoD_NoblesSoD","GLOBAL",3)~ THEN BDAJANTJ dead_conspiring_nobles
@2 /* [Ajantis]We killed nobles from the city - what an unfortunate turn of events. */
== BDAJANTJ IF ~Global("C#AjantisSoD_NoblesSoD","GLOBAL",3)~ THEN @3 /* [Ajantis]They have brought it on themselves, but the thought gives no comfort. You tried to address them honestly, <CHARNAME>, but they couldn't handle the truth. */
== BDAJANTJ IF ~Global("C#AjantisSoD_NoblesSoD","GLOBAL",2)~ THEN @4 /* [Ajantis]Why did you have to threaten them? I know they weren't innocent themselves, but this bloodshed was unnecessary. */
END
IF ~~ THEN DO ~SetGlobal("C#AjantisSoD_NoblesSoD","GLOBAL",4)~ EXIT

/* Teleri with the statues */
INTERJECT BDTELERI 31 C#AjSoD_BDTELERI_31
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @5 /* [Ajantis]There is no way we will do this! I will stop you with my own hands if I have to, you evil person! */
END
IF ~~ THEN EXTERN BDTELERI 27

/* the dwarven miners. Do not kill them for the Lich! */
I_C_T BDCOLDH 17 C#AjSoD_BDCOLDH_17
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @6 /* [Ajantis]<CHARNAME>, we will not do a Lich's bidding! I will not be part of this. */
END


APPEND BDBAELOT 
IF ~~ THEN joining
SAY #%2%66577 /* ~You can depend on this drow.~ */
COPY_TRANS BDBAELOT 32
END
END //APPEND

/* Reaction to Baeloth joining */
INTERJECT BDBAELOT 32 C#AjSoD_BDBAELOT_32
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @7 /* [Ajantis]<CHARNAME>, we would join forces with this drow? We know by now that he is a charlatan of the lowest sort. */
END
+ ~Global("C#AjantisBG1_BaelothBanter","GLOBAL",1)~ + @8 /* [PC Reply]A "charlatan" who served me well in my pursuit for Sarevok. Get in line, Baeloth. */ EXTERN BDBAELOT joining
++ @9 /* [PC Reply]And I just invited him into the group, Ajantis. I expect you to comply. */ EXTERN BDBAELOT joining
/* #62074 */
++ @10 /* [PC Reply]I don't need tension in my group right now, Baeloth. To the south, there is a Flaming Fist camp. Go there, and tell them <CHARNAME> sent you. They're accustomed to duergar and drow; they shouldn't give you too much trouble. */ EXTERN BDBAELOT 33

APPEND BDMKHIIN 
IF ~~ THEN joining
SAY #%2%40012 /* ~Yes. I will come with you.~ [BD40012] */
COPY_TRANS BDMKHIIN 23
END
END //APPEND

APPEND BDAJANTJ 
IF ~~ THEN mkhiin_joining_objection
SAY @11 /* [Ajantis]You would consider a goblin a suitable fighting comrade? */
++ @12 /* [PC Reply]This one, yes. You'll have to accept my decision, Ajantis. */ EXTERN BDMKHIIN joining
/* #62079 */
+ ~Global("bd_mkhiin_camp","bd1000",0)
!IsValidForPartyDialogue("CORWIN")~ + @13 /* [PC Reply]Fine, we'll postbone this. M'Khiin, my camp is to the south of here. Ask for Corporal Bence Duncan and explain the situation. Tell him I may have need of your services in the future. Hopefully, that will keep you safe. */ EXTERN BDMKHIIN 21
+ ~Global("bd_mkhiin_camp","bd1000",0)
IsValidForPartyDialogue("CORWIN")~ + @13 /* [PC Reply]Fine, we'll postbone this. M'Khiin, my camp is to the south of here. Ask for Corporal Bence Duncan and explain the situation. Tell him I may have need of your services in the future. Hopefully, that will keep you safe. */ EXTERN ~BDCORWIJ~ 326
END

IF ~~ THEN mkhiin_joining_objection_01
SAY @14 /* [Ajantis]I will comply and remain vigilant. */
COPY_TRANS BDMKHIIN 24
END
END //APPEND


/* Reaction to M'Khiin joining */
INTERJECT BDMKHIIN 18 C#AjSoD_BDMKHIIN_Join
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @15 /* [Ajantis]<CHARNAME>, I need to object. */
END
IF ~~ THEN EXTERN BDAJANTJ mkhiin_joining_objection

INTERJECT BDMKHIIN 22 C#AjSoD_BDMKHIIN_Join
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @15 /* [Ajantis]<CHARNAME>, I need to object. */
END
IF ~~ THEN EXTERN BDAJANTJ mkhiin_joining_objection

INTERJECT BDMKHIIN 23 C#AjSoD_BDMKHIIN_Join
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @15 /* [Ajantis]<CHARNAME>, I need to object. */
END
IF ~~ THEN EXTERN BDAJANTJ mkhiin_joining_objection

INTERJECT BDMKHIIN 24 C#AjSoD_BDMKHIIN_Join
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @16 /* [Ajantis]<CHARNAME>, I need to object. You would consider a goblin a suitable fighting comrade? */
END
++ @12 /* [PC Reply]This one, yes. You'll have to accept my decision, Ajantis. */ EXTERN BDAJANTJ mkhiin_joining_objection_01
/* #62079 */
+ ~Global("bd_mkhiin_camp","bd1000",0)
!IsValidForPartyDialogue("CORWIN")~ + @13 /* [PC Reply]Fine, we'll postbone this. M'Khiin, my camp is to the south of here. Ask for Corporal Bence Duncan and explain the situation. Tell him I may have need of your services in the future. Hopefully, that will keep you safe. */ EXTERN BDMKHIIN 21
+ ~Global("bd_mkhiin_camp","bd1000",0)
IsValidForPartyDialogue("CORWIN")~ + @13 /* [PC Reply]Fine, we'll postbone this. M'Khiin, my camp is to the south of here. Ask for Corporal Bence Duncan and explain the situation. Tell him I may have need of your services in the future. Hopefully, that will keep you safe. */ EXTERN BDCORWIJ 326


/* Vampire */
I_C_T BDTSOLAK 2 C#AjSoD_BDTSOLAK_2
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @17 /* [Ajantis]Why are we still talking to this creature? Let's fight it, like we came here to do! */
END

I_C_T BDTSOLAK 3 C#AjSoD_BDTSOLAK_3
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @17 /* [Ajantis]Why are we still talking to this creature? Let's fight it, like we came here to do! */
END

I_C_T BDISABEL 40 C#AjSoD_BDISABEL_40
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @18 /* [Ajantis]<HARNAME>! I cannot stand for this. There is only one side I can take here! */
END

/* (T3) PC threatens to kill the crusaders with the spikes in bd7230.are */
I_C_T bdkharmy 6 C#AjSoD_bdkharmy_6
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @19 /* [Ajantis]Do not do this, <CHARNAME>. There is no honor in killing a defenseless foe like this. */
END

/* (T3) PC handed over the Bridgefort Castle to the crusaders */
I_C_T BDKHALIJ 33 C#AjSoD_betrayal_discussion //"C#AjSoD_betrayal_discussion" is the name of the global variable
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @20 /* [Ajantis]You gave the fort into the enemies' hands where we could have fought for their freedom! What else are we supposed to call this than treachery? */
END

/* (T3) The Chicken, the Well, and the Dog Easter Egg */
I_C_T3 BDDOGW01 6 C#BE_BDDOGW01_6
== BDAJANTJ IF ~IfValidForPartyDialogue("Ajantis")~ THEN @21 /* [Ajantis]I... did not understand what just happened. Are these two real chicken and dog? */
END

/* (T3) Training the Recruits in the Coalition Camp */

/* Clovis */
EXTEND_BOTTOM BDCLOVIS 3
+ ~IfValidForPartyDialogue("Ajantis")~ + @22 /* [PC reply]Ajantis, any advice? */ EXTERN BDAJANTJ teach_clovis
END

CHAIN
IF ~~ THEN BDAJANTJ teach_clovis
@23 /* [Ajantis]You attack at the right places, but I see you reaching upward a lot, which is disadvantageous. */
== BDCLOVIS #%2%48085 /* ~[Clovis]I do tire pretty quickly during drills. I thought I just needed more training.~ */
== BDAJANTJ @24 /* [Ajantis]That would surely help, but you can only train so much if your statue is... lacking in height. You need to take the fight to your own height - taller foes might have more vulnerable spots there as you might think. Try to address these. */
END
IF ~~ THEN DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN BDCLOVIS 5

APPEND BDAJANTJ


/* first nightmare, only romance case */

IF ~Global("C#AjSoD_Nightmare","GLOBAL",1)~ THEN first_nightmare
SAY @25 /* [Ajantis]Love, you were tossing and turning in your sleep again... Just know that I am here, at your side, whenever you need me. */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_Nightmare","GLOBAL",2)~ EXIT
END

/* (T3) Comment before entering the Cave with the blind Wyrmlings (bd5100aw.bcs) */
IF ~Global("C#AjSoD_BD_SDD317_WYRMS","BD5100",1)~ THEN blind_wyrm_comment
SAY @26 /* [Ajantis]The sounds coming from the cave in front of us are unusual. I cannot connect them to any living beast I know. And yet, it sounds like a creature in great turmoil. */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_BD_SDD317_WYRMS","BD5100",2)~ EXIT
END

/* (T3) Comment after killing the blind Wyrmlings in Cave (bd0113.bcs) */
IF ~Global("C#AjSoD_BD_SDD317_WYRMS","BD5100",3)~ THEN blind_wyrm_comment
SAY @27 /* [Ajantis]What was this abomination - in all my years in a family of breeders of exotic creatures and monsters, never have I seen such a hideous and cruel result. */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_BD_SDD317_WYRMS","BD5100",4)~ EXIT
END

/* PC lost paladinhood / rangerhood due to the spike trap */
IF ~Global("C#AjSoD_SpikeTrapFall","GLOBAL",2)~ THEN spiketrap_fall
SAY @28 /* [Ajantis]What... what did you *do*? Fallen - we have fallen! You are evil, <CHARNAME>. I need to repent - I need to beg Helm for forgiveness! */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_SpikeTrapFall","GLOBAL",3) 
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
END



END //APPEND


/* (T3) Thrix' Game */

/* Thrix will not propose gamble if there is no NPC available: add Ajantis here */
ADD_TRANS_TRIGGER BDTHRIX 13 ~!IsValidForPartyDialogue("Ajantis")~ DO 2 IF ~!Is?f?ValidForPartyDialogue("Rasaad")~


/* Thrix' game: add Ajantis for certain randomness to the blocks of 4 dialogue states each */
/* 1st states of 4 state blocks: add Biff to the end */
EXTEND_BOTTOM BDTHRIX 21 26 30 34 38 42 46 50 54 58 62 66 70 74 78 82 86 90
IF ~Global("C#AjSoD_Thrix","GLOBAL",0) IsValidForPartyDialogue("Ajantis")~ THEN + C#AjSoD_thrix
END
/* 2nd states of 4 state blocks: add Biff at the top, i.e. position "1" as "0" is in case there is no more NPC available */
EXTEND_TOP BDTHRIX 22 27 31 35 39 43 47 51 55 59 63 67 71 75 79 83 87 91 #1
IF ~Global("C#AjSoD_Thrix","GLOBAL",0) IsValidForPartyDialogue("Ajantis")~ THEN + C#AjSoD_thrix
END
/* 3rd states of 4 state blocks: add Biff at position 10 */
EXTEND_TOP BDTHRIX 23 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 #10
IF ~Global("C#AjSoD_Thrix","GLOBAL",0) IsValidForPartyDialogue("Ajantis")~ THEN + C#AjSoD_thrix
END
/* 4th states of 4 state blocks: add Ajantis at position 5 */
EXTEND_TOP BDTHRIX 24 29 33 37 41 45 49 53 57 61 65 69 73 77 81 85 89 93 #5
IF ~Global("C#AjSoD_Thrix","GLOBAL",0) IsValidForPartyDialogue("Ajantis")~ THEN + C#AjSoD_thrix
END

/* in case PC lost and Ajantis was chosen: Thrix claims him (only verbally) */
EXTEND_BOTTOM BDTHRIX 118 119 120 121 
IF ~Global("C#AjSoD_Thrix","GLOBAL",2) IsValidForPartyDialogue("Ajantis")~ THEN + C#AjSoD_chosen
END

/* Thrix new dialogue for our NPC */
APPEND BDTHRIX

IF ~~ THEN BEGIN C#AjSoD_thrix 
  SAY @29 /* [Thrix]The squire of the Order of the Most Radiant Heart... always so vigilant and righteous. I will take his soul and show him that there is no justice in this world. */
  IF ~~ THEN REPLY @30 /* [PC Reply]You want Ajantis? Then he will be yours if I lose. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",1)
SetGlobal("bd_thrix_sacrifice_companion","global",1)
~ EXTERN BDAJANTJ thrix_01

  IF ~RandomNum(4,1)
!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN REPLY @31 /* [PC Reply]Ajantis is with me on a path of education. You will not get his soul. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",2) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 70
  IF ~RandomNum(4,2)
!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN REPLY @31 /* [PC Reply]Ajantis is with me on a path of education. You will not get his soul. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",2) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 71
  IF ~RandomNum(4,3)
!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN REPLY @31 /* [PC Reply]Ajantis is with me on a path of education. You will not get his soul. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",2) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 72
  IF ~RandomNum(4,4)
!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN REPLY @31 /* [PC Reply]Ajantis is with me on a path of education. You will not get his soul. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",2) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 73

  IF ~!Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN REPLY @31 /* [PC Reply]Ajantis is with me on a path of education. You will not get his soul. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",2)~ + 114

  IF ~RandomNum(4,1)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN REPLY @32 /* [PC Reply]Ajantis is with me. You will not get my betrothed's soul. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",2) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 70
  IF ~RandomNum(4,2)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN REPLY @32 /* [PC Reply]Ajantis is with me. You will not get my betrothed's soul. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",2) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 71
  IF ~RandomNum(4,3)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN REPLY @32 /* [PC Reply]Ajantis is with me. You will not get my betrothed's soul. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",2) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 72
  IF ~RandomNum(4,4)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN REPLY @32 /* [PC Reply]Ajantis is with me. You will not get my betrothed's soul. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",2) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 73

  IF ~!Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN REPLY @32 /* [PC Reply]Ajantis is with me. You will not get my betrothed's soul. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",2)~ + 114

  IF ~~ THEN REPLY @33 /* [PC Reply]I'll not risk Ajantis's soul in so blithe a fashion. If I cannot answer your riddle, mine is the soul you will take. Agreed? */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",3)~ GOTO 113
  IF ~~ THEN REPLY @34 /* [PC Reply]I'll feed you your own limbs if you don't let me into the tower, you wretched creature. I'm done playing games with you. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",5)~ GOTO 12
END

IF ~~ THEN C#AjSoD_chosen
SAY @35 /* [Thrix]Thrix has marked your soul, squire. Your soul is mine! */ 
++ @36 /* [PC Reply]I am sorry, Ajantis. */ DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",4)~ EXTERN BDAJANTJ thrix_02
++ @37 /* [PC Reply]No, you will not take his soul, devil. We will fight you! */ GOTO 10
END

END //APPEND

/* Ajantis's reactions in Thrix' dialogue */
APPEND BDAJANTJ

IF ~~ THEN thrix_01
SAY @38 /* [Ajantis]By Helm! What is this game, <CHARNAME>? */
IF ~~ THEN EXTERN ~BDTHRIX~ 116
END

IF ~~ THEN thrix_02
  SAY @39 /* [Ajantis]You are quick in gambling your comrades away, <CHARNAME>. I am shocked to see you like this! */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1) //this is for an achievement
  ~ EXTERN ~BDTHRIX~ 140
END 

END //APPEND

/* Ajantis reacts to Thrix's game */
/* I do the reaction in one CHAIN. Change this to whatever dialogue tree fits your NPC. */
CHAIN
IF ~OR(2)
    Global("C#AjSoD_Thrix","GLOBAL",6)
    Global("C#AjSoD_Thrix","GLOBAL",9)~ THEN BDAJANTJ after_thrix
@40 /* [Ajantis]You gambled with my soul, <CHARNAME>. My soul! */ 
== BDAJANTJ IF ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN @41 /* [Ajantis]Just because you won the game does not make this any less evil in spirit. */
== BDAJANTJ IF ~Global("C#AjSoD_Thrix","GLOBAL",6) !Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN @42 /* [Ajantis]And I am in danger, because we did not succeed in defeating the fiend. */
== BDAJANTJ IF ~Global("C#AjSoD_Thrix","GLOBAL",9) !Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN @43 /* [Ajantis]How can you be so evil in spirit? It will be my threat now to live with the risk of a fiend coming for my soul! */
END
IF ~Global("C#AjSoD_Thrix","GLOBAL",9) !Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",11)~ EXIT // We need to do this here or the checks above will not work.
+ ~OR(2)
!Global("C#AjSoD_Thrix","GLOBAL",9) 
Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @44 /* [PC Reply]Well, you'll have your Order brethren to fend it off, I am sure. */ + after_thrix_02
++ @45 /* [PC Reply]A fiend should not be a problem for such a great knight like you, hmm? */ + after_thrix_02
++ @46 /* [PC Reply]I am sorry, Ajantis. I wanted to prevent a fight. */ + after_thrix_01

APPEND BDAJANTJ 

IF ~~ THEN after_thrix_01
SAY @47 /* [Ajantis]For you! You prevented a fight for you - but not me! */
IF ~~ THEN + after_thrix_03
END

IF ~~ THEN after_thrix_02
SAY @48 /* [Ajantis]You - well, you might be right about that. */
IF ~~ THEN + after_thrix_03
END

IF ~~ THEN after_thrix_03
SAY @49 /* [Ajantis]We could have killed it then and there, in a clean and straight fight! Why gambling with this fiend at all? I will watch you carefully from now on - your evil heritage starts to show, as it seems! */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_Thrix","GLOBAL",11)~ EXIT 
END
END //APPEND

/* after return from Avernus, Torsin de Lancie */
I_C_T BDDELANC 79 C#AjSoD_BDDELANC_79
== BDAJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN @50 /* [Ajantis]We did it! We stopped a great evil! We return victorious and saved the Sword Coast from a fiend war. This is a great day, <CHARNAME>, and I am honored to have been part of this group. I will let my order superiors know about your heroic deeds to save the Sword Coast and Dragonspear Castle! */
END

APPEND BDAJANTI

/* Ajantis visits PC in prison */
/* only for romance case: */
IF WEIGHT #-1 
~Global("C#AjSoD_jail_visitors","bd0104",1)
GlobalGT("bd_player_exiled","global",0)~ THEN prison_visit_romance_innocent
SAY @51 /* [Ajantis]<CHARNAME>! My love, finally they let me talk to you! What happened back there? What happened to you - and Skie? */
++ @52 /* [PC Reply]Ajantis! I am so glad to see you. */ + prison_visit_romance_01
++ @53 /* [PC Reply]Do you believe me? Do you believe I did not kill Skie? */ + prison_visit_romance_02
++ @54 /* [PC Reply]What do you think happened? */ + prison_visit_romance_03
++ @55 /* [PC Reply]You'll have to help me out of here, Ajantis. I am innocent! */ + prison_visit_romance_04
++ @56 /* [PC Reply]I... I don't know. It felt so real... */ + prison_visit_romance_04
END

IF ~~ THEN prison_visit_romance_01
SAY @57 /* [Ajantis]This is not how it was supposed to happen! They should celebrate you for the hero you are! How could this happen? */
++ @53 /* [PC Reply]Do you believe me? Do you believe I did not kill Skie? */ + prison_visit_romance_02
++ @54 /* [PC Reply]What do you think happened? */ + prison_visit_romance_03
++ @55 /* [PC Reply]You'll have to help me out of here, Ajantis. I am innocent! */ + prison_visit_romance_04
++ @56 /* [PC Reply]I... I don't know. It felt so real... */ + prison_visit_romance_04
END

IF ~~ THEN prison_visit_romance_02
SAY @58 /* [Ajantis]I... Yes, I do believe that you did not intend for Skie to die. And therefore I believe that you did not kill her, at least not by your own will. */
IF ~~ THEN + prison_visit_romance_03
END

IF ~~ THEN prison_visit_romance_03
SAY @59 /* [Ajantis]I believe you were tricked - somehow. It doesn't matter for your innocence who made the final killing blow, because none of this was your intention. */
IF ~~ THEN + prison_visit_romance_07
END

IF ~~ THEN prison_visit_romance_04
SAY @60 /* [Ajantis]I know you! I know that you would not just kill Skie. */
IF ~~ THEN + prison_visit_romance_03
END

IF ~~ THEN prison_visit_romance_05
SAY @61 /* [Ajantis]It is imperative that people see you for what you are, before even more bad rumors are spread. I will travel, no - ride on the fasted steed - I will *fly* to the Headquarters of my Order brethren, my love. I will call on them to help you out of here, to see your true worth. */
++ @62 /* [PC Reply]Don't leave me now, Ajantis. Please stay. */ + prison_visit_romance_06
++ @63 /* [PC Reply]Do that, if you think it will mean anything. */ + prison_visit_romance_06
++ @64 /* [PC Reply]So you are leaving me here. */ + prison_visit_romance_06
END

IF ~~ THEN prison_visit_romance_06
SAY @65 /* [Ajantis]Leaving you in your times of need is breaking my heart, <CHARNAME>. There is nothing I can do when staying here. Seeing you - seeing you like this, it is driving me desparate! I will help you the only way I know how, by appealing to my Order superiors. You need guidance - not the gallows! */
= @66 /* [PC Reply]When all is done, I will take you in my arms again. I will hold you - and never let you go. I will protect you - from dangers from both outside as well as inside you! Until then, may Helm protect you. */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_jail_visitors","bd0104",2) 
SetGlobal("bd_jail_visitors","bd0104",4) //we reset the variable to "4" so other romance interests can show - if present. If none is present, the script bd0104.bcs will move on.
SetGlobal("bd_visit_player","locals",1) //this will let Ajantis EscapeArea() via bdvisit.bcs
~ EXIT
END

IF ~~ THEN prison_visit_romance_07
SAY @67 /* [Ajantis]Everyone knows about your Bhaal heritage now, <CHARNAME>. You are no longer the hero of Baldur's Gate, you are also Sarevok's <PRO_BROTHERSISTER>, a child of the God of Murder. People's perception is shifting, and what happened at Dragonspear Castle makes it even more complicated. */
IF ~~ THEN + prison_visit_romance_05
END

IF WEIGHT #-1 
~Global("C#AjSoD_jail_visitors","bd0104",1)
Global("bd_player_exiled","global",0)~ THEN prison_visit_romance_guilty
SAY @68 /* [Ajantis]<CHARNAME>, finally they let me see you! After all what happened - why? Why did Skie have to die? */
++ @69 /* [PC Reply]Ajantis! You do not believe I did that, do you? */ + prison_visit_romance_guilty_01
++ @55 /* [PC Reply]You'll have to help me out of here, Ajantis. I am innocent! */ + prison_visit_romance_guilty_02
++ @70 /* [PC Reply]I don't know either why, Ajantis. I didn't do it! */ + prison_visit_romance_guilty_02
++ @71 /* [PC Reply]I don't know, Ajantis... I don't know what happened. It felt so real... */ + prison_visit_romance_guilty_02
++ @72 /* [PC Reply]If you don't believe me, then go. The last thing I need is reproaches from you. */ + prison_visit_romance_06
END

IF ~~ THEN prison_visit_romance_guilty_01
SAY @73 /* [Ajantis]I don't know what to believe... */
IF ~~ THEN + prison_visit_romance_guilty_02
END

IF ~~ THEN prison_visit_romance_guilty_02
SAY @74 /* [Ajantis]It all points to you, <CHARNAME>. Your evil heritage - it starts to show. Being awokened by the divine forces at Boareskyr Bridge, you are but a toy in their wake! */
++ @75 /* [PC Reply]Please, Ajantis, that can't be the last thing you'll say to me. You know me better than that! */ + prison_visit_romance_guilty_03
++ @76 /* [PC Reply]Then I'll need you more than ever, to protect me from myself! Isn't that what you promised? */ + prison_visit_romance_guilty_04
++ @72 /* [PC Reply]If you don't believe me, then go. The last thing I need is reproaches from you. */ + prison_visit_romance_06
END

IF ~~ THEN prison_visit_romance_guilty_03
SAY @77 /* [Ajantis]I - I still love you, with my whole heart. I knew the moment your heritage was revealed that this might happen! I call you my betrothed, and I will do so no matter what happens. I made a vow to you, and I will not break it. */
IF ~~ THEN + prison_visit_romance_guilty_06
END

IF ~~ THEN prison_visit_romance_guilty_04
SAY @78 /* [Ajantis]I am not sure what it means - protecting you, when you get consumed by this power... */
IF ~~ THEN + prison_visit_romance_guilty_03
END

IF ~~ THEN prison_visit_romance_guilty_05
SAY @79 /* [Ajantis]I will ask my Order superiors for their guidance, <CHARNAME>. We will not let them hang the Hero of Baldur's Gate out of a whim - but if the evidence is pointing to your guilt, there is nothing we can do. There is nothing I can do apart from this... */
++ @80 /* [PC Reply]Don't leave me now, Ajantis. Please stay near. */ + prison_visit_romance_06
++ @63 /* [PC Reply]Do that, if you think it will mean anything. */ + prison_visit_romance_06
++ @64 /* [PC Reply]So you are leaving me here. */ + prison_visit_romance_06
END

IF ~~ THEN prison_visit_romance_guilty_06
SAY @81 /* [Ajantis]Everyone knows about your Bhaal heritage now, <CHARNAME>. You are no longer the hero of Baldur's Gate, you are also Sarevok's brother, a child of the God of Murder. */
IF ~~ THEN + prison_visit_romance_guilty_05
END

END //APPEND


/* PC can ask Imoen about prison_visit_romance_06 in last meeting if prison_visit_romance_06 will not come along 
Global("X#AjantisRomanceActive","GLOBAL",2)*/
EXTEND_BOTTOM bdimoen 104
  + ~Global("C#AjSoD_party_epilogue","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @82 /* [PC Reply]Ajantis is still away, I guess? */ + ask_about_ajantis_romance
  + ~Global("C#AjSoD_party_epilogue","GLOBAL",1)~ + @83 /* [PC Reply]I guess I shouldn't be surprised that Ajantis chose not to continue travelling with the Bhaalchild. */ + ask_about_ajantis
END
EXTEND_BOTTOM bdimoen 109
  + ~Global("C#AjSoD_party_epilogue","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @82 /* [PC Reply]Ajantis is still away, I guess? */ + ask_about_ajantis_romance
  + ~Global("C#AjSoD_party_epilogue","GLOBAL",1)~ + @83 /* [PC Reply]I guess I shouldn't be surprised that Ajantis chose not to continue travelling with the Bhaalchild. */ + ask_about_ajantis
END
APPEND bdimoen
IF ~~ THEN ask_about_ajantis_romance
  SAY @84 /* [Imoen]Ajantis? Yes, he left right after he talked to you and didn't return so far. */
  IF ~~ THEN GOTO 119
END
IF ~~ THEN ask_about_ajantis
  SAY @85 /* [Imoen]Ajantis? He left right after the trial, saying that he needs to report to his order superiors. */
  IF ~~ THEN GOTO 119
END
END