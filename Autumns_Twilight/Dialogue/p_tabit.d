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


