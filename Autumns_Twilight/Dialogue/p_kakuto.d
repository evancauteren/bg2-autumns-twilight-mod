BEGIN P_KAKUTO

IF ~!InParty("P_Fall")
!See("P_Fall")
OR (1)
Global ("P_FallMission3","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @9360 /* ~*La imponente figura de un escarabajo gigante yace ante ti. No parece ser una criatura particularmente agresiva ya que no te ha atacado apenas te ha visto. Detrás de la criatura puedes ver una entrada, la cual está completamente obstruida por el gigantesco cuerpo del insecto.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
!See("P_Fall")
OR (1)
Global ("P_FallMission3","GLOBAL",3)~ THEN BEGIN 1 // from:
  SAY @9360 /* ~*La imponente figura de un escarabajo gigante yace ante ti. No parece ser una criatura particularmente agresiva ya que no te ha atacado apenas te ha visto. Detrás de la criatura puedes ver una entrada, la cual está completamente obstruida por el gigantesco cuerpo del insecto.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
Global ("P_FallMission3","GLOBAL",3)~ THEN BEGIN 2 // from:
  SAY @9360 /* *La imponente figura de un escarabajo gigante yace ante ti. No parece ser una criatura particularmente agresiva ya que no te ha atacado apenas te ha visto. Detrás de la criatura puedes ver una entrada, la cual está completamente obstruida por el gigantesco cuerpo del insecto.*~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",4)~ EXTERN ~P_FALLJ~ 31
END

IF ~Global ("P_FallMission3","GLOBAL",4)~ THEN BEGIN 3 // from:
  SAY @9361 /* *El escarabajo te observa fijamente con sus ojos brillantes.* */
    IF ~~ THEN REPLY @9362 /* ~¡Hola! Eh... ¿podrías... podrías dejarnos pasar?~ */  GOTO 4
	IF ~~ THEN REPLY @9363 /* ~Fall, creo que debemos intentar lo que mencionaste sobre tus invocaciones.~ */  EXTERN ~P_FALLJ~ 50
	
	//AGREGAR BELLFAME EN MERGE CON DUSK
	
END


IF ~~ THEN BEGIN 4 // from:
  SAY @9367 /* ~*Por un momento podrías jurar que el escarabajo te entiende, sin embargo, no se mueve.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9368 /* *Al escuchar la palabra 'Alendir', el escarabajo parece retorcerse de ira.* */
    IF ~~ THEN REPLY @9369 /* ~Aparentemente, no le agrada tu amigo, Fall.~ */  EXTERN ~P_FALLJ~ 45
    IF ~~ THEN REPLY @93610 /* ~¡Cuidado! Creo que nos va a atacar.~ */  EXTERN ~P_FALLJ~ 44
END

