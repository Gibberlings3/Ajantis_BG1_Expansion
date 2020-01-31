EXTEND_BOTTOM RALEO 0
IF ~Global("C#AjantisBG1RALEO0","GLOBAL",0)~ EXTERN RALEO Ajantis_Windspear_interjection
IF ~InParty("ajantis") Detect("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("C#AjantisBG1RALEO0","GLOBAL",0)~ EXTERN AJANTJ Ajantis_Windspear_interjection
END

CHAIN AJANTJ Ajantis_Windspear_interjection
@0 DO ~SetGlobal("C#AjantisBG1RALEO0","GLOBAL",1)~ 
== RALEO @1
== AJANTJ @2
== RALEO @3
== AJANTJ @4
= @5
= @6
== RALEO @7
END
COPY_TRANS C#DUMP 0

CHAIN RALEO Ajantis_Windspear_interjection
@8
END
COPY_TRANS C#DUMP 0