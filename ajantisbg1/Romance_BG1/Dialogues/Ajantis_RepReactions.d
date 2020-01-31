APPEND ~AJANTJ~

/* Ajantis 20 rep */

IF WEIGHT #-2 ~Global("X#AjantisBestReputationTalk","GLOBAL",1)~ THEN BEGIN Ajantis_goodreputation_talk
SAY @100 
IF ~~ THEN DO ~SetGlobal("X#AjantisBestReputationTalk","GLOBAL",2)~ EXIT
END

/* reputation below 12 */
IF WEIGHT #-2 ~Global("X#AjantisBadReputationWarning","GLOBAL",1)~ THEN BEGIN Ajantis_badreputation_warning
SAY @123  
++ @124 DO ~SetGlobal("X#AjantisBadReputationWarning","GLOBAL",2)~ + Ajantis_badreputation_warning_01
++ @125 DO ~SetGlobal("X#AjantisBadReputationWarning","GLOBAL",2)~ + Ajantis_badreputation_warning_02
END

IF ~~ THEN BEGIN Ajantis_badreputation_warning_01
SAY @126 
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN Ajantis_badreputation_warning_02
SAY @127
IF ~~ THEN EXIT
END 


/* Ajantis recognizes low rep of a freshly joined group */
IF WEIGHT #-2 ~Global("X#AjantisBadRepJoinTalk","GLOBAL",1)~ THEN BEGIN Ajantis_badreputation_joining
SAY @202
IF ~~ THEN DO ~SetGlobal("X#AjantisBadRepJoinTalk","GLOBAL",2)~ EXIT
END

/* Ajantis recognizes rep increase after former bad rep talk */
IF WEIGHT #-2 ~Global("X#AjantisBadReputationIncrease","GLOBAL",1)~ THEN BEGIN Ajantis_reputation_increase
SAY @203 
IF ~~ THEN DO ~SetGlobal("X#AjantisBadReputationIncrease","GLOBAL",2)~ EXIT
END

/* Ajantis good rep talk for rep >17 */
IF WEIGHT #-2 ~Global("X#AjantisGoodReputationTalk","GLOBAL",1)~ THEN BEGIN Ajantis_goodreputation_talk
SAY @204  
IF ~~ THEN DO ~SetGlobal("X#AjantisGoodReputationTalk","GLOBAL",2)~ EXIT
END

END

