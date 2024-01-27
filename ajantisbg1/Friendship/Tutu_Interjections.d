//meeting Raleo Windspear, second floor of the Red Sheaf



I_C_T %tutu_var%Raleo 0 C#AjantisBG1Raleo0
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") %InMyArea_Ajantis% !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @0
== ~%tutu_var%Raleo~ IF ~InParty("ajantis") %InMyArea_Ajantis% !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") %InMyArea_Ajantis% !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @2
== ~%tutu_var%Raleo~ IF ~InParty("ajantis") %InMyArea_Ajantis% !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") %InMyArea_Ajantis% !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @4
= @5
= @6
== ~%tutu_var%Raleo~ IF ~InParty("ajantis") %InMyArea_Ajantis% !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @7
END

/* husam */
I_C_T ~%tutu_var%Husam2~ 6 C#AjantisBG1Husam2_6
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") %InMyArea_Ajantis% !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @13 /* ~<CHARNAME> might not, but I am very well aware of who you work for, thief! The Shadow Thieves, a den of evil and murder!~ */
== ~%tutu_var%Husam2~ IF ~InParty("ajantis") %InMyArea_Ajantis% !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @14 /* ~A den of evil and murder who sticks to their word and do not betray their clients, yes. I do not deny it, on the contrary, I am open about it, because we are facing the threat of war where there is no time for petty games.~ */
END



/* More intejections that are not in BG1NPC */

/* Mendas, wants the PC to steal sea charts */

I_C_T ~%tutu_var%MENDA1~ 5 C#AjantisMendas8
== ~%AJANTIS_JOINED%~ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @9 /* ~Mendas? Mendas from Warerdeep? I never... But I have been away from my home for quite a while... <CHARNAME>, as intriguing as this expedition does sound, we do not have time for this now. Leave this expedition to more experienced sailors.~ */
END

I_C_T ~%tutu_var%MENDA1~ 8 C#AjantisMendas8
== ~%AJANTIS_JOINED%~ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @10 /* ~This, I fear, settles it. <CHARNAME>, you do not consider stealing from the Merchant's League?~ */
END

I_C_T ~%tutu_var%KAISH~ 27 C#AjantisKaish27
== ~%AJANTIS_JOINED%~ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @11 /* ~Ly... Lycantrophy? This is not compatible with my duties as a paladin. We need to find a cure, and quick!~ */
END

/* Three Flaming Fist Mercenaries on south Beregost road */

I_C_T ~%tutu_var%FLAM5~ 0 C#AjantisFLAM5_0
== ~%AJANTIS_JOINED%~ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @15 /* ~Good man! I am squire to the Order of the Most Radiant Heart. Never would I combine forces with bandits. On the contrary, I was send to investigate the bandit threat and put and end to it, if possible!~ */
== ~%tutu_var%FLAM5~ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @16 /* ~Well, you do have a shiny armor on, that's true. The rest is just blahblah.~ */
END

APPEND ~%AJANTIS_JOINED%~
IF WEIGHT #-1
~Global("C#AjantisFLAM5_0","GLOBAL",2)~ THEN flam5_dead
SAY @17 /* ~What - what impertinent fools! Attacking the ones that are here to help their cause of stopping the bandit threat - attacking us, making us kill them! What an unfortunate cause of events.~ */
IF ~~ THEN DO ~SetGlobal("C#AjantisFLAM5_0","GLOBAL",3)~EXIT
END
END //APPEND
