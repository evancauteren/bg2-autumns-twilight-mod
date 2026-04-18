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
