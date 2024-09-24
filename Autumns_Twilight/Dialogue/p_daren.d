BEGIN P_DAREN

IF ~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
//RandomNum(4,1)
AreaCheck("P_FAR2")
Global ("P_FallMission3","GLOBAL",4)
Global ("P_FallDarenToKakut","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9634 /* ~*Daren parece estar a la defensiva. Sus ojos parecen estar centrados en los del escarabajo y ves cómo su pelaje se eriza al tiempo en que muestra sus perlinos colmillos.*~ */
  IF ~~ THEN DO ~SetGlobal("P_FallDarenToKakut","GLOBAL",1)~ EXTERN ~P_FALLJ~ 40
END

/*IF ~~ THEN BEGIN 0 // from:
  SAY @0 /* ~*Daren parece estar a la defensiva. Sus ojos parecen estar centrados en los del escarabajo y ves cómo su pelaje se eriza al tiempo en que muestra sus perlinos colmillos.*~ */
  IF ~~ THEN EXTERN ~P_FALLJ~ 40
END
*/
