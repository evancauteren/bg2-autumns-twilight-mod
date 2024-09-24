BEGIN P_COCO


IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @9450 /* ~¡Hola! La verdad es que tratamos de vivir pacíficamente. Si tienes algo que discutir, mejor hazlo con nuestra líder.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @9451 /* ~¡Hola! La verdad es que tratamos de vivir pacíficamente. Si tienes algo que discutir, mejor hazlo con nuestra líder.~ */
  IF ~~ THEN DO ~~ EXIT
END

// Script de Dusk activado M2

IF ~~ THEN BEGIN 2 // from:
  SAY @9452 /* ~Oh, cielos... no quería llegar a una resolución violenta... espero que sea la última vez que combatamos, compañeros.~ */
  IF ~~ THEN DO ~Enemy()~ EXTERN ~p_ziben~ 2
END

IF ~ ~ THEN BEGIN 3 // from:
  SAY @9453 /* ~Es la verdad... estamos cansados de vivir en guerra... la vida es demasiado hermosa como para vivir odiándose los unos con los otros. Si tan sólo todos pudiésemos vivir en paz y armonía.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 6
END

IF ~ ~ THEN BEGIN 4 // from:
  SAY @9454 /* ~Cufa, yo no he consumido nada extraño (al menos en la última semana). Además, tú sabes que tengo razón. Díselo, Tima.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 7
END

IF ~ ~ THEN BEGIN 5 // from:
  SAY @9455 /* ~Falon dice la verdad, caballero. Nunca antes habíamos visto nada que sea de Cormyr. Excepto ese escudo roto.~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 4
END

IF ~ ~ THEN BEGIN 6 // from:
  SAY @9456 /* ~A decir verdad... percibí una energía siniestra a su alrededor.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 12
END

IF ~ ~ THEN BEGIN 7 // from:
  SAY @9457 /* ~No lo mencioné antes, porque no creí que fuese necesario. No quería preocupar a nadie.~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 5
END

IF ~ ~ THEN BEGIN 8 // from:
  SAY @9458 /* ~No creo que esté maldito, Cufa-Tima. Pero sí estoy segura de que su energía, en un principio, era... negativa.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 89
END

IF ~ ~ THEN BEGIN 9 // from:
  SAY @9459 /* ~¡Ay, me encanta el nombre Ardusk! ¿Puedo llamarte Ardusk? Ardie suena bien.~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 6
END

IF ~ ~ THEN BEGIN 10 // from:
  SAY @94510 /* ~¿Qué pasa, amiga? Estás llorando. Es de la alegría, ¿verdad?~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 7
END

IF ~Global ("P_DuskGood","GLOBAL",1) Global ("P_DuskMatMission2","GLOBAL",5)~ THEN BEGIN 11 // from:
  SAY @94511 /* ~Estamos muy emocionados de tener un nuevo hogar. ¡No puedo esperar el conocer Athkatla!~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @94512 /* ~Muchas gracias, Ardie. Has hecho mucho por este grupo, aún cuando no nos debías nada.~ */
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~P_ZIBEN~ 11
END

IF ~InParty("P_Dusk")
See("P_Dusk") Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY @94513 /* ~¡Ardie! *le da un abrazo y sin querer le tira salsa encima a Dusk* ¡Oh, lo lamento! Aún me cuesta acostumbrarme a esta tarea. ¡Si quieres te lo compensaré cocinándote algo delicioso!~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DUSKJ~ 218
END

IF ~Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ THEN BEGIN 14 // from:
  SAY @94514 /* ~¡Oh, pero si recibo visitas! Como verán, ahora soy cocinera. Es mucho mejor que andar repartiendo golpes. Estoy aprendiendo mucho y en mis tiempos libres lo paso aprendiendo sobre Tyr. Creo que puedo mejorar muchos mis oraciones aquí. ¡Amo mi nuevo hogar!~ */
  IF ~~ THEN DO ~~ EXIT
END


IF ~Global ("P_DuskMatMission2","GLOBAL",6)~ THEN BEGIN 15 // from:
  SAY @94511 /* ~Estamos muy emocionados de tener un nuevo hogar. ¡No puedo esperar el conocer Athkatla!~ */
  IF ~~ THEN DO ~~ EXIT
END
