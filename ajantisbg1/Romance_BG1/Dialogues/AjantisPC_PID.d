/* Ajantis PID */

APPEND ~AJANTJ~

//detect enemy
IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) Detect([ENEMY])~ THEN BEGIN ajantis_PID_enemy
SAY @3822
IF ~~ THEN EXIT
END

//-----------Ajantis PID
IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
!TimeOfDay(Night)
!Alignment(Player2,19)
!Alignment(Player2,35)
!Alignment(Player2,51)
!Alignment(Player3,19)
!Alignment(Player3,35)
!Alignment(Player3,51)
!Alignment(Player4,19)
!Alignment(Player4,35)
!Alignment(Player4,51)
!Alignment(Player5,19)
!Alignment(Player5,35)
!Alignment(Player5,51)
!Alignment(Player6,19)
!Alignment(Player6,35)
!Alignment(Player6,51)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_01
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned


+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02
+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_too_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_24
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_25

/* chapter 3 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_25

/* chapter 4 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_25

/* chapter 5 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_25

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25

/* after being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25

/* chapter 7 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_25

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

END

//-----------------------------------------------

IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
TimeOfDay(Night)
!Alignment(Player2,19)
!Alignment(Player2,35)
!Alignment(Player2,51)
!Alignment(Player3,19)
!Alignment(Player3,35)
!Alignment(Player3,51)
!Alignment(Player4,19)
!Alignment(Player4,35)
!Alignment(Player4,51)
!Alignment(Player5,19)
!Alignment(Player5,35)
!Alignment(Player5,51)
!Alignment(Player6,19)
!Alignment(Player6,35)
!Alignment(Player6,51)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_02
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_too_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_24
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_25
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27

/* chapter 3 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27

/* chapter 4 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27

/* chapter 5 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* after being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* chapter 7 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

END

//-----------------------------------------------------

IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_03
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell


+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_31

/* chapter 3 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_31

/* chapter 4 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_31

/* chapter 5 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_31

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31

/* after being arrested */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31

/* chapter 7 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_31

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

END
//-----------------------------------------------

IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
TimeOfDay(Night)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_04
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell


+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_31
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27

/* chapter 3 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27

/* chapter 4 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27

/* chapter 5 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* after being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* chapter 7 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

END

//-----------------------------------------------

IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
!TimeOfDay(Night)
!Alignment(Player2,19)
!Alignment(Player2,35)
!Alignment(Player2,51)
!Alignment(Player3,19)
!Alignment(Player3,35)
!Alignment(Player3,51)
!Alignment(Player4,19)
!Alignment(Player4,35)
!Alignment(Player4,51)
!Alignment(Player5,19)
!Alignment(Player5,35)
!Alignment(Player5,51)
!Alignment(Player6,19)
!Alignment(Player6,35)
!Alignment(Player6,51)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_05
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_too_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_24
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_25
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_32

/* chapter 3 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_32

/* chapter 4 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_32

/* chapter 5 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* after being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* chapter 7 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_32

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

END

//-----------------------------------------------

IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
TimeOfDay(Night)
!Alignment(Player2,19)
!Alignment(Player2,35)
!Alignment(Player2,51)
!Alignment(Player3,19)
!Alignment(Player3,35)
!Alignment(Player3,51)
!Alignment(Player4,19)
!Alignment(Player4,35)
!Alignment(Player4,51)
!Alignment(Player5,19)
!Alignment(Player5,35)
!Alignment(Player5,51)
!Alignment(Player6,19)
!Alignment(Player6,35)
!Alignment(Player6,51)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_06
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_too_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_24
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_25
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_32

/* chapter 3 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_32

/* chapter 4 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_32

/* chapter 5 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* after being arrested */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* chapter 7 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_32

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

END

//-----------------------------------------------

IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
!TimeOfDay(Night)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_07
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell


+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_31
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_32

/* chapter 3 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_32

/* chapter 4 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_32

/* chapter 5 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* after being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* chapter 7 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_32

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

END

//-----------------------------------------------

IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
TimeOfDay(Night)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_08
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_31
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_32

/* chapter 3 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_32

/* chapter 4 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_32

/* chapter 5 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* after being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* chapter 7 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_32

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

END


//---------------------------------------------------------------------
//Player1 MASK_EVIL ///////////////////////


IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
!TimeOfDay(Night)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_01
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3827

+ ~RandomNum(2,1)~ + @3827 + paladin_player1_evil_01
+ ~RandomNum(2,2)~ + @3827 + paladin_player1_evil_02




/* @3829 */
/* chapter 2 */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_28
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_29
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_30

/* chapter 3 */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_30

/* chapter 4 */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)
!TimeOfDay(Night)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_30

/* chapter 5 */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_30

/* chapter 6 */
/* before being arrested */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30

/* after being arrested */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30

/* chapter 7 */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_30

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer


++ @3840 EXIT

END

//-----------------------------------------------

IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
TimeOfDay(Night)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_02
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3827

+ ~RandomNum(2,1)~ + @3827 + paladin_player1_evil_01
+ ~RandomNum(2,2)~ + @3827 + paladin_player1_evil_02





/* @3829 */
/* chapter 2 */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_28
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_29
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_30
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27

/* chapter 3 */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27

/* chapter 4 */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27

/* chapter 5 */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27

/* chapter 6 */
/* before being arrested */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* after being arrested */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* chapter 7 */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

END

//-----------------------------------------------------


IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
!TimeOfDay(Night)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_05
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3827

+ ~RandomNum(2,1)~ + @3827 + paladin_player1_evil_01
+ ~RandomNum(2,2)~ + @3827 + paladin_player1_evil_02




/* @3829 */
/* chapter 2 */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_28
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_29
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_30
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_33

/* chapter 3 */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_33

/* chapter 4 */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_33

/* chapter 5 */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_33

/* chapter 6 */
/* before being arrested */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_33

/* after being arrested */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_33

/* chapter 7 */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_33

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

END

//-----------------------------------------------

IF WEIGHT #-2
~Global("C#AjantisPCIniFlirtTime","GLOBAL",1) 
!Global("X#AjantisRomanceActive","GLOBAL",1)
!Global("X#AjantisRomanceActive","GLOBAL",2)
!Detect([ENEMY])
TimeOfDay(Night) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_06
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~HPPercentGT("ajantis",69)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3827

+ ~RandomNum(2,1)~ + @3827 + paladin_player1_evil_01
+ ~RandomNum(2,2)~ + @3827 + paladin_player1_evil_02

/* @3829 */
/* chapter 2 */

+ ~RandomNum(10,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(10,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(10,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(10,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(10,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_28
+ ~RandomNum(10,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_29
+ ~RandomNum(10,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_30
+ ~RandomNum(10,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(10,9) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27
+ ~RandomNum(10,10) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_33

/* chapter 3 */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_33

/* chapter 4 */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_33

/* chapter 5 */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_33

/* chapter 6 */
/* before being arrested */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_33


/* after being arrested */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_33

/* chapter 7 */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_33

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer


++ @3840 EXIT

END



IF ~~ THEN wounded_70
SAY @3881
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50
SAY @3882
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_poisoned
SAY @3883
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50_poisoned
SAY @3884
IF ~~ THEN EXIT
END

IF ~~ THEN state_spell
SAY @3885
IF ~~ THEN EXIT
END

/* day */
IF ~~ THEN tired_01
SAY @3886
IF ~~ THEN EXIT
END

IF ~~ THEN tired_02
SAY @3887
IF ~~ THEN EXIT
END

/* night */
IF ~~ THEN tired_03
SAY @3888
IF ~~ THEN EXIT
END

IF ~~ THEN tired_04
SAY @3889
IF ~~ THEN EXIT
END

IF ~~ THEN how_01
SAY @3890
IF ~~ THEN EXIT
END

IF ~~ THEN how_02
SAY @3891
IF ~~ THEN EXIT
END

IF ~~ THEN how_03
SAY @3892
IF ~~ THEN EXIT
END

IF ~~ THEN how_04
SAY @3893
IF ~~ THEN EXIT
END


IF ~~ THEN paladin_evil_in_group_01
SAY @3894
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_in_group_02
SAY @3895
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_in_group_03
SAY @3896
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_too_01
SAY @3897
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_too_02
SAY @3898
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_too_03
SAY @3899
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_player1_evil_01
SAY @3900
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_player1_evil_02
SAY @3901
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_no_evil_01
SAY @3902
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_no_evil_02
SAY @3903
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_no_evil_03
SAY @3904
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_01
SAY @3905
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_02
SAY @3906
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_03
SAY @3907
IF ~~ THEN EXIT
END

/* @3828 (non-evil PC)*/

IF ~~ THEN safer_01
SAY @3908
IF ~~ THEN EXIT
END

IF ~~ THEN safer_02
SAY @3909
IF ~~ THEN EXIT
END

IF ~~ THEN safer_03
SAY @3910
IF ~~ THEN EXIT
END

IF ~~ THEN safer_04
SAY @3909
IF ~~ THEN EXIT
END

/* chapter 2 */
IF ~~ THEN suggestions_01
SAY @3911
IF ~~ THEN EXIT
END

//(chapter 2)
IF ~~ THEN suggestions_02
SAY @3912
IF ~~ THEN EXIT
END

//chapter 2
IF ~~ THEN suggestions_03
SAY @3913
IF ~~ THEN EXIT
END

//chapter 2
IF ~~ THEN suggestions_04
SAY @3914
IF ~~ THEN EXIT
END

//chapter 3
IF ~~ THEN suggestions_05
SAY @3915
IF ~~ THEN EXIT
END

//chapter 3
IF ~~ THEN suggestions_06
SAY @3916
IF ~~ THEN EXIT
END

//chapter 3
IF ~~ THEN suggestions_07
SAY @3917
IF ~~ THEN EXIT
END

//chapter 4
IF ~~ THEN suggestions_08
SAY @3918
IF ~~ THEN EXIT
END

//chapter 4
IF ~~ THEN suggestions_09
SAY @3919
IF ~~ THEN EXIT
END

//chapter 4
IF ~~ THEN suggestions_10
SAY @3920
IF ~~ THEN EXIT
END

//chapter 5
IF ~~ THEN suggestions_13
SAY @3921
IF ~~ THEN EXIT
END

//chapter 5
IF ~~ THEN suggestions_14
SAY @3922
IF ~~ THEN EXIT
END

//chapter 5~
IF ~~ THEN suggestions_15
SAY @3923
IF ~~ THEN EXIT
END

//(chapter 6 before being imprisoned
IF ~~ THEN suggestions_18
SAY @3924
IF ~~ THEN EXIT
END

//(chapter 6, after being imprisoned)
IF ~~ THEN suggestions_19
SAY @3925
IF ~~ THEN EXIT
END

//(chapter 6) (2x)
IF ~~ THEN suggestions_20
SAY @3926
IF ~~ THEN EXIT
END

//(chapter 7)
IF ~~ THEN suggestions_21
SAY @3927
IF ~~ THEN EXIT
END

//(chapter 7)
IF ~~ THEN suggestions_22
SAY @3928
IF ~~ THEN EXIT
END

//(chapter 7)
IF ~~ THEN suggestions_23
SAY @3929
IF ~~ THEN EXIT
END

//other random answers, in combination with the above:

//(!Alignment(Player1,MASK_EVIL))
IF ~~ THEN suggestions_24
SAY @3930
IF ~~ THEN EXIT
END

//(!Alignment(Player1,MASK_EVIL))
IF ~~ THEN suggestions_25
SAY @3931
IF ~~ THEN EXIT
END

//(night)
IF ~~ THEN suggestions_26
SAY @3932
IF ~~ THEN EXIT
END

//(night)
IF ~~ THEN suggestions_27
SAY @3933
IF ~~ THEN EXIT
END

//(Alignment(Player1,MASK_EVIL))
IF ~~ THEN suggestions_28
SAY @3934
IF ~~ THEN EXIT
END

//(Alignment(Player1,MASK_EVIL))
IF ~~ THEN suggestions_29
SAY @3935
IF ~~ THEN EXIT
END

//(Alignment(Player1,MASK_EVIL))
IF ~~ THEN suggestions_30
SAY @3936
IF ~~ THEN EXIT
END

//(OR(5)
//Alignment(Player2,MASK_EVIL)
//Alignment(Player3,MASK_EVIL)
//Alignment(Player4,MASK_EVIL)
//Alignment(Player5,MASK_EVIL)

//Alignment(Player6,MASK_EVIL))
IF ~~ THEN suggestions_31
SAY @3937
IF ~~ THEN EXIT
END

//(!Alignment(Player1,MASK_EVIL) //GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4))
IF ~~ THEN suggestions_32
SAY @3938
IF ~~ THEN EXIT
END

//(Alignment(Player1,MASK_EVIL) //GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4))
IF ~~ THEN suggestions_33
SAY @3939
IF ~~ THEN EXIT
END


IF ~~ AJCHSuccess
SAY @3940
IF ~~ THEN DO ~SetGlobal("X#AjCHdone","GLOBAL",1)~ EXIT
END

IF ~~ AJCHFailure1
SAY @3941
IF ~~ THEN EXIT
END

IF ~~ AJCHFailure2
SAY @3942
IF ~~ THEN EXIT
END

IF ~~ AJCHFailure3
SAY @3943
IF ~~ THEN EXIT
END

IF ~~ AJCHFailure4
SAY @3941
IF ~~ THEN EXIT
END


IF ~~ THEN ajantis_01
SAY @3944
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_02
SAY @3945
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_03
SAY @3946
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_04
SAY @3947
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_05
SAY @3948
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_06
SAY @3949
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_07
SAY @3950
IF ~~ THEN EXIT
END


IF ~~ THEN helm_01
SAY @3951
IF ~~ THEN EXIT
END

IF ~~ THEN helm_02
SAY @3952
IF ~~ THEN EXIT
END

IF ~~ THEN helm_03
SAY @3953
IF ~~ THEN EXIT
END

IF ~~ THEN helm_04
SAY @3954
IF ~~ THEN EXIT
END

IF ~~ THEN helm_05
SAY @3955
IF ~~ THEN EXIT
END

IF ~~ THEN helm_06
SAY @3956
IF ~~ THEN EXIT
END


IF ~~ THEN waterdeep_01
SAY @3957
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_02
SAY @3958
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_03
SAY @3959
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_04
SAY @3960
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_05
SAY @3961
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_06
SAY @3962
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_07
SAY @3963
IF ~~ THEN EXIT
END


IF ~~ THEN order_01
SAY @3964
IF ~~ THEN EXIT
END

IF ~~ THEN order_02
SAY @3965
IF ~~ THEN EXIT
END

IF ~~ THEN order_03
SAY @3966
IF ~~ THEN EXIT
END

IF ~~ THEN order_04
SAY @3967
IF ~~ THEN EXIT
END


IF ~~ THEN here_01
SAY @3968
IF ~~ THEN EXIT
END

IF ~~ THEN here_02
SAY @3969
IF ~~ THEN EXIT
END

IF ~~ THEN here_03
SAY @3970
IF ~~ THEN EXIT
END

IF ~~ THEN here_04
SAY @3971
IF ~~ THEN EXIT
END


IF ~~ THEN no_answer
SAY @3972
IF ~~ THEN EXIT
END

END