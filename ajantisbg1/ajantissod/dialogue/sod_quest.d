/* Rickon and Haiva, Waterdhavian Soldiers */

BEGIN C#Ajsq01
BEGIN C#Ajsq02

/* Meeting, Ajantis is not in party or Ajantis dispute is done */

/* Haiva */
IF ~OR(4) !InParty("Ajantis") !See("Ajantis") StateCheck("Ajantis",CD_STATE_NOTVALID)
GlobalGT("C#AjSoD_Quest","GLOBAL",3)~ THEN haiva
SAY @0 /* [Haiva]Greetings, <CHARNAME>. */
IF ~~ THEN EXIT
IF ~InMyArea("Ajantis") !Dead("Ajantis") !InPartyAllowDead("Ajantis") Global("C#AjSoD_Quest","GLOBAL",0)~ THEN EXTERN C#Ajsq01 rickon_13
IF ~Global("C#Aj_Talked_to","LOCALS",0)~ THEN EXTERN C#Ajsq01 rickon
END

/* Rickon */
CHAIN
IF ~Global("C#Aj_Talked_to","LOCALS",0)
OR(4) !InParty("Ajantis") !See("Ajantis") StateCheck("Ajantis",CD_STATE_NOTVALID)
GlobalGT("C#AjSoD_Quest","GLOBAL",3)~ THEN C#Ajsq01 rickon
@1 /* [Rickon]You're the Hero of Baldur's Gate, eh? How does it feel to be the 'hero' of a den of losers? */
DO ~SetGlobal("C#Aj_Talked_to","LOCALS",1)~ 
== C#Ajsq02 @2 /* [Haiva]Rickon! You're not serious. Forgive us, <PRO_SIRMAAM>, Rickon is... rather direct in his approaches. And very fond of Waterdeep. */
DO ~SetGlobal("C#Aj_Talked_to","LOCALS",1)~ 
END
++ @3 /* [PC Reply]How about I show you what makes a hero, troublemaker? */ + rickon_01
++ @4 /* [PC Reply]Better watch your speech in the future. There's no need for tensions between the coalition parties, is there? */ + rickon_01
++ @5 /* [PC Reply]Fond of Waterdeep, hmm? He doesn't exactly make a good representative, if you ask me. */ + rickon_03
++ @6 /* [PC Reply]I'll accept an apology from Rickon. I'm sure a proud Waterdhavian soldier can speak for himself. */ + rickon_03
++ @7 /* [PC Reply]Quite good, actually. Maybe you would know how it feels to be a hero if you'd achieved half of what I did, you know. */ + rickon_01
++ @8 /* [PC Reply]Now, now - if you call Baldur's Gate a den of losers then I really, really do not know what we should call Waterdeep then. Pit of poop, maybe? */ + rickon_02
++ @9 /* [PC Reply]Shut your mouth or I will. */ + rickon_03

APPEND C#Ajsq01 

IF ~Global("C#Aj_Talked_to","LOCALS",1)
OR(4) !InParty("Ajantis") !See("Ajantis") StateCheck("Ajantis",CD_STATE_NOTVALID)
GlobalGT("C#AjSoD_Quest","GLOBAL",3)~ THEN rickon_00
SAY @10 /* [Rickon]Well met, <CHARNAME>. */
IF ~~ THEN EXIT
IF ~InMyArea("Ajantis") !Dead("Ajantis") !InPartyAllowDead("Ajantis") Global("C#AjSoD_Quest","GLOBAL",0)~ THEN + rickon_13
END

IF ~~ THEN rickon_01
SAY @11 /* [Rickon]Well, you know how to stand up for yourself, I'll leave you that. */
IF ~~ THEN + rickon_04
END

IF ~~ THEN rickon_02
SAY @12 /* [Rickon]You watch what you're saying! */
IF ~~ THEN + rickon_01
END

IF ~~ THEN rickon_03
SAY @13 /* [Rickon]Oh, did I offend the 'hero'? I didn't really mean to. */
IF ~~ THEN + rickon_04
END

IF ~~ THEN rickon_04
SAY @14 /* [Rickon]You should be used to taking the heat by now. Isn't that what heros are supposed to do? Nod and smile, nod and smile, no matter what they throw at you. Like rumors that you would be a Bhaalchild, for example. */
++ @15 /* [PC Reply]Rickon, you are very rude and I don't feel like humoring you any longer. */ + rickon_07
++ @16 /* [PC Reply]What do you mean, "rumor". It's true. */ + rickon_05
++ @17 /* [PC Reply]Hmm, seems you do know a little about how a hero's life would be. */ + rickon_08
++ @18 /* [PC Reply]Trouble in the camp is the only thing that keeps me from striking you down, doofus. */ + rickon_12
END

IF ~~ THEN rickon_05
SAY @19 /* [Rickon]Whoa! I didn't expect you to just admit it like that. Won't make your life any easier, I reckon. */
IF ~~ THEN + rickon_06
END

IF ~~ THEN rickon_06
SAY @20 /* [Rickon]I think I like you. Even though you are from a den of losers, I think you are alright. */
++ @21 /* [PC Reply]Too bad I don't like you. This conversation is over. */ + rickon_07
++ @22 /* [PC Reply]Well, ain't I the lucky one. */ + rickon_10
++ @23 /* [PC Reply]And I think somewhere behind this big mouth is someone who could be worth drinking an ale with, indeed. */ + rickon_09
++ @24 /* [PC Reply]I need to go or I'll start a fight between coalition partners. */ + rickon_07
END
END //APPEND

CHAIN
IF ~~ THEN C#Ajsq01 rickon_07
@25 /* [Rickon]Well, then go to your friends - or should I say underlings? How is the hirarchy of a hero, I'm not so familiar with it. */
== C#Ajsq02 @26 /* [Haiva]Again - very sorry. Don't take him too seriously. He just likes provoking people. */
END
IF ~~ THEN EXIT
IF ~InMyArea("Ajantis") !Dead("Ajantis") !InPartyAllowDead("Ajantis") Global("C#AjSoD_Quest","GLOBAL",0)~ THEN + rickon_13

APPEND C#Ajsq01
IF ~~ THEN rickon_08
SAY @27 /* [Rickon]Do I now? I have a good imagination. */
IF ~~ THEN + rickon_06
END

IF ~~ THEN rickon_09
SAY @28 /* [Rickon]It's a date! Heh. */
IF ~~ THEN + rickon_11
END

IF ~~ THEN rickon_10
SAY @29 /* [Rickon]Nah, not so sure of that - not sure of that at all. */
IF ~~ THEN + rickon_11
END

IF ~~ THEN rickon_11
SAY @30 /* [Rickon]You carry a lot on your shoulders. I wouldn't want to trade places, although everyone I know would love to have achieved what you did, Hero. Even though it was just for a den of losers. (grins) */
IF ~~ THEN EXIT
IF ~InMyArea("Ajantis") !Dead("Ajantis") !InPartyAllowDead("Ajantis") Global("C#AjSoD_Quest","GLOBAL",0)~ THEN + rickon_13
END

IF ~~ THEN rickon_12
SAY @31 /* [Rickon]Oh, you are wise, then! Real hero material. There is hope for Baldur's Gate! */
IF ~~ THEN + rickon_06
END
END //APPEND

CHAIN
IF ~~ THEN C#Ajsq01 rickon_13
@32 /* [Rickon]Speaking of - I saw the loser Ajantis with your folks earlier. Send that fastidious holier-than-thou paladin my way. We have a bet to settle. */
== C#Ajsq02 @33 /* [Ajantis]Rickon! Would you please stop being offensive. - Ajantis is my brother-in-law. I'd like to see him, actually. We're not supposed to stray too much, but I guess he could stroll the camp freely. Just tell him Rickon and Haiva are here. */
END
IF ~~ THEN DO ~SetGlobal("C#AjSoD_Quest","GLOBAL",1)~ UNSOLVED_JOURNAL @100000 EXIT

APPEND C#Ajsq01
IF ~GlobalLT("C#AjSoD_Quest","GLOBAL",3)
InParty("Ajantis") See("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN rickon_challenge
SAY @34 /* [Rickon]Ajantis! What a pleasure to meet the fastidious holier-than-though paladin again. */
IF ~~ THEN EXTERN C#Ajsq02 haiva_challenge
END
END //APPEND

APPEND C#Ajsq02

IF ~~ THEN haiva_challenge
SAY @35 /* [Haiva]Rickon! Would you please stop being offensive. */
IF ~~ THEN + haiva_challenge_01
END
END //APPEND

CHAIN
IF ~GlobalLT("C#AjSoD_Quest","GLOBAL",3)
InParty("Ajantis") See("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN C#Ajsq02 haiva_challenge_01
@36 /* [Haiva]Hi there, brother of my siter-in-law. So we do meet. How are you? */
== BDAJANTJ @37 /* [Ajantis]Haiva! It's nice to see you. I am fine. <CHARNAME>, this is Haiva, the sister of my sister's husband. Please, meet <CHARNAME>, Hero of Baldur's Gate. */
== C#Ajsq01 @38 /* [Rickon](scoff) */
== BDAJANTJ @39 /* [Ajantis]Rickon, you are as unbearable as ever, I reckon. <CHARNAME>, this is Rickon, Haiva's fiancé. */
== C#Ajsq01 @40 /* [Rickon]I am *so* delighted to meet the hero of this beautiful city. */
== C#Ajsq02 IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @41 /* [Haiva]Ignore him. It's an honor to meet you, <CHARNAME>. */
== C#Ajsq02 IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @42 /* [Haiva]Ignore him. It's an honor to meet you, <CHARNAME>. I heard so much about Ajantis' impressive fiancée, I'm delighted to be the first to meet you in person. */
== BDAJANTJ @43 /* [Ajantis]My sister told me you would be marching against the crusade, too, but I was not sure whether we would meet here. How is everyone at home? */
== C#Ajsq02 @44 /* [Haiva]Fine, really. You met your sister yourself a couple of days ago so all I have is my parents sending their regards. */ 
== C#Ajsq01 @45 /* [Rickon]Which leaves us with an unfinished business, hmm, my brother-in-law-in-law-in-law? */
== BDAJANTJ @46 /* [Ajantis]I would not know of any "unfinished business". */
== C#Ajsq02 @47 /* [Haiva]<CHARNAME>, your companion is due for a duel! Please spare him for a minute. We need to settle a dispute - well, it's more a disagreement about a little detail. It won't take long. */
== BDAJANTJ @48 /* [Ajantis]And I already said that I would enjoy sparing, but a *duel* is out of the question. Let's go, <CHARNAME>, we don't need to listen to this fool's tattle. */
END
++ @49 /* [PC Reply]On the contrary, I am intrigued. What is this about? */ DO ~SetGlobal("C#Aj_Spoke_Challenge","MYAREA",1)~ EXTERN C#Ajsq01 rickon_challenge_02 
++ @50 /* [PC Reply]We might come back again later, but right now I don't have time for family disputes. */ EXTERN C#Ajsq01 rickon_challenge_04
++ @51 /* [PC Reply]Indeed, this is nonsense. There will be no duel, we have more important things to do. Don't raise the topic again. */ EXTERN C#Ajsq01 rickon_challenge_01

APPEND C#Ajsq01

IF ~Global("C#AjSoD_Quest","GLOBAL",3)
InParty("Ajantis") See("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN rickon_challenge_00
SAY @52 /* [Rickon]You are back! Duel? Hmm? Hmm? Hmmmmm? */
+ ~Global("C#Aj_Spoke_Challenge","MYAREA",0)~ + @53 /* [PC Reply]What exactly is this about? */ DO ~SetGlobal("C#Aj_Spoke_Challenge","MYAREA",1)~ EXTERN C#Ajsq01 rickon_challenge_03 
+ ~Global("C#Aj_Spoke_Challenge","MYAREA",1)~ + @54 /* [PC Reply]Well, I think it is about time you agreed to the duel, Ajantis. */ + rickon_challenge_07
+ ~Global("C#Aj_Spoke_Challenge","MYAREA",1) Global("C#Aj_Asked_for_Sparring","MYAREA",0)~ + @55 /* [PC Reply]Instead of a duel, you could do something useful. Like sparring, learning from each other, fighting against a training dummy - this kind of thing. */ DO ~SetGlobal("C#Aj_Asked_for_Sparring","MYAREA",1)~ EXTERN bdajantj ajantis_challenge
++ @50 /* [PC Reply]We might come back again later, but right now I don't have time for family disputes. */ + rickon_challenge_04
++ @51 /* [PC Reply]Indeed, this is nonsense. There will be no duel, we have more important things to do. Don't raise the topic again. */ + rickon_challenge_01
END

IF ~~ THEN rickon_challenge_01
SAY @56 /* [Rickon]Alright, alright! I agree it's not exactly the optimal time. But I'll get to you, Ajantis - some day, and we'll settle who's the better sword fighter! */
IF ~~ THEN DO ~EraseJournalEntry(@100000)
EraseJournalEntry(@100001)
SetGlobal("C#AjSoD_Quest","GLOBAL",4)~ SOLVED_JOURNAL @100002 EXIT
END

IF ~~ THEN rickon_challenge_02
SAY @57 /* [Rickon]Ha- haa! This is the spirit. */
IF ~~ THEN + rickon_challenge_03
END

IF ~~ THEN rickon_challenge_03
SAY @58 /* [Rickon]Your friend Ajantis here just couldn't stop boasting how *he* would have trained swordplay with legends like *Myrmith Splendon*. I challenged him to a duel to show that there is nothing special about his swordsmanship, and he so far refused with flimsy excuses. */
IF ~~ THEN + rickon_challenge_05
END

IF ~~ THEN rickon_challenge_04
SAY @59 /* [Rickon]I'll be here - ready and waiting. */
IF ~~ THEN DO ~EraseJournalEntry(@100000)
SetGlobal("C#AjSoD_Quest","GLOBAL",3)~ UNSOLVED_JOURNAL @100001 EXIT
END

IF ~~ THEN rickon_challenge_05
SAY @60 /* [Rickon]So, what will it be? */
++ @54 /* [PC Reply]Well, I think it is about time you agreed to the duel, Ajantis. */ + rickon_challenge_07
+ ~Global("C#Aj_Asked_for_Sparring","MYAREA",0)~ + @55 /* [PC Reply]Instead of a duel, you could do something useful. Like sparring, learning from each other, fighting against a training dummy - this kind of thing. */ DO ~SetGlobal("C#Aj_Asked_for_Sparring","MYAREA",1)~ EXTERN bdajantj ajantis_challenge
++ @50 /* [PC Reply]We might come back again later, but right now I don't have time for family disputes. */ + rickon_challenge_04
++ @51 /* [PC Reply]Indeed, this is nonsense. There will be no duel, we have more important things to do. Don't raise the topic again. */ + rickon_challenge_01
END

IF ~~ THEN rickon_challenge_06
SAY @61 /* [Rickon]Unfotunately, we aren't allowed to willfully leave the camp, I'm afraid. (Aww, Haiva - I *had* him!) */
++ @62 /* [PC Reply]Postponed is not abandoned. I think you should agree to a duel eventually, Ajantis. */ EXTERN bdajantj ajantis_challenge_01
++ @51 /* [PC Reply]Indeed, this is nonsense. There will be no duel, we have more important things to do. Don't raise the topic again. */ + rickon_challenge_01
END

END //APPEND

CHAIN
IF ~~ THEN C#Ajsq01 rickon_challenge_07
@63 /* [Rickon]Wohohoo! *Now* we are talking! */
== C#Ajsq02 @64 /* [Haiva]Look at that happy puppy! - But they can't. We have orders against sparing to blood in the camp. */
== C#Ajsq01 @65 /* [Rickon]Ooh, you think they would take it so seriously? Aw man, look at him, I *got* him, Haiva! */
== C#Ajsq02 @66 /* [Haiva]You could duel with bar hands. That would be allowed. */ 
== C#Ajsq01 @67 /* [Rickon]With bare... Haiva, honey, I want to proof Ajantis' *swordsplay* to be nothing out of the ordinary. How I'm supposed to do that with bare hands? Aww, this is too bad. */
== BDAJANTJ @68 /* [Ajantis]Thank you, Haiva, for putting an end to this sillyness. */
END
++ @69 /* [PC Reply]Noone said the duel is out of the question. You cold do it outside of camp. */ + rickon_challenge_06
++ @62 /* [PC Reply]Postponed is not abandoned. I think you should agree to a duel eventually, Ajantis. */ EXTERN bdajantj ajantis_challenge_01
++ @51 /* [PC Reply]Indeed, this is nonsense. There will be no duel, we have more important things to do. Don't raise the topic again. */ + rickon_challenge_01


CHAIN
IF ~~ THEN bdajantj ajantis_challenge
@70 /* [Ajantis]My words *exactly*! */
== C#Ajsq01 @71 /* [Rickon]Wow - is <PRO_HESHE> for real? Where did you find <PRO_HIMHER>, this is like a match made in heaven! You must come along very well, you two. But - no, this won't do. It's not about "learning from each other", or fumbling with weapons about. It's for *the* chance to see this haughty paladin lie in the dirt, forcing to *admit* that his oh-so-famous special swords teacher is just a mortal, like everyone else. */
END
IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN EXTERN C#Ajsq01 rickon_challenge_05
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @72 /* [PC Reply]I very much disapprove of the tone in which you speak about my betrothed, Rickon. */ EXTERN C#Ajsq01 interlude_02
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @73 /* [PC Reply]Watch your tone or I'll make you lie in the dirt! */ EXTERN bdajantj interlude_01 
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @74 /* [PC Reply]I see that Ajantis' ways could brush some people the wrong way. It's still just a friendly duel, I assume. */ EXTERN C#Ajsq01 interlude_02 
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @75 /* [PC Reply]Heh. I get why someone would wish for that. */ EXTERN C#Ajsq01 interlude_03 

APPEND bdajantj 
IF ~~ THEN interlude_01
SAY @76 /* [Ajantis]Pay his words no heed, love. It's the way he *is*. */
IF ~~ THEN EXTERN C#Ajsq01 interlude_02
END
END //APPEND

APPEND C#Ajsq01 
IF ~~ THEN interlude_02
SAY @77 /* [Rickon]Aw, I was just exaggerating. I wouldn't *mind* seeing this happen, though. */
IF ~~ THEN + rickon_challenge_05
END

IF ~~ THEN interlude_03
SAY @78 /* [Rickon]Ajantis - if I wouldn't be married, I would fall for <CHARNAME> this instand. Don't let her go, ever, alright? */
IF ~~ THEN + rickon_challenge_05
END
END //APPEND

CHAIN
IF ~~ THEN bdajantj ajantis_challenge_01
@79 /* [Ajantis](sigh) Fine. I accept. I will duel with you - but not here, not *now*. Circumstances do not allow, and we need to focus our strength on defeating Caelar and the crusade, anyway. */
== C#Ajsq01 @80 /* [Rickon]Ha! Hahaha! Did you hear that? Did you hear? Yes, that's what we'll do. I'll hold you to your word, Ajantis. It's indeed wiser not to do it here. But I have your word for a duel! And everyone knows a paladin is bound to his words by his life's honor. This is success! Looking very much foreward to meeting you again, brother-in-law-in-law-in-law. */
== C#Ajsq01 @81 /* [Rickon]<CHARNAME> - this is on you, kudos! I'll leave you these. Maybe you have better equipment already, but they were of good use to me on some nightly patrol duties. (And, you know - if you could make Ajantis wear them, that would be *so* funny to know that I would have brought him some en*light*enment, heheh!) Ah, I can't *wait* to tell this. See you around, all of you. */
END
IF ~~ THEN DO ~GiveItemCreate("C#Ajsq01",Player1,0,0,0)
EraseJournalEntry(@100000)
EraseJournalEntry(@100001)
SetGlobal("C#AjSoD_Quest","GLOBAL",5)~ SOLVED_JOURNAL @100003 EXIT
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~GiveItemCreate("C#Ajsq01",Player1,0,0,0)
EraseJournalEntry(@100000)
EraseJournalEntry(@100001)
SetGlobal("C#AjSoD_Quest","GLOBAL",5)~ SOLVED_JOURNAL @100003 EXTERN C#Ajsq02 haiva_bhaalchild

CHAIN
IF ~~ THEN C#Ajsq02 haiva_bhaalchild
@82 /* [Haiva]Just one more thing, Ajantis - and <CHARNAME>. I won't tell anyone about the rumor that you are a child of Bhaal. But Ajantis, your family definitely does not know about this yet and I'm not sure this couldn't lead to some kind of "political" complications... alright, I see by your look that you are aware of that, so I will stop talking about it. I apologize in case I was too foreward. I wish you best of luck. You too, <CHARNAME>, I mean it. */
== BDAJANTJ @83 /* Thank you, Haiva. Farewell. */
EXIT

/* Ajantis wears the Gauntlets of True Sight */
APPEND bdajantj 
IF ~Global("C#AjSoD_WearsRickonsGauntlets","GLOBAL",1)~ THEN rickons_gauntlets
SAY @84 /* [Ajantis]These gauntlets Rickon gave you are of good quality and grant useful abilities. I see no reason to object to wearing them for our cause. */
++ @85 /* [PC Reply]I think so, too. I'm sorry if it gives you unease considering your history with Rickon, but their usefulness is of higher importance. */ + rickons_gauntlets_03
++ @86 /* [PC Reply]Is that why you are saying that with an extra stern face, Ajantis? */ + rickons_gauntlets_02
++ @87 /* [PC Reply]Of course you don't. You'd get a mouthful if you'd decline to wear good gear out of personal preferences. */ + rickons_gauntlets_03
++ @88 /* [PC Reply]It will give him great satisfaction I guess... but they are good bracers. */ + rickons_gauntlets_03
++ @89 /* [PC Reply]He can be obnoxious but I think he's alright. Heart at the right place and so on. */ + rickons_gauntlets_02
++ @90 /* [PC Reply]So, he brought you some en"light"enment, hmmm? */ + rickons_gauntlets_04
++ @91 /* [PC Reply]Then why are you talking about it? */ + rickons_gauntlets_01
END

IF ~~ THEN rickons_gauntlets_01
SAY @92 /* [Ajantis]Because after this display of his I wanted to make sure that I am fine with wearing them. */
IF ~~ THEN + rickons_gauntlets_02
END

IF ~~ THEN rickons_gauntlets_02
SAY @93 /* [Ajantis]What I am not looking foreward to is his mockery when he hears about it. He will not leave out any occasion to boast about it - and repeat that stupid joke of words, to anyone who might know me or might just be standing near. But then - if it was not for this, he would have found something else. It is the way he is. */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_WearsRickonsGauntlets","GLOBAL",2)~ EXIT
END

IF ~~ THEN rickons_gauntlets_03
SAY @94 /* [Ajantis]Their usefulness is the only thing that counts. */
IF ~~ THEN + rickons_gauntlets_02
END

IF ~~ THEN rickons_gauntlets_04
SAY @95 /* [Ajantis](sigh) */
IF ~~ THEN + rickons_gauntlets_02
END

END //APPEND

