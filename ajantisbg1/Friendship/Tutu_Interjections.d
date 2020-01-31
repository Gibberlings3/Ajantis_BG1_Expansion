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
