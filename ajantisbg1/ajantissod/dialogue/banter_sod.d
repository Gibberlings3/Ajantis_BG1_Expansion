/* Voghiln confessed he slept with Safana. Ajantis scolds him */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("Voghiln")
!StateCheck("Voghiln",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("Voghiln") See(Player1)
!Alignment(Player1,MASK_EVIL)
Global("bd_VoghilnRomance4","GLOBAL",2)
Global("C#AjSoD_SafanaVoghilnBanter","GLOBAL",0)~ THEN BDAJANTB ajantis_safana_voghiln_sod_01
@0 /* [Ajantis]Shame on you, Voghiln. I *could* you betray <CHARNAME>. And with such a woman as Safana, who sees this as a game! <CHARNAME> deserves so much better. */
DO ~SetGlobal("C#AjSoD_SafanaVoghilnBanter","GLOBAL",1)~
== BDVOGHIB @1 /* [Voghiln]Oh, I regret it, too. <CHARNAME> is who I desire, I see this clear now like bright light on cloudless sky, ja? */
== BDVOGHIB IF ~!Global("bd_voghiln_romanceactive","global",2)~ THEN @2 /* [Voghiln]Alass, she didn't want me any more. Such is life. */
== BDVOGHIB IF ~Global("bd_voghiln_romanceactive","global",2)~ THEN @3 /* [Voghiln]And <CHARNAME> took me back! Voghiln is the happiest man in the lands! */
== BDAJANTB IF ~Global("bd_voghiln_romanceactive","global",2)~ THEN @4 /* [Ajantis]I cannot believe she did, after such a betray of trust. */
== BDAJANTB @5 /* [Ajantis]<CHARNAME> is the bravest, the smartest woman I ever met - and the kindest. I cannot stand seeing her hurt... No matter if it is in matters of physical injuries or her heart. (sigh) There is things I will not be able to protect her from, I gather... (blushes) Let's continue, I spoke my piece. */
EXIT

/* Ajantis scolds Safana */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("Safana") See(Player1)
!Alignment(Player1,MASK_EVIL)
Global("bd_VoghilnRomance4","GLOBAL",2)
Global("C#AjSoD_SafanaVoghilnBanter","GLOBAL",1)~ THEN BDAJANTB ajantis_safana_voghiln_sod_02
@6 /* [Ajantis]I cannot believe you had your... pleasure with Voghiln, knowing <CHARNAME> was interested in him on a very personal and serious manner, Safana! Shame on you. */
DO ~SetGlobal("C#AjSoD_SafanaVoghilnBanter","GLOBAL",2)~
== BDSAFANB @7 /* [Safana]Oh, but life is a game, Ajantis. Do I regret it? Yes, but more because Voghiln isn't what I thought he is. He is such a *serious* man on the inside. Ever lasting love - ugh, that's for dummies, anyway. I think I helped <CHARNAME> - if only by teaching the lesson that she shouldn't bind herself to a man who is swayed by another woman so easily, with or without a lot of wine. */
== BDAJANTB @8 /* [Ajantis]Your words only betray you more. You are a woman of the low sort, no matter how much you try to excuse and whitewash your actions! */
EXIT

/* M'Khiin #1 */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("MKHIIN")
!StateCheck("MKHIIN",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("MKHIIN") See(Player1)
Global("C#AjSoD_MKhiinBanter","GLOBAL",0)~ THEN BDAJANTB ajantis_mkhiin_sod_01
@9 /* [Ajantis]I have never met a goblin like you, M'Khiin. */
DO ~SetGlobal("C#AjSoD_MKhiinBanter","GLOBAL",1)~
== BDMKHIIB @10 /* [M'Khiin]Met and talked to more than to show your disdain or fight them, you mean. */
== BDAJANTB IF ~Global("C#AjSoD_BDMKHIIN_Join","GLOBAL",0)~ THEN @11 /* [Ajantis]By no means would I always attack monsters on sight! It depends on the situation. I meant I never met a goblin as... well-versed as you. */
== BDAJANTB IF ~Global("C#AjSoD_BDMKHIIN_Join","GLOBAL",1)~ THEN @12 /* [Ajantis]I agree that I was taken aback by <CHARNAME>'s decision to let you join, but by no means would I always attack monsters on sight! It depends on the situation. I meant I never met a goblin as... well-versed as you. */
== BDMKHIIB @13 /* [M'Khiin]But still the human sees M'Khiin as a monster. */
== BDAJANTB @14 /* [Ajantis]That's not what I... I mean, *other* goblins probably are, and can be, in a way, considering the usually treacherous, aggressive ways of goblins. */
== BDMKHIIB @15 /* [M'Khiin]So, human is eying M'Khiin like a monster, I am eying Ajantis not to behave like one. */
== BDAJANTB @16 /* [Ajantis]I have to strongly reject the statement that I would behave like a monster. When I attack, I have a good reason to do so. If not, my god will punish me immediately! */
== BDMKHIIB @17 /* [M'Khiin]Goblins have own reasons to attack, too. But M'Khiin understands. Used to being treated this way. I see bad in what human calls the usual goblin ways myself. Left for a reason. */
EXIT


/* Corwin #1 */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("Corwin")
!StateCheck("Corwin",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("Corwin") See(Player1)
Global("C#AjSoD_CorwinBanter","GLOBAL",0)~ THEN BDAJANTB ajantis_corwin_sod_01
@18 /* [Ajantis]Corwin, I am so glad the taint is lifted from the Flaming Fist. */
DO ~SetGlobal("C#AjSoD_CorwinBanter","GLOBAL",1)~
== BDCORWIB @19 /* [Corwin]"The taint"? Well, I guess you could call it that. */
== BDAJANTB @20 /* [Ajantis]How could it happen? Why did noone stop the infiltration of the Flaming Fist by Sarevok and his goons? */
== BDCORWIB @21 /* [Corwin]Stop it? Sarevok was supposed to be crowned duke! What do you think we knew? */
== BDAJANTB @22 /* [Ajantis]But you should have seen what happened. Scar's suspicious murder, Eltan's unexplicable illness, Angelo's evil ways... <CHARNAME> was *framed* for murder! All these happenings would have been unnoticed to you? */
== BDCORWIB @23 /* [Corwin]Did I not like what I saw? Definitely. Did I have reason to suspect a land-wide conspiracy? I didn't, Ajantis. Putting the blame when having the hindsight is cheap. Don't fall for this mistake when judging the situation. */
EXIT




/* Safana */

/* BG1NPC banter "carry my box" did happen */
CHAIN
IF WEIGHT #-1
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("Ajantis") See(Player1)
Global("C#AjSoD_SafanaBanter","GLOBAL",0)
GlobalGT("X#SAAJ1","LOCALS",0)~ THEN BDSAFANB ajantis_safana_sod_01_a
@24 /* [Safana]Oh, travelling again with such a gallant knight - strong and focussed on serving - I mean, help the one's in need... */
DO ~SetGlobal("C#AjSoD_SafanaBanter","GLOBAL",1)~
END
IF ~~ THEN EXTERN BDAJANTB ajantis_safana_sod_01_c

/* BG1NPC banter "carry my box" did not happen */
CHAIN
IF WEIGHT #-1
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("Ajantis") See(Player1)
Global("C#AjSoD_SafanaBanter","GLOBAL",0)
Global("X#SAAJ1","LOCALS",0)~ THEN BDSAFANB ajantis_safana_sod_01_b
@25 /* [Safana]It's great to travel with such a radiant knight - strong and galant, focussed on serving - I mean, help the one's in need... */
DO ~SetGlobal("C#AjSoD_SafanaBanter","GLOBAL",1)~
== BDAJANTB @26 /* [Ajantis]Are you referring to me? */
== BDSAFANB @27 /* [Safana]Why yes, Ajantis. */
END
IF ~~ THEN EXTERN BDAJANTB ajantis_safana_sod_01_c

CHAIN
IF ~~ THEN BDAJANTB ajantis_safana_sod_01_c
@28 /* [Ajantis]I grew weary of people who bestow exaggerated compliments out of the blue. What do you want from me, Safana? */
== BDSAFANB @29 /* [Safana]Oh hoh! But why, darling, do you think I would only bestow on you a compliment if I wanted something from you? */
== BDAJANTB @30 /* [Ajantis]I couldn't possibly know, but I guess we will find out in a second. What can I do for you? */
== BDSAFANB @31 /* [Safana]Why yes, I do start to feel a bit faint, my backpack getting heavier any minute. You, on the other hand... */
== BDSAFANB IF ~Global("X#SAAJ1","LOCALS",0)~ THEN @32 /* Strong and ready to sweat... I mean help a woman out, hmm? */
== BDSAFANB IF ~GlobalGT("X#SAAJ1","LOCALS",0)~ THEN @33 /* [Safana]Strong and ready to sweat... I mean help a woman out, like you already proven times and again. I am still *so* thankful for your help back at the Sword Coast, Ajantis. You *saved* me from certain excertion. Surely you are ready to do so again? */
== BDAJANTB @34 /* [Ajantis]Of coure. If a comrade is carrying too much weight and I have ressources still, then I am more than ready to take some of their burden. */
== BDSAFANB @35 /* [Safana]Why, my darling, that is absolutely *fabulous*. Here, take these - */
== BDAJANTB @36 /* [Ajantis]And <CHARNAME> as our leader will decide how we repack our essential provisions, Safana. Talk to <PRO_HIMHER> if you want to reshuffle weight. */
== BDSAFANB IF ~GlobalGT("X#SAAJ1","LOCALS",0)~ THEN @37 /* [Safana]Oh, you've clearly learned a lot since then. Hmph. */
EXIT

/* Safana 2 */
CHAIN
IF ~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("Ajantis") See(Player1)
Class("Safana",THIEF_ALL)
Global("C#AjSoD_SafanaBanter","GLOBAL",1)
Global("X#SAAJ1","LOCALS",0)~ THEN BDSAFANB ajantis_safana_sod_02
@38 /* [Safana]What are you eying me so intensely, paladinling? Do you have to finally admit that you like what you see? */
DO ~SetGlobal("C#AjSoD_SafanaBanter","GLOBAL",2)~
== BDAJANTB @39 /* [Ajantis]I am keeping an eye on every of <CHARNAME>'s companions that could misbehave - out of their profession, Safana. You are a thief... */
== BDSAFANB @40 /* [Safana]Why, my darling Ajantis. You really should know me by now! */
== BDAJANTB IF ~Global("SDD303","GLOBAL",0)~ THEN @41 /* [Ajantis](clears his throat) */
== BDSAFANB IF ~Global("SDD303","GLOBAL",0)~ THEN @42 /* [Safana]Oh! You mean you think you *do* know me and therefore keep an eye on me, hmm? */
== BDAJANTB IF ~GlobalGT("SDD303","GLOBAL",0)~ THEN @43 /* [Ajantis]You stole from the coalition forces - our brethren in the fight against Caelar! I think I have all reason to watch you. */
== BDSAFANB IF ~GlobalGT("SDD303","GLOBAL",0)~ THEN @44 /* [Safana]I found out about a traitor, Ajantis. How would you have found them? */
== BDAJANTB IF ~GlobalGT("SDD303","GLOBAL",0)~ THEN @45 /* [Ajantis]It was pure luck, Safana. You did not know when you stole the bag, and I am certain you did not expect it, either. But I do honor your quick thinking of revealing your findings to <CHARNAME>. There is hope for you yet. */
== BDSAFANB @46 /* [Safana]Now, I think I'll take this as a compliment. The gallant knight thinks me worth of being watched! Well, enjoy the sight, darling. Just make sure you won't drool. */
EXIT

/* Voghiln */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("Voghiln")
!StateCheck("Voghiln",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("Voghiln") See(Player1)
Class("Voghiln",BARD_ALL)
Global("C#AjSoD_VoghilnBanter","GLOBAL",0)~ THEN BDAJANTB ajantis_voghiln_sod_01
@47 /* [Ajantis]Voghiln, you are the most... unuasual bard I ever encountered. You are a strong lad, you could have very well trained as a fighter all the way. Why would you waste your talent so? */
DO ~SetGlobal("C#AjSoD_VoghilnBanter","GLOBAL",1)~
== BDVOGHIB @48 /* [Voghiln]Oh ho! But I do not think I'm wasting any of my talents, not at all! On the contrary, Voghiln is making use of all his talents! */
== BDAJANTB @49 /* [Ajantis]I apologize, I was not implying that the profession of a bard would be any less valuable than that of a fighter. But you also indulge in wine so excessively, which, as far as I see, is due to the fact that you combine taverns, wine, and your lyrics into one package. I see talent wasted there, like for so many people who lose themselves to ale and other strong beverages. */
== BDVOGHIB @50 /* [Voghiln]Ah, my sincere squire, but life is tedious without the little joys, ja? */
== BDAJANTB @51 /* [Ajantis]The real joys of life are loyalty, faith, and standing tall against the evils and tempations of this world, Voghiln. Only then you can feel the true satisfaction of serving your god's purpose. What you are doing is simply numbing yourself. */ 
== BDVOGHIB @52 /* [Voghiln]My sincere squire, you can call it what you like. I know a good ale will not hurt strong Voghiln, and it also doesn't hinder him from standing tall. At least when the head is clear again, ja? */
EXIT

/* Edwin */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("Edwin") See(Player1)
Global("C#AjSoD_EdwinBanter","GLOBAL",0)~ THEN BDAJANTB ajantis_edwin_sod_01
@53 /* [Ajantis]Edwin, I cannot stress enough how much I should warn <CHARNAME> about taking you in this group - trusting you as a fighting comrade. You would have worked for Caelar's crusade?! */
DO ~SetGlobal("C#AjSoD_EdwinBanter","GLOBAL",1)~
== BDEDWINB @54 /* [Edwin]I *fled* it after they threatened my life! (These chimps never understand the most crucial parts.) */
== BDAJANTB @55 /* [Ajantis]But had they treated you right you would have stayed, accept the pay, and cast your magic in evil ways against the coalition! */
== BDEDWINB @56 /* [Edwin]Do not question my, Edwin Odesseiron's, loyalty to <CHARNAME> and the coalition. My vengance is burning hot, and I will have it! */
== BDAJANTB @57 /* [Ajantis]It is exactly what I said, Edwin. You only alligned forces with us because you burnt your fingers with the crusade. I cannot fathom why <CHARNAME> would trust you at all. You will be gone at the next possibility that you perceive as a better opportunity to yourself! */
== BDEDWINB @58 /* [Edwin]Better shut your mouth, or I will see a very good opportunity to turn you into a lump of coal! (Why do I even have to listen to this?) */ 
== BDAJANTB @59 /* [Ajantis]I hope <CHARNAME> heard you. Your words proved mine to the point. */
EXIT

/* Glint */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("Glint")
!StateCheck("Glint",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("Glint") See(Player1)
GlobalGT("BD_SDD215_PRITCHARD","GLOBAL",3)
Global("C#AjSoD_GlintBanter","GLOBAL",0)~ THEN BDAJANTB ajantis_glint_sod_01
@60 /* [Ajantis]Glint, you want us to give your relative a - a beating? There has to be a different way to solve this! */
DO ~SetGlobal("C#AjSoD_GlintBanter","GLOBAL",1)~
== BDGLINTB @61 /* [Glint]No, believe me, he needs to feel this because he really doesn't listen. */
== BDAJANTB @62 /* [Ajantis]I am strongly against hurting someone just to make them "listen"! Is this how your family raises their children? */
== BDGLINTB @63 /* [Glint]Whoa, whoa, Ajantis. This has nothing to do with raising children. I would never approve of hitting a child! But - my cousin is no longer a child. On the contrary. See, I am all with you there, but if <CHARNAME> doesn't do it, then we'll doom him to being beaten by the others - and they will not stop when he goes down. */
== BDAJANTB @64 /* [Ajantis]So you are saying - to spare him graver injuires, probably even death, we need to bring him back to his senses - by a beating. To simulate the possible graver consequences of his actions? */
== BDGLINTB @65 /* [Glint]More or less, although we will not simulate. We'll give him a real spanking, one where he can't stand properly for a few days. He will understand and leave, and spare himself a confrontation that could be his last. */
== BDAJANTB @66 /* [Ajantis]I see the wisdom in your words - but I am still taken aback by the manner of this endeavor, and very much so. */
EXIT

/* M'Khiin #2 */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("MKHIIN")
!StateCheck("MKHIIN",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("MKHIIN") See(Player1)
Global("C#AjSoD_MKhiinBanter","GLOBAL",1)~ THEN BDAJANTB ajantis_mkhiin_sod_02
@67 /* [Ajantis]M'Khiin, do you really fear I would kill you just because you are a goblin? */
DO ~SetGlobal("C#AjSoD_MKhiinBanter","GLOBAL",2)~
== BDMKHIIB @68 /* [M'Khiin]Not you, but if M'Khiin would meet paladin in the wilderness, she would fear for her life just like with meeting a monster. */
== BDAJANTB @69 /* [Ajantis]Then let me stress that I respect you for the uncommon, sophisticated, *peaceful* goblin you are. So far, I do not see a problem for us to get along as fighting comrades. Do not give me a reason to see evil in you, and I will even protect you as my comrade. I would *never* kill a breathing creature without the sincere believe my god's dogmas of good and righteous demands it. */
== BDMKHIIB @70 /* [M'Khiin]You would not. Others would. So M'Khiin continues to eye Ajantis for being human with sword like you continue to eye me for being a goblin. */
== BDAJANTB @71 /* [Ajantis]Fair enough. */
EXIT

/* Corwin #2 */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
InParty("Ajantis")
InParty("Corwin")
!StateCheck("Corwin",CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
See("Corwin") See(Player1)
Global("C#AjSoD_CorwinBanter","GLOBAL",1)~ THEN BDAJANTB ajantis_corwin_sod_02
@72 /* [Ajantis]Corwin, there is a wide gap between noticing a land-wide conspiracy and not seeing anything. There must have been signs you saw, things you could have done? You are a captain! */
DO ~SetGlobal("C#AjSoD_CorwinBanter","GLOBAL",2)~
== BDCORWIB @73 /* [Corwin]What makes you think I was one when Angelo took over? A lot of us were released from service, more being reshuffled elsewhere. Angelo collected the loyal ones around him - I was not one of *them*, Ajantis. Some who opposed were convicted of treatson. They were *hanged*, Ajantis, for opposing Angelo. What influence do you think I had, what do you think I could have done? */
== BDAJANTB @74 /* [Ajantis]Staying true to your cause and your believes! */
== BDCORWIB @75 /* [Corwin]Easier said and done, squire of the Order of the Radiant Heart. There is a line of order we have to obey. What do you expect us common Flaming Fist soldiers to do against it? Sorry for pulling you out of your easy-simple fantasy land, Ajantis, but there was nothing I could do. Especially with a mouth to feed. */
== BDAJANTB @76 /* [Ajantis]*Especially* if you have a child to protect. Would my order dissolve into evil power struggles and intrigues, I would not just stand by! I would give everything in my might to stop it, and the knights would, too! */
== BDCORWIB @77 /* [Corwin]Of course, *you* would have stopped the whole thing before it even started, as a squire. Right. No offence, but real life experience is not your strong side, is it? Well, from your lips to the gods' ears, Ajantis. I believe you mean it, but I hope for your sake you'll never have to find out. */
EXIT

