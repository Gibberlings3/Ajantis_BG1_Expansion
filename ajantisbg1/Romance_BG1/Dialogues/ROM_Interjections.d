EXTEND_BOTTOM ~DURLYLE1~ 39
IF ~Global("X#AjantisDurlyle39","GLOBAL",0)~ EXTERN DURLYLE1 Ajantis_DURLYLE139
IF ~InParty("ajantis") Detect("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisDurlyle39","GLOBAL",0)~ EXTERN AJANTJ Ajantis_DURLYLE139
END

CHAIN AJANTJ Ajantis_DURLYLE139
@0 DO ~SetGlobal("X#AjantisDurlyle39","GLOBAL",1)~ 
== DURLYLE1 @3
END
COPY_TRANS C#TROM 0

CHAIN DURLYLE1 Ajantis_DURLYLE139
@4
END
COPY_TRANS C#TROM 0



EXTEND_BOTTOM ~DURLYLE1~ 58
IF ~Global("X#AjantisDurlyle58","GLOBAL",0)~ EXTERN DURLYLE1 Ajantis_DURLYLE158
IF ~InParty("ajantis") Detect("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisDurlyle58","GLOBAL",0)~ EXTERN AJANTJ Ajantis_DURLYLE158
END

CHAIN AJANTJ Ajantis_DURLYLE158
@1 DO ~SetGlobal("X#AjantisDurlyle58","GLOBAL",1)~ 
== DURLYLE1 @5 
END
COPY_TRANS C#TROM 1

CHAIN DURLYLE1 Ajantis_DURLYLE158
@5
END
COPY_TRANS C#TROM 1



EXTEND_BOTTOM ~DURLYLE1~ 59
IF ~Global("X#AjantisDurlyle59","GLOBAL",0)~ EXTERN DURLYLE1 Ajantis_DURLYLE159
IF ~InParty("ajantis") Detect("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisDurlyle59","GLOBAL",0)~ EXTERN AJANTJ Ajantis_DURLYLE159
END

CHAIN AJANTJ Ajantis_DURLYLE159
@1 DO ~SetGlobal("X#AjantisDurlyle59","GLOBAL",1)~ 
== DURLYLE1 @5
END
COPY_TRANS C#TROM 2

CHAIN DURLYLE1 Ajantis_DURLYLE159
@5
END
COPY_TRANS C#TROM 2