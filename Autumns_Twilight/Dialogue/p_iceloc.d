BEGIN P_ICELOC



IF ~Global("P_FallMission3","GLOBAL",5)~ THEN BEGIN 0 // from:
  SAY @9540 /* ¿Quién osa irrumpir en el templo del Monarca de la Congelación Eterna? */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",6)~ GOTO 1
END


IF ~~ THEN BEGIN 1 // from:
  SAY @9541 /* ~Selu'taar. Exijo una explicación. Tu vida depende de ello.~*/
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9542 /* ~Ahora comprendo. Has traído a estos mortales como ofrenda para evitar el surgimiento del Shyntquarra.~*/
    IF ~~ THEN REPLY @9543 /* ~¿El qué?~ */  GOTO 4
	IF ~~ THEN REPLY @9544 /* ~Eso no suena nada bien.~ */  GOTO 4
	IF ~~ THEN REPLY @9545 /* ~No somos ofrenda de nadie, gigantón.~ */  GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9546 /* ~Las criaturas de carne poco tienen que opinar sobre su destino a manos de los dioses.~*/
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9547 /* ~El Shyntquarra debe ser evitado a toda cosa. Así lo demanda mi señor.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 58
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9548 /* ~¿Qué estás esperando, selu'taar? Acaba con ellos.~*/
  IF ~~ THEN EXTERN ~P_ALENDI~ 40
END


IF ~Global("P_FallM3_AlendirVsIcelock","GLOBAL",1)~ THEN BEGIN 6 // from:
  SAY @95411 /* Elfo débil. ¿Osas llamarte Maestro de la Escarcha? Te mantendré con vida sólo para que atestigues cómo aplastamos a tus amigos. */
  IF ~~ THEN DO ~SetGlobal ("P_FallM3_AlendirVsIcelock","GLOBAL",2)~ EXTERN ~P_FallJ~ 60
END

I_C_T P_ICELOC 6 P_Fall_ICELOCQ3_2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @95412 /* ¡Alendir! */
== P_Alendi IF ~~ THEN @95413 /* ~Fall... *quejido* Destruye al gólem... es débil al fuego... acaba con él y con sus esbirros.~ */
END

I_C_T P_ICELOC 1 P_Fall_ICELOCQ3_1
== P_Alendi IF ~~ THEN @9549 /* ~Icelock... espera, puedo explicarlo.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @95410 /* ¿Alendir?, ¿qué está pasando? ¿Quién (o qué) es esa criatura? */
END

