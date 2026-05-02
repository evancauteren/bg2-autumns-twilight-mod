BEGIN P_SINNA

IF ~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
//RandomNum(4,1)
AreaCheck("P_FAR2")
Global ("P_FallMission3","GLOBAL",4)
Global ("P_FallSinnaToKakut","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9635 /* ~*Los ojos de Sinna están abiertos de par en par. No parece tomar una posición ofensiva, pero es evidente que no congía en la imponente figura de la criatura ciclópea.*~ */
  IF ~~ THEN DO ~SetGlobal("P_FallSinnaToKakut","GLOBAL",1)~ EXTERN ~P_FALLJ~ 41
END

IF ~See("Aerie")
InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("P_Sinna_ITC_Aerie1","GLOBAL",0)
~ THEN BEGIN P_SINNA_AERIE_001 // from:
  SAY @11100130 /* ~*Sinna corretea alegremente alrededor de Aerie.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Sinna_ITC_Aerie1","GLOBAL",1)~ GOTO P_SINNA_AERIE_002
END

IF 
~~ THEN BEGIN P_SINNA_AERIE_002 // from:
  SAY @11100137 /* ~*Sinna obedece a Aerie y disfruta las caricias de la elfa sobre su lomo.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Aerie")
InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("P_Sinna_ITC_Aerie1","GLOBAL",1)
Global("P_SinnaAerie_CombatCount","GLOBAL",3)
Global("P_SinnaAerie_CA_001","GLOBAL",0)
~ THEN BEGIN P_SINNA_AERIE_003 // from:
  SAY @11100138 /* ~*Observas cómo Sinna parece contenerse de moverse o corretear sólo por quedarse escuchando a Aerie.*~ */
  IF ~~ THEN DO ~SetGlobal("P_SinnaAerie_CA_001","GLOBAL",1)~ GOTO P_SINNA_AERIE_004
END

IF 
~~ THEN BEGIN P_SINNA_AERIE_004 // from:
  SAY @11100142 /* ~*Sinna aúlla en señal de afirmación y luego se pone a corretear alrededor de Aerie.*~ */
  IF ~~ THEN EXIT
END


IF
~RandomNum(5,1)~ THEN BEGIN 1 // from:
  SAY @10000003 /* ~*Sinna te observa ansiosa, esperando que la acaricies. Sus ojos demuestran amor y confianza en ti.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 2 // from:
  SAY @10000004 /* ~*Sinna se mueve a gran velocidad, esperando a que juegues con ella.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 3 // from:
  SAY @10000005 /* ~*Sinna deja tiesas sus orejas, esperando a que le hables en un tono de voz amigable y agudo.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 4 // from:
  SAY @10000006 /* ~*Sinna corretea a tu alrededor, levantando una polvareda considerable al tiempo en que ensucia tus túnicas con polvillo.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 5 // from:
  SAY @10000007 /* ~*Sinna deja escapar un pequeño aullido, como si intentara comunicarse contigo. Probablemente para pedirte comida.*~ */
  IF ~~ THEN EXIT
END


I_C_T P_SINNA P_SINNA_AERIE_003 P_SINNA_AERIE_003 
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @11100139 /* ~Entonces, Sinna, usaré mis poderes arcanos para atacar a nuestros enemigos al tiempo en que tú haces tu parte, ¿sí?~ */
== P_SINNA IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @11100140 /* *Sinna tiene sus orejas tiesas y sus ojos concentrados en los de Aerie.*  */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @11100141 /* ~Cuando diga "Aullido de la Tempestad" usaremos nuestros ataques relampagueantes. ¿T-te gusta el nombre que elegí?~ */
END

I_C_T P_SINNA P_SINNA_AERIE_001 P_SINNA_AERIE_001
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @11100131 /* ~¡Sinna, basta! W-wow, me mareo de sólo verte.~ */
== P_SINNA IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @11100132 /* *Sinna se detiene ante la imperativa de la avariel.*  */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @11100133 /* ~V-vaya, no esperaba que me hicieras caso.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") InParty("Aerie") InMyArea("Aerie") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100134 /* De vez en cuando Sinna obedece, especialmente si hay comida de por medio. Pero parece que tú le agradas demasiado, Aerie. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @11100135 /* ~¿D-de verdad? Ella también me agrada, Fall. Es muy hermosa y su alegría me regocija el alma.~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @11100136 /* ~Ven, Sinna. Quiero acariciarte unos minutos antes de que nos pongamos en marcha de nuevo.~ */
END