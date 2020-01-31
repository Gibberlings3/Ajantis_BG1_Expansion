
CHAIN
IF WEIGHT #-1
~Global("C#Ajantis_BG1SarevokDefeated","GLOBAL",1)~ THEN ~%AJANTIS_JOINED%~ sarevokdead_bg1
@6 /* ~Sarevok is dead! Finally, the murderer of your foster-father is defeated.~ */ DO ~SetGlobal("C#Ajantis_BG1SarevokDefeated","GLOBAL",2)~
== %AJANTIS_JOINED% IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @7 /* ~How do you feel, love?~ */
== %AJANTIS_JOINED% IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @8 /* ~This is the moment of your triumph, <CHARNAME>! We should savor it.~ */
END
++ @9 /* ~I am very much releaved, indeed.~ */ + sarevokdead_bg1_01
++ @10 /* ~He was so much more than that. We prevented a war!~ */ + sarevokdead_bg1_02
++ @11 /* ~It's too soon to answer that question. I need time to understand it's over.~ */ + sarevokdead_bg1_03
++ @12 /* ~He got what he deserved.~ */ + sarevokdead_bg1_01
+ ~OR(2)
PartyHasItem("c#stsrva")
PartyHasItem("c#stsrvh")~ + @13 /* ~Shh, Ajantis, don't distract me from examining my "half-brother"'s armor. Seems to be quite powerful gear!~ */ + sarevokdead_bg1_05
++ @14 /* ~I feel exhausted, sweaty, and a little hungry.~ */ + sarevokdead_bg1_04


APPEND ~%AJANTIS_JOINED%~

IF ~~ THEN sarevokdead_bg1_01
SAY @15 /* ~And rightfully so.~ */
IF ~~ THEN + sarevokdead_bg1_06
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + sarevokdead_bg1_07
END

IF ~~ THEN sarevokdead_bg1_02
SAY @16 /* ~That we did, and we can be proud of our deeds.~ */
IF ~~ THEN + sarevokdead_bg1_06
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + sarevokdead_bg1_07
END

IF ~~ THEN sarevokdead_bg1_03
SAY @17 /* ~I can understand that it takes time to realize our accomplishments.~ */
IF ~~ THEN + sarevokdead_bg1_06
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + sarevokdead_bg1_07
END

IF ~~ THEN sarevokdead_bg1_04
SAY @18 /* ~Surely you feel more than that? A deeper sense of our accomplishments?~ */
IF ~~ THEN + sarevokdead_bg1_06
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + sarevokdead_bg1_07
END

IF ~~ THEN sarevokdead_bg1_05
SAY @19 /* ~You are not planning on wearing those from now?... They were the characteristics of Sarevok and his ill schemes. We should put those aside, powerful or no.~ */
IF ~~ THEN + sarevokdead_bg1_06
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + sarevokdead_bg1_07
END

IF ~~ THEN sarevokdead_bg1_06
SAY @20 /* ~I will stay at your side as long as you still have need of me. I am looking foreward to returning to Athkatla to my Order, though, as I fulfilled my quest to receive knighthood.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN sarevokdead_bg1_07
SAY @21 /* ~I will stay at your side as long as you still have need of me, and will treasure every moment of it. Still, it urges me to travel to my parents to seek their approval. I am also looking foreward to returning to Athkatla to my Order, as I fulfilled my quest to receive knighthood.~ */
IF ~~ THEN EXIT
END

END //APPEND