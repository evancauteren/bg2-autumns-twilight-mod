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

