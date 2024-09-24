BEGIN P_GERWUL

IF ~AreaCheck("P_2601")
Global("P_FallGemAR2601","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @9484 /* Gem... Fall... no saben cuánto las he extrañado. */
  IF ~~ THEN DO ~SetGlobal ("P_FallGemAR2601","GLOBAL",2)~ EXTERN ~P_GEM~ 8
END
