/* Ajantis - Neera banter - thankfully, these are covered by the Neera banter mod */

/* Ajantis about Neera or another wildmage - PC is no wildmage */
CHAIN 
IF WEIGHT #-1 ~Global("C#AjantisBG1_AboutWildmages","GLOBAL",1)
!Kit(Player1,WILDMAGE)~ THEN ~%AJANTIS_JOINED%~ about_neera
@0
END
+ ~InParty("neera")~ + @1 + about_neera_01
+ ~Kit(Player2,WILDMAGE) !Name("neera",Player2)~ + @2 + about_neera_02
+ ~Kit(Player3,WILDMAGE) !Name("neera",Player3)~ + @3 + about_neera_02
+ ~Kit(Player4,WILDMAGE) !Name("neera",Player4)~ + @4 + about_neera_02
+ ~Kit(Player5,WILDMAGE) !Name("neera",Player5)~ + @5 + about_neera_02
+ ~Kit(Player6,WILDMAGE) !Name("neera",Player6)~ + @6 + about_neera_02
++ @7 + about_neera_02


/* Dialogue goes a bit differently if CHARNAME is a wildmage */
CHAIN 
IF WEIGHT #-1 ~Global("C#AjantisBG1_AboutWildmages","GLOBAL",1)
Kit(Player1,WILDMAGE)~ THEN ~%AJANTIS_JOINED%~ about_neera_wm
@8
END
++ @9 + about_neera_wm_01
++ @10 + about_neera_wm_01
++ @7 + about_neera_wm_01


APPEND ~%AJANTIS_JOINED%~

IF ~~ THEN about_neera_01
SAY @11
IF ~~ THEN + about_neera_02
END

IF ~~ THEN about_neera_02
SAY @12
+ ~InParty("neera")~ + @13 + about_neera_03
+ ~InParty("neera")~ + @14 + about_neera_04
+ ~Kit(Player2,WILDMAGE) !Name("neera",Player2)~ + @15 + about_neera_07
+ ~Kit(Player3,WILDMAGE) !Name("neera",Player3)~ + @16 + about_neera_07
+ ~Kit(Player4,WILDMAGE) !Name("neera",Player4)~ + @17 + about_neera_07
+ ~Kit(Player5,WILDMAGE) !Name("neera",Player5)~ + @18 + about_neera_07
+ ~Kit(Player6,WILDMAGE) !Name("neera",Player6)~ + @19 + about_neera_07
+ ~InParty("neera")~ + @20 + about_neera_04_1
+ ~!InParty("neera")~ + @20 + about_neera_07

++ @21 + about_neera_06
++ @22 + about_neera_05
++ @23 + about_neera_06
END

IF ~~ THEN about_neera_03
SAY @24
IF ~~ THEN + about_neera_04
END

IF ~~ THEN about_neera_04
SAY @25
IF ~~ THEN + about_neera_04_1
END

IF ~~ THEN about_neera_04_1
SAY @26
= @27
++ @28 + about_neera_07
++ @29 + about_neera_07
++ @30 + about_neera_07
++ @31 + about_neera_07
++ @23 + about_neera_06
END

IF ~~ THEN about_neera_05
SAY @32
IF ~~ THEN + about_neera_06
END

IF ~~ THEN about_neera_06
SAY @33
IF ~~ THEN + about_neera_08
END

IF ~~ THEN about_neera_07
SAY @34
IF ~~ THEN + about_neera_08
END

IF ~~ THEN about_neera_08
SAY @35
IF ~~ THEN DO ~SetGlobal("C#AjantisBG1_AboutWildmages","GLOBAL",2)~ EXIT
END


IF ~~ THEN about_neera_wm_01
SAY @36
++ @37 + about_neera_wm_02
++ @38 + about_neera_04_1
++ @14 + about_neera_04
++ @21 + about_neera_06
++ @22 + about_neera_05
++ @23 + about_neera_06
END

IF ~~ THEN about_neera_wm_02
SAY @39
IF ~~ THEN + about_neera_04_1
END

END //APPEND

/* Ajantis - Rasaad */

/* GlobalGT("RASAAD_ROMANCE","GLOBAL",0) */

/* Ajantis - Rasaad romance conflict BG1 */
CHAIN
IF WEIGHT #-1 ~%BGT_VAR% Global("C#AjantisBG1_RasaadRomConflict","GLOBAL",0) 
GlobalGT("RASAAD_ROMANCE","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",1)
InParty(Myself) 
InParty("rasaad")
See("rasaad")
!StateCheck("rasaad",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID) CombatCounter(0) !See([ENEMY])~ THEN ~%AJANTIS_BANTER%~ rasaad_romanceconflict
@70 DO ~SetGlobal("C#AjantisBG1_RasaadRomConflict","GLOBAL",1)~
== ~%RASAAD_BANTER%~ @71
== ~%AJANTIS_BANTER%~ @72
== ~%RASAAD_BANTER%~ @73
== ~%AJANTIS_BANTER%~ @74 
EXIT



/* Global("RASAAD_CDEV1_MONK","LOCALS",1) ~My mother gave up her own life to give life to me.~ */


CHAIN 
IF WEIGHT #-1 ~%BGT_VAR% Global("C#AjantisBG1_RasaadBanter","GLOBAL",0)
InParty(Myself) 
InParty("rasaad")
See("rasaad")
!StateCheck("rasaad",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID) CombatCounter(0) !See([ENEMY])~ THEN ~%AJANTIS_BANTER%~ rasaad_banter_1
@40 DO ~SetGlobal("C#AjantisBG1_RasaadBanter","GLOBAL",1)~
== ~%RASAAD_BANTER%~ @41
== ~%AJANTIS_BANTER%~ @42
== ~%RASAAD_BANTER%~ @43
= @44
== ~%AJANTIS_BANTER%~ @45
EXIT

/*  [Global("RASAAD_CDEV","LOCALS",2)] state 69 state 70 rasaadj.dlg */
CHAIN 
IF WEIGHT #-1 ~%BGT_VAR% Global("C#AjantisBG1_RasaadBanter","GLOBAL",1) 
InParty(Myself) 
!Dead("RSGAMAZ") 
InParty("rasaad")
See("rasaad")
!StateCheck("rasaad",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID) CombatCounter(0) !See([ENEMY])~ THEN ~%AJANTIS_BANTER%~ rasaad_banter_2
@46 DO ~SetGlobal("C#AjantisBG1_RasaadBanter","GLOBAL",2)~
== ~%RASAAD_BANTER%~ @47
== ~%AJANTIS_BANTER%~ @48
== ~%RASAAD_BANTER%~ @49
== ~%AJANTIS_BANTER%~ @50
EXIT

CHAIN
IF WEIGHT #-1 ~%BGT_VAR% Global("C#AjantisBG1_RasaadBanter","GLOBAL",2) 
InParty(Myself) 
!Dead("RSGAMAZ")
InParty("rasaad")
See("rasaad")
!StateCheck("rasaad",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID) CombatCounter(0) !See([ENEMY])~ THEN ~%AJANTIS_BANTER%~ rasaad_banter_3
@51 DO ~SetGlobal("C#AjantisBG1_RasaadBanter","GLOBAL",3)~
== ~%RASAAD_BANTER%~ @52
== ~%AJANTIS_BANTER%~ @53
= @54
== ~%RASAAD_BANTER%~ @55
== ~%AJANTIS_BANTER%~ @56
== ~%RASAAD_BANTER%~ @57
EXIT



/* [Global("RASAAD_CDEV","LOCALS",4)] Global("GAMAZ_DEFEATED","GLOBAL",2) */
CHAIN
IF WEIGHT #-1 ~%BGT_VAR% Global("C#AjantisBG1_RasaadBanterGamaz","GLOBAL",0) 
InParty(Myself) 
Dead("RSGAMAZ")
InParty("rasaad")
See("rasaad")
!StateCheck("rasaad",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID) CombatCounter(0) !See([ENEMY])~ THEN ~%AJANTIS_BANTER%~ rasaad_banter_3b
@58 DO ~SetGlobal("C#AjantisBG1_RasaadBanterGamaz","GLOBAL",1)
SetGlobal("C#AjantisBG1_RasaadBanter","GLOBAL",3)~
= @59
== ~%RASAAD_BANTER%~ @60
== ~%AJANTIS_BANTER%~ @61
== ~%RASAAD_BANTER%~ @62
== ~%AJANTIS_BANTER%~ @63
== ~%RASAAD_BANTER%~ @64
EXIT


/* Global("RASAAD_CDEV1_BG","LOCALS",1) [When the sect in Athkatla ceased responding to messages, my masters in Calimport sent ten monks to investigate. We found the monastery abandoned.] */
CHAIN
IF WEIGHT #-1 ~%BGT_VAR% Global("C#AjantisBG1_RasaadBanter","GLOBAL",3) 
InParty(Myself) 
InParty("rasaad")
See("rasaad")
!StateCheck("rasaad",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID) CombatCounter(0) !See([ENEMY])~ THEN ~%AJANTIS_BANTER%~ rasaad_banter_4
@65 DO ~SetGlobal("C#AjantisBG1_RasaadBanter","GLOBAL",4)~
== ~%RASAAD_BANTER%~ @66
== ~%AJANTIS_BANTER%~ @67
== ~%RASAAD_BANTER%~ @68
== ~%AJANTIS_BANTER%~ @69
EXIT




/*
IF ~~ THEN BEGIN 147 // from: 145.0 144.0 143.0
  SAY #30951 /* ~Because you like me? Yet another reason why I am blessed to know someone like you.~ [RSR130] */
  IF ~~ THEN EXIT
END
GlobalGT("RASAAD_ROMANCE","GLOBAL",1)
*/

CHAIN 
IF WEIGHT #-1 ~Global("C#AjantisBG1_RasaadRomConflictPC","GLOBAL",1)~ THEN ~%AJANTIS_JOINED%~ about_rasaad
@75 DO ~SetGlobal("C#AjantisBG1_RasaadRomConflictPC","GLOBAL",2)~
END
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @10 + about_rasaad_02
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @10 + about_rasaad_05
++ @76 + about_rasaad_06
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @77 + about_rasaad_01
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @77 + about_rasaad_01
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @78 + about_rasaad_01
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @78 + about_rasaad_03
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @79 + about_rasaad_07
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @80 + about_rasaad_01
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @80 + about_rasaad_04
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @81 + about_rasaad_01
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @81 + about_rasaad_03
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @82 + about_rasaad_02
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @82 + about_rasaad_03

APPEND ~%AJANTIS_JOINED%~

IF ~~ THEN about_rasaad_01
SAY @83 
IF ~~ THEN + about_rasaad_02
END

IF ~~ THEN about_rasaad_02
SAY @84
IF ~~ THEN DO ~SetGlobal("C#AjantisBG1_RasaadRomConflictPC","GLOBAL",2)~ EXIT
END

/* in case PC and Ajantis are engaged */
IF ~~ THEN about_rasaad_03
SAY @85 
IF ~~ THEN DO ~SetGlobal("C#AjantisBG1_RasaadRomConflictPC","GLOBAL",2)~ EXIT
END

IF ~~ THEN about_rasaad_04
SAY @86
IF ~~ THEN + about_rasaad_03
END

IF ~~ THEN about_rasaad_05
SAY @87
IF ~~ THEN DO ~SetGlobal("C#AjantisBG1_RasaadRomConflictPC","GLOBAL",2)~ EXIT
END

IF ~~ THEN about_rasaad_06
SAY @88
IF ~Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN + about_rasaad_02
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + about_rasaad_03
END

IF ~~ THEN about_rasaad_07
SAY @89
IF ~~ THEN DO ~SetGlobal("C#AjantisBG1_RasaadRomConflictPC","GLOBAL",2)~ EXIT
END

END //APPEND


/* Ajantis - Baeloth */

CHAIN 
IF WEIGHT #-1 ~%BGT_VAR% Global("C#AjantisBG1_BaelothBanter","GLOBAL",0)
InParty("baeloth")
InParty(Myself)
See("baeloth")
!StateCheck("baeloth",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID) CombatCounter(0) !See([ENEMY])~ THEN ~%AJANTIS_BANTER%~ baeloth_banter
@90 DO ~SetGlobal("C#AjantisBG1_BaelothBanter","GLOBAL",1)~
== ~BAELOTHJ~ @91
== ~%AJANTIS_BANTER%~ @92
== ~BAELOTHJ~ @93
== ~%AJANTIS_BANTER%~ @94
== ~BAELOTHJ~ @95
EXIT

/* add a choice to reject Dorn to Ajantis - Dorn conflict */
/* AJANTJ
IF ~~ THEN BEGIN 4 // from:
  SAY #28325 /* ~No! This cannot stand! <CHARNAME>, I will not remain with you if you accept the offer of this... this... beast!~ */
  IF ~~ THEN REPLY #28326 /* ~Have you become so blinded by your ideals that you can't see an incredible opportunity when it presents itself?~ */ GOTO 5
  IF ~~ THEN REPLY #28327 /* ~Surely we can come to some compromise.~ */ GOTO 6
  IF ~~ THEN REPLY #28328 /* ~Fine. Get out of here.~ */ GOTO 7
END
*/
EXTEND_BOTTOM AJANTJ 3
++ @97 /* ~Can't we work this out?~ */ DO ~SetGlobal("AjantisLikeNotDorn","GLOBAL",2)~ + 4
++ @98 /* ~You are right, what was I thinking. Dorn, you need to leave.~ */ DO ~SetGlobal("AjantisLikeNotDorn","GLOBAL",2)~ EXTERN DORNJ 268
END
EXTEND_BOTTOM AJANTJ 4 
++ @99 /* ~Dorn, in that case I chose Ajantis. You need to leave.~ */ EXTERN DORNJ 268
END