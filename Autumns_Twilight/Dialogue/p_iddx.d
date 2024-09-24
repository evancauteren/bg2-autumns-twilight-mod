BEGIN P_iddx

IF ~Global ("P_Fall_IDDX_Talk","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @9550 /* ~*Pese a ver la puerta, una fuerza incorpórea no te permite avanzar. Pareciera ser una especie de pared invisible.*~ */
    IF ~~ THEN REPLY @9551 /* ~¡¿Hola?! ¿Hay alguien ahí?~ */  GOTO 1
	IF ~Global ("P_FallMission3","GLOBAL",3)~ THEN REPLY @9552 /* ~Bajo el manto de la escarcha, la verdad se revela.~ */ GOTO 1
	IF ~Global ("P_FallMission3","GLOBAL",3)~ THEN REPLY @9553 /* ~En el susurro del viento helado, se encuentra el camino.~ */ GOTO 10
	IF ~Global ("P_FallMission3","GLOBAL",3)~ THEN REPLY @9554 /* ~Donde la nieve se funde, la entrada se desvela.~ */ GOTO 1
	IF ~Global ("P_FallMission3","GLOBAL",3)~ THEN REPLY @9555 /* ~Con la voluntad congelada, la senda se desbloquea.~ */ GOTO 1
END


IF ~~ THEN BEGIN 1 // from:
  SAY @9556 /* ~*Nada sucede.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~ ~ THEN BEGIN 10 // from:
  SAY @9557 /* ~Percibes una voz grave que habla en un idioma arcano. Al cabo de unos segundos, sea lo que sea que evitaba el paso hacia el umbral desaparece...~ */
  IF ~~ THEN DO ~ForceSpell(Myself,POOF_GONE)~ 
UNSOLVED_JOURNAL @310007 
EXIT
END


