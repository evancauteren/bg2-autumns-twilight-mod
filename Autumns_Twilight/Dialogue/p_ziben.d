BEGIN P_ZIBEN


IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9430 /* ~*gruñido* Forastero... no estamos aquí para pelear... *gruñido* si quieres algo, habla con nuestra líder.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @9431 /* ~*gruñido* Forastero... no estamos aquí para pelear... *gruñido* si quieres algo, habla con nuestra líder.~ */
  IF ~~ THEN DO ~~ EXIT
END

// Script de Dusk activado M2

IF ~ ~ THEN BEGIN 2 // from:
  SAY @9432 /* ~*gruñido* Humanos... sabía que no se podía confiar en ellos... disfrutaré enfrentándome a su raza... aunque ésta sea la última vez...~ */
  IF ~~ THEN DO ~Enemy()~ EXTERN ~p_cufati~ 2
END

IF ~ ~ THEN BEGIN 3 // from:
  SAY @9433 /* ~*gruñido* Nuestra cacique tiene razón... hay demasiadas tierras en el continente como para morir por Amn. Coco aquí te lo puede explicar mejor.~ */
  IF ~~ THEN EXTERN ~P_COCO~ 3
END

IF ~ ~ THEN BEGIN 4 // from:
  SAY @9434 /* ~No mentimos, humano. *gruñido* Pero supongo... que tampoco tenemos prueba de lo contrario.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 10
END

IF ~ ~ THEN BEGIN 5 // from:
  SAY @9435 /* ~*gruñido* Pues, Coco, parece que ya nos estás empezando a preocupar.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 13
END

IF ~ ~ THEN BEGIN 6 // from:
  SAY @9436 /* ~¡Por el amor de Kikanuti! Coco, el hombre dijo que lo llamemos Dusk.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 15
END

IF ~ ~ THEN BEGIN 7 // from:
  SAY @9437 /* ~*gruñido* Has logrado lo imposible, humano... has hecho llorar a nuestra líder *sonríe, mostrando sus afilados colmillos*~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 16
END

IF ~Global ("P_DuskGood","GLOBAL",1) Global ("P_DuskMatMission2","GLOBAL",5)~ THEN BEGIN 8 // from:
  SAY @9438 /* ~*gruñido* Lo que has hecho por nosotros... no tenemos palabras para expresar nuestra felicidad.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~ ~ THEN BEGIN 9 // from:
  SAY @9439 /* ~*susurro* Falon, si sigues llorando pensarás que eres débil.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 135
END

IF ~ ~ THEN BEGIN 10 // from:
  SAY @94310 /* ~*gruñido* Tiene razón, Dusk. No tenemos ningún cariño por ese bastardo de Sothillis. Si podemos ayudar a llegar desgracia a sus planes, lo haremos con gusto.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 21
END

IF ~ ~ THEN BEGIN 11 // from:
  SAY @94311 /* ~¡Qué no se llama así, Coco!~ */
  IF ~~ THEN GOTO 12
END

IF ~ ~ THEN BEGIN 12 // from:
  SAY @94312 /* ~Por cierto, Dusk... *gruñido* No suelo ser sociable con los humanos... pero siento que debo ser honorable aquí y darte algo a cambio.~ */
  IF ~~ THEN DO ~GiveItem("P_WSAM","P_Dusk")~ GOTO 13
END

IF ~ ~ THEN BEGIN 13 // from:
  SAY @94313 /* ~Este amuleto... lo he guardado durante mucho tiempo... y algo me dice que a ti puede serte útil. Espero que lo aceptes...~ */
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~P_DUSKJ~ 137
END

IF ~Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ THEN BEGIN 14 // from:
  SAY @94314 /* ~¡Saludos! Mi rol aquí es la de brindar una estrategia de contraataque hacia el Imperio de Sothillis. El Prelado me ha hecho su asistente personal e incluso, puesto a entrenar con algunos escuderos. Gracias a ustedes, he encontrado sentido al arte de la guerra.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global ("P_DuskMatMission2","GLOBAL",6)~ THEN BEGIN 15 // from:
  SAY @9438 /* ~*gruñido* Lo que has hecho por nosotros... no tenemos palabras para expresar nuestra felicidad.~ */
  IF ~~ THEN DO ~~ EXIT
END

