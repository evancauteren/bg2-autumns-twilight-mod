BEGIN P_TAMIKA

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
AreaCheck("P_FAR7")
~ THEN BEGIN 0 // from:
  SAY @9340 /* ~Saludos. ¿En qué os puedo ayudar?~ */
    IF ~~ THEN REPLY @9342 /* Tamika, ¿puedes mostrarnos qué es lo que tienes a la venta? */  GOTO 2
	IF ~~ THEN REPLY @9344 /* ¿Cómo llegaste aquí? */  GOTO 3
    IF ~~ THEN REPLY @9345 /* No eres una mujer de muchas palabras, ¿verdad? */  GOTO 5
    IF ~PartyHasItem ("P_FITM10") PartyHasItem ("P_FITM13")~ THEN REPLY @93413 /* Tamika, tengo el brazo y la cuerda de un arco largo compuesto mágico. Xsi me dijo que eres capaz de armarlo. */  GOTO 6
    IF ~~ THEN REPLY @9346 /* Por ahora no necesito nada. */  GOTO 4E
END

// P_FITM14
// P_FITM10 Brazo
// P_FITM13 Cuerda

IF ~~ THEN BEGIN 1 // from:
  SAY @9341 /* ~Si te parezco familiar es porque era justamente yo, mortal.~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 6
END

IF ~~ THEN BEGIN 2
  SAY @9343 /* ~Por supuesto.~ */
  IF ~~ THEN DO ~StartStore("P_TAMIKA",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9347 /* ~No estoy para hablar sobre historia, mortal. Si quieres comprar algo, sólo dilo. Sino, vuelve cuando necesites algo de mi tienda.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9348 /* ~Hablo mejor con mi espada. Aunque tú me hayas derrotado, eso es cierto. Debes saber que tienes mi respeto, pero no me interesa hablar. Vuelve cuando tengas algo para comprar o vender, ¿de acuerdo?~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 4E
  SAY @9349 /* ~Como quieras. Sabes dónde encontrarme. No es que haya mucha clientela. Ja.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @93410 /* ~¿Xsi dijo eso? Tendré que tener una conversación con él sobre andar prometiendo favores a nombre mío.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @93411 /* ~De acuerdo, <CHARNAME>. Dame los objetos y me encargaré de hacerlos uno. No es tan complicado como parece.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @93412 /* ~¿Ves? Aquí tienes. Espero que le des un buen uso. Y con buen uso me refiero a no usarlo sobre nosotros para una simple práctica, ¿sí? Ahora vete.~ */
  IF ~~ THEN DO ~TakePartyItem ("P_FITM10") TakePartyItem ("P_FITM13") DestroyItem ("P_FITM10") DestroyItem ("P_FITM13") CreateItem ("P_FITM14",1,1,1) GiveItem ("P_FITM14", LastTalkedToBy) EraseJournalEntry(@310040) EraseJournalEntry(@310066)~ SOLVED_JOURNAL @310067 EXIT
END


IF ~Global("P_FMeetingVidomina","GLOBAL",1)
AreaCheck("P_FA3B")
~ THEN BEGIN 9 // from:
  SAY @93414 /* ~<CHARNAME>, nos quedaremos un tiempo con Vidomina aquí, en este templo. Si necesitas algo de mi tienda, sólo dímelo. Obviamente la transacción será por oro. Estoy bastante consciente de que nos servirá en esta ciudad.~ */
    IF ~~ THEN REPLY @9342 /* Tamika, ¿puedes mostrarnos qué es lo que tienes a la venta? */  GOTO 2
	IF ~PartyHasItem ("P_FITM10") PartyHasItem ("P_FITM13")~ THEN REPLY @93413 /* Tamika, tengo el brazo y la cuerda de un arco largo compuesto mágico. Xsi me dijo que eres capaz de armarlo. */  GOTO 6
    IF ~~ THEN REPLY @9346 /* Por ahora no necesito nada. */  GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @93415 /* ~Hasta pronto, amigo.~ ~Hasta pronto, amiga.~ */
  IF ~~ THEN DO ~~ EXIT
END

