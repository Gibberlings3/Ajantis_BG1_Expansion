CHAIN IF WEIGHT #-2 ~Global("X#AjantisRomJahKal1","GLOBAL",1)~ THEN ~AJANTJ~ romance_ajantis_khaljah1
@0
DO ~SetGlobal("X#AjantisRomJahKal1","GLOBAL",2) SetGlobalTimer("X#AjantisRomNPCTalksT","GLOBAL",ONE_DAY)~
== ~JAHEIJ~ @1
= @2
== ~AJANTJ~ @3
== ~KHALIJ~ @4
== ~JAHEIJ~ @5
== ~AJANTJ~ @6
EXIT

CHAIN IF WEIGHT #-2 ~Global("X#AjantisRomDyna1","GLOBAL",1)~ THEN ~AJANTJ~ romance_ajantis_dynah1
@7
DO ~SetGlobal("X#AjantisRomDyna1","GLOBAL",2) SetGlobalTimer("X#AjantisRomNPCTalksT","GLOBAL",ONE_DAY)~
== ~DYNAHJ~ @8
== ~AJANTJ~ @9
== ~DYNAHJ~ @10
== ~AJANTJ~ @11
== ~DYNAHJ~ @12
= @13
== ~AJANTJ~ @14
== ~DYNAHJ~ @15
== ~AJANTJ~ @16
== ~DYNAHJ~ @17
EXIT

CHAIN IF WEIGHT #-2 ~Global("X#AjantisRomYesl1","GLOBAL",1)~ THEN ~AJANTJ~ romance_ajantis_yeslick1
@18
DO ~SetGlobal("X#AjantisRomYesl1","GLOBAL",2) SetGlobalTimer("X#AjantisRomNPCTalksT","GLOBAL",ONE_DAY)~
== ~YESLIJ~ @19
== ~AJANTJ~ @20
== ~YESLIJ~ @21
== ~AJANTJ~ @22
== ~YESLIJ~ @23
== ~AJANTJ~ @24
== ~YESLIJ~ @25
== ~AJANTJ~ @26
== ~YESLIJ~ @27
== ~AJANTJ~ @28
== ~YESLIJ~ @29
== ~AJANTJ~ @30
== ~YESLIJ~ @31
EXIT

CHAIN IF WEIGHT #-2 ~Global("X#AjantisRomBran1","GLOBAL",1)~ THEN ~AJANTJ~ romance_ajantis_branwen1
@32
DO ~SetGlobal("X#AjantisRombran1","GLOBAL",2) SetGlobalTimer("X#AjantisRomNPCTalksT","GLOBAL",ONE_DAY)~
== ~BRANWJ~ @33
== ~AJANTJ~ @34
== ~BRANWJ~ @35
== ~AJANTJ~ @36
== ~BRANWJ~ @37
== ~AJANTJ~ @38
EXIT
