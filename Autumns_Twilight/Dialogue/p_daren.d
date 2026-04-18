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

IF
~RandomNum(5,1)~ THEN BEGIN 1 // from:
  SAY @10000008 /* ~*Daren tiene fija su mirada en ti. Demuestra confianza en ti y un profundo respeto por tu poder.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 2 // from:
  SAY @10000009 /* ~*Daren parece observar el ambiente a su alrededor, atento a cualquier eventualidad y listo para protegerte.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 3 // from:
  SAY @10000010 /* ~*Daren acerca su cabeza a tu mano y se deja acariciar. Sus ojos se cierran, demostrando una entrega a tu tacto.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 4 // from:
  SAY @10000011 /* ~*Daren deja escapar un pequeño gruñido, demostrando que quiere jugar contigo de una manera, quizás, un poco brusca. Por ahora le dejas, pero eso no disminuye sus deseos de juego.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 5 // from:
  SAY @10000012 /* ~*Las garras de Daren se clavan en el suelo. Quizás quiera jugar contigo o puede que se esté preparando para algún combate.*~ */
  IF ~~ THEN EXIT
END
