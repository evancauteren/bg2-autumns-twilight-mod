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

IF ~See("Anomen")
InParty("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("P_Daren_ITC_Anomen1","GLOBAL",0)
~ THEN BEGIN P_DAREN_ANOMEN_001 // from:
  SAY @11100113 /* ~*Daren observa atentamente a Anomen.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Daren_ITC_Anomen1","GLOBAL",1)~ GOTO P_DAREN_ANOMEN_002
END

IF 
~~ THEN BEGIN P_DAREN_ANOMEN_002 // from:
  SAY @11100122 /* ~*Con un aullido, Daren acepta las palabras de Anomen.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Anomen")
InParty("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("P_Daren_ITC_Anomen1","GLOBAL",1)
Global("P_DarenAnomen_CA_001","GLOBAL",0)
Global("P_DarenAnomen_CombatCount","GLOBAL",3)
~ THEN BEGIN P_DAREN_ANOMEN_003 // from:
  SAY @11100123 /* ~*Daren exhala un pequeño hálito gélido frente a las indicaciones de Anomen.*~ */
  IF ~~ THEN DO ~SetGlobal("P_DarenAnomen_CA_001","GLOBAL",1)~ GOTO P_DAREN_ANOMEN_004
END

IF 
~~ THEN BEGIN P_DAREN_ANOMEN_004 // from:
  SAY @11100127 /* ~*Daren cierra los ojos ante las caricias de Anomen mientras éste sonríe.*~ */
  IF ~~ THEN EXIT
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


I_C_T P_DAREN P_DAREN_ANOMEN_003 P_DAREN_ANOMEN_003
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11100124 /* ~Muy bien, Daren. Recuerda nuestro entrenamiento, ¿sí?~ */
== P_DAREN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11100125 /* *Los ojos de Daren se concentran en el rostro del guerrero.*  */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11100126 /* ~Nuestro Juicio del Alabastro hará temblar a nuestros enemigos. ¡Que el mal se cuide de nosotros!~ */
END


I_C_T P_DAREN P_DAREN_ANOMEN_001 P_DAREN_ANOMEN_001
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11100114 /* ~Buen chico, Daren. Eres un gran guerrero, ¿verdad?~ */
== P_DAREN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11100115 /* *Daren se incorpora y se acerca a Anomen, permitiendo que éste le acaricie el lomo.*  */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11100116 /* ~*suspiro* Dudo que a padre le hubiera agradado que tuviese una mascota como tú, aún si se trata de alguien tan formidable como tú.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") InParty("Anomen") InMyArea("Anomen") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100117 /* Le agradas a Daren, Anomen. Lamento que tu padre no te permitiese tener compañeros animales. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11100118 /* ~En algunas campañas en la Orden, teníamos oportunidad de combatir junto a exploradores y druidas. Algunos tenían lobos como compañeros.~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11100119 /* ~La lealtad es impagable, Fall de Imnescar. Tus lobos son una prueba de ello. Debes estar orgullosa de ellos.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") InParty("Anomen") InMyArea("Anomen") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11100120 /* Lo estoy. Han sido mi familia desde que tengo memoria. Bueno, te dejaré para que sigas jugando con Daren. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11100121 /* ~Ehrm. Hmpf. No necesito de juegos. Ya es hora de volver. La próxima vez entrenaremos un poco, buen Daren, ¿sí?~ */
END