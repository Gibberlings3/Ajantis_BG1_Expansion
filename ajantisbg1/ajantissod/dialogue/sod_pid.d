/* Global("X#AjantisRomanceActive","GLOBAL",2) */

APPEND bdajantj

IF ~IsGabber(Player1)~ THEN pid
SAY @1000 /* ~Yes, <CHARNAME>?~ */
+ ~Global("C#AjSoD_PID_2","LOCALS",0)~ + @1001 /* ~I'm glad to have you as a comrade in this endeavor, Ajantis.~ */ DO ~SetGlobal("C#AjSoD_PID_2","LOCALS",1)~ + back_together
+ ~Global("C#AjSoD_PID_3","LOCALS",0)~ + @1002 /* ~How did you fare after we parted ways?~ */ DO ~SetGlobal("C#AjSoD_PID_3","LOCALS",1)~ + fare
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
GlobalGT("C#AjantisSoD_LoveTalk","GLOBAL",1)
Global("C#AjSoD_PID_8","LOCALS",0)~ + @1003 /* ~So, it already started to be a problem even before we get married - you having to follow your order's calls, despite our private plans.~ */ DO ~SetGlobal("C#AjSoD_PID_8","LOCALS",1)~ + obligations
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
GlobalGT("C#AjantisSoD_LoveTalk","GLOBAL",1)
Global("C#AjSoD_PID_4","LOCALS",0)~ + @1004 /* ~When do you think will be the next possibility to meet your parents?~ */ DO ~SetGlobal("C#AjSoD_PID_4","LOCALS",1)~ + meet_parents
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
GlobalGT("C#AjSoD_Quest","GLOBAL",2)
Global("C#AjSoD_PID_5","LOCALS",0)~ + @1005 /* ~Haiva and Rickon are serving together - as a couple.~ */ DO ~SetGlobal("C#AjSoD_PID_5","LOCALS",1)~ + couple_together
+ ~Global("C#AjSoD_PID_6","LOCALS",0)~ + @1006 /* ~How come the order sent you here? I thought they do not interfere in local politics.~ */ DO ~SetGlobal("C#AjSoD_PID_6","LOCALS",1)~ + order_business
+ ~Global("C#AjSoD_PID_7","LOCALS",0)~ + @1007 /* ~You are one squire - why didn't the Order of the Radiant Heart send more knights as reincorcements against Caelar?~ */ DO ~SetGlobal("C#AjSoD_PID_7","LOCALS",1)~ + reinforcements
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
Global("C#AjSoD_PID_1","LOCALS",0)~ + @1008 /* ~Something on your mind?~ */ DO ~SetGlobal("C#AjSoD_PID_1","LOCALS",1)~ + portal_needs_pc_blood_02


+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3 + wounded_70
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned

+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell

+ ~!TimeOfDay(Night)
RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_01
+ ~!TimeOfDay(Night)
RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_02

+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)
TimeOfDay(Night)
RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_03
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)
TimeOfDay(Night)
RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_04

+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
TimeOfDay(Night)
RandomNum(3,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_03
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
TimeOfDay(Night)
RandomNum(3,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_04
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
TimeOfDay(Night)
RandomNum(3,3) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_01_engaged

+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04

+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(5,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_engaged
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(5,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_engaged
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(5,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(5,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(5,5)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_engaged


+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @4 + look

+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(4,1)~ + @5 + smile_01
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(4,2)~ + @5 + smile_02
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(4,3)~ + @5 + smile_03
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(4,4)~ + @5 + smile_04

+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @24 + kiss

+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @25 + hug

+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(3,1)~ + @26 + hand_holding_01
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(3,2)~ + @26 + hand_holding_02
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(3,3)~ + @26 + hand_holding_03

+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(3,1)~ + @27 + loveyou_01
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(3,2)~ + @27 + loveyou_02
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)
RandomNum(3,3)~ + @27 + loveyou_03

+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @28 + bodyhurt

+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + ~Ajantis, I want to end our relationship. This is final.~ + ajantis_break_up

++ ~Nothing at the moment.~ EXIT
END

IF ~~ THEN portal_needs_pc_blood_02
SAY @1009 /* ~It seems the gods did not grant you much rest after defeating your half brother, love. Great is the heritage you carry, and great is the battles the gods want you to fight. Let us turn this one into a victory of righteousness!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN fare
SAY @1010 /* ~Well, but I did not reach my planned destination. I was called back due to the rising crusade by the order. A lot of knights and squires are on mission to help stabilizing the situations on cities and villages across the Sword Coast, and even more are on dispatch in case the violence will spread. I was assigned to support the coalition as soon as the order got my message that I am free again.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN obligations
SAY @1011 /* ~It is special times, love. A warlady raised an army of mercenaries, destabilizing widespread parts of the Sword Coast... I am sure our time together will not always be like this.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN meet_parents
SAY @1012 /* ~Unfortunately, not only do I have duties to follow, but my parents have many obligations that can take one of them away from home for weeks. Your godly heritage is a delicate matter - I am not ready to turn to either of my parents alone, nor do I think we should reveal it in a profane way, like a letter.~ */
= @1013 /* ~Do not give up hope, my love. It was naive of me to think that I would have the time to travel to Waterdeep to speak to them - even without Caelar's crusade, my obligations lie within Athkatla and my goal to become a knight and full-fledged member of the order. If I do not find the time to travel to them, my parents will come to me when I call them, you can be sure of that.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN couple_together
SAY @1014 /* ~They are, and they seem quite content with it. Are you raising the topic because of our conversations about how I... imagined my future wife? I told you, it was what I was expecting, but not what I am anticipating. I love you, and I will be happy if circumstances will allow us to spend as much time together as possible.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN order_business
SAY @1015 /* ~We do not, but the Order of the Radiant Heart is a strong force if it comes to stabilizing the lands. What happens currently is pure chaos, we are all in high alert. Even if only few knights will engage against Caelar's crusade directly, we are working to help the people across the lands as much as possible and to relieve the local authorities and cities.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN reinforcements
SAY @1016 /* ~The Order of the Most Radiant Heart does not engage themselves into power struggles directly. Nevertheles,, we do help stabilizing the situation at many places that are not the direct war zones. Once we understand what threat Caelar really poses, the knights of the Order will be ready to prevent the worst.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_70
SAY @1017 /* ~I would appreciate healing for my wounds.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50
SAY @1018 /* ~I definitely need healing for my wounds, <CHARNAME>. In the state I am in, I will not be able to stand against evil with all my might.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_poisoned
SAY @1019 /* ~I am poisoned! Evil is trying to harm me by spreading its venom through my blood... It shall never succeed!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50_poisoned
SAY @1020 /* ~I am... wounded and *cough* poisoned! I need healing, <CHARNAME>, quick!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN state_spell
SAY @1021 /* ~Evil forces are weakening my prowess! I have to be more careful next time.~ */
IF ~~ THEN EXIT
END

/* day */
IF ~~ THEN tired_01
SAY @1022 /* ~I am exhausted... We should take a small rest to gather our strength.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN tired_02
SAY @1023 /* ~I am tired. We should take the time to rest, or evil will find us unprepared.~ */
IF ~~ THEN EXIT
END

/* night */
IF ~~ THEN tired_03
SAY @1024 /* ~I am tired. It has been a long day, and we are exhausted. Let us rest, and prepare for tomorrow.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN tired_04
SAY @1025 /* ~I am tired, and it is a dark night. We should take the time to rest or evil will find us weak.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN tired_01_engaged
SAY @1026 /* ~I am tired, love. I cannot wait to rest and cuddle up to you... if you wish so, of course.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN how_01
SAY @1027 /* ~Thank you for asking. I cannot wait to fight any evil that is coming our way!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN how_02
SAY @1028 /* ~As ever, ready to fight any evil that we might chance upon.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN how_03
SAY @1029 /* ~I am eagerly anticipating our next battle against evil!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN how_04
SAY @1030 /* ~Vigilant and eager to fight the villain behind all of this!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN how_01_engaged
SAY @1031 /* ~Thank you for asking, my love. I cannot wait to fight any evil that is coming our way!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN how_02_engaged
SAY @1032 /* ~As ever, ready to fight any evil that we might encounter, my love.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN how_03_engaged
SAY @1033 /* ~Thank you for asking, my love. I am happy to be at your side!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN hug
SAY @112
+ ~RandomNum(4,1)~ + @256 + hug_waist_01
+ ~RandomNum(4,2)~ + @256 + hug_waist_02
+ ~RandomNum(4,3)~ + @256 + hug_waist_02
+ ~RandomNum(4,4)~ + @256 + hug_01
+ ~RandomNum(4,1)~ + @257 + hug_shoulder_01
+ ~RandomNum(4,2)~ + @257 + hug_shoulder_02
+ ~RandomNum(4,3)~ + @257 + hug_01
+ ~RandomNum(4,4)~ + @257 + hug_01
+ ~RandomNum(3,1)~ + @258 + hug_back_01
+ ~RandomNum(3,2)~ + @258 + hug_back_02
+ ~RandomNum(3,3)~ + @258 + hug_back_03
+ ~RandomNum(3,1)~ + @259 + hug_jump_01
+ ~RandomNum(3,2)~ + @259 + hug_jump_02
+ ~RandomNum(3,3)~ + @259 + hug_jump_03
++ @242 EXIT
END

IF ~~ THEN hug_waist_01
SAY @260
IF ~~ THEN EXIT
END

IF ~~ THEN hug_waist_02
SAY @261
IF ~~ THEN EXIT
END

IF ~~ THEN hug_shoulder_01
SAY @262
IF ~~ THEN EXIT
END

IF ~~ THEN hug_shoulder_02
SAY @263
IF ~~ THEN EXIT
END

IF ~~ THEN hug_back_01
SAY @264
IF ~~ THEN EXIT
END

IF ~~ THEN hug_back_02
SAY @265
IF ~~ THEN EXIT
END

IF ~~ THEN hug_back_03
SAY @266
IF ~~ THEN EXIT
END

IF ~~ THEN hug_jump_01
SAY @267
IF ~~ THEN EXIT
END

IF ~~ THEN hug_jump_02
SAY @268
IF ~~ THEN EXIT
END

IF ~~ THEN hug_jump_03
SAY @269
IF ~~ THEN EXIT
END

IF ~~ THEN hug_01
SAY @270
IF ~~ THEN EXIT
END

IF ~~ THEN kiss
SAY @112
+ ~RandomNum(3,1)~ + @239 + kiss_cheek_01
+ ~RandomNum(3,2)~ + @239 + kiss_cheek_02
+ ~RandomNum(3,3)~ + @239 + kiss_cheek_03
+ ~RandomNum(6,1)~ + @240 + kiss_real_01
+ ~RandomNum(6,2)~ + @240 + kiss_real_02
+ ~RandomNum(6,3)~ + @240 + kiss_real_03
+ ~RandomNum(6,4)~ + @240 + kiss_real_04
+ ~RandomNum(6,5)~ + @240 + kiss_real_05
+ ~RandomNum(6,6)~ + @240 + kiss_real_06
+ ~RandomNum(3,1)~ + @241 + kiss_hand_01
+ ~RandomNum(3,2)~ + @241 + kiss_hand_02
+ ~RandomNum(3,3)~ + @241 + kiss_hand_03
++ @242 EXIT
END

IF ~~ THEN kiss_cheek_01
SAY @243
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_cheek_02
SAY @244
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_cheek_03
SAY @245
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_01
SAY @246
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_02
SAY @247
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_03
SAY @248
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_04
SAY @249
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_05
SAY @250
= @251
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_06
SAY @250
= @252
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_hand_01
SAY @253
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_hand_02
SAY @254
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_hand_03
SAY @255
IF ~~ THEN EXIT
END


IF ~~ THEN hand_holding_01
SAY @271
IF ~~ THEN EXIT
END

IF ~~ THEN hand_holding_02
SAY @272
IF ~~ THEN EXIT
END

IF ~~ THEN hand_holding_03
SAY @273
IF ~~ THEN EXIT
END


IF ~~ THEN loveyou_01
SAY @289
IF ~~ THEN EXIT
END

IF ~~ THEN loveyou_02
SAY @290
IF ~~ THEN EXIT
END

IF ~~ THEN loveyou_03
SAY @291
IF ~~ THEN EXIT
END

IF ~~ THEN look
SAY @99
++ @100 + look_face
++ @101 + look_arms
++ @102 + look_hands
++ @103 + look_appearance
++ @104 EXIT
END

IF ~~ THEN look_face
SAY @230
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_arms
SAY @231
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_hands
SAY @107
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_appearance
SAY @232
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_11
SAY @233
IF ~~ THEN EXIT
END

IF ~~ THEN look_12
SAY @234
IF ~~ THEN EXIT
END

IF ~~ THEN look_flirt_13
SAY @111
IF ~~ THEN EXIT
END


/* smile */
IF ~~ THEN smile_01
SAY @235 
IF ~~ THEN EXIT
END

IF ~~ THEN smile_02
SAY @236
IF ~~ THEN EXIT
END

IF ~~ THEN smile_03
SAY @237
IF ~~ THEN EXIT
END

IF ~~ THEN smile_04
SAY @238
IF ~~ THEN EXIT
END

IF ~~ THEN bodyhurt
SAY @274
+ ~RandomNum(3,1)~ + @275 + feet_treatment_engaged_01
+ ~RandomNum(3,2)~ + @275 + feet_treatment_engaged_02
+ ~RandomNum(3,3)~ + @275 + feet_treatment_engaged_03
+ ~RandomNum(3,1)~ + @143 + neck_treatment_engaged_01
+ ~RandomNum(3,2)~ + @276 + neck_massage_02
+ ~RandomNum(3,3)~ + @276 + neck_massage_engaged_02
+ ~RandomNum(4,1)~ + @277 + back_massage_engaged_01
+ ~RandomNum(4,2)~ + @277 + back_massage_engaged_02
+ ~RandomNum(4,3)~ + @277 + back_massage_engaged_03
+ ~RandomNum(4,4)~ + @277 + massage
++ @145 EXIT
END

IF ~~ THEN feet_treatment_engaged_01
SAY @278
IF ~~ THEN EXIT
END

IF ~~ THEN feet_treatment_engaged_02
SAY @279
IF ~~ THEN EXIT
END

IF ~~ THEN feet_treatment_engaged_03
SAY @280
IF ~~ THEN EXIT
END

IF ~~ THEN neck_treatment_engaged_01
SAY @281
+ ~RandomNum(3,1)~ + @282 + neck_massage_engaged_01
+ ~RandomNum(3,2)~ + @282 + neck_massage_02
+ ~RandomNum(3,3)~ + @282 + neck_massage_engaged_02
++ @283 EXIT
END

IF ~~ THEN neck_massage_02
SAY @165
IF ~~ THEN EXIT
END

IF ~~ THEN massage
SAY @183
IF ~~ THEN EXIT
END

IF ~~ THEN neck_massage_engaged_01
SAY @284
IF ~~ THEN EXIT
END

IF ~~ THEN neck_massage_engaged_02
SAY @285
IF ~~ THEN EXIT
END

IF ~~ THEN back_massage_engaged_01
SAY @286
IF ~~ THEN EXIT
END

IF ~~ THEN back_massage_engaged_02
SAY @287
IF ~~ THEN EXIT
END

IF ~~ THEN back_massage_engaged_03
SAY @288
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_break_up
SAY @338
= @339
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceNoInterest","GLOBAL",1)~ EXIT
END

END //APPEND

CHAIN
IF ~~ THEN bdajantj back_together
@1034 /* ~[Ajantis]I thank you for the kind words, <CHARNAME>.~ */
== bdajantj IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @1035 /* ~[Ajantis]I am also very happy to be by your side again, love.~ */
EXIT