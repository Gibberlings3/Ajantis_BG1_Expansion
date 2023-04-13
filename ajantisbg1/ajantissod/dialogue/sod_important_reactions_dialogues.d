/* NPC reactions to specific crucial knowledge about Caelar's plans */

APPEND BDAJANTJ

/* 1.1 General reaction to Hephernaan is betraying Caelar: knowledge gained BEFORE the portal scene at Dragonspear basement; PC does NOT know that he is working for a fiend yet. */
IF ~Global("C#AjSoD_HephernaanBetrayal","GLOBAL",1)~ THEN hephernaan_betraying_caelar
SAY @0 /* [Ajantis]Hephernaan would betray Caelar - does this information hold any truth? I wonder what his motives are. We do not even understand Caelar's fully, and now we also have to face the danger of the crusade becoming unpredictable by internal power struggles and intrigues. */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_HephernaanBetrayal","GLOBAL",2) SetGlobal("C#RtD_HephernaanBetrayal_SET","GLOBAL",2) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END

/* 1.2 General reaction to the knowledge that Hephernaan is working for a fiend: knowledge gained BEFORE the portal scene at Dragonspear basement */
IF ~Global("C#AjSoD_HephernaanFiend","GLOBAL",1)~ THEN hephernaan_working_for_fiend
SAY @1 /* [Ajantis]Caelar's advisor is a minion to a fiend master, seeking entrance to our dimension. This... this is grave knowledge. I will inform the Order about this immediately! */
++ @2 /* [PC Reply]It gives the purpose of the crusade a whole new perspective, yes. */ + hephernaan_working_for_fiend_01
++ @3 /* [PC Reply]I can't believe Caelar is so blind. Or is this with her knowledge? */ + hephernaan_working_for_fiend_02
++ @4 /* [PC Reply]We definitely need to stop him. These lands have seen enough fiends already. */ + hephernaan_working_for_fiend_01
++ @5 /* [PC Reply]Let him plan as much as he wants. It's not decided yet. */ + hephernaan_working_for_fiend_01
END

IF ~~ THEN hephernaan_working_for_fiend_01
SAY @6 /* [Ajantis]It must be a mighty fiend master, if he is not afraid of drawing so much attention. We need to do everything in our power to stop his plans! */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_HephernaanFiend","GLOBAL",2)~ EXIT
END

IF ~~ THEN hephernaan_working_for_fiend_02
SAY @7 /* [Ajantis]It - it cannot be. Delusional as she might be, I am sure she is not willingly helping a fiend master to cross into our plane. */
IF ~~ THEN + hephernaan_working_for_fiend_01
END

END //APPEND

/* 8.2 Reaction to the knowledge that Caelar is no Bhaalchild. */
CHAIN
IF ~Global("C#AjSoD_CaelarNoBhaalChild","GLOBAL",1)~ THEN BDAJANTJ caelar_no_bhaalchild
@8 /* [Ajantis]At least this rumor can be silenced, that Caelar would be another child of Bhaal. She is not another Sarevok, threatening the lands with another war. Knowing this will not change anything with regard to the inevitable confrontation, but it changes how the situation is perceived - by civilians as well as the soldiers who set forth to stop her. */
== BDAJANTJ IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @9 /* [Ajantis]I... I am also glad she is not, my love - for your sake. I know that you have nothing to do with them, that you have absolute *no* influence on what your Bhaal 'siblings' are doing, but still - it takes pressure from how people perceive you and your heritage if the current foe is not *another* Bhaalchild. */
== BDAJANTJ IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @10 /* [Ajantis]It is also beneficial for you. I know that you have nothing to do with them, that you have absolute *no* influence on what your Bhaal 'siblings' are doing, but still - it takes pressure from how people perceive you and your heritage if the current foe is not *another* Bhaalchild. */
END
IF ~~ THEN DO ~SetGlobal("C#AjSoD_CaelarNoBhaalChild","GLOBAL",2)~ EXIT



/* 5. Caelar wants to open a portal to Avernus. */
APPEND BDAJANTJ 
/* 5.4 General reaction: Caelar wants to open a portal to Avernus. (No reaction to needed blood, PC does not know yet.) BEFORE portal scene at Dragonspear Castle */
IF ~Global("C#AjSoD_PortalAvernus","GLOBAL",1)~ THEN knows_avernus_portal
SAY @11 /* [Ajantis]Caelar's plan for rescuing the trapped souls is opening a portal and marching into Avernus to collect them? We need to prepare for a third fiend war, <CHARNAME>. If the portal opens and can't be closed fast enough, this is what we will have to be ready for! */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_PortalAvernus","GLOBAL",2)~ EXIT
END


/* 6. Caelar wants the PC for something */

/* change 6.2 so it fires for all instances before / after portal scen etc */
/* Ajantis will react to the fact that Caelar wants the PC for "something"  */

IF ~Global("C#AjSoD_CaelarWantsPC","GLOBAL",1)~ THEN caelar_wants_pc
SAY @12 /* [Ajantis]Caelar wants to get to you, <CHARNAME>. Another foe is after you because of your Bhaal heritage - leaving a trace of dead people in their wake. */
++ @13 /* [PC Reply]Yes, and it is horrible. I wish I could prevent this from happening. */ + caelar_wants_pc_02
++ @14 /* [PC Reply]I did not chose to be what I am, Ajantis. */ + caelar_wants_pc_01
++ @15 /* [PC Reply]Are you accusing me? */ + caelar_wants_pc_01
++ @16 /* [PC Reply]Caelar will regret she did this. */ + caelar_wants_pc_02
++ @17 /* [PC Reply]And it won't be the last, I fear. */ + caelar_wants_pc_02
++ @18 /* [PC Reply](sarcastically) Thanks for pointing it out. I would have missed it if you hadn't. */ + caelar_wants_pc_03
+ ~GlobalLT("C#RtD_KnowsPortalBlood","GLOBAL",3)
Global("C#RtD_WantBhaalBlood","GLOBAL",0)~ + @19 /* [PC Reply]We can't be sure it's because of my Bhaal heritage. */ + caelar_wants_pc_04
END

IF ~~ THEN caelar_wants_pc_01
SAY @20 /* [Ajantis]I am not saying it is your doing. But you are part of it, whether you want it or not. */ 
IF ~~ THEN + caelar_wants_pc_02
END

IF ~~ THEN caelar_wants_pc_02
SAY @21 /* [Ajantis]We are helping the alliance to fight Caelar and her crusade. It is all we can do - for now. */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_CaelarWantsPC","GLOBAL",2)~ EXIT
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + caelar_wants_pc_04
END

IF ~~ THEN caelar_wants_pc_03
SAY @22 /* [Ajantis]Sarcasm does not change the fact, <CHARNAME>. */
IF ~~ THEN + caelar_wants_pc_02
END

IF ~~ THEN caelar_wants_pc_04
SAY @23 /* [Ajantis]I am on your side - like I always will be if it is in my power, love. I cannot put in words how glad I am to be here, with you, being able to support you in this important mission. - Not just because it is an important mission, but because I get the chance to help to keep you safe in all this. */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_CaelarWantsPC","GLOBAL",2)~ EXIT
END

END //APPEND 


/* 7. Caelar needs the PC's blood to open the portal. */

CHAIN
IF ~Global("C#AjSoD_PortalPCBlood","GLOBAL",1)~ THEN BDAJANTJ portal_needs_pc_blood_01
@24 /* [Ajantis]I expected Caelar to want you merely as a trope, as a symbol - the Hero of Baldur's Gate, the Bhaalchild, either taken down or drawn to her side, as a sign of her power, or in case of the latter as a powerful ally in her fight. */
== BDAJANTJ IF ~GlobalLT("bd_plot","global",485)~ THEN @25 /* [Ajantis]But it is your blood she wants - to open a portal to Avernus. */
== BDAJANTJ IF ~GlobalGT("bd_plot","global",494)~ THEN @26 /* [Ajantis]Not make use of your godly *blood*. */
END
IF ~~ THEN DO ~IncrementGlobal("C#AjSoD_PortalPCBlood","GLOBAL",1)~ + portal_needs_pc_blood_03
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~IncrementGlobal("C#AjSoD_PortalPCBlood","GLOBAL",1)~ + portal_needs_pc_blood_02


CHAIN
IF ~~ THEN BDAJANTJ portal_needs_pc_blood_02
@27 /* [Ajantis]This... this is much worse, and an unfortunate new perspective, and the thought unsettles me greatly, my love. People aiming to take advantage of your body... ahem, I mean of your physical existence, trying to hurt you for... for *pieces* of you or your blood. I... prepared to protect you, my love. I stand vigilant to the threat of your heritage from "within", not to let you stray on the path of evil. I was ready for people chasing you out of fear because of your heritage. I am prepared to protect you from other Bhaalchildren, seeking you out in a blinded crusade for the power of your dead godly father. */
= @28 /* [Ajantis]But never it occurred it to me that mere parts of your *body* would be divinely blessed as well, making you a target to so much more enemies. */
== BDAJANTJ IF ~OR(2)
GlobalGT("C#RtD_KnowsHoodedMan","GLOBAL",0)
GlobalGT("C#RtD_MetHoodedMan","GLOBAL",1)~ THEN @29 /* [Ajantis]This "Hooded Man" is also very suspicious - and unsettling. He might just have similar interests in you. I see his appearances as a sign that more and more foes will seek you out. */
END
++ @30 /* [PC Reply](flirty) What, weren't you aware of my *divine* body already, Ajantis? */ + portal_needs_pc_blood_04
++ @31 /* [PC Reply]I see what you mean. */ + portal_needs_pc_blood_05
++ @32 /* [PC Reply]I don't think anything changed, really. I'll have to fight a lot of enemies coming for me because of my heritage. What they want exactly is of no importance. */ + portal_needs_pc_blood_05
+ ~OR(2)
GlobalGT("C#RtD_KnowsHoodedMan","GLOBAL",0)
GlobalGT("C#RtD_MetHoodedMan","GLOBAL",1)~ + @33 /* [PC Reply]That Hooded Man is getting on my nerves, indeed. */ + portal_needs_pc_blood_05

CHAIN
IF ~~ THEN BDAJANTJ portal_needs_pc_blood_03
@34 /* [Ajantis]This... this is much worse, and an unfortunate new perspective. People trying to take advantage of your physical being having divine powers of its own. This opens a completely new dimension of foes we will have to watch out for. */
== BDAJANTJ IF ~OR(2)
GlobalGT("C#RtD_KnowsHoodedMan","GLOBAL",0)
GlobalGT("C#RtD_MetHoodedMan","GLOBAL",1)~ THEN @29 /* [Ajantis]This "Hooded Man" is also very suspicious - and unsettling. He might just have similar interests in you. I see his appearances as a sign that more and more foes will seek you out. */
END
IF ~~ THEN EXIT

APPEND BDAJANTJ

IF ~~ THEN portal_needs_pc_blood_04
SAY @35 /* [Ajantis]What? Oh, well, yes, of c... Please, my love, take this seriously. */
++ @31 /* [PC Reply]I see what you mean. */ + portal_needs_pc_blood_05
++ @32 /* [PC Reply]I don't think anything changed, really. I'll have to fight a lot of enemies coming for me because of my heritage. What they want exactly is of no importance. */ + portal_needs_pc_blood_05
+ ~OR(2)
GlobalGT("C#RtD_KnowsHoodedMan","GLOBAL",0)
GlobalGT("C#RtD_MetHoodedMan","GLOBAL",1)~ + @33 /* [PC Reply]That Hooded Man is getting on my nerves, indeed. */ + portal_needs_pc_blood_05
END

IF ~~ THEN portal_needs_pc_blood_05
SAY @36 /* [Ajantis]I... I will ready myself, my love, so be there to protect you. */
IF ~~ THEN EXIT
END

END //APPEND

/* 9. Reaction to betrayal at the portal */
I_C_T3 BDHEPHER 16 C#AjSoD_PortalScene
== BDAJANTJ IF ~InParty("Ajantis") See("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)
!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @37 /* [Ajantis]Hephernaan opened the portal with just a few drops of your blood - we are facing a possible fiend war! Everyone, brace yourself! */
== BDAJANTJ IF ~InParty("Ajantis") See("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @38 /* [Ajantis]Love, are you alright? Hephernaan opened the portal with just a few drops of your blood - we are facing a possible fiend war! */
END

APPEND BDAJANTJ
/* 4. Incident at Boareskyr Bridge. */

/* 4.1 Quick reaction line: will only show if The Boareskyr Bridge Scene mod is not installed / didn't run. Uses the same line! -> crossmod with TBBS is in the tp2. */
IF ~Global("C#AjSoD_BoareskyrBridgeScene","GLOBAL",1)
Global("C#AjSoD_c#stff24_10","GLOBAL",0)~ THEN bhaal_bridge
SAY @100 /* ~Such divine power sweeping us from our feet - Helm, have mercy!~ */
IF ~~ THEN DO ~SetGlobal("C#AjSoD_BoareskyrBridgeScene","GLOBAL",2)~ EXIT
END

/* 4.2 General dialogue after bridge incident. Will run after timer. (True also in case The Boareskyr Bridge mod is installed and the above quick reaction line didn't run.) This follow-up dialogue triggers after timer is run. */
IF ~Global("C#AjSoD_BoareskyrBridgeScene","GLOBAL",3)
Global("C#AjSoD_c#stff24_10","GLOBAL",1)~ THEN bhaal_bridge_00
SAY @39 /* [Ajantis]The divine power that erupted at Boareskyr Bridge was boundless. Your Bhaal heritage caused this, <CHARNAME>. What an overwhelming and frightening incident. */
/* Global("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",2) */
+ ~Global("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",2)~ + @40 /* [PC Reply]Yes, it was very intense. */ + bhaal_bridge_01
+ ~Global("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",2)~ + @41 /* [PC Reply]It scared me, too. */ + bhaal_bridge_01
+ ~Global("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",2)~ + @42 /* [PC Reply]Yes, I know. I'm the evil Bhaalspawn, blahblah. */ + bhaal_bridge_01
/* Global("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",0) */
+ ~Global("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",0)~ + @40 /* [PC Reply]Yes, it was very intense. */ + proclaimed_bhaalheritage_01
+ ~Global("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",0)~ + @41 /* [PC Reply]It scared me, too. */ + proclaimed_bhaalheritage_01
+ ~Global("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",0)~ + @42 /* [PC Reply]Yes, I know. I'm the evil Bhaalspawn, blahblah. */ + proclaimed_bhaalheritage_01
END
END //APPEND

CHAIN
IF ~~ THEN BDAJANTJ bhaal_bridge_01
@43 /* [Ajantis]It was not the first divine intervention into your life, <CHARNAME>, and maybe not the last. I am at your side and will give my best to lead you on a path of good and righteousness! */
== BDAJANTJ IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @44 /* [Ajantis]It scared me mostly for... you, my love. I will prepare myself and stand vigilant... For whenever you'll need me. */
END
IF ~~ THEN DO ~SetGlobal("C#AjSoD_BoareskyrBridgeScene","GLOBAL",4)~ EXIT

/* If PC stated their heritage upon marching out of BG city */
APPEND BDAJANTJ
IF ~Global("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",1)~ THEN proclaimed_bhaalheritage
SAY @45 /* [Ajantis]<CHARNAME>, you openly proclaimed your Bhaal heritage. */
++ @46 /* [PC Reply]Yes, I did. */ + proclaimed_bhaalheritage_01
++ @47 /* [PC Reply]They would have found out anyway, eventually. */ + proclaimed_bhaalheritage_01
++ @48 /* [PC Reply]What of it? */ + proclaimed_bhaalheritage_01
END

END //APPEND

CHAIN
IF ~~ THEN BDAJANTJ proclaimed_bhaalheritage_01
@49 /* [Ajantis]Bhaal being your divine father - it is out in the open now. People will have to decide how they will perceive you. For some, you will be a danger like Sarevok was. For others, you might be a role model of a hero who overcomes their evil heritage. */
== BDAJANTJ IF ~Global("X#AjantisRomanceActive","GLOBAL",2)
!Global("C#AjSoD_BoareskyrBridgeScene","GLOBAL",3)~ THEN @50 /* [Ajantis]I was taken by surprise by the tone you spoke in to the masses, my love. It was... unusually direct. Please, do not let yourself be overwhelmed by all what is happening. I am here, at you side! */
END
IF ~~ THEN DO ~SetGlobal("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",2)~ EXIT
IF ~Global("C#AjSoD_BoareskyrBridgeScene","GLOBAL",3)~ THEN DO ~SetGlobal("C#AjSoD_ProclaimedBhaalheritage","GLOBAL",2)~ + bhaal_bridge_01

