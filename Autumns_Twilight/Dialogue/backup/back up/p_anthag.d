BEGIN p_anthag

// EVIL PATH INFRAOSCURIDAD
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Anthagar_Enc","GLOBAL",0)
Global ("P_Dusk_Anthagar_Summon","GLOBAL",0)
Global("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_Dusk_AnthagarMet","GLOBAL",1)
AreaCheck("AR2100")
~ THEN BEGIN 0 // from:
  SAY @0 /* ~La Infraoscuridad... ¡Qué sitio tan ideal para nuestro reencuentro, capitán Ardusk Aldant!~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Anthagar_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 311
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~Y tú eres <CHARNAME>, el engendro de Bhaal proveniente de Candelero y pupilo de Gorion.~ ~Y tú eres <CHARNAME>, la engendro de Bhaal proveniente de Candelero y pupila de Gorion.~ */
    IF ~~ THEN REPLY @2 /* ~¿Debo impresionarme? Tus esbirros ya han demostrado saber el origen de mi linaje. No es gran cosa que sepas eso a estas alturas.~ */GOTO 2
	IF ~~ THEN REPLY @3 /* ~¿Cómo es que sabes tanto, nigromante? ¡Será mejor que hables o sentirás mi ira!~ */GOTO 3
	IF ~~ THEN REPLY @4 /* ~¿Orden de la Cripta Olvidada? Sirves a un semidios, mago. Sabes lo patético que es eso, ¿verdad?~ */GOTO 4
	IF ~~ THEN REPLY @5 /* ~¿Qué quieres de nosotros, Anthagar? Este juego del gato y el ratón se está volviendo tedioso...~ */GOTO 5
END

IF ~~ THEN BEGIN 2 // from:
  SAY @6 /* ~La sola mención de mi Señor debería estremecerte, hijo de Bhaal. Pero sé que sólo buscas una provocación. Eres perspicaz, tal y como me han informado...~ ~La sola mención de mi Señor debería estremecerte, hija de Bhaal. Pero sé que sólo buscas una provocación. Eres perspicaz, tal y como me han informado...~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~¡Hm! Ya veo que posees una cólera similar a la del cormyreano... Me pregunto si estará relacionado directamente a tu linaje. ¿Quizás a tu crianza? No importa.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~Faltarle el respeto a mi Señor sólo hará que tu muerte sea más dolorosa, <CHARNAME>. Además de quedar como un idiota... De todas formas, eso es de poca importancia.~ ~Faltarle el respeto a mi Señor sólo hará que tu muerte sea más dolorosa, <CHARNAME>. Además de quedar como una idiota... De todas formas, eso es de poca importancia.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9 /* ~Ah, ésa si es una pregunta importante, <CHARNAME>. ¿Qué queremos nosotros de ustedes? Pronto lo sabrás...~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10 /* ~Sornhil y Valatar imagino que te los has encontrado en el camino, ¿verdad? Desconozco si has hecho lo mismo con Kalanda. El elfo no es de lo más... sociables que digamos.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @11 /* ~Mi punto es... que has superado las pruebas que se te han impuesto, capitán. Ojos de Serpiente te ha enseñado bien.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @28 /* ~En nuestro próximo encuentro, capitán... habremos de aclarar las cuentas... Por ahora... ¡Sobrevive a mis fieles seguidores!~*/
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210037 EXIT
END

// GOOD PATH INFRAOSCURIDAD
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Anthagar_Enc","GLOBAL",0)
Global ("P_Dusk_Anthagar_Summon","GLOBAL",0)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_Dusk_AnthagarMet","GLOBAL",1)
AreaCheck("AR2100")
~ THEN BEGIN 9 // from:
  SAY @0 /* ~La Infraoscuridad... ¡Qué sitio tan ideal para nuestro reencuentro, capitán Ardusk Aldant!~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Anthagar_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 311
END

IF ~~ THEN BEGIN 10 // from:
  SAY @1 /* ~Y tú eres <CHARNAME>, el engendro de Bhaal proveniente de Candelero y pupilo de Gorion.~ ~Y tú eres <CHARNAME>, la engendro de Bhaal proveniente de Candelero y pupila de Gorion.~ */
    IF ~~ THEN REPLY @2 /* ~¿Debo impresionarme? Tus esbirros ya han demostrado saber el origen de mi linaje. No es gran cosa que sepas eso a estas alturas.~ */GOTO 11
	IF ~~ THEN REPLY @3 /* ~¿Cómo es que sabes tanto, nigromante? ¡Será mejor que hables o sentirás mi ira!~ */GOTO 12
	IF ~~ THEN REPLY @4 /* ~¿Orden de la Cripta Olvidada? Sirves a un semidios, mago. Sabes lo patético que es eso, ¿verdad?~ */GOTO 13
	IF ~~ THEN REPLY @5 /* ~¿Qué quieres de nosotros, Anthagar? Este juego del gato y el ratón se está volviendo tedioso...~ */GOTO 14
END

IF ~~ THEN BEGIN 11 // from:
  SAY @6 /* ~La sola mención de mi Señor debería estremecerte, hijo de Bhaal. Pero sé que sólo buscas una provocación. Eres perspicaz, tal y como me han informado...~ ~La sola mención de mi Señor debería estremecerte, hija de Bhaal. Pero sé que sólo buscas una provocación. Eres perspicaz, tal y como me han informado...~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 12 // from:
  SAY @7 /* ~¡Hm! Ya veo que posees una cólera similar a la del cormyreano... Me pregunto si estará relacionado directamente a tu linaje. ¿Quizás a tu crianza? No importa.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13 // from:
  SAY @8 /* ~Faltarle el respeto a mi Señor sólo hará que tu muerte sea más dolorosa, <CHARNAME>. Además de quedar como un idiota... De todas formas, eso es de poca importancia.~ ~Faltarle el respeto a mi Señor sólo hará que tu muerte sea más dolorosa, <CHARNAME>. Además de quedar como una idiota... De todas formas, eso es de poca importancia.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from:
  SAY @9 /* ~Ah, ésa si es una pregunta importante, <CHARNAME>. ¿Qué queremos nosotros de ustedes? Pronto lo sabrás...~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @10 /* ~Sornhil y Valatar imagino que te los has encontrado en el camino, ¿verdad? Desconozco si has hecho lo mismo con Kalanda. El elfo no es de lo más... sociables que digamos.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @11 /* ~Mi punto es... que has superado las pruebas que se te han impuesto, capitán. Ojos de Serpiente te ha enseñado bien.~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @41 /* ~Ahora habrán de conocer el significado de mi nombre. ¡Soy el comandante de la Muerte, el Veneno y la Destrucción! Muy pronto... lo comprenderán...~*/
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210038 EXIT
END

// EVIL PATH NOT!INFRAOSCURIDAD
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Anthagar_Enc","GLOBAL",0)
Global ("P_Dusk_Anthagar_Summon","GLOBAL",0)
Global("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_Dusk_AnthagarMet","GLOBAL",1)
!AreaCheck("AR2100")
~ THEN BEGIN 18 // from:
  SAY @44 /* ~Finalmente... os he encontrado...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Anthagar_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 311
END

// GOOD PATH NOT!INFRAOSCURIDAD
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Anthagar_Enc","GLOBAL",0)
Global ("P_Dusk_Anthagar_Summon","GLOBAL",0)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_Dusk_AnthagarMet","GLOBAL",1)
!AreaCheck("AR2100")
~ THEN BEGIN 19 // from:
  SAY @44 /* ~Finalmente... os he encontrado...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Anthagar_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 311
END

// GOOD PATH FINAL MISSION
IF ~Global ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",1) 
Global("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN BEGIN 20 // from:
  SAY @45 /* ~ *risa profunda* Al parecer, la ilusión fantasmagórica no te ha gustado del todo, ¿verdad, capitán? ~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",2)~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from:
  SAY @54 /* ~Es una pena...~*/
  IF ~~ THEN DO ~~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from:
  SAY @53 /* ~*chasquea sus dedos y un portal aparece a su lado*~*/
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",2)~ EXIT
END

// EVIL PATH FINAL MISSION
IF ~Global ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",1) 
Global("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN BEGIN 23 // from:
  SAY @55 /* ~ Ah, pero si es el Capitán Ardusk Aldant, acompañado del gran <CHARNAME>, descendiente de Bhaal. ~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",2)~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @56 /* ~Mis disculpas de antemanos por esta reunión en un lugar un tanto... inusual...~*/
  IF ~~ THEN DO ~~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @73 /* ~N-no... no comprendo...~*/
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",2)~ EXIT
END


// EVIL FINAL MISSION
I_C_T P_ANTHAG 24 P_Dusk_AnthagarEv1
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @57 /* Anthagar... ¿O debería llamarte Darvin? Lo siento, es que me tienes confundido con tus identidades... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @58 /* *sonríe* Ah... mi engaño llevado a cabo en Shilmista... Percibo un dejo de ira en tu voz. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @59 /* Pero es entendible. Necesitaba de ti para cumplir con un objetivo que sobrepasa nuestro comprendimiento. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @60 /* No somos más que motas de polvo comparado con lo que yace enfrente nuestro, Ardusk Aldant. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @61 /* No puede alcanzarse la gloria perpetua sin estar dispuestos a llevar a cabo ciertos... sacrificios. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @62 /* Comprendo... te refieres a la muerte de mi esposa. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @63 /* Un hecho lamentable, de verdad. Pero debía hacerlo... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @64 /* La Maldición de Mellifleur debía alcanzarte a ti. Sorpresivamente... el hechizo dio de lleno en la elfa shilmista. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @65 /* ... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @66 /* *carraspeo* Sin embargo, ha sido una fortuna que el destino haya caído en ti, cormyreano. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @67 /* Incluso dispones de la alianza de un hijo de Bhaal. Si contamos con su ayuda, podremos- Incluso dispones de la alianza de una hija de Bhaal. Si contamos con su ayuda, podremos- */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @68 /* Por ahora dejemos a <CHARNAME> de lado, nigromante.  */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @69 /* Vayamos al grano: quieres conocer al Demonio Sombrío del Pandemonium, ¿no es así? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @65 /* ... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @71 /* Así es, capitán... Supongo que puedes comandar que aparezca de las Sombras, ¿sí? */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @72 /* *sonríe* Danctian tiene voluntad propia, Anthagar... Así lo he querido. */
END


// GOOD FINAL MISSION
I_C_T P_ANTHAG 21 P_Dusk_Anthagar1c
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @46 /* ¡Anthagar! Maldito... ¡te has atrevido a usar la imagen de Celine! */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @47 /* Vaya... denoto un nerviosismo incremental en tu tono de voz, capitán. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @48 /* ¿Acaso será que el espíritu de tu amada decía la verdad? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @49 /* ¿La has dejado morir en medio de la oscuridad del Castillo de la Trinidad? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @50 /* Y osas llamarme maldito... pese a que el único que carga con la maldición de la culpa eres tú... */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @51 /* ¡Puedes ladrar todo lo que quieras, perro! Mi espada separará la cabeza de tus hombros de una vez por todas. ¡Morirás! */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @52 /* *risa* ¡Aguarda un instante, capitán! No querrás... apurar el final de esta historia... */
END



// GOOD 1 Infraoscuridad
I_C_T P_ANTHAG 16 P_Dusk_Anthagar1b
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @12 /* Ya veo... Han seguido mis pasos desde mi partida de Shilmista... Incluso hasta Lanzadragón. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @13 /* No podía esperarse otra cosa de la mente perturbada de un mago... */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @14 /* Déjame adivinar... Ojos de Serpiente, el Adivinador... era uno de tus esbirros... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @15 /* Bien, capitán... finalmente has caído en cuenta de esta artimaña. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @29 /* Pero... no comprendo... Ojos de Serpiente cayó ante mi espada... ¿Cómo es que eso, de alguna manera, los beneficia a ustedes? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @30 /* ¡Hmpf! Ojos de Serpiente estaba al tanto de la situación, capitán. Simplemente, cumplió su papel dentro del gran esquema. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @31 /* En ese entonces no habrías sido capaz de comprender el porqué. Y ahora, mucho menos... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @32 /* Te he ofrecido un poder más allá de la imaginación, Aldant. Pero lo has rechazado. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @33 /* Has elegido el camino de la amistad... has elegido confiar en unos estúpidos. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @43 /* ¡Oye! Cuidado a quien le dices estúpido. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @21 /* El orbe escarlata... ¿Por qué me lo has entregado, Anthagar? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @34 /* Puede que te lo revele en otra ocasión, capitán. Está claro que estás más que apto para interferir en mis planes. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @35 /* ¡Malvado! Está más que claro que Minsc, Bubú, Dusk y <CHARNAME> acabarán con tus planes. ¡Patearemos tu mágico trasero a diestra y siniestra! */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @36 /* Sé que cuentas con astutos aliados. Ese leprechaun de Shilmista y el elfo arquero has estado contigo desde un principio. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @37 /* ~Incluso puede que la influencia de este hijo de Bhaal haya tenido que ver...~ ~Incluso puede que la influencia de esta hija de Bhaal haya tenido que ver...~ */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @38 /* Pero eso no importa, Ardusk Aldant de Cormyr. En otra situación habría puesto a prueba tu poder... pero ahora, no puedo arriesgar mi empresa contigo. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @39 /* Ya sea luches en nombre de la venganza o de la justicia... hoy no habrá ninguna diferencia. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @40 /* ¡<CHARNAME>, debemos tener cuidado! Es muy probable que nos encontremos, una vez más, en una contingencia arcana. ¡Debemos prepararnos para luchar! */
END


// EVIL 1 Infraoscuridad
I_C_T P_ANTHAG 7 P_Dusk_Anthagar1a
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @12 /* Ya veo... Han seguido mis pasos desde mi partida de Shilmista... Incluso hasta Lanzadragón. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4000 /* ¿Qué significa esto, Dusk? No me digas que te siguen desde antes que llegases a Athkatla. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @13 /* No podía esperarse otra cosa de la mente perturbada de un mago... */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @14 /* Déjame adivinar... Ojos de Serpiente, el Adivinador... era uno de tus esbirros... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @15 /* Bien, capitán... finalmente has caído en cuenta de esta artimaña. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @16 /* Una razón más para regocijarme de haber despachado a ese desgraciado. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @17 /* ¿Despachado, dices? Es interesante... cómo ustedes, los hombres de hojalata, llaman de diferente manera al Asesinato. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @18 /* No es diferente contigo, <CHARNAME>. Lo admitas o no, disfrutas de asesinar. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @19 /* Muchos han caído ante la sombra que proyecta su poder. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @20 /* A medida que ha pasado el tiempo... nos hemos dado cuenta de que te hemos elegido bien, Dusk Aldant. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @42 /* Vaya, Dusk Aldant... veo que tienes una secta de seguidores que ni el bardo más fracasado querría tener... */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @21 /* El orbe escarlata... ¿Por qué me lo has entregado, Anthagar? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @22 /* Como un estudioso de Velsharún, es mi deber estudiar todos los aspectos de la vida y la muerte. En ambas, utilizando las pertinentes instrucciones, se puede encontrar un poder oculto. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @23 /* Ya veo... este misterioso nigromante habla de poderes similares (o quizás superiores) al Pergamino Sombrío. Hombre del palito, deja que siga hablando. Puede que tenga algo interesante que contar... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @24 /* Puede que el resultado de desencadenar tu poder haya derivado en un... particular encuentro con una criatura de otro plano. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @25 /* Estoy seguro de que ese especie de demonio te ha proporcionado un poder aún mayor. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @26 /* Y lo que pretendo es ver cuáles son tus límites... */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @27 /* Hmpf... lo sabía. <CHARNAME>, debemos tener cuidado. Lo más seguro es que se avecine un difícil combate... */
END
