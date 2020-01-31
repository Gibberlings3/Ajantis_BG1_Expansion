APPEND ~AJANTP~

IF WEIGHT #-1
~!Global("X#AjantisRomanceActive","GLOBAL",0) !Global("X#AjantisRomanceActive","GLOBAL",3)~ THEN return_romance
SAY @71
IF ~~ THEN REPLY @72 GOTO return_romance_01
IF ~~ THEN REPLY @73 GOTO 1
END

IF ~~ THEN return_romance_01
SAY @74
IF ~~ THEN EXIT
END

END

APPEND ~AJANTJ~

/* from LT 24: only for rep>= 16. If rep < 16 at LT 22, Ajantis gives hint. */
IF WEIGHT #-2 ~Global("X#AjantisRomanceNeedMoreRep","GLOBAL",1)~ THEN rep_too_low
SAY @42
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceNeedMoreRep","GLOBAL",2)~ EXIT 
END

/* for RomanceActive = 2: if rep < 16 */
IF WEIGHT #-2 ~Global("X#AjantisRomanceLostRep","GLOBAL",1)~ THEN lost_rep
SAY @43 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceLostRep","GLOBAL",2)~ EXIT 
END


/*

/* if PC made unfriendly decisions */
/* GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4) */
IF WEIGHT #-2 ~Global("X#AjantisRomanceTooManyBD","GLOBAL",1)~ THEN too_many_baddecisions
SAY @44
IF ~!Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("X#AjantisRomanceTooManyBD","GLOBAL",2)~ EXIT
IF ~Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceTooManyBD","GLOBAL",2)~ EXIT
END

//GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",7)
IF WEIGHT #-2 ~Global("X#AjantisRomanceTooManyBD","GLOBAL",3)~ THEN too_many_baddecisions2
SAY @45
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceTooManyBD","GLOBAL",4) LeaveParty() Enemy() SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~ SOLVED_JOURNAL @46 EXIT
END

*/

//if PC didn't talk about Gorion in first LT
IF WEIGHT #-2 ~Global("X#AjantisRomanceNoGorion","GLOBAL",3)~ THEN gorion
SAY @47
++ @48 + gorion_01
++ @49 + gorion_02
++ @50 + gorion_03
++ @51 + gorion_04
++ @52 + gorion_07
++ @53 + gorion_09
++ @54 + gorion_08
END

IF ~~ THEN gorion_01
SAY @55
IF ~~ THEN + gorion_06
END

IF ~~ THEN gorion_02
SAY @56
++ @57 + gorion_06
++ @58 + gorion_05
++ @59 + gorion_05
END

IF ~~ THEN gorion_03
SAY @60
IF ~~ THEN + gorion_06
END

IF ~~ THEN gorion_04
SAY @61
IF ~~ THEN + gorion_06
END

IF ~~ THEN gorion_05
SAY @62
IF ~~ THEN + gorion_06
END

IF ~~ THEN gorion_06
SAY @63
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceNoGorion","GLOBAL",4)~ EXIT
END

IF ~~ THEN gorion_07
SAY @64
++ @48 + gorion_01
++ @49 + gorion_02
++ @50 + gorion_03
++ @65 + gorion_04
++ @53 + gorion_09
++ @66 + gorion_08
END

IF ~~ THEN gorion_08
SAY @67
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceNoGorion","GLOBAL",4)~ EXIT
END

IF ~~ THEN gorion_09
SAY @68
IF ~~ THEN + gorion_06
END

END
