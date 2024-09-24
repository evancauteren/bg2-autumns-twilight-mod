BEGIN P_Alen 

IF ~Global ("P_FMeetingAlenNPCJ","GLOBAL",0)
InParty("P_Fall")
AreaCheck("P_FA3B")
~ THEN BEGIN 0 // from:
  SAY @9410 /* ~�He vuelto... a la vida?~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingAlenNPCJ","GLOBAL",1)~ EXTERN ~P_FALLJ~ 89
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9411 /* ~Caraneth tiene raz�n... He recuperado mi juventud. �Por qu�?~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 119 
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9412 /* ~<CHARNAME>... es verdad. Aunque no quiera admitirlo, sin sus palabras no habr�a hecho lo que realmente quer�a. Despachar al maldito g�lem.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9413 /* ~<CHARNAME>, si lo deseas, puedo acompa�arte. Mis habilidades de Selu'taar pueden serte �til. Habla conmigo si quieres que te siga. Hasta entonces, estar� aqu� junto a la liche y a su compa��a de... criaturas.~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingAlenNPCJ","GLOBAL",1)~ EXIT
END

IF ~Global ("P_FMeetingAlenNPCJ","GLOBAL",0)
!InParty("P_Fall")
AreaCheck("P_FA3B")
~ THEN BEGIN 4 // from:
  SAY @9414 /* ~�He vuelto... a la vida?~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingAlenNPCJ","GLOBAL",1)~ EXTERN ~P_VIDOMI~ 118B
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9415 /* ~He recuperado mi juventud. �Por qu�?~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 119 
END

IF ~Global ("P_FMeetingAlenNPCJ","GLOBAL",1)
AreaCheck("P_FA3B")
~ THEN BEGIN 6 // from:
  SAY @9416 /* ~�Y bien? Imagino que has venido a contar con mis habilidades m�gicas, �no es as�? Supongo que ahora tengo la vitalidad para volver a viajar tan seguido como una vez lo super hacer.~ */
    IF ~~ THEN REPLY @9417 /* De acuerdo, Alendir. Puedes viajar con nosotros. */  GOTO 7
	IF ~~ THEN REPLY @9418 /* No, s�lo pasaba a saludar, anciano. */  GOTO 8
END

IF ~~ THEN BEGIN 7 // from:
  SAY @9419 /* ~Has tomado una decisi�n inteligente, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingAlenNPCJ","GLOBAL",2) JoinParty() ~ 
EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @94110 /* ~�Anciano? Criatura insolente. �No ves lo joven que soy ahora? Hmpf. Bueno, si cambias de opini�n, sabes d�nde encontrarme.~ */
  IF ~~ THEN EXIT
END

I_C_T P_Alen 5 P_ALEN_VIDOMI_FALL_003
== P_VIDOMI IF ~~ THEN @94111 /* ~Has vuelto al momento antes de caer en tu tentaci�n ante Cryonax. Has perdido gran parte de tu poder, pero sigues siendo el Maestro de la Escarcha.~ */
== P_Alen IF ~~ THEN @94112 /* ~Liche, �qu� significa todo esto? Estaba muerto... no se supone... no se supone que deba estar de vuelta aqu�. Mi castigo ha sido justo.~ */
== P_VIDOMI IF ~~ THEN @94113 /* ~Puede que tu Diosa no lo crea as�, ni�o. Gemystara y Gerwulf se encuentran donde deben estar, recorriendo los eternos bosques de Silvanus. Puede que tus asuntos aqu� a�n no hayan concluido.~ */
== P_Alen IF ~~ THEN @94114 /* ~*suspiro* �Y cu�l se supone que es el asunto que a�n tengo pendiente aqu�?~ */
END


I_C_T P_Alen 2 P_ALEN_VIDOMI_FALL_002
== P_VIDOMI IF ~~ THEN @94115 /* ~Suldanessellar de Tethyr se encuentra en problemas. <CHARNAME>, en orden de no caer en el Olvido, debe derrotar al Exiliado: Jon Irenicus.~ */
== P_VIDOMI IF ~~ THEN @94116 /* ~Ayudar a los tuyos deber�a ser uno de los primeros pasos en esta nueva oportunidad que tienes, Alendir.~ */
== P_Alen IF ~~ THEN @94117 /* ~Comprendo.~ */
END

I_C_T P_Alen 1 P_ALEN_VIDOMI_FALL_001
== P_VIDOMI IF ~~ THEN @94111 /* ~Has vuelto al momento antes de caer en tu tentaci�n ante Cryonax. Has perdido gran parte de tu poder, pero sigues siendo el Maestro de la Escarcha.~ */
== P_Alen IF ~~ THEN @94112 /* ~Liche, �qu� significa todo esto? Estaba muerto... no se supone... no se supone que deba estar de vuelta aqu�. Mi castigo ha sido justo.~ */
== P_VIDOMI IF ~~ THEN @94113 /* ~Puede que tu Diosa no lo crea as�, ni�o. Gemystara y Gerwulf se encuentran donde deben estar, recorriendo los eternos bosques de Silvanus. Puede que tus asuntos aqu� a�n no hayan concluido.~ */
== P_Alen IF ~~ THEN @94114 /* ~*suspiro* �Y cu�l se supone que es el asunto que a�n tengo pendiente aqu�?~ */
END
