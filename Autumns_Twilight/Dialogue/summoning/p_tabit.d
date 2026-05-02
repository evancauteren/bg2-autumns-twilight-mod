BEGIN P_TABIT

IF ~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
//RandomNum(4,1)
AreaCheck("P_FAR2")
Global ("P_FallMission3","GLOBAL",4)
Global ("P_FallTabitToKakut","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9636 /* ~*Tabitha, con las garras expuestas, se prepara para atacar al escarabajo gigante. Sólo se detiene ante la voz de Fall.*~ */
  IF ~~ THEN DO ~SetGlobal("P_FallTabitToKakut","GLOBAL",1)~ EXTERN ~P_FALLJ~ 42
END


IF ~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
Global("P_Tabitha_ITC_Fall1","GLOBAL",0)
~ THEN BEGIN P_TABITHA_FALL_001 // from:
  SAY @11100145 /* ~*Tabitha mueve la cola ligeramente mientras observam fijamente a Fall.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Sinna_ITC_Fall1","GLOBAL",1)~ GOTO P_TABITHA_FALL_002
END

IF 
~~ THEN BEGIN P_TABITHA_FALL_002 // from:
  SAY @11100150 /* ~*Tabitha entrecierra los ojos mientras emite un ronroneo grave y fuerte.*~ */
  IF ~~ THEN EXIT
END

IF ~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
Global("P_TabithaFall_CombatCount","GLOBAL",3)
Global("P_Tabitha_ITC_Fall1","GLOBAL",1)
Global("P_TabithaFall_CA_001","GLOBAL",0)
~ THEN BEGIN P_TABITHA_FALL_003 // from:
  SAY @11100151 /* ~*Tabitha muestra las garras ante la petición de Fall.*~ */
  IF ~~ THEN DO ~SetGlobal("P_TabithaFall_CA_001","GLOBAL",1)~ GOTO P_TABITHA_FALL_004
END

IF 
~~ THEN BEGIN P_TABITHA_FALL_004 // from:
  SAY @11100159 /* ~*Tabitha se lame las patas mientras Fall sigue hablando.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,1)~ THEN BEGIN 1 // from:
  SAY @10000018 /* ~*Tabitha clava sus ojos punzantes en ti. Por un momento, sientes que va a atacarte, pero simplemente se queda allí, observándote con gran interés.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 2 // from:
  SAY @10000019 /* ~*Tabitha comienza a lamerse las patas, ignorando todo lo que ocurre a su alrededor.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 3 // from:
  SAY @10000020 /* ~*Los ojos de Tabitha parecen estar perdidos en el horizonte. Quizás extraña a su antiguo compañero, el Señor de las Bestias.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 4 // from:
  SAY @10000021 /* ~*Tabitha se echa a dormir, ignorándote completamente.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 5 // from:
  SAY @10000022 /* ~*Las garras de Tabitha se dejan entrever en sus patas. Parece estar atenta a su alrededor por si alguna presa llega a aparecer.*~ */
  IF ~~ THEN EXIT
END

I_C_T P_TABIT P_TABITHA_FALL_003 P_TABITHA_FALL_003
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100152 /* Muy bien, Tabitha. Hemos luchado juntas como para conocernos un poco, ¿no? */
== P_TABIT IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100153 /* *Tabitha la observa en silencio.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100154 /* Puedo utilizar mis habilidades para combinar un ataque contra nuestros oponentes. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100155 /* Supongo que es algo que Malar haría. Debemos convertirnos en depredadores y cazar a nuestra presa. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100156 /* Sólo que en este caso serán aquellas 'presas' que quieran matarnos. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100157 /* Con tu velocidad y mi pericia, ejecutaremos lo que llamo la Paradoja del Cazador. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100158 /* Cuando estés cerca de mí en el próximo combate, lo pondremos en práctica, Tabitha. */
END

I_C_T P_TABIT P_TABITHA_FALL_001 P_TABITHA_FALL_001
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100146 /* *suspiro* Lo sé, lo sé, Tabitha. Extrañas a Ivor, ¿verdad? */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100147 /* Ven aquí. */
== P_TABIT IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100148 /* *Tabitha obedece mientras permite que Fall apoye su mano sobre su cabeza.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100149 /* Tendrás que quedarte un tiempo conmigo hasta que puedas volver a ver a Ivor, ¿sí? */
END