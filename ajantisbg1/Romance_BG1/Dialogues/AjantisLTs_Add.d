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

ADD_TRANS_ACTION ~DURLYLE1~ BEGIN 42 63 END BEGIN END ~SetGlobal("X#AjantisRomanceDurDirect","GLOBAL",1)~ 

ADD_TRANS_ACTION ~DURLYLE1~ BEGIN 64 61 END BEGIN END ~SetGlobal("X#AjantisRomanceDurSweety","GLOBAL",1)~ 

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
IF WEIGHT #-2 ~Global("X#AjantisRomanceDurDirect","GLOBAL",2) Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN durlyle_direct_flirt
SAY @2
= @3
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceDurDirect","GLOBAL",3)~ EXIT
END

IF WEIGHT #-2 ~Global("X#AjantisRomanceDurDirect","GLOBAL",2) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN durlyle_direct
SAY @4 
++ @5 + durlyle_direct_01
++ @6 + durlyle_direct_02
++ @7 + durlyle_direct_03
+ ~!Global("X#AjantisRomanceIntimacy","GLOBAL",1)~ + @8 + durlyle_direct_04
+ ~Global("X#AjantisRomanceIntimacy","GLOBAL",1)~ + @8 + durlyle_direct_05
++ @9 + durlyle_direct_06
END

IF ~~ THEN durlyle_direct_01
SAY @10 
IF ~~ THEN + durlyle_direct_07
END

IF ~~ THEN durlyle_direct_02
SAY @11
IF ~~ THEN + durlyle_direct_07
END

IF ~~ THEN durlyle_direct_03
SAY @12 
IF ~~ THEN + durlyle_direct_07
END

IF ~~ THEN durlyle_direct_04
SAY @13
IF ~~ THEN + durlyle_direct_07
END

IF ~~ THEN durlyle_direct_05
SAY @14
IF ~~ THEN + durlyle_direct_07
END

IF ~~ THEN durlyle_direct_06
SAY @15
IF ~~ THEN + durlyle_direct_07
END

IF ~~ THEN durlyle_direct_07
SAY @16 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceDurDirect","GLOBAL",3)~ EXIT
END

IF WEIGHT #-2 ~Global("X#AjantisRomanceDurSweety","GLOBAL",2) Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN durlyle_sweety_flirt
SAY @17  
++ @18 + sweety_flirt_01
++ @19 + sweety_flirt_02
++ @20 + sweety_flirt_03
END

IF ~~ THEN sweety_flirt_01
SAY @21 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDurSweety","GLOBAL",3)~ EXIT 
END

IF ~~ THEN sweety_flirt_02
SAY @22
= @23  
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceOtherMan","GLOBAL",1) SetGlobal("X#AjantisRomanceDurSweety","GLOBAL",3)~ EXIT
END

IF ~~ THEN sweety_flirt_03
SAY @24
= @25
= @26 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceDurSweety","GLOBAL",3)~ EXIT
END

IF WEIGHT #-2 ~Global("X#AjantisRomanceDurSweety","GLOBAL",2) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN durlyle_sweety
SAY @27
++ @28 + durlyle_sweety_01
++ @29 + durlyle_sweety_02
++ @30 + durlyle_sweety_03
+ ~!Global("X#AjantisRomanceIntimacy","GLOBAL",1)~ + @31 + durlyle_sweety_04
+ ~Global("X#AjantisRomanceIntimacy","GLOBAL",1)~ + @31 + durlyle_sweety_05
END

IF ~~ THEN durlyle_sweety_01
SAY @32 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDurSweety","GLOBAL",3)~ EXIT
END

IF ~~ THEN durlyle_sweety_02
SAY @33 
++ @34 + durlyle_sweety_01
++ @35 + durlyle_sweety_06
END

IF ~~ THEN durlyle_sweety_03
SAY @36
++ @37 + durlyle_sweety_01
++ @35 + durlyle_sweety_06
END

IF ~~ THEN durlyle_sweety_04
SAY @38
IF ~~ THEN + durlyle_sweety_06
END

IF ~~ THEN durlyle_sweety_05
SAY @39 
= @40
IF ~~ THEN + durlyle_sweety_06
END

IF ~~ THEN durlyle_sweety_06
SAY @41  
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceDurSweety","GLOBAL",3)~ EXIT
END



END