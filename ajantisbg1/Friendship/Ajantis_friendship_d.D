/* ###########################################
######## Friendship path for Ajantis BG1Tutu / BGT
######## Best to be played together with BG1NPC project mod, but technically also as stand alone possible.
The friendship path begins similar to the romance talks, which makes very much sense for the romance! -And saves me a lot of work.
###################################################

Content:

1. PC's motivation for HISHER quest *

2. Order *

3. Paladins *

4. Helm *

5. Justice * 

6. Honor *

7. Evil * 

8. How Ajantis felt his call * ("friendship" dialogues with evil PC stop here.)

9. Waterdeep *

10. Candlekeep *

11. Ajantis' family (Extra dialogue after rest) *

12. PC's family and mentors *

13. Ajantis' mentors *

14. Ajantis' sword (not the unleashed one, mind)*

15. About friendship and companionship *
 
Extratalks:

1. for PC XP > xx: <CHARNAME> became powerful *

2. PC's dreams *
 
3. searching the bandit camp *

4. after defeating Davaeron: We still did not find the culprits! *

5. after being arrested in Candlekeep *

6. before the final battle *


Quest:
Seifer's idea ( skipped, might be included later.)
*/


APPEND ~%AJANTIS_JOINED%~

IF ~~ stop_PCtalks
SAY @0
IF ~~ THEN DO ~SetGlobal("C#AjanFP_NoPCTalks","GLOBAL",1)~ EXIT
END

///////////////////////////////////////////////////////
/* What is your motivation for this quest? (Talk 1) */
//////////////////////////////////////////////////////

//PCtalk_motivation
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",2)~ THEN PCtalk_motivation
SAY @1
++ @2 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_05
+ ~Class(Player1,Paladin)~ + @3 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_01

+ ~Class(Player1,Paladin)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_03

/* MASK_GOOD */
+ ~!Class(Player1,Paladin)
ReputationGT(Player1,12) 
Alignment(Player1,17)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_03
+ ~!Class(Player1,Paladin)
ReputationGT(Player1,12) 
Alignment(Player1,33)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_03
+ ~!Class(Player1,Paladin)
ReputationGT(Player1,12) 
Alignment(Player1,49)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_03

+ ~!Class(Player1,Paladin) ReputationLT(Player1,13) Alignment(Player1,17)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_04
+ ~!Class(Player1,Paladin) ReputationLT(Player1,13) Alignment(Player1,33)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_04
+ ~!Class(Player1,Paladin) ReputationLT(Player1,13) Alignment(Player1,49)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_04

/* MASK_NEUTRAL */
+ ~Alignment(Player1,18)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_04
+ ~Alignment(Player1,34)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_04
+ ~Alignment(Player1,50)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_04
/* MASK_EVIL */
+ ~Alignment(Player1,19)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_04b
+ ~Alignment(Player1,35)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_04b
+ ~Alignment(Player1,51)~ + @4 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_04b

++ @5 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_07
++ @6 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_02
++ @7 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + motivation_17
++ @8 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",3)~ + stop_PCtalks
END

IF ~~ THEN motivation_01
SAY @9
++ @10 +
motivation_05
++ @11 + motivation_08
++ @12 + motivation_08
++ @13 + motivation_10
END

IF ~~ THEN motivation_02
SAY @14
= @15
= @16
IF ~~ THEN EXIT
END 

IF ~~ THEN motivation_03
SAY @17
IF ~~ THEN + motivation_06
END

IF ~~ THEN motivation_04
SAY @18
IF ~~ THEN + motivation_06
END

IF ~~ THEN motivation_04b
SAY @19
IF ~~ THEN + motivation_06
END

IF ~~ THEN motivation_05
SAY @20
++ @21 + motivation_11
++ @22 + motivation_12
++ @23 + motivation_15
++ @24 + motivation_13
END

IF ~~ THEN motivation_06
SAY @25
++ @10 +
motivation_05
++ @11 + motivation_08
++ @12 + motivation_08
++ @13 + motivation_10
END

IF ~~ THEN motivation_07
SAY @26
++ @2 +
motivation_05
+ ~Class(Player1,Paladin)~ + @27 + motivation_01

+ ~Class(Player1,Paladin)~ + @4 + motivation_03

/* MASK_GOOD */
+ ~!Class(Player1,Paladin)
ReputationGT(Player1,12) 
Alignment(Player1,17)~ + @4 + motivation_03
+ ~!Class(Player1,Paladin)
ReputationGT(Player1,12) 
Alignment(Player1,33)~ + @4 + motivation_03
+ ~!Class(Player1,Paladin)
ReputationGT(Player1,12) 
Alignment(Player1,49)~ + @4 + motivation_03

+ ~!Class(Player1,Paladin) ReputationLT(Player1,13) Alignment(Player1,17)~ + @4 + motivation_04
+ ~!Class(Player1,Paladin) ReputationLT(Player1,13) Alignment(Player1,33)~ + @4 + motivation_04
+ ~!Class(Player1,Paladin) ReputationLT(Player1,13) Alignment(Player1,49)~ + @4 + motivation_04

/* MASK_NEUTRAL */
+ ~Alignment(Player1,18)~ + @4 + motivation_04
+ ~Alignment(Player1,34)~ + @4 + motivation_04
+ ~Alignment(Player1,50)~ + @4 + motivation_04
/* MASK_EVIL */
+ ~Alignment(Player1,19)~ + @4 + motivation_04b
+ ~Alignment(Player1,35)~ + @4 + motivation_04b
+ ~Alignment(Player1,51)~ + @4 + motivation_04b

++ @6 + motivation_02
++ @28 + motivation_09
++ @7 + motivation_17
++ @8 + stop_PCtalks
END 

IF ~~ THEN motivation_08
SAY @29
IF ~~ THEN EXIT
END 

IF ~~ THEN motivation_09
SAY @30
IF ~~ THEN EXIT
END 

IF ~~ THEN motivation_10
SAY @31
= @30
IF ~~ THEN EXIT
END 

IF ~~ THEN motivation_11
SAY @32
IF ~~ THEN + motivation_14
END

IF ~~ THEN motivation_12
SAY @33
++ @34 + motivation_14
++ @35 + motivation_16
++ @36 + motivation_16
END

IF ~~ THEN motivation_13
SAY @37
IF ~~ THEN + motivation_14
END

IF ~~ THEN motivation_14
SAY @38
IF ~~ THEN EXIT
END

IF ~~ THEN motivation_15
SAY @39
IF ~~ THEN + motivation_14
END

IF ~~ THEN motivation_16
SAY @40
IF ~~ THEN + motivation_14
END

IF ~~ THEN motivation_17
SAY @41
IF ~~ THEN + motivation_09
END


/////////////////////////////////////////////////////////////////////////
//Most Holy Order of the Radiant Heart (Talk 2)
/////////////////////////////////////////////////////////////////////////

//PCtalk_order
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",4)~ THEN PCtalk_order
SAY @42
++ @43 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",5)~ + order_03
++ @44 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",5)~ + order_01
+ ~Class(Player1,Paladin)~ + @45 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",5)~ + order_10
++ @46 DO ~SetGlobal("X#AjantisRomanceNoOrderMember","GLOBAL",1) SetGlobal("C#AjantisPCTalk","GLOBAL",5)~ + order_05a
++ @47 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",5)~ + order_11
END

IF ~~ THEN order_01
SAY @48
++ @49 + order_02
++ @50 + order_03
+ ~Class(Player1,Paladin)~ + @51 + order_10
++ @52 + order_05a
END

IF ~~ THEN order_02
SAY @53
++ @54 + order_06

+ ~Class(Player1,PALADIN)~ + @55 + order_26
+ ~Alignment(Player1,17)
Class(Player1,FIGHTER)~ + @55 + order_26
+ ~!Alignment(Player1,17) Class(Player1,FIGHTER)~ + @55 + order_16
+ ~!Class(Player1,PALADIN) !Class(Player1,FIGHTER)~ + @55 + order_16

+ ~!Class(Player1,Paladin)~ + @56 + order_07
++ @57 + order_04
END

IF ~~ THEN order_03
SAY @58
++ @54 + order_06

+ ~Class(Player1,PALADIN)~ + @55 + order_26
+ ~Alignment(Player1,17)
Class(Player1,FIGHTER)~ + @55 + order_26
+ ~!Alignment(Player1,17) Class(Player1,FIGHTER)~ + @55 + order_16
+ ~!Class(Player1,PALADIN) !Class(Player1,FIGHTER)~ + @55 + order_16

+ ~!Class(Player1,Paladin)~ + @56 + order_07
++ @59 + order_04
END

IF ~~ THEN order_04
SAY @60
IF ~~ THEN EXIT
END

IF ~~ THEN order_05a
SAY @61
IF ~~ THEN EXIT
END

IF ~~ THEN order_05
SAY @61
IF ~~ THEN + order_04
END

IF ~~ THEN order_06
SAY @62
IF ~Class(Player1,PALADIN)~ THEN + order_14
IF ~Alignment(Player1,17)
Class(Player1,FIGHTER)~ THEN + order_14
IF ~!Alignment(Player1,17)
Class(Player1,FIGHTER)~ THEN + order_24
IF ~!Class(Player1,PALADIN) !Class(Player1,FIGHTER)~ THEN + order_24
END

IF ~~ THEN order_07
SAY @63
++ @64 + order_12
++ @65 + order_09
++ @66 + order_08
END

IF ~~ THEN order_08
SAY @67
++ @68 + order_11
++ @69 + order_11
++ @70 + order_13a
END

IF ~~ THEN order_09
SAY @71
IF ~~ THEN EXIT
END

IF ~~ THEN order_10
SAY @72
++ @73 + order_03
++ @74 + order_05
++ @75 + order_19
++ @76 + stop_PCtalks
END

IF ~~ THEN order_11
SAY @77
++ @78 + stop_PCtalks
++ @79 + order_13
END

IF ~~ THEN order_12
SAY @80
IF ~~ THEN EXIT
END

IF ~~ THEN order_13
SAY @81
IF ~~ THEN + order_04
END

IF ~~ THEN order_13a
SAY @92
IF ~~ THEN EXIT
END

IF ~~ THEN order_14
SAY @82
++ @83 + order_15
++ @84 DO ~SetGlobal("X#AjantisRomanceNoOrderMember","GLOBAL",1)~ + order_24
END

IF ~~ THEN order_15
SAY @85
IF ~~ THEN + order_16
END

IF ~~ THEN order_16
SAY @86
= @87
++ @88 + order_17
++ @89 + order_18
++ @90 + order_05
END

IF ~~ THEN order_17
SAY @60
IF ~~ THEN + order_20
END

IF ~~ THEN order_18
SAY @91
IF ~~ THEN + order_17
END

IF ~~ THEN order_19
SAY @92
IF ~~ THEN + order_04
END

IF ~~ THEN order_20
SAY @93
++ @94 + order_22
++ @95 + order_21
++ @96 + order_22
END

IF ~~ THEN order_21
SAY @97
IF ~~ THEN + order_22
END

IF ~~ THEN order_22
SAY @98
IF ~~ THEN + order_23
END

IF ~~ THEN order_23
SAY @99
IF ~~ THEN EXIT
END

IF ~~ THEN order_24
SAY @100
++ @101 + order_16
++ @102 + order_05a
END 

IF ~~ THEN order_25
SAY @103
IF ~~ THEN EXIT
END

IF ~~ THEN order_26
SAY @82
++ @83 + order_15
++ @84 DO ~SetGlobal("X#AjantisRomanceNoOrderMember","GLOBAL",1)~ + order_15
END




////////////////////////////////////////////////////////////////////
/* paladins (Talk 3) */
////////////////////////////////////////////////////////////////////

IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",6)~ THEN PCtalk_paladins
SAY @104
+ ~Class(Player1, PALADIN)~ + @105 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",7)~ + paladins_03
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @106 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",7)~ + paladins_03

+ ~Alignment(Player1,19)~ + @107 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",7)~ + paladins_03c
+ ~Alignment(Player1,35)~ + @107 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",7)~ + paladins_03c
+ ~Alignment(Player1,51)~ + @107 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",7)~ + paladins_03c

++ @108 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",7)~ + paladins_10
++ @109 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",7)~ + paladins_04
+ ~Class(Player1,PALADIN)~ + @110 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",7)~ + paladins_01
+ ~!Class(Player1,PALADIN) Global("X#WhatIsEvil","LOCALS",0)~ + @110 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",7)~ + paladins_01
END

IF ~~ THEN paladins_01
SAY @111
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @112 + paladins_03

+ ~Alignment(Player1,19)~ + @112 + paladins_03b
+ ~Alignment(Player1,35)~ + @112 + paladins_03b
+ ~Alignment(Player1,51)~ + @112 + paladins_03b

++ @113 + paladins_02
++ @114 + paladins_10
++ @115 + paladins_11
END

IF ~~ THEN paladins_02
SAY @116
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @117 + paladins_03

+ ~Alignment(Player1,19)~ + @117 + paladins_03b
+ ~Alignment(Player1,35)~ + @117 + paladins_03b
+ ~Alignment(Player1,51)~ + @117 + paladins_03b

++ @118 + paladins_05
++ @119 + paladins_06
++ @120 + paladins_10
++ @115 + paladins_11
END

IF ~~ THEN paladins_03
SAY @121
IF ~~ THEN EXIT
END

IF ~~ THEN paladins_03b
SAY @122
++ @123 + paladins_07
++ @124 + paladins_07
++ @125 + paladins_11
END

IF ~~ THEN paladins_03c
SAY @126
++ @127 + paladins_07
++ @124 + paladins_07
++ @125 + paladins_11
END

IF ~~ THEN paladins_04
SAY @128
= @129
IF ~~ THEN EXIT
END

IF ~~ THEN paladins_05
SAY @130
IF ~~ THEN + paladins_08
END 

IF ~~ THEN paladins_06
SAY @131

+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @132 + paladins_03

++ @133 + paladins_10
++ @134 + paladins_09
++ @115 + paladins_11
END

IF ~~ THEN paladins_07
SAY @135
+ ~Gender(Player1,FEMALE)~ + @136 + paladins_09
+ ~Gender(Player1,MALE)~ + @137 + paladins_09
++ @138 + paladins_09
++ @139 + stop_PCtalks
END

IF ~~ THEN paladins_08
SAY @140
IF ~~ THEN EXIT
END

IF ~~ THEN paladins_09
SAY @141
IF ~~ THEN EXIT
END

IF ~~ THEN paladins_10
SAY @142
= @143
IF ~~ THEN EXIT
END 

IF ~~ THEN paladins_11
SAY @144
IF ~~ THEN EXIT
END 






/////////////////////////////////////////////////////////////////
// Helm (Talk 4)
////////////////////////////////////////////////////////////////

//PCtalk_helm
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",8)~ THEN PCtalk_helm
SAY @145
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @146 DO ~SetGlobal("X#AjantisRomanceHelmGod","GLOBAL",1) SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_01
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @147 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_03
+ ~!Class(Player1,CLERIC)
!Class(Player1,PALADIN) !Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @148 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_12

+ ~Class(Player1,%CLERIC_ALL%) Alignment(Player1,19)~ + @150 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_26
+ ~Class(Player1,%CLERIC_ALL%) Alignment(Player1,35)~ + @150 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_26
+ ~Class(Player1,%CLERIC_ALL%) Alignment(Player1,51)~ + @150 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_26

+ ~!Class(Player1,%CLERIC_ALL%) Alignment(Player1,19)~ + @148 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_28
+ ~!Class(Player1,%CLERIC_ALL%) Alignment(Player1,35)~ + @148 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_28
+ ~!Class(Player1,%CLERIC_ALL%) Alignment(Player1,51)~ + @148 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_28

+ ~Alignment(Player1,19)~ + @151 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_25
+ ~Alignment(Player1,35)~ + @151 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_25
+ ~Alignment(Player1,51)~ + @151 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_25

++ @152 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",9)~ + helm_14
END

IF ~~ THEN helm_01
SAY @153
++ @154 + helm_02
++ @155 + helm_15
END

IF ~~ THEN helm_02
SAY @156
IF ~~ THEN + helm_05
END

IF ~~ THEN helm_03
SAY @157
++ @158 + helm_05
++ @159 + helm_06
++ @160 DO ~SetGlobal("X#AjantisRomanceKlagen1","LOCALS",1)~ + helm_04
++ @161 + helm_14
END

IF ~~ THEN helm_04
SAY @162
IF ~~ THEN + helm_05
END

IF ~~ THEN helm_05
SAY @163
IF ~~ THEN + helm_07
END

IF ~~ THEN helm_06
SAY @164
IF ~~ THEN + helm_07
END

IF ~~ THEN helm_07
SAY @165
++ @166 + helm_08
+ ~Global("X#AjantisRomanceKlagen1","LOCALS",1)~ + @167 + helm_10
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1)~ + @167 + helm_14
END

IF ~~ THEN helm_08
SAY @168
= @169
= @170 
= @171
IF ~Global("X#AjantisRomanceKlagen1","LOCALS",1)~ THEN + helm_09
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1)~ + @172 + helm_18
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1) Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @173 + helm_15
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1) !Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @173 + helm_17
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1)~ + @174 + helm_23
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1)~ + @175 + helm_11
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1) !Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @176 + helm_19
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1) !Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @177 + helm_20
END

IF ~~ THEN helm_09
SAY @178
+ ~Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @179 + helm_22
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @179 + helm_24
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @180 + helm_19
+ ~Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @181 + helm_15
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @182 + helm_20
END

IF ~~ THEN helm_10
SAY @183
IF ~~ THEN + helm_08
END

IF ~~ THEN helm_11
SAY @184
IF ~~ THEN + helm_09
END

IF ~~ THEN helm_12
SAY @185
++ @186 + helm_21
++ @187 + helm_05
++ @188 + helm_13
++ @189 + helm_14
END

IF ~~ THEN helm_13
SAY @190
++ @191 + helm_14
++ @192 + helm_21
++ @193 + helm_05
++ @194 + helm_14
END

IF ~~ THEN helm_14
SAY @195
IF ~Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ THEN + helm_16
IF ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN helm_15
SAY @196
IF ~~ THEN EXIT
END

IF ~~ THEN helm_16
SAY @197
IF ~~ THEN EXIT
END

IF ~~ THEN helm_17
SAY @198
IF ~~ THEN EXIT
END

IF ~~ THEN helm_18
SAY @199
IF ~Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ THEN + helm_16
IF ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN helm_19
SAY @200
IF ~~ THEN EXIT
END

IF ~~ THEN helm_20
SAY @201
IF ~~ THEN EXIT
END

IF ~~ THEN helm_21
SAY @202
++ @203 + helm_05
++ @204 EXIT
END

IF ~~ THEN helm_22
SAY @205
IF ~~ THEN EXIT
END

IF ~~ THEN helm_23
SAY @206
IF ~~ THEN + helm_09
END

IF ~~ THEN helm_24
SAY @207
IF ~~ THEN EXIT
END 

IF ~~ THEN helm_25
SAY @208
IF ~~ THEN EXIT
END

IF ~~ THEN helm_26
SAY @209
IF ~~ THEN + helm_29
END

IF ~~ THEN helm_27
SAY @210
IF ~~ THEN + helm_25
END

IF ~~ THEN helm_28
SAY @211
IF ~~ THEN + helm_29
END

IF ~~ THEN helm_29
SAY @212
++ @213 + helm_27
++ @214 + helm_25
++ @215 + helm_25
END

/////////////////////////////////////////////////////////////////////////
// justice (Talk 5)
///////////////////////////////////////////////////////////////////////


//PCtalk_justice
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",10)~ THEN PCtalk_justice
SAY @216
= @217
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @218 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_01
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @219 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_02

+ ~Alignment(Player1,19)~ + @219 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_01b
+ ~Alignment(Player1,35)~ + @219 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_01b
+ ~Alignment(Player1,51)~ + @219 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_01b

+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @220 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_04
+ ~Alignment(Player1,19)~ + @220 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_04a
+ ~Alignment(Player1,35)~ + @220 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_04a
+ ~Alignment(Player1,51)~ + @220 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_04a

+ ~!Class(Player1,Paladin) !Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @221 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_03

+ ~Alignment(Player1,19)~ + @221 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_03a
+ ~Alignment(Player1,35)~ + @221 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_03a
+ ~Alignment(Player1,51)~ + @221 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_03a

+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @222 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_13

+ ~Alignment(Player1,19)~ + @222 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_13a
+ ~Alignment(Player1,35)~ + @222 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_13a
+ ~Alignment(Player1,51)~ + @222 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_13a

++ @223 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",11)~ + justice_05
END

IF ~~ THEN justice_01
SAY @224
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_01b
SAY @225
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_02
SAY @226
IF ~~ THEN + justice_12
END

IF ~~ THEN justice_03
SAY @227 
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_03a
SAY @228
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_04
SAY @229
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_04a
SAY @230
IF ~~ THEN + justice_04
END

IF ~~ THEN justice_05
SAY @231
+ ~ReputationGT(Player1,11)~ + @232 + justice_04
+ ~ReputationLT(Player1,12)~ + @232 + justice_07
+ ~ReputationGT(Player1,11) !Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @233 + justice_06
+ ~ReputationLT(Player1,12) !Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @233 + justice_07

+ ~Alignment(Player1,19)~ + @234 + justice_06
+ ~Alignment(Player1,35)~ + @234 + justice_06
+ ~Alignment(Player1,51)~ + @234 + justice_06

++ @235 + justice_09
+ ~!Class(Player1,Paladin)~ + @236 + justice_16
END

IF ~~ THEN justice_06
SAY @237
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_07
SAY @238
IF ~~ THEN + justice_08
END

IF ~~ THEN justice_08
SAY @239
IF ~~ THEN EXIT
END 

IF ~~ THEN justice_09
SAY @240
++ @241 + justice_10
++ @242 + justice_11
END

IF ~~ THEN justice_10
SAY @243 
= @244
++ @245 + justice_11
+ ~ReputationGT(Player1,12)~ + @246 + justice_02
+ ~ReputationLT(Player1,13)~ + @246 + justice_14
END

IF ~~ THEN justice_11
SAY @247
IF ~~ THEN EXIT
END

IF ~~ THEN justice_12
SAY @248 
IF ~~ THEN EXIT 
END

IF ~~ THEN justice_13
SAY @249
IF ~~ THEN + justice_15
END

IF ~~ THEN justice_13a
SAY @250
IF ~~ THEN + justice_15
END

IF ~~ THEN justice_14
SAY @251
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_15
SAY @252
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_16
SAY @253
IF ~~ THEN + justice_11
END



/////////////////////////////////////////////////////////////////////////
// honor (Talk 6)
///////////////////////////////////////////////////////////////////////


//PCtalk_honor
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",12)~ THEN PCtalk_honor
SAY @254
IF ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ THEN DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",13)~ + PCtalk_honor_01
IF ~Alignment(Player1,19)~ THEN DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",13)~ + PCtalk_honor_02
IF ~Alignment(Player1,35)~ THEN DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",13)~ + PCtalk_honor_02
IF ~Alignment(Player1,51)~ THEN DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",13)~ + PCtalk_honor_02
END

IF ~~THEN PCtalk_honor_01
SAY @255
++ @256 + PCtalk_honor_06
++ @257 DO ~SetGlobal("C#AjantisRomanceHonor1","LOCALS",1)~ + PCtalk_honor_05
++ @258 + PCtalk_honor_07
END

IF ~~THEN PCtalk_honor_02
SAY @259
++ @260 + PCtalk_honor_03
++ @261 + PCtalk_honor_03
++ @262 + PCtalk_honor_04
++ @263 EXIT
END

IF ~~THEN PCtalk_honor_03
SAY @264
++ @263 EXIT
++ @265 + PCtalk_honor_04
END

IF ~~THEN PCtalk_honor_04
SAY @266
++ @267 EXIT
++ @268 DO ~ActionOverride("ajantis",LeaveParty()) ActionOverride("ajantis",Enemy()) ActionOverride("ajantis",Attack(Player1))~ EXIT
END

IF ~~ THEN PCtalk_honor_05
SAY @269
IF ~~ THEN + PCtalk_honor_07
END

IF ~~ THEN PCtalk_honor_06
SAY @270
IF ~~ THEN + PCtalk_honor_07
END

IF ~~ THEN PCtalk_honor_07
SAY @271
+ ~Global("C#AjantisRomanceHonor1","LOCALS",1)~ + @272 + PCtalk_honor_08
+ ~!Global("C#AjantisRomanceHonor1","LOCALS",1)~ + @273 + PCtalk_honor_08
++ @274 + PCtalk_honor_17
+ ~!Global("C#AjantisRomanceHonor1","LOCALS",1)~ + @275 + PCtalk_honor_18
+ ~!Class(Player1,Paladin) !Global("C#AjantisRomanceHonor1","LOCALS",1)~ + @276 + PCtalk_honor_19
END

IF ~~ THEN PCtalk_honor_08
SAY @277
+ ~!Class(Player1,THIEF) ReputationGT(Player1,11)~ + @278 + PCtalk_honor_09
+ ~!Class(Player1,THIEF) ReputationLT(Player1,12)~ + @278 + PCtalk_honor_10
+ ~Class(Player1,THIEF)~ + @278 + PCtalk_honor_11
+ ~!Class(Player1,THIEF)~ + @279 + PCtalk_honor_16
+ ~Class(Player1,THIEF)~ + @279 + PCtalk_honor_11
+ ~!Global("C#AjantisRomanceHonor1","LOCALS",1)~ + @280 + PCtalk_honor_19
END

IF ~~ THEN PCtalk_honor_09
SAY @281
IF ~~ THEN + PCtalk_honor_15
END

IF ~~ THEN PCtalk_honor_10
SAY @282
IF ~~ THEN + PCtalk_honor_15
END

IF ~~ THEN PCtalk_honor_11
SAY @283
+ ~ReputationGT(Player1,11)~ + @284 + PCtalk_honor_12
+ ~ReputationLT(Player1,12)~ + @284 + PCtalk_honor_13
++ @285 + PCtalk_honor_14
++ @286 + PCtalk_honor_14
END

IF ~~ THEN PCtalk_honor_12
SAY @287
IF ~~ THEN + PCtalk_honor_15
END 

IF ~~ THEN PCtalk_honor_13
SAY @288
IF ~~ THEN EXIT
END 

IF ~~ THEN PCtalk_honor_14
SAY @289
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_honor_15
SAY @290
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_honor_16
SAY @291
IF ~ReputationGT(Player1,11)~ THEN + PCtalk_honor_09
IF ~ReputationLT(Player1,12)~ THEN + PCtalk_honor_10
END

IF ~~ THEN PCtalk_honor_17
SAY @292
++ @293 + PCtalk_honor_08
+ ~!Global("C#AjantisRomanceHonor1","LOCALS",1)~ + @294 + PCtalk_honor_18
+ ~!Global("C#AjantisRomanceHonor1","LOCALS",1)~ + @276 + PCtalk_honor_19
END

IF ~~ THEN PCtalk_honor_18
SAY @295
IF ~~ THEN + justice_11
END

IF ~~ THEN PCtalk_honor_19
SAY @296
IF ~~ THEN + justice_11
END



///////////////////////////////////////////////////////////////////////
// good and evil (Talk 7)
/////////////////////////////////////////////////////////////////////

//PCtalk_evil
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",14)~ THEN PCtalk_evil
SAY @297
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @298 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + evil_01
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @299 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + evil_02
++ @300 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + evil_03
++ @301 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + evil_09
+ ~!Class(PLayer1,Paladin)~ + @302 DO ~SetGlobal("C#AjantisRomanceEvil1","LOCALS",1) SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + evil_10
++ @303 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + evil_06
+ ~InParty("Tiax") Global("KnowBhaal","GLOBAL",0)~ + @304 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + evil_06

+ ~Alignment(Player1,19)~ + @305 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + evil_20
+ ~Alignment(Player1,35)~ + @305 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + evil_20
+ ~Alignment(Player1,51)~ + @305 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + evil_20

++ @306 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",15)~ + stop_PCtalks
END

IF ~~ THEN evil_01
SAY @307
IF ~~ THEN + evil_05
END

IF ~~ THEN evil_02
SAY @308
IF ~~ THEN + evil_05
END

IF ~~ THEN evil_03
SAY @309
IF ~~ THEN + evil_05
END

IF ~~ THEN evil_04
SAY @310
IF ~~ THEN EXIT
END

IF ~~ THEN evil_05
SAY @311
= @312
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @313 + evil_15
++ @314 + evil_16
++ @315 + evil_17
++ @316 + evil_18
++ @317 + evil_04
+ ~!Global("C#AjantisRomanceEvil1","LOCALS",1)~ + @318 + evil_10
END

IF ~~ THEN evil_06 
SAY @319
+ ~ReputationGT(Player1,11)~ + @320 + evil_04
+ ~ReputationLT(Player1,12)~ + @320 + evil_07
++ @321 + evil_08
++ @322 + evil_08
END

IF ~~ THEN evil_07
SAY @323
IF ~~ THEN EXIT
END

IF ~~ THEN evil_08
SAY @324
IF ~~ THEN EXIT
END

IF ~~ THEN evil_09
SAY @325
IF ~~ THEN + evil_05
END

IF ~~ THEN evil_10
SAY @326
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @327 + evil_14
+ ~ReputationGT(Player1,13) !Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @328 + evil_12
+ ~ReputationLT(Player1,14) !Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @328 + evil_11

+ ~Alignment(Player1,19)~ + @328 + evil_21
+ ~Alignment(Player1,35)~ + @328 + evil_21
+ ~Alignment(Player1,51)~ + @328 + evil_21

++ @329 + evil_25
END

IF ~~ THEN evil_11
SAY @330
IF ~~ THEN + evil_13
END

IF ~~ THEN evil_12
SAY @331
IF ~~ THEN + evil_13
END

IF ~~ THEN evil_13
SAY @332
= @333
IF ~~ THEN + evil_27
END

IF ~~ THEN evil_14
SAY @334
= @333
++ @335 + evil_26
+ ~Global("C#AjantisRomanceEvil1","LOCALS",1)~ + @336 + evil_05
+ ~!Global("C#AjantisRomanceEvil1","LOCALS",1)~ + @336 + evil_19
++ @337 + evil_22
END

IF ~~ THEN evil_15
SAY @338
IF ~~ THEN + evil_19
END

IF ~~ THEN evil_16
SAY @339
IF ~~ THEN + evil_19
END

IF ~~ THEN evil_17
SAY @340
IF ~~ THEN + evil_19
END

IF ~~ THEN evil_18
SAY @341
IF ~~ THEN + evil_19
END

IF ~~ THEN evil_19
SAY @342
IF ~~ THEN EXIT
END

IF ~~ THEN evil_20
SAY @343
IF ~~ THEN EXIT
END

IF ~~ THEN evil_21
SAY @344
IF ~~ THEN + evil_13
END

IF ~~ THEN evil_22
SAY @345
++ @346 + evil_23
++ @347 + evil_24
END

IF ~~ THEN evil_23
SAY @348
IF ~~ THEN + evil_27
END

IF ~~ THEN evil_24
SAY @349
IF ~~ THEN + evil_23
END

IF ~~ THEN evil_25
SAY @350
IF ~~ THEN EXIT
END

IF ~~ THEN evil_26
SAY @351
IF ~Global("C#AjantisRomanceEvil1","LOCALS",1)~ THEN + evil_05
IF ~!Global("C#AjantisRomanceEvil1","LOCALS",1)~ THEN + evil_19
END

IF ~~ THEN evil_27
SAY @352
IF ~~ THEN EXIT
END


///////////////////////////////////////////////////////////////////////
// How Ajantis felt his call (Talk 8)
/////////////////////////////////////////////////////////////////////



//PCtalk_call
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",16)~ THEN PCtalk_call
SAY @353
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51) !Class(Player1,PALADIN)~ + @354 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",17)~ + PCtalk_call_01
+ ~Class(Player1,PALADIN)~ + @355 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",17)~ + PCtalk_call_01
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @356 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",17)~ + PCtalk_call_01

+ ~Alignment(Player1,19)~ + @357 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",17)~ + PCtalk_call_06
+ ~Alignment(Player1,35)~ + @357 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",17)~ + PCtalk_call_06
+ ~Alignment(Player1,51)~ + @357 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",17)~ + PCtalk_call_06

++ @358 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",17)~ + PCtalk_call_05
END

IF ~~ THEN PCtalk_call_01
SAY @359
= @360
= @361
++ @362 + PCtalk_call_02
++ @363 + PCtalk_call_03
+ ~!Class(PLAYER1,Paladin)~ + @364 + PCtalk_call_04
END

IF ~~ THEN PCtalk_call_02
SAY @365
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_call_03
SAY @366
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_call_04
SAY @367
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_call_05
SAY @368
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_call_06
SAY @369
= @370
IF ~~ THEN DO ~SetGlobal("C#AjanFP_NoPCTalks","GLOBAL",1)~ EXIT
END




 ///////////////////////////////////////////////////////////////////////////////////////////////////////////
//Waterdeep (Talk 9)
///////////////////////////////////////////////////////////////////////////////////////////////////////////

//PCtalk_waterdeep
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",18)~ THEN PCtalk_waterdeep
SAY @371
++ @372 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",19)~ + waterdeep_03
++ @373 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",19) SetGlobal("C#Ajan_PCWasInWD","LOCALS",1)~ + waterdeep_01
++ @374 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",19)~ + waterdeep_08
END

IF ~~ THEN waterdeep_01
SAY @375
++ @376 + waterdeep_03
++ @377 + waterdeep_02
END

IF ~~ THEN waterdeep_02
SAY @378
++ @379 + waterdeep_03
++ @380 + waterdeep_08
END

IF ~~ THEN waterdeep_03
SAY @381
= @382
= @383
++ @384 + waterdeep_04
++ @385 + waterdeep_08
END

IF ~~ THEN waterdeep_04
SAY @386
++ @387 + waterdeep_05
++ @388 + waterdeep_08
END

IF ~~ THEN waterdeep_05
SAY @389
++ @390 + waterdeep_06
++ @391 + waterdeep_07
++ @385 + waterdeep_08
END

IF ~~ THEN waterdeep_06
SAY @392
= @393
= @394
= @395
= @396
++ @397 + waterdeep_07
++ @398 + waterdeep_12
++ @399 + waterdeep_09
END

IF ~~ THEN waterdeep_07
SAY @400
= @401
++ @398 + waterdeep_12
+ ~Global("C#Ajan_PCWasInWD","LOCALS",0)~ + @402 + waterdeep_10
+ ~Global("C#Ajan_PCWasInWD","LOCALS",1)~ + @745 + waterdeep_10
++ @403 + waterdeep_11
++ @404 + waterdeep_09
END

IF ~~ THEN waterdeep_08
SAY @405
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_09
SAY @406
IF ~~ THEN + waterdeep_12
END

IF ~~ THEN waterdeep_10
SAY @407
IF ~~ THEN + waterdeep_12
END

IF ~~ THEN waterdeep_11
SAY @408
IF ~~ THEN + waterdeep_12
END

IF ~~ THEN waterdeep_12
SAY @409
IF ~~ THEN EXIT
END


///////////////////////////////////////////////////////////////////////////////////////////////////////////
//Candlekeep (Talk 10)
///////////////////////////////////////////////////////////////////////////////////////////////////////////


//PCtalk_candlekeep
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",20)~ THEN PCtalk_candlekeep
SAY @410
++ @411 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",21)~ + PCtalk_candlekeep_01
++ @412 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",21)~ + PCtalk_candlekeep_02
++ @413 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",21)~ + PCtalk_candlekeep_01
++ @414 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",21)~ + PCtalk_candlekeep_07
END

IF ~~ THEN PCtalk_candlekeep_01
SAY @415
++ @416 + PCtalk_candlekeep_06
++ @417 + PCtalk_candlekeep_03
++ @418 + PCtalk_candlekeep_04
++ @419 + PCtalk_candlekeep_05
END

IF ~~ THEN PCtalk_candlekeep_02
SAY @420
++ @421 + PCtalk_candlekeep_08
++ @422 + PCtalk_candlekeep_08
END

IF ~~ THEN PCtalk_candlekeep_03
SAY @423
IF ~~ THEN + PCtalk_candlekeep_06
END

IF ~~ THEN PCtalk_candlekeep_04
SAY @424
IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ THEN + PCtalk_candlekeep_08
IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%)~ THEN EXIT
END

IF ~~ THEN PCtalk_candlekeep_05
SAY @427
IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ THEN + PCtalk_candlekeep_08
IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%)~ THEN EXIT
END

IF ~~ THEN PCtalk_candlekeep_06
SAY @420
IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ THEN + PCtalk_candlekeep_08
IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%)~ THEN EXIT
END

IF ~~ THEN PCtalk_candlekeep_07
SAY @428
IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ THEN + PCtalk_candlekeep_08
IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%)~ THEN EXIT
END

IF ~~ THEN PCtalk_candlekeep_08
SAY @429
IF ~~ THEN EXIT
END


 /////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Ajantis' Family (after rest) (talk 11)
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

/* Extra dialogue after rest, only triggered for "GlobalLT("X#AjantisLoveTalk","GLOBAL",14)" */
//PCtalk_ajantisfamily
IF WEIGHT #-2 
~Global("C#AjantisPCTalkAjFamily","GLOBAL",1)~ THEN PCtalk_ajantisfamily
SAY @430
++ @431 DO ~SetGlobal("C#AjantisPCTalkAjFamily","GLOBAL",2)~ + ajantisfamily_01
++ @432 DO ~SetGlobal("C#AjantisPCTalkAjFamily","GLOBAL",2)~ + ajantisfamily_01
++ @433 DO ~SetGlobal("C#AjantisPCTalkAjFamily","GLOBAL",2)~ + ajantisfamily_03
END

IF ~~ THEN ajantisfamily_01
SAY @434
++ @435 + ajantisfamily_02
++ @436 + ajantisfamily_06
++ @437 + ajantisfamily_24
++ @433 + ajantisfamily_03
END

IF ~~ THEN ajantisfamily_02
SAY @438
++ @439 + ajantisfamily_06
++ @440 + ajantisfamily_06
++ @441 + ajantisfamily_04
END

IF ~~ THEN ajantisfamily_03
SAY @442
IF ~~ THEN EXIT
END

IF ~~ THEN ajantisfamily_04
SAY @443
++ @444 + ajantisfamily_06
++ @445 + ajantisfamily_04b
++ @446 + ajantisfamily_03
END

IF ~~ THEN ajantisfamily_04b
SAY @447
++ @448 + ajantisfamily_06
++ @446 + ajantisfamily_03
END

/*
IF ~~ THEN ajantisfamily_05
SAY ~Indeed. Well, then let us move on, in Helm's name!~
IF ~~ THEN EXIT
END
*/

IF ~~ THEN ajantisfamily_06
SAY @449
++ @450 + ajantisfamily_32
++ @451 + ajantisfamily_07
++ @452 + ajantisfamily_33
END

IF ~~ THEN ajantisfamily_07
SAY @453
IF ~~ THEN + ajantisfamily_32
END

IF ~~ THEN ajantisfamily_08
SAY @454
++ @455 + ajantisfamily_09
++ @456 + ajantisfamily_10
++ @457 + ajantisfamily_11
++ @458 + ajantisfamily_03
END

IF ~~ THEN ajantisfamily_09
SAY @459
IF ~~ THEN + ajantisfamily_10
END

IF ~~ THEN ajantisfamily_10
SAY @460
++ @461 + ajantisfamily_11
++ @462 + ajantisfamily_25
END

IF ~~ THEN ajantisfamily_11
SAY @463
= @464
IF ~PartyHasItem("%AJANTIS_SHIELD%")~ THEN + ajantisfamily_12
IF ~!PartyHasItem("%AJANTIS_SHIELD%")~ THEN + ajantisfamily_13
END

IF ~~ THEN ajantisfamily_12
SAY @465
IF ~~ THEN + ajantisfamily_14
END

IF ~~ THEN ajantisfamily_13
SAY @466
IF ~~ THEN + ajantisfamily_14
END

IF ~~ THEN ajantisfamily_14
SAY @467
++ @468 + ajantisfamily_14b
++ @469 + ajantisfamily_14b
++ @462 + ajantisfamily_25
END

IF ~~ THEN ajantisfamily_14b
SAY @470
= @471
= @472
++ @473 + ajantisfamily_15
++ @474 + ajantisfamily_16
++ @475 + ajantisfamily_19
END

IF ~~ THEN ajantisfamily_15
SAY @476
IF ~~ THEN + ajantisfamily_17
END

IF ~~ THEN ajantisfamily_16
SAY @477
IF ~~ THEN + ajantisfamily_17
END

IF ~~ THEN ajantisfamily_17
SAY @478
= @479
++ @480 + ajantisfamily_18
++ @481 + ajantisfamily_25
++ @482 + ajantisfamily_20
END

IF ~~ THEN ajantisfamily_18
SAY @483
IF ~~ THEN EXIT
END

IF ~~ THEN ajantisfamily_19
SAY @484
++ @485 + ajantisfamily_28
++ @486 + ajantisfamily_21
END

IF ~~ THEN ajantisfamily_20
SAY @487
++ @485 + ajantisfamily_22
++ @488 + ajantisfamily_23
END

IF ~~ THEN ajantisfamily_21
SAY @489
IF ~~ THEN EXIT
END

IF ~~ THEN ajantisfamily_22
SAY @490
IF ~~ THEN + ajantisfamily_21
END

IF ~~ THEN ajantisfamily_23
SAY @491
++ @492 + ajantisfamily_22
++ @493 + ajantisfamily_30
++ @494 + ajantisfamily_21
END

IF ~~ THEN ajantisfamily_24
SAY @495
++ @496 + ajantisfamily_06
++ @497 + ajantisfamily_21
++ @498 + ajantisfamily_26
END

IF ~~ THEN ajantisfamily_25
SAY @499
IF ~~ THEN EXIT
END

IF ~~ THEN ajantisfamily_26
SAY @500
++ @501 + ajantisfamily_06
++ @502 + ajantisfamily_06
++ @503 + ajantisfamily_27
++ @504 + ajantisfamily_03
END

IF ~~ THEN ajantisfamily_27
SAY @505
IF ~~ THEN + ajantisfamily_21
END

IF ~~ THEN ajantisfamily_28
SAY @506
IF ~~ THEN + ajantisfamily_21
END

IF ~~ THEN ajantisfamily_29
SAY @507
= @508
IF ~~ THEN + ajantisfamily_22
END

IF ~~ THEN ajantisfamily_30
SAY @509
IF ~~ THEN + ajantisfamily_22
END

/* IF ~~ THEN ajantisfamily_31
SAY ~
END
*/

IF ~~ THEN ajantisfamily_32
SAY @510
IF ~~ THEN + ajantisfamily_08
END

IF ~~ THEN ajantisfamily_33
SAY @511
IF ~~ THEN + ajantisfamily_08
END



/////////////////////////////////////////////////////////////////////////
//CHARNAME's family and mentors (Talk 12)
/////////////////////////////////////////////////////////////////////////

//PCtalk_pcfamily
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",22)~ THEN PCtalk_pcfamily
SAY @512
= @513
++ @514 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",23)~ + pcfamily_01
++ @515 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",23)~ + pcfamily_02
++ @516 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",23)~ + pcfamily_04
++ @517 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",23)~ + pcfamily_03
++ @518 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",23)~ + pcfamily_20
END

IF ~~ THEN pcfamily_01
SAY @519 
++ @520 + pcfamily_10
++ @521 + pcfamily_03
++ @522 + pcfamily_10
END

IF ~~ THEN pcfamily_02
SAY @523
++ @524 + pcfamily_01
++ @525 + pcfamily_01
++ @526 + pcfamily_04
++ @527 + pcfamily_03
END

IF ~~ THEN pcfamily_03
SAY @528
++ @529 + pcfamily_05
++ @530 + pcfamily_10
++ @531 + pcfamily_06
++ @532 + pcfamily_21 //ShutUp
END

IF ~~ THEN pcfamily_04
SAY @533
++ @534 + pcfamily_08
++ @535 + pcfamily_07
++ @536 + pcfamily_09
++ @537 + pcfamily_03
END

IF ~~ THEN pcfamily_05
SAY @538
IF ~~ THEN + pcfamily_10
END

IF ~~ THEN pcfamily_06
SAY @539
IF ~~ THEN + pcfamily_08
END

IF ~~ THEN pcfamily_07
SAY @540
= @541 
IF ~~ THEN + pcfamily_10
END

IF ~~ THEN pcfamily_08
SAY @542 
IF ~~ THEN + pcfamily_10
END

IF ~~ THEN pcfamily_09
SAY @543
= @544 
IF ~~ THEN + pcfamily_10
END

IF ~~ THEN pcfamily_10
SAY @545
= @546
++ @547 + pcfamily_11
++ @548 + pcfamily_20
END

IF ~~ THEN pcfamily_11
SAY @549
++ @550 DO ~SetGlobal("C#AjantisRomanceHCTalkImoen","LOCALS",1)~ + pcfamily_14
++ @551 DO ~SetGlobal("C#AjantisRomanceHCTalkFriends","LOCALS",1)~ + pcfamily_15
++ @552 DO ~SetGlobal("C#AjantisRomanceHCTalkMages","LOCALS",1)~ + pcfamily_16
++ @553 DO ~SetGlobal("C#AjantisRomanceHCTalkTeachers","LOCALS",1)~ + pcfamily_17
++ @554 + pcfamily_12
++ @555 + pcfamily_20
END

IF ~~ THEN pcfamily_12
SAY @556 
++ @557 DO ~SetGlobal("C#AjantisRomanceHCTalkImoen","LOCALS",1)~ + pcfamily_14
++ @558 DO ~SetGlobal("C#AjantisRomanceHCTalkFriends","LOCALS",1)~ + pcfamily_15
++ @559 DO ~SetGlobal("C#AjantisRomanceHCTalkMages","LOCALS",1)~ + pcfamily_16
++ @560 DO ~SetGlobal("C#AjantisRomanceHCTalkTeachers","LOCALS",1)~ + pcfamily_17
++ @561 + pcfamily_20
++ @562 + pcfamily_13
END

IF ~~ THEN pcfamily_13
SAY @563
IF ~~ THEN EXIT
END

IF ~~ THEN pcfamily_14
SAY @564
IF ~~ THEN + pcfamily_18
END

IF ~~ THEN pcfamily_15
SAY @565
IF ~~ THEN + pcfamily_18
END

IF ~~ THEN pcfamily_16
SAY @566
IF ~~ THEN + pcfamily_18
END

IF ~~ THEN pcfamily_17
SAY @564
IF ~~ THEN + pcfamily_18
END

IF ~~ THEN pcfamily_18
SAY @567
+ ~!Global("C#AjantisRomanceHCTalkImoen","LOCALS",1)~ + @550 DO ~SetGlobal("C#AjantisRomanceHCTalkImoen","LOCALS",1)~ + pcfamily_14
+ ~!Global("C#AjantisRomanceHCTalkFriends","LOCALS",1)~ + @551 DO ~SetGlobal("C#AjantisRomanceHCTalkFriends","LOCALS",1)~ + pcfamily_15
+ ~!Global("C#AjantisRomanceHCTalkMages","LOCALS",1)~ + @552 DO ~SetGlobal("C#AjantisRomanceHCTalkMages","LOCALS",1)~ + pcfamily_16
+ ~!Global("C#AjantisRomanceHCTalkTeachers","LOCALS",1)~ + @568 DO ~SetGlobal("C#AjantisRomanceHCTalkTeachers","LOCALS",1)~ + pcfamily_17
++ @569 + pcfamily_19
END

IF ~~ THEN pcfamily_19
SAY @570
= @571
IF ~~ THEN EXIT
END

IF ~~ THEN pcfamily_20
SAY @572
IF ~~ THEN EXIT
END

IF ~~ THEN pcfamily_21
SAY @573
IF ~~ THEN EXIT
END



/////////////////////////////////////////////////////////////////////////
//Myrmith Splendon, Sir Keldorn (Ajantis' mentors) (Talk 13)
//////////////////////////////////////////////////////////////////////////


//PCtalk_knight
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",24)~ THEN PCtalk_knight
SAY @574
++ @575 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",25)~ + knight_01
++ @576 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",25)~ + knight_02
++ @577 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",25)~ + knight_03
++ @578 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",25)~ + knight_12
END

IF ~~ THEN knight_01
SAY @579
IF ~~ THEN + knight_05
END

IF ~~ THEN knight_02
SAY @580
IF ~~ THEN + knight_05
END

IF ~~ THEN knight_03
SAY @581
++ @582 + knight_05
++ @583 + knight_05
++ @584 + knight_13
++ @585 + knight_13
END

/* 
IF ~~ THEN knight_04
SAY ~
END

*/

IF ~~ THEN knight_05
SAY @586
= @587  
++ @588 + knight_06 
++ @589 + knight_07
++ @590 + knight_12
END

IF ~~ THEN knight_06
SAY @591
++ @592 + knight_08
++ @593 + knight_12
END

IF ~~ THEN knight_07
SAY @594
= @595
++ @596 + knight_08
++ @597 + knight_12
END


IF ~~ THEN knight_08
SAY @598
= @599
++ @600 + knight_14
++ @601 + knight_10
++ @602 + knight_09
END

IF ~~ THEN knight_09
SAY @603
++ @604 + knight_10
++ @605 + knight_11
END

IF ~~ THEN knight_10
SAY @606
IF ~~ THEN EXIT
END

IF ~~ THEN knight_11
SAY @607
++ @608 + knight_14
++ @609 + knight_15
++ @610 + knight_16
END

IF ~~ THEN knight_12
SAY @611
IF ~~ THEN EXIT
END

IF ~~ THEN knight_13
SAY @612
IF ~~ THEN DO ~SetGlobal("C#AjanFP_NoPCTalks","GLOBAL",1) ~ EXIT
END

IF ~~ THEN knight_14
SAY @613
IF ~~ THEN EXIT
END

IF ~~ THEN knight_15
SAY @614
IF ~~ THEN EXIT
END

IF ~~ THEN knight_16
SAY @615
= @616
IF ~~ THEN DO ~SetGlobal("C#AjanFP_NoPCTalks","GLOBAL",1)~ EXIT 
END



////////////////////////////////////////////////////////////////////////
//weapons (talk 14)
////////////////////////////////////////////////////////////////////////


IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",26)~ THEN PCtalk_weapons
SAY @617
++ @618 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",27)~ + PCtalk_weapons_05
++ @619 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",27)~ + PCtalk_weapons_02
++ @620 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",27)~ + PCtalk_weapons_06
++ @621 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",27)~ + PCtalk_weapons_01
END

IF ~~ THEN PCtalk_weapons_01
SAY @622
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_weapons_02
SAY @623
++ @624 + PCtalk_weapons_05
++ @625 + PCtalk_weapons_03
++ @620 + PCtalk_weapons_06
++ @626 + PCtalk_weapons_01
END

IF ~~ THEN PCtalk_weapons_03
SAY @627
++ @624 + PCtalk_weapons_05
++ @620 + PCtalk_weapons_06
++ @628 + PCtalk_weapons_04
++ @626 + PCtalk_weapons_01
END

IF ~~ THEN PCtalk_weapons_04
SAY @629
++ @624 + PCtalk_weapons_05
++ @620 + PCtalk_weapons_06
++ @626 + PCtalk_weapons_01
END

IF ~~ THEN PCtalk_weapons_05
SAY @630
++ @620 + PCtalk_weapons_06
++ @626 + PCtalk_weapons_01
END

IF ~~ THEN PCtalk_weapons_06
SAY @631
= @632
= @633
= @634
= @635
++ @636 + PCtalk_weapons_08
++ @637 + PCtalk_weapons_09
++ @638 + PCtalk_weapons_07
++ @626 + PCtalk_weapons_01
END

IF ~~ THEN PCtalk_weapons_07
SAY @639
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_weapons_08
SAY @640
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_weapons_09
SAY @641
IF ~~ THEN EXIT
END




////////////////////////////////////////////////////////////////////////
//friendship (talk 15)
////////////////////////////////////////////////////////////////////////

//PCtalk_friendship
IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",28)
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
!Alignment(Player6,51)~ THEN PCtalk_friendship
SAY @642
IF ~~ THEN DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",29)~ + PCtalk_friendship_01
END

IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",28)~ THEN PCtalk_friendship_00
SAY @643
IF ~~ THEN DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",29)~ + PCtalk_friendship_01
END

IF ~~ THEN PCtalk_friendship_01
SAY @644
++ @645 + PCtalk_friendship_02
++ @646 + PCtalk_friendship_04
++ @647 + PCtalk_friendship_02
++ @648 + PCtalk_friendship_02
++ @649 + PCtalk_friendship_05
END

IF ~~ THEN PCtalk_friendship_02
SAY @650
IF ~~ THEN + PCtalk_friendship_03
END

IF ~~ THEN PCtalk_friendship_03
SAY @651
= @652
++ @653 + PCtalk_friendship_10
++ @654 + PCtalk_friendship_06
++ @655 + PCtalk_friendship_07
++ @656 + PCtalk_friendship_08
++ @657 + PCtalk_friendship_08
END

IF ~~ THEN PCtalk_friendship_04
SAY @658
IF ~~ THEN + PCtalk_friendship_03
END

IF ~~ THEN PCtalk_friendship_05
SAY @144
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_friendship_06
SAY @659 
++ @660 + PCtalk_friendship_08
++ @661 + PCtalk_friendship_09
++ @662 + PCtalk_friendship_05
END

IF ~~ THEN PCtalk_friendship_07
SAY @663
++ @664 + PCtalk_friendship_08
++ @665 + PCtalk_friendship_09
END

IF ~~ THEN PCtalk_friendship_08
SAY @666
IF ~~ THEN EXIT
END

IF ~~ THEN PCtalk_friendship_09
SAY @667
IF ~~ THEN + PCtalk_friendship_08
END

IF ~~ THEN PCtalk_friendship_10
SAY @668
IF ~~ THEN + PCtalk_friendship_08
END



/* Spielevent-Dialogues */

////////////////////////////////////////////////////////////////////////
//great warrior (talk 16)
////////////////////////////////////////////////////////////////////////

/* triggered for +100 exp über level 6 (bzw. 40100 XP) */

IF WEIGHT #-2 
~Global("C#AjantisPCTalk","GLOBAL",30)~ THEN PCtalk_warrior
SAY @669
++ @670 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",31)~ + PCtalk_warrior_02
++ @671 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",31)~ + PCtalk_warrior_03
++ @672 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",31)~ + PCtalk_warrior_04
++ @673 DO ~SetGlobal("C#AjantisPCTalk","GLOBAL",31)~ + PCtalk_warrior_01
END

IF ~~ THEN PCtalk_warrior_01
SAY @674
++ @670 + PCtalk_warrior_02
++ @675 + PCtalk_warrior_03
++ @672 + PCtalk_warrior_04
++ @676 + PCtalk_friendship_05
END

IF ~~ THEN PCtalk_warrior_02
SAY @677
IF ~~ THEN + PCtalk_warrior_05
END

IF ~~ THEN PCtalk_warrior_03
SAY @678
IF ~~ THEN + PCtalk_warrior_05
END

IF ~~ THEN PCtalk_warrior_04
SAY @679
IF ~~ THEN + PCtalk_warrior_05
END

IF ~~ THEN PCtalk_warrior_05
SAY @680
IF ~~ THEN EXIT
END



////////////////////////////////////////////////////////////////////////
//PC's dreams
////////////////////////////////////////////////////////////////////////

/* triggeres after the third or so dream */
IF WEIGHT #-2 
~Global("C#AjantisFPDream","GLOBAL",1)~ THEN PC_dreams
SAY @681
++ @682 DO ~SetGlobal("C#AjantisFPDream","GLOBAL",2)~ + PC_dreams_03
++ @683 DO ~SetGlobal("C#AjantisFPDream","GLOBAL",2)~ + PC_dreams_03
++ @684 DO ~SetGlobal("C#AjantisFPDream","GLOBAL",2)~ + PC_dreams_02
END

IF ~~ THEN PC_dreams_01
SAY @685
IF ~~ THEN EXIT
END

IF ~~ THEN PC_dreams_02
SAY @686
IF ~~ THEN + PC_dreams_01
END

IF ~~ THEN PC_dreams_03
SAY @687
++ @688 + PC_dreams_04
++ @689 + PC_dreams_02
END

IF ~~ THEN PC_dreams_04
SAY @690
IF ~~ THEN + PC_dreams_01
END


////////////////////////////////////////////////////////////////////////
//bandit camp
////////////////////////////////////////////////////////////////////////

IF WEIGHT #-2 
~Global("C#AjantisFPBanditCamp","GLOBAL",1)~ THEN bandit_camp
SAY @691
++ @692 DO ~SetGlobal("C#AjantisFPBanditCamp","GLOBAL",2)~ + bandit_camp_03
++ @693 DO ~SetGlobal("C#AjantisFPBanditCamp","GLOBAL",2)~ + bandit_camp_02
++ @694 DO ~SetGlobal("C#AjantisFPBanditCamp","GLOBAL",2)~ + bandit_camp_01
++ @695 DO ~SetGlobal("C#AjantisFPBanditCamp","GLOBAL",2)~ + bandit_camp_04
END

IF ~~ THEN bandit_camp_01
SAY @696
IF ~~ THEN + bandit_camp_03
END

IF ~~ THEN bandit_camp_02
SAY @697
IF ~~ THEN + bandit_camp_03
END

IF ~~ THEN bandit_camp_03
SAY @698
IF ~~ THEN EXIT
END

IF ~~ THEN bandit_camp_04
SAY @144
IF ~~ THEN + bandit_camp_03
END


////////////////////////////////////////////////////////////////////////
//after defeating Davaeron
////////////////////////////////////////////////////////////////////////

IF WEIGHT #-2 
~Global("C#AjantisFPDavaeron","GLOBAL",1)~ THEN davaeron
SAY @699
++ @700 + davaeron_02
++ @701 + davaeron_02
++ @702 + davaeron_03
++ @703 + davaeron_01
END

IF ~~ THEN davaeron_01
SAY @704
IF ~~ THEN DO ~SetGlobal("C#AjantisFPDavaeron","GLOBAL",2)~ EXIT
END

IF ~~ THEN davaeron_02
SAY @705
IF ~~ THEN + davaeron_01
END

IF ~~ THEN davaeron_03
SAY @706
IF ~~ THEN + davaeron_02
END

////////////////////////////////////////////////////////////////////////
//after being arrested in Candlekeep
////////////////////////////////////////////////////////////////////////

/* Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1) */

IF WEIGHT #-2 
~Global("C#AjantisFPArrested","GLOBAL",1)~ THEN nach_verhaftung
SAY @707
++ @708 + nach_verhaftung_02
++ @709 + nach_verhaftung_02
++ @710 + nach_verhaftung_03
++ @711 + nach_verhaftung_01
END

IF ~~ THEN nach_verhaftung_01
SAY @712
IF ~~ THEN + nach_verhaftung_04
END

IF ~~ THEN nach_verhaftung_02
SAY @713
IF ~~ THEN + nach_verhaftung_04
END

IF ~~ THEN nach_verhaftung_03
SAY @714
IF ~~ THEN + nach_verhaftung_02
END

IF ~~ THEN nach_verhaftung_04
SAY @715
IF ~~ THEN DO ~SetGlobal("C#AjantisFPArrested","GLOBAL",2)~ EXIT
END

////////////////////////////////////////////////////////////////////////
//Last talk
////////////////////////////////////////////////////////////////////////

//After entering dead Undercity

IF WEIGHT #-2 
~Global("C#AjantisLastFPTalk","GLOBAL",1)~ THEN PCtalk_final
SAY @716
= @717
++ @718 + final_01
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @719 + final_02
++ @720 + final_03
++ @721 + final_04
END

IF ~~ THEN final_01
SAY @722
IF ~~ THEN + final_05
END

IF ~~ THEN final_02
SAY @723
IF ~~ THEN + final_05
END

IF ~~ THEN final_03
SAY @724
IF ~~ THEN + final_05
END

IF ~~ THEN final_04
SAY @725
= @726
IF ~~ THEN + final_08
END

IF ~~ THEN final_05
SAY @727
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @728 + final_06
+ ~!Alignment(Player1,19) !Alignment(Player1,35) !Alignment(Player1,51)~ + @729 + final_06

+ ~Alignment(Player1,19)~ + @729 + final_06b
+ ~Alignment(Player1,35)~ + @729 + final_06b
+ ~Alignment(Player1,51)~ + @729 + final_06b

++ @730 + final_08
++ @731 + final_07
END

IF ~~ THEN final_06
SAY @732
IF ~~ THEN + final_08
END

IF ~~ THEN final_06b
SAY @733
IF ~~ THEN + final_08
END

IF ~~ THEN final_07
SAY @734
IF ~~ THEN + final_08
END

IF ~~ THEN final_08
SAY @735
IF ~ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN + final_09
IF ~ReputationLT(Player1,14)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN + final_10
IF ~ReputationGT(Player1,13)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ THEN + final_10
IF ~ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ THEN + final_10
END

IF ~~ THEN final_09
SAY @736
IF ~~ THEN + final_11
END

IF ~~ THEN final_10
SAY @737
IF ~~ THEN + final_11
END

IF ~~ THEN final_11
SAY @738
IF ~~ THEN DO ~SetGlobal("C#AjantisLastFPTalk","GLOBAL",2)~ EXIT
END

/* reaction to that Sword (for Ana Christina!) */
IF WEIGHT #-2 
~Global("C#AjanFP_ThatSword","GLOBAL",1)~ THEN that_sword
SAY @739
= @740
++ @741 + that_sword_01
++ @742 + that_sword_02
END

IF ~~ THEN that_sword_01
SAY @743
IF ~~ THEN DO ~SetGlobal("C#AjanFP_ThatSword","GLOBAL",2)~ EXIT
END

IF ~~ THEN that_sword_02
SAY @744
IF ~~ THEN DO ~SetGlobal("C#AjanFP_ThatSword","GLOBAL",2)~ EXIT
END

END




