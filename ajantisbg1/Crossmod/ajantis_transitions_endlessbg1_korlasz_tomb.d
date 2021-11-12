APPEND %AJANTIS_JOINED%

/* Korpasz dead: dialogue inside Korlasz' Crypta 
## needs other trigger in "ajbg1_bd0130.baf" to work */


/* Korpasz was killed although tried to surrender - will lead into the unused original dialogue */
IF WEIGHT #-1
~!%ENDOFBG1_1% Global("C#Ajantis_BG1KorlaszKilled","GLOBAL",1)~ THEN sarevok_defeated
SAY @22 /* ~Korlasz begged for her life before you killed her, <CHARNAME>.~ */
IF ~~ THEN DO ~SetGlobal("C#Ajantis_BG1KorlaszKilled","GLOBAL",2)~ + sarevok_defeated_01
END

/* this is the original SoD dialogue, but without the other NPC interjections */
IF ~~ THEN sarevok_defeated_01
  SAY #%46137% /* ~That was unnecessary, <CHARNAME>. What did that slaughter gain us? ~ */
  IF ~~ THEN REPLY #%46138% /* ~This is a bloody business we're in, Ajantis Ilvarstarr. Sometimes, we must do things we would find... distasteful... to ensure a venture's success.~ */ GOTO sarevok_defeated_02
  IF ~~ THEN REPLY #%46139% /* ~Sarevok's collaborators being brought to justice isn't enough. They must be destroyed, wiped from the face of Toril.~ */ GOTO sarevok_defeated_02
  IF ~~ THEN REPLY #%46140% /* ~It gained me the satisfaction of seeing the last servant of my half-brother struck down by my hand.~ */ GOTO sarevok_defeated_02
END

IF ~~ THEN sarevok_defeated_02
  SAY #%46145% /* ~It wasn't right, <CHARNAME>. It simply wasn't right.~ */
  IF ~~ THEN EXIT
  IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + sarevok_defeated_03
END

IF ~~ THEN sarevok_defeated_03
SAY @5
IF ~~ THEN + sarevok_defeated_04
END

IF WEIGHT #-1
~!%ENDOFBG1_1% Global("C#Ajantis_BG1KorlaszDefeated","GLOBAL",1)~ THEN sarevok_defeated_04
SAY @3 /* ~We... we *did* it! Sarevok and his allies, all defeated.~ */
= @4 /* ~And we are both alive, love! This is a joyous moment. It is also the moment we were both talking about. I will leave soon for Waterdeep. But not just now - I want to relish the peaceful moment with you, love. And... we also need to leave this dungeon, after all. (smiles)~ */
IF ~~ THEN DO ~SetGlobal("C#Ajantis_BG1KorlaszDefeated","GLOBAL",2)~ EXIT
END

END //APPEND