BEGIN P_TOBIAS

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
AreaCheck("P_FAR7")
~ THEN BEGIN 0 // from:
  SAY @9480 /* ~*Ves cómo Tobias se mantiene ocupado. De tanto en tanto se detiene a comer lo que parece ser una especie de golosina y continúa con sus quehaceres.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9481 /* ~*Tobias mira extrañado la situación, no comprendiendo por qué todos lo están mirando.*~ */
  IF ~~ THEN EXTERN ~P_FALLJ~ 81
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9482 /* ~*Tobias observa a Vidomina y luego mira sus bracitos. Sacude su cabeza un poco avergonzado.*~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 66
END

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
AreaCheck("P_FA3B")
~ THEN BEGIN 3 // from:
  SAY @9483 /* ~*Tobias examina su nuevo hogar temporal con curiosidad. De tanto en tanto, limpia su ropita del polvillo que vuela por el templo abandonado.*~ */
  IF ~~ THEN EXIT
END