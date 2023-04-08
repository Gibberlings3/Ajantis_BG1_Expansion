CHAIN
IF WEIGHT #-1
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("Ajantis") See(Player1)
Global("C#ImSoD_AjantisBanter","GLOBAL",0)~ THEN BDIMOENB imoen_ajantis_sod_01
@0 /* [Imoen]Schaut nicht so strang, Ajantis. Wollt Ihr mich auch schimpfen, dass ich den Unterricht bei Herzogin Jannath vorzeitig beendet habe? */
DO ~SetGlobal("C#ImSoD_AjantisBanter","GLOBAL",1)~
== BDAJANTB @1 /* Nun... */
== BDIMOENB @2 /* Ich wusste es! Redet Euch nicht raus. */
== BDAJANTB @3 /* Ich hatte es überlegt, Imoen... aber noch nicht ausgesprochen. Ich wollte erst einmal etwas anderes sagen. */
== BDIMOENB @4 /* (seufz) Wie unzuverlässig und hitzköpfig ich bin? Närrisch vielleicht auch? Nur zu, ich bin es ja gewohnt. */
== BDAJANTB @5 /* Ich wollte in Worte fassen wie froh ich bin, Euch wieder gesund und munter zu wissen, Imoen. Euch so beeinträchtigt zu wissen war - nicht schön. */
== BDIMOENB @6 /* Oh! Das ist aber lieb von Euch, Ajantis. Das hatte ich jetzt gar nicht erwartet. */
EXIT

CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("%IMOEN_DV_SOD%")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)
See("Ajantis") See(Player1)
Global("C#ImSoD_AjantisBanter","GLOBAL",1)~ THEN BDIMOENB imoen_ajantis_sod_01
@7 /* [Imoen]Mich krank zu wissen war also "nicht schön", Ajantis, hmm? Ihr habt Euch Sorgen um mich gemacht! Gebt es zu! */
DO ~SetGlobal("C#ImSoD_AjantisBanter","GLOBAL",2)~
== BDAJANTB @8 /* Ja, das habe ich, Imoen. Steht es mir nicht zu, mich um eine Freundin zu sorgen? ... von <CHARNAME>. Eine Freundin von <CHARNAME>, meinte ich. */
== BDIMOENB @9 /* Von <CHARNAME>, hmm? Ihr könnt mich ruhig eine Freundin nennen, Ajantis, da ist nichts peinlich bei. Ich weiß, dass Ihr meine Diebeskunst nicht mögt und dass ich Euch zu quirlig bin - aber wir sind trotzdem Freunde! */
== BDAJANTB @10 /* Ich gebe zu dass es mich freut, dass Ihr das so seht. */
== BDIMOENB @11 /* ...von <CHARNAME>, meinte ich natürlich. */
== BDAJANTB @12 /* Achso, wir sind beide Freunde von <CHARNAME> - ja, das - */
== BDIMOENB @13 /* Oh Maaaann, Ajantis, Euch kann man echt immer noch so leicht reinlegen. Ich meinte natürlich uns beide! Wir sind Freunde, ja? */
== BDAJANTB @14 /* Ich denke das sind wir, Imoen. */
== BDIMOENB @15 /* Juhu! */
== BDAJANTB @16 /* Als Freund und Kampfgefährte muss ich Euch darauf hinweisen, dass der frühe Abbruch des Trainings durch Herzogin Jannath auf lange Sicht sehr unvernünftig war, Imoen. */
== BDIMOENB @17 /* Ooch, Ajantis, Ihr seid echt zum Mäusemelken! */
EXIT