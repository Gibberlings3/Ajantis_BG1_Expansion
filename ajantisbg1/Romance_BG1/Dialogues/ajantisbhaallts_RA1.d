APPEND ~AJANTJ~

/* for RA = 1,0, or 3 */

//## Fallunterscheidung für set RA = 3. Auch für BG1NPC!

/* Know Bhaal talk */
IF WEIGHT #-2 ~Global("X#AjantisKnowBhaalTalk","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN BEGIN knowbhaal_talk
SAY @132
+ ~ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @133 DO ~SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",2)~ + bhaalknow_02
+ ~ReputationLT(Player1,14)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @133 DO ~SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",2)~ + bhaalknow_03
+ ~ReputationGT(Player1,13)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @133 DO ~SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",2)~ + bhaalknow_03
+ ~ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @133 DO ~SetGlobal("X#AjantisKnowBhaalTalkNoRom","GLOBAL",2)~ + bhaalknow_03
++ @134 DO ~SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",2)~ + bhaalknow_01
END

IF ~~ THEN BEGIN bhaalknow_01
SAY @135 
++ @136 + bhaalknow_03
++ @137 + bhaalknow_05
END

IF ~~ THEN BEGIN bhaalknow_02
SAY @138 
IF ~~ THEN + bhaalknow_04
END

IF ~~ THEN BEGIN bhaalknow_03
SAY @139 
IF ~~ THEN + bhaalknow_04
END

IF ~~ THEN BEGIN bhaalknow_04
SAY @140 
+ ~!Alignment(Player1,MASK_EVIL) ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @141 DO ~SetGlobal("X#AjantisKeinErbe","GLOBAL",1)~ + bhaalknow_07
+ ~!Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,14)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @141
DO ~SetGlobal("X#AjantisKeinErbe","GLOBAL",1)~ + bhaalknow_08
+ ~!Alignment(Player1,MASK_EVIL)
ReputationGT(Player1,13)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @141
DO ~SetGlobal("X#AjantisKeinErbe","GLOBAL",1)~ + bhaalknow_08
+ ~!Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @141
DO ~SetGlobal("X#AjantisKeinErbe","GLOBAL",1)~ + bhaalknow_08
++ @142 + bhaalknow_09
++ @143 + bhaalknow_10
++ @144 + bhaalknow_11
END

IF ~~ THEN BEGIN bhaalknow_05
SAY @145 
IF ~~ THEN + bhaalknow_04
END

//bhaalknow_06

IF ~~ THEN BEGIN bhaalknow_07
SAY @147
IF ~~ THEN + bhaalknow_12
END

IF ~~ THEN BEGIN bhaalknow_08
SAY @148
IF ~~ THEN + bhaalknow_12
END

IF ~~ THEN BEGIN bhaalknow_09
SAY @149
IF ~~ THEN + bhaalknow_12
END

IF ~~ THEN BEGIN bhaalknow_10
SAY @150
++ @151 + bhaalknow_12
++ @152 + bhaalknow_11
END

IF ~~ THEN BEGIN bhaalknow_11
SAY @153
+ ~Alignment(Player1,MASK_EVIL)~ + @154 + bhaalknow_36 
+ ~!Alignment(Player1,MASK_EVIL)~ + @154 + bhaalknow_14 
++ @155 + bhaalknow_16
+ ~!Alignment(Player1,MASK_EVIL)~ + @156 + bhaalknow_13
END

IF ~~ THEN BEGIN bhaalknow_12
SAY @157
+ ~ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)
!Alignment(Player1,MASK_EVIL)~ + @158 + bhaalknow_25
+ ~ReputationLT(Player1,14)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4) !Alignment(Player1,MASK_EVIL)~ + @158 + bhaalknow_26
+ ~ReputationGT(Player1,13)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3) !Alignment(Player1,MASK_EVIL)~ + @158 + bhaalknow_26
+ ~ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3) !Alignment(Player1,MASK_EVIL)~ + @158 + bhaalknow_26

+ ~ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @159 + bhaalknow_25

+ ~ReputationLT(Player1,14)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @159 + bhaalknow_26
+ ~ReputationGT(Player1,13)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @159 + bhaalknow_26
+ ~ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @159 + bhaalknow_26

++ @160 + bhaalknow_16
+ ~!Global("X#AjantisKeinErbe","GLOBAL",1)~ + @161 + bhaalknow_11
END

IF ~~ THEN BEGIN bhaalknow_13
SAY @162
++ @163 + bhaalknow_17
++ @164 + bhaalknow_14
END

IF ~~ THEN BEGIN bhaalknow_14
SAY @165
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

// bhaalknow_15

IF ~~ THEN BEGIN bhaalknow_16
SAY @168
+ ~!Global("X#AjantisRomanceActive","GLOBAL",1)~ + @169 + bhaalknow_28

+ ~Global("X#AjantisRomanceActive","GLOBAL",1) ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @169 + bhaalknow_30

+ ~Global("X#AjantisRomanceActive","GLOBAL",1) ReputationLT(Player1,14)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @169 + bhaalknow_31
+ ~Global("X#AjantisRomanceActive","GLOBAL",1) ReputationGT(Player1,13)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @169 + bhaalknow_31
+ ~Global("X#AjantisRomanceActive","GLOBAL",1) ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @169 + bhaalknow_31


++ @170 + bhaalknow_14
+ ~!Alignment(Player1,MASK_EVIL) !Global("X#AjantisKeinErbe","GLOBAL",1)~ + @171 + bhaalknow_14
+ ~Alignment(Player1,MASK_EVIL) !Global("X#AjantisKeinErbe","GLOBAL",1)~ + @171 + bhaalknow_36
END

IF ~~ THEN BEGIN bhaalknow_17
SAY @172
+ ~!Class(Player1,PALADIN) ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @173 + bhaalknow_19
+ ~!Class(Player1,PALADIN) ReputationLT(Player1,14)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @173 + bhaalknow_20
+ ~!Class(Player1,PALADIN) ReputationGT(Player1,13)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @173 + bhaalknow_20
+ ~!Class(Player1,PALADIN) ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @173 + bhaalknow_20

+ ~Class(Player1,PALADIN)~ + @173 + bhaalknow_21
+ ~!Class(Player1,PALADIN) ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @174 + bhaalknow_19

+ ~!Class(Player1,PALADIN) ReputationLT(Player1,14)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @174 + bhaalknow_20
+ ~Class(Player1,PALADIN)~ + @174 + bhaalknow_21
+ ~!Class(Player1,PALADIN) ReputationGT(Player1,13)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @174 + bhaalknow_20
+ ~Class(Player1,PALADIN)~ + @174 + bhaalknow_21
+ ~!Class(Player1,PALADIN) ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @174 + bhaalknow_20

++ @175 + bhaalknow_18
END

IF ~~ THEN BEGIN bhaalknow_18 
SAY @176
IF ~!Class(Player1,PALADIN) ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN + bhaalknow_19
IF ~!Class(Player1,PALADIN) ReputationLT(Player1,14)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN + bhaalknow_20
IF ~!Class(Player1,PALADIN) ReputationGT(Player1,13)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ THEN + bhaalknow_20
IF ~Class(Player1,PALADIN)~ THEN + bhaalknow_21
IF ~!Class(Player1,PALADIN) ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ THEN + bhaalknow_20
END

IF ~~ THEN BEGIN bhaalknow_19
SAY @177
IF ~~ THEN + bhaalknow_26
END

IF ~~ THEN BEGIN bhaalknow_20
SAY @178
IF ~~ THEN + bhaalknow_23
END

IF ~~ THEN BEGIN bhaalknow_21
SAY @179
IF ~~ THEN + bhaalknow_26
END

// bhaalknow_22 

IF ~~ THEN BEGIN bhaalknow_23
SAY @181
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

// bhaalknow_24


IF ~~ THEN BEGIN bhaalknow_25
SAY @183
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bhaalknow_26
SAY @184
IF ~~ THEN EXIT
END

// bhaalknow_27

IF ~~ THEN BEGIN bhaalknow_28
SAY @187
IF ~~ THEN EXIT
END

// bhaalknow_29

IF ~~ THEN BEGIN bhaalknow_30
SAY @190
++ @191 + bhaalknow_25
++ @192 + bhaalknow_33
END

IF ~~ THEN BEGIN bhaalknow_31
SAY @193
IF ~~ THEN + bhaalknow_35
END

// bhaalknow_32

IF ~~ THEN BEGIN bhaalknow_33
SAY @196
= @197
IF ~~ THEN EXIT
END

// bhaalknow_34


IF ~~ THEN BEGIN bhaalknow_35
SAY @199 
= @200 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN bhaalknow_36
SAY @201 
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy() SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~ EXIT
END 
END