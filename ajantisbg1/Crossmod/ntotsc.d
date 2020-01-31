/* crossmod with NTotSC */

APPEND %AJANTIS_JOINED%

/* party has the holy symbol of Helm */

IF WEIGHT #-1
~Global("C#AjantisBG1_HolySymbolNTotSC","GLOBAL",1)~ THEN holy_symbol_helm_ntotsc
SAY @0 /* ~The holy symbol of Helm! <CHARNAME>, this is a great treasure, even though its magic might not be obvious to the plain eye. We have to make sure this artefact is kept save - and does not get into wrong hands!~ */
IF ~~ THEN DO ~SetGlobal("C#AjantisBG1_HolySymbolNTotSC","GLOBAL",2)~ EXIT
END
END