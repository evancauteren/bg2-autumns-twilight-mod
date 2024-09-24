BEGIN P_FALON


IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9260 /* ~Saludos, viajero. Por favor, no temas. Somos pacíficos y, como tales, pretendemos pasar desapercibidos mientras viajamos hacia el sur, lejos de toda guerra y discriminación. Es por ello que esperamos no tener problemas con nadie.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @9261 /* ~Saludos, viajero. Por favor, no temas. Somos pacíficos y, como tales, pretendemos pasar desapercibidos mientras viajamos hacia el sur, lejos de toda guerra y discriminación. Es por ello que esperamos no tener problemas con nadie.~ */
  IF ~~ THEN DO ~~ EXIT
END

// Script de Dusk activado M2

IF ~ ~ THEN BEGIN 2 // from:
  SAY @9262 /* ~*gruñido* ¡Forasteros! ¡¿Qué quieren de nosotros?! ¡No hemos atacado a nadie! Tratamos de vivir en paz...~ */
    IF ~~ THEN REPLY @9263 /* ~¡Rápido, Dusk! No les demos tiempo para pensar. ¡Ataquemos!~ */ EXTERN ~P_DUSKJ~ 77
    IF ~~ THEN REPLY @9264 /* ~Dusk... creo que sería mejor que les escuchemos... puede que tengan algo interesante que contar.~ */ EXTERN ~P_DUSKJ~ 78
END

IF ~ ~ THEN BEGIN 3 // from:
  SAY @9265 /* ~*suspiro* No quería llegar a esto... pero no nos dejan otra opción... ¡Moriremos con tal de ser libres!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskMatMission2","GLOBAL",7) Enemy()~ EXTERN ~P_COCO~ 2
END


IF ~ ~ THEN BEGIN 4 // from:
  SAY @9266 /* ~De... de acuerdo. Mi nombre es Falon. Mi tribu y yo hemos desertado del imperio de Sothillis. Nos cansamos de tanta guerra, de tanta sangre... sólo queremos vivir en paz.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 80
END

IF ~ ~ THEN BEGIN 5 // from:
  SAY @9267 /* ~Pues... nosotros ya no buscamos la guerra.... queremos vivir sin tener que luchar por alguien tan cruel como Sothillis... Nosotros no le importamos, y morir por él ya no tiene sentido. No es así, ¿Ziben?~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 3
END

IF ~ ~ THEN BEGIN 6 // from:
  SAY @9268 /* ~Llevamos huyendo durante semanas y hacia el sur es adonde nos dirigimos.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 81
END

IF ~ ~ THEN BEGIN 7 // from:
  SAY @9269 /* ~Pues... yo...~ */
    IF ~~ THEN REPLY @92610 /* ~¡Lo sabía! Están mintiendo, Dusk... será mejor que ataquemos ahora antes de que sea demasiado tarde.~ */ EXTERN ~P_DUSKJ~ 77
    IF ~~ THEN REPLY @92611 /* ~¿Y bien? Estamos esperando...~ */ GOTO 8
END

IF ~ ~ THEN BEGIN 8 // from:
  SAY @92612 /* ~Hace algunas noches... el escudo estaba allí cuando despertamos. Creí que valdría algo de dinero en el mercado negro... así que simplemente lo tomé.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 83
END

IF ~ ~ THEN BEGIN 9 // from:
  SAY @92613 /* ~¡Es la verdad, humano! Simplemente... apareció...~ */
  IF ~~ THEN EXTERN ~P_COCO~ 5
END

IF ~ ~ THEN BEGIN 10 // from:
  SAY @92614 /* ~Venimos del Pico de las Nubes. Fuimos reclutados por uno de los capitanes de Sothillis.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 88
END

IF ~ ~ THEN BEGIN 11 // from:
  SAY @92615 /* ~Ya te lo he dicho, humano... cuando despertamos, el escudo simplemente estaba allí.~ */
  IF ~~ THEN EXTERN ~P_COCO~ 6
END

IF ~ ~ THEN BEGIN 12 // from:
  SAY @92616 /* ~¿A qué te refieres, Coco?~ */
  IF ~~ THEN EXTERN ~P_COCO~ 7
END

IF ~ ~ THEN BEGIN 13 // from:
  SAY @92617 /* ~¿Plantado? No comprendo, humano.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 90
END

IF ~ ~ THEN BEGIN 14 // from:
  SAY @92618 /* ~Entonces, serás Dusk. Me alegra ver que llegamos a una conclusión sin derramamiento de sangre.~ */
  IF ~~ THEN EXTERN ~P_COCO~ 9
END

IF ~ ~ THEN BEGIN 15 // from:
  SAY @92619 /* ~Dinos, Dusk. Si está en nuestro poder, te ayudaremos.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 93
END

IF ~ ~ THEN BEGIN 16 // from:
  SAY @92620 /* ~Por supuesto. El escudo es tuyo. En cierta manera, me alegra deshacerme de él. Nunca sentí que fuera correcto el tenerlo con nosotros.~ */
  IF ~~ THEN DO ~GiveItem("p_brkshl", "P_Dusk")~ EXTERN ~P_DUSKJ~ 94
END

IF ~ ~ THEN BEGIN 17 // from:
  SAY @92621 /* ~Pues... a decir verdad... intentamos llegar al sur. Quizás a Calimshan o al Bosque de Mir. Aunque, a decir verdad, también aceptaríamos vivir en Amn... Pero...~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 95
END

IF ~ ~ THEN BEGIN 18 // from:
  SAY @92622 /* ~¿De verdad harás eso por nosotros? Yo... no tengo palabras...~ */
  IF ~~ THEN EXTERN ~P_COCO~ 10
END

IF ~ ~ THEN BEGIN 19 // from:
  SAY @92623 /* ~Dusk... estaremos aquí esperando con ansias tu regreso...~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 97
END

IF ~Global ("P_DuskMatMission2","GLOBAL",4)~ THEN BEGIN 20 // from:
  SAY @92624 /* ~Nosotros no buscamos problemas, forasteros.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 76
END

IF ~Global ("P_DuskGood","GLOBAL",1) Global ("P_DuskMatMission2","GLOBAL",5)~ THEN BEGIN 21 // from:
  SAY @92625 /* ~Muchas gracias por ayudarnos. No puedo creer que los humanos siquiera consideren el dejarnos vivir con ellos... Mi tribu y yo les estamos muy agradecidos.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk") Global ("P_DuskMatMission2","GLOBAL",6)~ THEN BEGIN 27 // from:
  SAY @92625 /* ~Muchas gracias por ayudarnos. No puedo creer que los humanos siquiera consideren el dejarnos vivir con ellos... Mi tribu y yo les estamos muy agradecidos.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~!InParty("P_Dusk")
!See("P_Dusk") Global ("P_DuskMatMission2","GLOBAL",6)~ THEN BEGIN 26 // from:
  SAY @92625 /* ~Muchas gracias por ayudarnos. No puedo creer que los humanos siquiera consideren el dejarnos vivir con ellos... Mi tribu y yo les estamos muy agradecidos.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
See("P_Dusk")
 Global ("P_DuskMatMission2","GLOBAL",6)~ THEN BEGIN 22 // from:
  SAY @92626 /* ~¡Dusk, has vuelto!~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 134
END

IF ~ ~ THEN BEGIN 23 // from:
  SAY @92627 /* ~*llanto* No sabes cuánto has hecho por nosotros...~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 9
END

IF ~ ~ THEN BEGIN 24 // from:
  SAY @92628 /* ~Entiendo... estamos más que dispuestos a ayudar a los humanos de Athkatla, Dusk.~ */
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~P_ZIBEN~ 10
END

IF ~Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ THEN BEGIN 25 // from:
  SAY @92629 /* ~¡Amigos! Gracias por visitarme. Sir Ryan y el Prelado nos han dado diferentes roles a cumplir. En mi caso me encargo de recibir a aquellos que tengan problemas callejeros. Si está en mi poder, haré justicia en nombre de la Orden. Podrán encontrar al resto de mis compañeros repartidos en los cuarteles.~ */
  IF ~~ THEN DO ~~ EXIT
END

