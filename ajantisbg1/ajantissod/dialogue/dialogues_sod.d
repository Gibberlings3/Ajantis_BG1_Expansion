APPEND BDAJANTJ
IF ~Global("C#AjantisSoD_LoveTalk","GLOBAL",1)~ THEN lovetalk_sod_1
SAY @0 /* [Ajantis]We are sooner together again than I anticipated, my love. */
++ @1 /* [PC Reply](purr) And is that a bad thing? */ + lovetalk_sod_1_01
++ @2 /* [PC Reply]I appreciate having you here, Ajantis. I didn't thought it would be possible. */ + lovetalk_sod_1_02
++ @3 /* [PC Reply]Yes, we had other plans. */ + lovetalk_sod_1_02
++ @4 /* [PC Reply]And it is for a reason. We need to focus on our tasks. */ + lovetalk_sod_1_02
END

IF ~~ THEN lovetalk_sod_1_01
SAY @5 /* [Ajantis]Of course not! (smiles) At least not the "being near you" part. */
IF ~~ THEN + lovetalk_sod_1_02
END

IF ~~ THEN lovetalk_sod_1_02
SAY @6 /* [Ajantis]I set out to reach my parents, to request a renewal of their consent, now that your heritage is known. I did not reach them, love. They were on a business trip, and the Order called me back before I could talk to them. I am sorry. */
++ @7 /* [PC Reply]That's alright. It's not an easy matter, so I guess we will have to be patient. */ + lovetalk_sod_1_03
++ @8 /* [PC Reply]It's a foreshadowing of what a marriage with you will look like, I guess. */ + lovetalk_sod_1_04
++ @9 /* [PC Reply]Let's continue what we need to do, so it will be over sooner. */ + lovetalk_sod_1_07
END
END //APPEND

CHAIN
IF ~~ THEN BDAJANTJ lovetalk_sod_1_03
@10 /* Patience is what we need, indeed. (sigh) */
== BDAJANTJ IF ~PartyHasItem("C#AJBG11")~ THEN @11 /* [Ajantis]I see you have my letter. I was full of hope when I wrote it. I did not write another one when I left for Baldur's Gate again, because I knew I would be here, first. */
END
IF ~~ THEN + lovetalk_sod_1_07

APPEND BDAJANTJ 
IF ~~ THEN lovetalk_sod_1_04
SAY @12 /* [Ajantis]What do you mean? I would never abandon you over a task given me from the Order. But this - helping the alliance and you to defeat Caelar, is more important than a rushed answer from my parents. Am I wrong? */
++ @13 /* [PC Reply]No, of course not. I didn't mean much by it, Ajantis, it was just an observation of a fact I knew when accepting your proposal. */ + lovetalk_sod_1_06
++ @14 /* [PC Reply]It opened my eyes. This will not work, Ajantis. Let us declare our engagement broken. */ + lovetalk_sod_1_05
++ @15 /* [PC Reply]"Rushed answer"? We seek certainty in an important matter, Ajantis. Don't you agree? ur engagement is at stake! */ + lovetalk_sod_1_08
++ @16 /* [PC Reply]I am disappointed, that's all. Let's return to our tasks. */ + lovetalk_sod_1_07
END

IF WEIGHT #-1
~Global("C#AjSoD_RomanceConflict","GLOBAL",6)~ THEN lovetalk_sod_1_05
SAY @17 /* [Ajantis]You sound very determined to end our engagement. I will accept your decision, although it makes my heart bleed. */
= @18 /* [Ajantis]By Helm! So let us end our deep personal bond and return to being nothing but fighting comrades. *sighs* I will stay at your side and support you in our current fight. */ 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceNoInterest","GLOBAL",1)
SetGlobal("C#AjSoD_RomanceConflict","GLOBAL",7)~ EXIT
END

IF ~~ THEN lovetalk_sod_1_06
SAY @19 /* [Ajantis]I am relieved to hear you say that, my love. */
IF ~~ THEN + lovetalk_sod_1_07
END

IF ~~ THEN lovetalk_sod_1_07
SAY @20 /* [Ajantis]We might not have the answer from my parents I so deeply anticipate, but at least we are together again. I will cherish every moment, despite the gruesome reasons that brought us together again. */
IF ~~ THEN DO ~SetGlobal("C#AjantisSoD_LoveTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN lovetalk_sod_1_08
SAY @21 /* [Ajantis]It is not at stake for me, love. I know I want to spend my life with you. I only seek certainty whether it will be with or without the support of my family. */
IF ~~ THEN + lovetalk_sod_1_07
END

IF ~Global("C#AjantisSoD_LoveTalk","GLOBAL",3)~ THEN going_down
SAY @22 /* [Ajantis]It... it happened, we are standing in front of an open portal to hell. Don't be disheartened, my love. With Helm's mercy and our prowess, we will be victorious - we have to! */
++ @23 /* [PC Reply]We will, Ajantis. I'm not yet sure how, but we mastered so much already. */ + going_down_01
++ @24 /* [PC Reply]We have to, indeed. */ + going_down_01
++ @25 /* [PC Reply]Wow, what a pep talk. I'm feeling so much better already! */ + going_down_05
++ @26 /* [PC Reply]And the less we stand idle talking, the better. Let's face the dangers. */ + going_down_04
END

IF ~~ THEN going_down_01
SAY @27 /* [Ajantis]I draw strength from knowing that we are together. Being at your side in these times of peril gives me courage. I am happy to be with you in this moment, <CHARNAME>. */
++ @28 /* [PC Reply]You are happy to stand at an open hell hole? */ + going_down_02
++ @29 /* [PC Reply]Now is the moment to kiss me, Ajantis. Don't you dare refuse! */ + going_down_03
++ @30 /* [PC Reply]Me too. I am so glad that you are here. We will do this together! */ + going_down_04
++ @26 /* [PC Reply]And the less we stand idle talking, the better. Let's face the dangers. */ + going_down_04
END

IF ~~ THEN going_down_02
SAY @31 /* [Ajantis]No, I - I am sure you know what I mean, love. */
++ @29 /* [PC Reply]Now is the moment to kiss me, Ajantis. Don't you dare refuse! */ + going_down_03
++ @30 /* [PC Reply]Me too. I am so glad that you are here. We will do this together! */ + going_down_04
++ @26 /* [PC Reply]And the less we stand idle talking, the better. Let's face the dangers. */ + going_down_04
END

IF ~~ THEN going_down_03
SAY @32 /* [Ajantis]To kiss - now? But... Yes, I see what you mean. (Helm, forgive my idleness!) Come here! */
++ @33 /* [PC Reply]Thank you, Ajantis. Now I can take on the hells! */ + going_down_04
++ @34 /* [PC Reply]You did it, and almost without breaking into full sweat. I'm so proud of you! */ + going_down_04
++ @35 /* [PC Reply]Well then, let's face the dangers! */ + going_down_04
END

IF ~~ THEN going_down_04
SAY @36 /* [Ajantis]Let us go and face whatever is waiting. Together, we will prevail! */
IF ~~ THEN DO ~SetGlobal("C#AjantisSoD_LoveTalk","GLOBAL",4)~ EXIT
END

IF ~~ THEN going_down_05
SAY @37 /* [Ajantis]Was... that sarcasm? */
IF ~~ THEN + going_down_01
END

/* Romance conflict: Rasaad */

IF ~Global("C#AjSoD_RomanceConflict","GLOBAL",4)
GlobalGT("bd_RasaadRomance4","GLOBAL",0) 
Global("bd_rasaad_romanceactive","global",1)
Global("bd_voghiln_romanceactive","global",0)
Global("bd_corwin_romanceactive","global",0)~ THEN rasaad_conflict
SAY @38 /* [Ajantis]My love, I noticed that Rasaad seems to have taken a great liking to you. I think he is... romantically interested in you, <CHARNAME>. */
++ @39 /* [PC Reply]I think you are right. I noticed it, too. */ + rasaad_conflict_01
++ @40 /* [PC Reply]I'm not sure. He's a good friend, Ajantis. */ + rasaad_conflict_01
++ @41 /* [PC Reply]He definitely is, and I appreciate his affection. */ + rasaad_conflict_02
END

IF ~~ THEN rasaad_conflict_01
SAY @42 /* [Ajantis]You need to state it clearly before it goes too far, <CHARNAME>. */ 
IF ~~ THEN + rasaad_conflict_03
END

IF ~~ THEN rasaad_conflict_02
SAY @43 /* [Ajantis]You... My love! */
IF ~~ THEN + rasaad_conflict_03
END

IF ~~ THEN rasaad_conflict_03
SAY @44 /* [Ajantis]You are my betrothed - or did you change your mind with regard to our bond? */
++ @45 /* [PC Reply]No, Ajantis. You are the one I love. */ + rasaad_conflict_04
++ @46 /* [PC Reply]I'm afraid I did. Let us declare our engagement broken. */ + lovetalk_sod_1_05
END

IF ~~ THEN rasaad_conflict_04
SAY @47 /* [Ajantis]I thank you. Then this is settled, I am sure Rasaad did not intend to intrude on our relationship and will stop courting you. */
IF ~~ THEN DO ~SetGlobal("bd_rasaad_romanceactive","global",3)
SetGlobal("C#AjSoD_RomanceConflict","GLOBAL",5)~ EXIT
END


/* Romance conflict: VOGHILN */

IF ~Global("C#AjSoD_RomanceConflict","GLOBAL",4)
GlobalGT("bd_VoghilnRomance3","GLOBAL",0)
Global("bd_voghiln_romanceactive","global",1)
Global("bd_corwin_romanceactive","global",0)
Global("bd_rasaad_romanceactive","global",0)~ THEN voghiln_conflict
SAY @48 /* [Ajantis]My love, I noticed that Voghiln seems to have taken a great liking to you. I think he is... romantically interested in you, <CHARNAME>. */
++ @39 /* [PC Reply]I think you are right. I noticed it, too. */ + voghiln_conflict_01
++ @49 /* [PC Reply]I'm not sure. He's fun to have around, Ajantis. */ + voghiln_conflict_01
++ @41 /* [PC Reply]He definitely is, and I appreciate his affection. */ + voghiln_conflict_02
END

IF ~~ THEN voghiln_conflict_01
SAY @42 /* [Ajantis]You need to state it clearly before it goes too far, <CHARNAME>. */ 
IF ~~ THEN + voghiln_conflict_03
END

IF ~~ THEN voghiln_conflict_02
SAY @43 /* [Ajantis]You... My love! */
IF ~~ THEN + voghiln_conflict_03
END

IF ~~ THEN voghiln_conflict_03
SAY @44 /* [Ajantis]You are my betrothed - or did you change your mind with regard to our bond? */
++ @45 /* [PC Reply]No, Ajantis. You are the one I love. */ + voghiln_conflict_04
++ @46 /* [PC Reply]I'm afraid I did. Let us declare our engagement broken. */ + lovetalk_sod_1_05
END

IF ~~ THEN voghiln_conflict_04
SAY @50 /* [Ajantis]I thank you. Then this is settled, and Voghiln will stop courting you. */
IF ~~ THEN DO ~SetGlobal("bd_voghiln_romanceactive","global",3)
SetGlobal("C#AjSoD_RomanceConflict","GLOBAL",5)~ EXIT
END

/* Romance conflict: Corwin */

IF ~Global("C#AjSoD_RomanceConflict","GLOBAL",4)
GlobalGT("bd_CorwinRomance3","GLOBAL",0)
Global("bd_corwin_romanceactive","global",1)
Global("bd_rasaad_romanceactive","global",0)
Global("bd_voghiln_romanceactive","global",0)~ THEN corwin_conflict
SAY @51 /* [Ajantis]My love, I noticed that Corwin seems to have taken a great liking to you. I think she is... romantically interested in you, <CHARNAME>. */
++ @39 /* [PC Reply]I think you are right. I noticed it, too. */ + corwin_conflict_01
++ @52 /* [PC Reply]I'm not sure. She's a good friend, Ajantis. */ + corwin_conflict_01
++ @53 /* [PC Reply]She definitely is, and I appreciate her affection. */ + corwin_conflict_02
END

IF ~~ THEN corwin_conflict_01
SAY @42 /* [Ajantis]You need to state it clearly before it goes too far, <CHARNAME>. */ 
IF ~~ THEN + corwin_conflict_03
END

IF ~~ THEN corwin_conflict_02
SAY @43 /* [Ajantis]You... My love! */
IF ~~ THEN + corwin_conflict_03
END

IF ~~ THEN corwin_conflict_03
SAY @44 /* [Ajantis]You are my betrothed - or did you change your mind with regard to our bond? */
++ @45 /* [PC Reply]No, Ajantis. You are the one I love. */ + corwin_conflict_04
++ @46 /* [PC Reply]I'm afraid I did. Let us declare our engagement broken. */ + lovetalk_sod_1_05
END

IF ~~ THEN corwin_conflict_04
SAY @54 /* [Ajantis]I thank you. Then this is settled, I am sure Corwin did not intend to intrude on our relationship and will stop courting you. */
IF ~~ THEN DO ~SetGlobal("bd_corwin_romanceactive","global",3)
SetGlobal("C#AjSoD_RomanceConflict","GLOBAL",5)~ EXIT
END

/* Romance conflict: Anyone */

IF ~Global("C#AjSoD_RomanceConflict","GLOBAL",4)~ THEN general_conflict
SAY @55 /* [Ajantis]My love, you need to state it clearly that you are not romantically interested in others of our companions. I fear some might start to feel... romantically interested in you. */
++ @56 /* [PC Reply]Definitely. You are the one I love, Ajantis. */ + general_conflict_01
++ @57 /* [PC Reply]I'm not sure. I appreciate the affection. */ + general_conflict_02
END

IF ~~ THEN general_conflict_01
SAY @58 /* [Ajantis]I thank you. I am sure noone intended to intrude on our relationship and will stop courting you. */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_RomanceConflict","GLOBAL",5)~ EXIT
END

IF ~~ THEN general_conflict_02
SAY @59 /* [Ajantis]You... My love! You are my betrothed - or did you change your mind with regard to our bond? */
++ @45 /* [PC Reply]No, Ajantis. You are the one I love. */ + general_conflict_01
++ @46 /* [PC Reply]I'm afraid I did. Let us declare our engagement broken. */ + lovetalk_sod_1_05
END


/* NPC conflict: Dorn. Ajantis will not stay in the group with him, but he will stay in the camps. */

/* Conflict: Ajantis leaves the group. */

IF ~Global("C#AjSoD_DornLeaving","GLOBAL",1)~ THEN dorn_leaving
SAY @60 /* [Ajantis]<CHARNAME>, you decided to join forces with this evil blackguard. I will not be part of this group as long as he is accompanying you. I will take my leave. Find me in the camp once you returned to your senses. */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_DornLeaving","GLOBAL",2)
SetLeavePartyDialogFile()
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
LeaveParty()~ EXIT
END

END //APPEND

/* Interject into Dorn's greeting dialogue */

I_C_T BDDORN 27 C#AjSoD_BDDORN
== BDAJANTJ IF ~See("Ajantis")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @61 /* [Ajantis]Dorn Il-Khan! A blackguard as evil as they can be. Leave him in the cage, <CHARNAME>, he fits well enough. I will not tolerate you joining forces with this force of destruction. */
END

I_C_T BDDORN 28 C#AjSoD_BDDORN
== BDAJANTJ IF ~See("Ajantis")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @61 /* [Ajantis]Dorn Il-Khan! A blackguard as evil as they can be. Leave him in the cage, <CHARNAME>, he fits well enough. I will not tolerate you joining forces with this force of destruction. */
END

I_C_T BDDORN 37 C#AjSoD_BDDORN
== BDAJANTJ IF ~See("Ajantis")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @61 /* [Ajantis]Dorn Il-Khan! A blackguard as evil as they can be. Leave him in the cage, <CHARNAME>, he fits well enough. I will not tolerate you joining forces with this force of destruction. */
END

I_C_T BDDORN 19 C#AjSoD_BDDORN
== BDAJANTJ IF ~See("Ajantis")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @61 /* [Ajantis]Dorn Il-Khan! A blackguard as evil as they can be. Leave him in the cage, <CHARNAME>, he fits well enough. I will not tolerate you joining forces with this force of destruction. */
END

I_C_T BDDORN 20 C#AjSoD_BDDORN
== BDAJANTJ IF ~See("Ajantis")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @61 /* [Ajantis]Dorn Il-Khan! A blackguard as evil as they can be. Leave him in the cage, <CHARNAME>, he fits well enough. I will not tolerate you joining forces with this force of destruction. */
END

I_C_T BDDORN 24 C#AjSoD_BDDORN
== BDAJANTJ IF ~See("Ajantis")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @61 /* [Ajantis]Dorn Il-Khan! A blackguard as evil as they can be. Leave him in the cage, <CHARNAME>, he fits well enough. I will not tolerate you joining forces with this force of destruction. */
END

I_C_T BDDORN 25 C#AjSoD_BDDORN
== BDAJANTJ IF ~See("Ajantis")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @61 /* [Ajantis]Dorn Il-Khan! A blackguard as evil as they can be. Leave him in the cage, <CHARNAME>, he fits well enough. I will not tolerate you joining forces with this force of destruction. */
END



APPEND BDAJANTJ 
/* more scenery dialogues */

/* How can they be so naive? */
/* Global("C#AjSoD_PortalAvernus","GLOBAL",2) */
IF ~Global("C#AjSoD_CannonFoder","GLOBAL",1)~ THEN canon_fodder
SAY @62 /* [Ajantis]How can the crusaders be so blind? A thrown together regiment of farmers and villagers, marching out to fight fiends in Avernus, not knowing what awaits them in their attempt to save the trapped souls. Every saved soul will be payed by tenth the amount in the inevitable fight when decending into the depths of Avernus. Are they aware ot this? Do they really believe Caelar, the "Shining Lady" will be able to protect them from this? */
+ ~GlobalLT("C#RtD_CaelarProtection","GLOBAL",4)~ + @63 /* [PC Reply]They do seem to believe this, yes. */ + canon_fodder_01
+ ~Global("C#RtD_CaelarProtection","GLOBAL",4)~ + @64 /* [PC Reply]They obviously do, but we know it's a scam. */ + canon_fodder_01
++ @65 /* [PC Reply]Do you think such protection is impossible? */ + canon_fodder_02
++ @66 /* [PC Reply]Well, they obviously do. Let's move on. */ + canon_fodder_03
END

IF ~~ THEN canon_fodder_01
SAY @67 /* [Ajantis]How can anyone be so naive to think they could march into Avernus and return unscathed? */
++ @68 /* [PC Reply]Well, people are bound to believe a lot when it comes to gods and divine powers. How should simple minded people know the difference between what is real and what is not? */ + canon_fodder_03
++ @69 /* [PC Reply]Some people are blinded beyond help. The more charismatic the leader the more you'll find. And Caelar is very charismatic. */ + canon_fodder_03
++ @70 /* [PC Reply]Well, they obviously do. */ + canon_fodder_03
END

IF ~~ THEN canon_fodder_02
SAY @71 /* [Ajantis]It *might* be possible - if a god would interfere directly. But even then - a mere mortal, protecting a whole army? */
IF ~~ THEN + canon_fodder_01
END

IF ~~ THEN canon_fodder_03
SAY @72 /* [Ajantis]Let's make haste and put an end to Caelar's doings - before it is too late! */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_CannonFoder","GLOBAL",2)~ EXIT
END

END //APPEND
