/* SoD Rasaad Romance: Pc has possibility to point to her engagement with Ajantis */

/* IF ~~ THEN BEGIN 69 // from: 68.2 68.1 68.0
  SAY #53340 /* ~Our earlier interaction has been preying on my mind. I hope I did not truly upset you.~ [BD53340] */ */
EXTEND_BOTTOM BDRASAAJ 69
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @0 DO ~SetGlobal("C#AjanBG1_ToldBoutAjRom","LOCALS",1)~ + ajantis_69
END

APPEND BDRASAAJ 

IF ~~ THEN ajantis_69
SAY @1
COPY_TRANS BDRASAAJ 69
END

END


EXTEND_BOTTOM BDRASAAJ 86
IF ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + ajantis_89_c
IF ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)
Global("C#AjanBG1_ToldBoutAjRom","LOCALS",1)~ THEN + ajantis_89_b
END

EXTEND_BOTTOM BDRASAAJ 87
IF ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + ajantis_89_c
IF ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)
Global("C#AjanBG1_ToldBoutAjRom","LOCALS",1)~ THEN + ajantis_89_b
END

EXTEND_BOTTOM BDRASAAJ 88
IF ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + ajantis_89_c
IF ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)
Global("C#AjanBG1_ToldBoutAjRom","LOCALS",1)~ THEN + ajantis_89_b
END

APPEND BDRASAAJ 

IF ~~ THEN ajantis_89_b
SAY @2
IF ~~ THEN + ajantis_89_c
END

IF ~~ THEN ajantis_89_c
SAY @3
IF ~~ THEN + 89
END

END

/* IF ~~ THEN BEGIN 89 // from: 88.0 87.0 86.0
  SAY #53392 /* ~Forgive me for my audacity, but I have to ask. Is there anyone in your life who holds a place in your heart?~ [BD53392] */ */
EXTEND_BOTTOM BDRASAAJ 89
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @4 + 90
END

EXTEND_BOTTOM BDRASAAJ 117
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @5 + 90
END

/* Corwin BDCORWIJ.dlg */

/*IF ~~ THEN BEGIN 280 // from: 279.0
  SAY #54485 /* ~I don't think it's any great secret that I've found myself attracted to you these past few weeks. I'm attracted to a lot of people. Attraction is easy enough to deal with. Feelings are another story.~ [BD54485] */ */
EXTEND_BOTTOM BDCORWIJ 280
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @6 + 276
END

/* IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #54493 /* ~That's why I shut you out when we started talking about children. Because I can't afford to let you in—let anybody in. Not until I know they're the right one.~ [BD54493] */ */
EXTEND_BOTTOM BDCORWIJ 284
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @6 + 276
END

/* IF ~~ THEN BEGIN 288 // from: 287.0
  SAY #54500 /* ~But you've got to decide what exactly we will be—if anything—and soon, or I'll make the decision for you.~ [BD54500] */ */
EXTEND_BOTTOM BDCORWIJ 288
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @7 + 294 
END



/* Dorn BDDORNJ.dlg*/

/* IF ~~ THEN BEGIN 105 // from: 104.0 103.2 103.1 103.0 99.3
  SAY #54234 /* ~This talk of freedom and choices raises a question in my mind. Is there one among our group you consider a potential mate? I wish to know where your loyalties lie.~ */ */
EXTEND_BOTTOM BDDORNJ 105
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @8 + ajantis_dorn_end
END

APPEND BDDORNJ

IF ~~ THEN BEGIN ajantis_dorn_end
  SAY @9
  IF ~~ THEN DO ~SetGlobal("bd_dorn_romanceactive","global",3)~ + 131
END

END

/* IF ~~ THEN BEGIN 127 // from: 126.0 125.0
  SAY #54292 /* ~Power comes in many forms. This I have learned. Your power is more subtle. Mine, that gifted by Ur-Gothoz, is the power of physicality.~ */ */
EXTEND_BOTTOM BDDORNJ 127
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @10 + ajantis_dorn_end
END

/* IF ~~ THEN BEGIN 128 // from: 127.1 127.0
  SAY #54296 /* ~And yet you haven't seen everything it can do. I am a warrior, yes, but there are far more pleasurable uses I can put this body to. ~ */ */
EXTEND_BOTTOM BDDORNJ 128
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @11 + ajantis_dorn_end
END




/* Voghiln */

/* IF ~~ THEN BEGIN 70 // from: 76.1 76.0 69.0 67.0 65.0
  SAY #53963 /* ~You do not think you have a beautiful face? How about your eyes? Your eyes shine like Selûne's Tears! Never have I seen such sparkle in a woman's eyes.~ [BD53963] */ */
EXTEND_BOTTOM BDVOGHIJ 70
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @12 + 77
END

/* IF ~~ THEN BEGIN 71 // from: 70.1 70.0
  SAY #53967 /* ~Your hair! Womens love it when you talk about their hair, ja? It is as soft as silk and probably smells divine, if Voghiln could just get in a little closer...~ [BD53967] */ */
EXTEND_BOTTOM BDVOGHIJ 71
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @12 + 77
END

/* IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #53972 /* ~I see there are many differences between us. No matter! Love conquers all, ja?~ [BD53972] */ */
EXTEND_BOTTOM BDVOGHIJ 73
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @12 + 77
END

/* IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #53976 /* ~Does the wolf wait for an appropriate courtship period before he pursues his mate?~ [BD53976] */ */
EXTEND_BOTTOM BDVOGHIJ 74
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @12 + 77
END

/* IF ~~ THEN BEGIN 84 // from: 82.0 80.0
  SAY #53998 /* ~Ho, ho, Voghiln only teases. Mostly. You push me away because there is someone else, ja? Another has captured your heart.~ [BD53998] */ */
EXTEND_BOTTOM BDVOGHIJ 84
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @13 + 86 
END

/* IF ~~ THEN BEGIN 100 // from: 99.1 99.0
  SAY #54042 /* ~To our team, then! To you and I! I drink to you and my admiration for you overwhelms! May I kiss your hand?~ [BD54042] */ */
EXTEND_BOTTOM BDVOGHIJ 100
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @14 + 86
END

/* IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #54050 /* ~Long have I dreamed of this moment! Now I come closer... now I kiss...~ [BD54050] */ */
EXTEND_BOTTOM BDVOGHIJ 102
+ ~OR(2)
	!Dead("ajantis") 
	GlobalGT("C#AjantisIsDeadBG1","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ + @14 + 86
END


