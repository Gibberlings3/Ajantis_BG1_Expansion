/* if Dead("bdkorlas"), Ajantis complains in SoD */

/* this adds his relief about the final battle to the SoD dialogue */

I_C_T BDAJANTJ 4 C#Ajantis_BG1KorlaszDefeated
== BDAJANTJ IF ~InParty("Ajantis")
	InMyArea("Ajantis") 
!StateCheck("Ajantis",CD_STATE_NOTVALID) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @5
= @3
= @4 DO ~SetGlobal("C#Ajantis_BG1KorlaszDefeated","GLOBAL",2)~
END




I_C_T3 BDImoen 53 C#AjantisBG1_Leaving
/* non-romance case */
== ~BDAJANTJ~ IF ~InParty("Ajantis")
	InMyArea("Ajantis") 
!StateCheck("Ajantis",CD_STATE_NOTVALID) !Global("X#AjantisRomanceActive","GLOBAL",2)
/* compatibility with EndlessBG1 "Korlasz Dungeon in BG1" + Transitions */
!Global("SOD_fromimport","global",2)~ THEN @0 /* ~It was an honor to cleanse this place from the bandit threat and the rising war with you. But now Sarevok and his evil followers are defeated. I shall return home to call on the Order of the Radiant Heart. I will report the happenings and your part in it. I, ahem, will also mention my part in it, and hope I will be found worthy to receive knighthood. I thank you for combining forces with me.~ */ DO ~SetGlobal("%KickedOut_SoD%","LOCALS",0)
TakePartyItem("x#ajshld")
DestroyItem("x#ajshld")~ 
/* romance case */
== ~BDAJANTJ~ IF ~InParty("Ajantis")
	InMyArea("Ajantis") 
!StateCheck("Ajantis",CD_STATE_NOTVALID) Global("X#AjantisRomanceActive","GLOBAL",2)
/* compatibility with EndlessBG1 "Korlasz Dungeon in BG1" + Transitions */
!Global("SOD_fromimport","global",2)~ THEN @1 /* ~<CHARNAME>, I fear time has come to say good bye. The war is stopped, Sarevok is defeated. It is time for me to report to the Order of the Radiant Heart. But I will travel to Waterdeep first, as we already agreed upon. Nothing will detain me from seeking my parents' answer concerning our plans for marriage, now that our foe is defeated and peace has come back to the lands, at last. I am so looking foreward to talking to them, <CHARNAME>, my love. Talking to them and telling them of the love I hold for you.~ */
== ~BDAJANTJ~ IF ~InParty("Ajantis")
	InMyArea("Ajantis") 
!StateCheck("Ajantis",CD_STATE_NOTVALID) Global("X#AjantisRomanceActive","GLOBAL",2)
/* compatibility with EndlessBG1 "Korlasz Dungeon in BG1" + Transitions */
!Global("SOD_fromimport","global",2)~ THEN @2 /* ~My heart aches to leave you. I will send you messages about my whereabouts as often as I can. And be it Waterdeep, Athkatla, or here that we meet again, be assured I will come for you - or await you, no matter where we are destined to be reunited. Farewell, 'Hero of Baldur's Gate' (smiles). Relish the people's gratitude and praise while they are still willing to give it, <CHARNAME>. You earned it.~ */
DO ~SetGlobal("%KickedOut_SoD%","LOCALS",0)
TakePartyItem("x#ajshld")
DestroyItem("x#ajshld")~
END

I_C_T3 BDImoen 54 C#AjantisBG1_Leaving
/* non-romance case */
== ~BDAJANTJ~ IF ~InParty("Ajantis")
	InMyArea("Ajantis") 
!StateCheck("Ajantis",CD_STATE_NOTVALID) !Global("X#AjantisRomanceActive","GLOBAL",2)
/* compatibility with EndlessBG1 "Korlasz Dungeon in BG1" + Transitions */
!Global("SOD_fromimport","global",2)~ THEN @0 /* ~It was an honor to cleanse this place from the bandit threat and the rising war with you. But now Sarevok and his evil followers are defeated. I shall return home to call on the Order of the Radiant Heart. I will report the happenings and your part in it. I, ahem, will also mention my part in it, and hope I will be found worthy to receive knighthood. I thank you for combining forces with me.~ */ DO ~SetGlobal("%KickedOut_SoD%","LOCALS",0)
TakePartyItem("x#ajshld")
DestroyItem("x#ajshld")~ 
/* romance case */
== ~BDAJANTJ~ IF ~InParty("Ajantis")
	InMyArea("Ajantis") 
!StateCheck("Ajantis",CD_STATE_NOTVALID) Global("X#AjantisRomanceActive","GLOBAL",2)
/* compatibility with EndlessBG1 "Korlasz Dungeon in BG1" + Transitions */
!Global("SOD_fromimport","global",2)~ THEN @1 /* ~<CHARNAME>, I fear time has come to say good bye. The war is stopped, Sarevok is defeated. It is time for me to report to the Order of the Radiant Heart. But I will travel to Waterdeep first, as we already agreed upon. Nothing will detain me from seeking my parents' answer concerning our plans for marriage, now that our foe is defeated and peace has come back to the lands, at last. I am so looking foreward to talking to them, <CHARNAME>, my love. Talking to them and telling them of the love I hold for you.~ */
== ~BDAJANTJ~ IF ~InParty("Ajantis")
	InMyArea("Ajantis") 
!StateCheck("Ajantis",CD_STATE_NOTVALID) Global("X#AjantisRomanceActive","GLOBAL",2)
/* compatibility with EndlessBG1 "Korlasz Dungeon in BG1" + Transitions */
!Global("SOD_fromimport","global",2)~ THEN @2 /* ~My heart aches to leave you. I will send you messages about my whereabouts as often as I can. And be it Waterdeep, Athkatla, or here that we meet again, be assured I will come for you - or await you, no matter where we are destined to be reunited. Farewell, 'Hero of Baldur's Gate' (smiles). Relish the people's gratitude and praise while they are still willing to give it, <CHARNAME>. You earned it.~ */
DO ~SetGlobal("%KickedOut_SoD%","LOCALS",0)
TakePartyItem("x#ajshld")
DestroyItem("x#ajshld")~
END