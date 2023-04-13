/* Ajantis's SoD greetings dialogue */

BEGIN C#AjSoDG

/* First meeting in SoD */
/* non-romance */
IF ~Global("C#AjSoD_Greeting","GLOBAL",0)
!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN hello
SAY @0 /* [Ajantis]<CHARNAME>! I was sent back by the Order to be of assistance in the joined fight against Caelar's crusade. Would you let me join you? */
  ++ @1 /* [PC Reply]Yes, please come along once more. */ DO ~SetGlobal("C#AjSoD_Greeting","GLOBAL",1)~ + sod_meeting_01
  ++ @2 /* [PC Reply]Not right now. You can move with the Flaming Fist, though. Maybe we'll meet again later! */ DO ~SetGlobal("C#AjSoD_Greeting","GLOBAL",1)~ + sod_meeting_02
END

IF ~Global("C#AjSoD_Greeting","GLOBAL",0)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN hello_romance
SAY @3 /* [Ajantis]<CHARNAME>, my love! Never would I have dreamt to be at your side so soon - my first letter to you can only have reached you recently. I was sent back by the Order to be of assistance in the joined fight against Caelar's crusade. Would you let me join you? */
  ++ @4 /* [PC Reply]What about the reason you went to Waterdeep? Did you meet with your parents? */ + sod_meeting_03
  ++ @5 /* [PC Reply]Ajantis, my betrothed! I would be very happy to have you near me again. */ + sod_meeting_04
  ++ @1 /* [PC Reply]Yes, please come along once more. */ DO ~SetGlobal("C#AjSoD_Greeting","GLOBAL",1)~ + sod_meeting_01
  ++ @2 /* [PC Reply]Not right now. You can move with the Flaming Fist, though. Maybe we'll meet again later! */ DO ~SetGlobal("C#AjSoD_Greeting","GLOBAL",1)~ + sod_meeting_02
END

/* second meeting */
IF ~Global("C#AjSoD_Greeting","GLOBAL",1)~ THEN sod_meeting
  SAY @6 /* [Ajantis]Do you want me to join now? */
  ++ @1 /* [PC Reply]Yes, please come along once more. */ + sod_meeting_01
  ++ @7 /* [PC Reply]Not right now. Stay with the Flaming Fist forces. */ + sod_meeting_02
END

IF ~~ THEN sod_meeting_01
  SAY #3519 //As you will (also for EET)
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN sod_meeting_02
  SAY @8 /* [Ajantis]I will do that. */
  IF ~~ THEN EXIT
END

IF ~~ THEN sod_meeting_03
  SAY @9 /* [Ajantis]Alas, I was called back before I could see them. We will have time to talk about it in more detail once I am at your side again. */
  ++ @5 /* [PC Reply]Ajantis, my betrothed! I would be very happy to have you near me again. */ + sod_meeting_04
  ++ @1 /* [PC Reply]Yes, please come along once more. */ DO ~SetGlobal("C#AjSoD_Greeting","GLOBAL",1)~ + sod_meeting_01
  ++ @2 /* [PC Reply]Not right now. You can move with the Flaming Fist, though. Maybe we'll meet again later! */ DO ~SetGlobal("C#AjSoD_Greeting","GLOBAL",1)~ + sod_meeting_02
END

IF ~~ THEN sod_meeting_04
  SAY @10 /* [Ajantis]As am I. */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
