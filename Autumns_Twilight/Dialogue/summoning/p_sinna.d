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