/* Korlasz defeated SoD, RA = 2 */

APPEND %AJANTIS_JOINED_SOD%


/* after defeating Korlasz (SoD) */

IF WEIGHT #-1
~%ENDOFBG1_1% Global("C#Ajantis_BG1KorlaszDefeated","GLOBAL",1)~ THEN sarevok_defeated
SAY @3 /* ~We... we *did* it! Sarevok and his allies, all defeated.~ */
= @4 /* ~And we are both alive, love! This is a joyous moment. It is also the moment we were both talking about. I will leave soon for Waterdeep. But not just now - I want to relish the peaceful moment with you, love. And... we also need to leave this dungeon, after all. (smiles)~ */
IF ~~ THEN DO ~SetGlobal("C#Ajantis_BG1KorlaszDefeated","GLOBAL",2)~ EXIT
END

/* Korpasz was killed although tried to surrender - will lead into the unused original dialogue */
IF WEIGHT #-1
~%ENDOFBG1_1% Global("C#Ajantis_BG1KorlaszKilled","GLOBAL",1)~ THEN sarevok_defeated_01
SAY @22 /* ~Korlasz begged for her life before you killed her, <CHARNAME>.~ */
IF ~~ THEN DO ~SetGlobal("C#Ajantis_BG1KorlaszKilled","GLOBAL",2)~ + 3
END

END //APPEND

