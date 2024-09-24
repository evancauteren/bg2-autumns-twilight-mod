BEGIN p_kaland

// EVIL PATH parte1
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Kaland_Enc","GLOBAL",0)
Global ("P_Dusk_Kalanda_Summon","GLOBAL",0)
Global("P_DUSK_IS_EVIL","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @9080 /* ~...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Kaland_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",1)
  ~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9081 /* ~<CHARNAME>... sí, tu descripción concuerda.~ */
    IF ~~ THEN REPLY @9082 /* ~¿Qué diantres...? ¡Elfo! ¿Cómo es que sabes mi nombre?~ */  GOTO 2
	// Conoce SOLO a SORNHIL
	IF ~Global ("P_Dusk_Sornhil_Enc1","GLOBAL",1) Global ("P_Dusk_Valata_Confg","GLOBAL",0)~ THEN REPLY @9083 /* ~Conoces mi identidad... y exhalas energía arcana, elfo. ¡Dusk, esta criatura debe ser parte de la Orden que nos persigue!~ */  GOTO 14
	// Conoce a SORNHIL y VALATAR
	IF ~Global ("P_Dusk_Sornhil_Enc1","GLOBAL",1) Global ("P_Dusk_Valata_Confg","GLOBAL",1)~ THEN REPLY @9083 /* ~Conoces mi identidad... y exhalas energía arcana, elfo. ¡Dusk, esta criatura debe ser parte de la Orden que nos persigue!~ */  GOTO 15
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9084 /* ~*carraspeo* Oh, es que eres muy famoso. Tus hazañas han llegado incluso aquí, a la isla de Brynn Ley.~ ~*carraspeo* Oh, es que eres muy famosa. Tus hazañas han llegado incluso aquí, a la isla de Brynn Ley.~*/
  IF ~~ THEN GOTO 3
END


IF ~~ THEN BEGIN 3 // from:
  SAY @9089 /* ~Y tú, <CHARNAME>, no eres otro más que el hijo de Bhaal que acompaña al Asesino de Magos.~ ~Y tú, <CHARNAME>, no eres otra más que la hija de Bhaal que acompaña al Asesino de Magos.~*/
    IF ~~ THEN REPLY @90810 /* ~*suspiro* Veo que estás, también, al tanto de mi linaje. Debe ser el peor secreto guardado de la Costa de la Espada...~ */  GOTO 4
	IF ~~ THEN REPLY @90811 /* ~¿Y si así fuera qué harías? Presiento que no eres una criatura de naturaleza afable, pese a tu raza, elfo.~ */  GOTO 5
    IF ~~ THEN REPLY @90812 /* ~¿Qué clase de nombre es Kalanda? Ridículo...~ */  GOTO 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY @90813 /* ~Eres víctima de tus propios actos, <LADYLORD> <CHARNAME>. No es de esperar que muchos seres de poder estén al tanto de tu origen.~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5 // from:
  SAY @90814 /* ~Mi naturaleza es mucho más metódica que la de mis... compañeros. Pero no por ello deberías tomarme a la ligera...~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from:
  SAY @90815 /* ~Puedes burlarte todo lo que quieras, <PRO_RACE>. Tus intentos por forzar un accionar furibundo en mí no darán resultado. Aunque... eso no quiera decir que no pueda ser... impredecible para ti.~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @90816 /* ~De todas formas, no estoy aquí para hablar de eso. Fui enviado a este apestoso lugar, infestado de inmundos piratas, sólo para ponerlos a prueba.~*/
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @90829 /* ~¡Observa esto con atención!~ */
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Kaland_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",1)
  ~ EXIT
END

// EVIL PATH parte2
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Kalanda_Summon","GLOBAL",1)
Global("P_DUSK_IS_EVIL","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY @90830 /* ~Pareces sorprendido, Asesino de Magos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",2)
  ~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @90831 /* ~Tienes mucha confianza en ti mismo, humano. Me pregunto qué pensará el hijo de Bhaal al respecto.~ ~Tienes mucha confianza en ti mismo, humano. Me pregunto qué pensará la hija de Bhaal al respecto.~ */
    IF ~~ THEN REPLY @90832 /* ~¿Es en serio? Yo desayuno diablillos y worgs. Esta prueba será pan comido.~ */  GOTO 11
	IF ~~ THEN REPLY @90833 /* ~Me ofendes si crees que puedes poner a prueba mi poder con esto, Kalanda.~ */  GOTO 11
    IF ~~ THEN REPLY @90834 /* ~Creo que Dusk tiene razón. Debe haber algún truco detrás de esto, hechicero... ¿qué es?~ */  GOTO 12
END

IF ~~ THEN BEGIN 11 // from:
  SAY @90837 /* ~Las apariencias pueden generarte una falsa impresión, <CHARNAME>. Deberías saberlo... y lo sabrás...~*/
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12 // from:
  SAY @90838 /* ~Muy perspicaz, <CHARNAME>. Ambos forman un buen equipo. Pero eso no los salvará.~*/
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @90839 /* ~Fracasar esta prueba significará la muerte, <CHARNAME> y Dusk. Y tengan por seguro esto: ¡no será la última vez que nuestros caminos se crucen!~*/
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",2)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210036 EXIT
END


IF ~~ THEN BEGIN 14 // from:
  SAY @9086 /* ~¡¿Qué?! (Hmpf... sabía que no iba a lograr convencerlos... maldito el día en que oí los consejos de Sornhil)~*/
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 15 // from:
  SAY @9086 /* ~¡¿Qué?! (Hmpf... sabía que no iba a lograr convencerlos... maldito el día en que oí los consejos de Sornhil)~*/
  IF ~~ THEN GOTO 3
END


// GOOD PATH parte1
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Kaland_Enc","GLOBAL",0)
Global ("P_Dusk_Kalanda_Summon","GLOBAL",0)
Global("P_DUSK_IS_GOOD","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY @9080 /* ~...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Kaland_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",1)
  ~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from:
  SAY @9081 /* ~<CHARNAME>... sí, tu descripción concuerda.~ */
    IF ~~ THEN REPLY @9082 /* ~¿Qué diantres...? ¡Elfo! ¿Cómo es que sabes mi nombre?~ */  GOTO 17
	// Conoce SOLO a SORNHIL
	IF ~Global ("P_Dusk_Sornhil_Enc1","GLOBAL",1) Global ("P_Dusk_Valata_Confg","GLOBAL",0)~ THEN REPLY @9083 /* ~Conoces mi identidad... y exhalas energía arcana, elfo. ¡Dusk, esta criatura debe ser parte de la Orden que nos persigue!~ */  GOTO 25
	// Conoce a SORNHIL y VALATAR
	IF ~Global ("P_Dusk_Sornhil_Enc1","GLOBAL",1) Global ("P_Dusk_Valata_Confg","GLOBAL",1)~ THEN REPLY @9083 /* ~Conoces mi identidad... y exhalas energía arcana, elfo. ¡Dusk, esta criatura debe ser parte de la Orden que nos persigue!~ */  GOTO 26
END

IF ~~ THEN BEGIN 17 // from:
  SAY @9084 /* ~*carraspeo* Oh, es que eres muy famoso. Tus hazañas han llegado incluso aquí, a la isla de Brynn Ley.~ ~*carraspeo* Oh, es que eres muy famosa. Tus hazañas han llegado incluso aquí, a la isla de Brynn Ley.~*/
  IF ~~ THEN GOTO 18
END


IF ~~ THEN BEGIN 18 // from:
  SAY @9089 /* ~Y tú, <CHARNAME>, no eres otro más que el hijo de Bhaal que acompaña al Asesino de Magos.~ ~Y tú, <CHARNAME>, no eres otra más que la hija de Bhaal que acompaña al Asesino de Magos.~*/
    IF ~~ THEN REPLY @90810 /* ~*suspiro* Veo que estás, también, al tanto de mi linaje. Debe ser el peor secreto guardado de la Costa de la Espada...~ */  GOTO 19
	IF ~~ THEN REPLY @90811 /* ~¿Y si así fuera qué harías? Presiento que no eres una criatura de naturaleza afable, pese a tu raza, elfo.~ */  GOTO 20
    IF ~~ THEN REPLY @90812 /* ~¿Qué clase de nombre es Kalanda? Ridículo...~ */  GOTO 21
END


IF ~~ THEN BEGIN 19 // from:
  SAY @90813 /* ~Eres víctima de tus propios actos, <LADYLORD> <CHARNAME>. No es de esperar que muchos seres de poder estén al tanto de tu origen.~*/
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 20 // from:
  SAY @90814 /* ~Mi naturaleza es mucho más metódica que la de mis... compañeros. Pero no por ello deberías tomarme a la ligera...~*/
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from:
  SAY @90815 /* ~Puedes burlarte todo lo que quieras, <PRO_RACE>. Tus intentos por forzar un accionar furibundo en mí no darán resultado. Aunque... eso no quiera decir que no pueda ser... impredecible para ti.~*/
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22// from:
  SAY @90816 /* ~De todas formas, no estoy aquí para hablar de eso. Fui enviado a este apestoso lugar, infestado de inmundos piratas, sólo para ponerlos a prueba.~*/
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @90829 /* ~¡Observa esto con atención!~ */
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Kaland_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",1)
  ~ EXIT
END

// GOOD PATH parte2
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Kalanda_Summon","GLOBAL",1)
Global("P_DUSK_IS_GOOD","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY @90830 /* ~Pareces sorprendido, Asesino de Magos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",2)
  ~ GOTO 10
END

IF ~~ THEN BEGIN 25 // from:
  SAY @9086 /* ~¡¿Qué?! (Hmpf... sabía que no iba a lograr convencerlos... maldito el día en que oí los consejos de Sornhil)~*/
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 26 // from:
  SAY @9086 /* ~¡¿Qué?! (Hmpf... sabía que no iba a lograr convencerlos... maldito el día en que oí los consejos de Sornhil)~*/
  IF ~~ THEN GOTO 18
END


// GOOD 1 NO CONOCE parte3
I_C_T P_KALAND 24 P_Dusk_Kaland10
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @90835 /* ¿Estás hablando en serio? Estas criaturas no son rivales para nosotros, Kalanda. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90845 /* ¡Ja! Estas criaturas no son ninguna amenaza para nosotros, transmutador. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @90836 /* ¿Qué estás tramando realmente? */
END 

// GOOD 3 CONOCE SORNHIL parte1

I_C_T P_KALAND 26 P_Dusk_Kaland9
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @90840 /* <CHARNAME>, estamos ante un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9087 /* Así que has identificado mi escuela de especialización, humano. Con sólo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @90842 /* Ah, sí, la típica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invocó a una tortuga, la cual habrá tenido el tamaño de mi rodilla. Golodon lanzó un conjuro de tranformación en ella y la misma creció de tamaño, a tal punto, que decidimos armar una casucha encima de su caparazón y vivir allí una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atención a este elfo. Puede que tenga intención de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9088 /* Supongo que no me queda otra opción más que presentarme. Mi nombre es Kalanda, el Transmutador. */
END

// GOOD 2 CONOCE SORNHIL parte1

I_C_T P_KALAND 25 P_Dusk_Kaland8
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @90840 /* <CHARNAME>, estamos ante un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9087 /* Así que has identificado mi escuela de especialización, humano. Con sólo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @90842 /* Ah, sí, la típica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invocó a una tortuga, la cual habrá tenido el tamaño de mi rodilla. Golodon lanzó un conjuro de tranformación en ella y la misma creció de tamaño, a tal punto, que decidimos armar una casucha encima de su caparazón y vivir allí una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atención a este elfo. Puede que tenga intención de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9088 /* Supongo que no me queda otra opción más que presentarme. Mi nombre es Kalanda, el Transmutador. */
END

// GOOD 1 NO CONOCE parte2
I_C_T P_KALAND 22 P_Dusk_Kaland7
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @90844 /* ¿A qué te refieres? ¡Si intentas dañar a <CHARNAME>, tu cabeza rodará, Kalanda! */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @90818 /* ¿Es necesario que provoques un enfrentamiento, Dusk? Tenemos cosas más urgentes que atender aquí. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @90821 /* Hm... este elfo tiene una energía extraña a su alrededor, hombre del palito. Sin embargo, no creo que sea rival para mis conjuros. (No, no creo que lo sea...) */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @90819 /* Debes tener cuidado, Dusk. Así como el murciélago no puede encontrar alimento cuando ruge el viento con fuerza, no he sido capaz de encontrar un gramo de naturaleza en esta criatura élfica. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @90841 /* ¡D-dusk! Tranquilizate. No eres el único que usará todas sus fuerzas para defender a <CHARNAME>. Cuentas con más de un amigo a tu lado. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @90822 /* Escupo en tus amenazas, elfo basura. Piernas flacas, sólo di las palabras y habré de descuartizarlo por ti. */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @90823 /* Cuervo blanco, debo decirte que este tal Kalanda tiene una fuerza misteriosa en él. No deberíamos tomarnos a la ligera sus amenazas. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @90824 /* Mi Orden es poderosa, Asesino de Magos. Puede que te hayas entrenado con Ojos de Serpiente para mejorar tu resistencia arcana... pero eso no será suficiente. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @90843 /* ¡¿Q-qué?! ¿Cómo sabes eso? ¡Habla! No me obligues a matarte, Kalanda. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @90827 /* No, no habré de hablar, Asesino de Magos. Y no, tampoco es mi hora de morir. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @90828 /* Pero será la de ustedes si no superan esta prueba. */
END


// GOOD 1 NO CONOCE parte1
I_C_T P_KALAND 17 P_Dusk_Kaland6
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @90840 /* <CHARNAME>, ¡cuidado! Percibo una energía particular en él... se trata de un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9086 /* ¡¿Qué?! (Hmpf... sabía que no iba a lograr convencerlos... maldito el día en que oí los consejos de Sornhil) */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9087 /* Así que has identificado mi escuela de especialización, humano. Con sólo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @90842 /* Ah, sí, la típica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invocó a una tortuga, la cual habrá tenido el tamaño de mi rodilla. Golodon lanzó un conjuro de tranformación en ella y la misma creció de tamaño, a tal punto, que decidimos armar una casucha encima de su caparazón y vivir allí una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atención a este elfo. Puede que tenga intención de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9088 /* Supongo que no me queda otra opción más que presentarme. Mi nombre es Kalanda, el Transmutador. */
END


// EVIL 3 CONOCE SORNHIL parte1

I_C_T P_KALAND 15 P_Dusk_Kaland5
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @9085 /* <CHARNAME>, estamos ante un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9087 /* Así que has identificado mi escuela de especialización, humano. Con sólo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @90842 /* Ah, sí, la típica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invocó a una tortuga, la cual habrá tenido el tamaño de mi rodilla. Golodon lanzó un conjuro de tranformación en ella y la misma creció de tamaño, a tal punto, que decidimos armar una casucha encima de su caparazón y vivir allí una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atención a este elfo. Puede que tenga intención de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9088 /* Supongo que no me queda otra opción más que presentarme. Mi nombre es Kalanda, el Transmutador. */
END

// EVIL 2 CONOCE SORNHIL parte1

I_C_T P_KALAND 14 P_Dusk_Kaland4
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @9085 /* <CHARNAME>, estamos ante un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9087 /* Así que has identificado mi escuela de especialización, humano. Con sólo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @90842 /* Ah, sí, la típica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invocó a una tortuga, la cual habrá tenido el tamaño de mi rodilla. Golodon lanzó un conjuro de tranformación en ella y la misma creció de tamaño, a tal punto, que decidimos armar una casucha encima de su caparazón y vivir allí una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atención a este elfo. Puede que tenga intención de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9088 /* Supongo que no me queda otra opción más que presentarme. Mi nombre es Kalanda, el Transmutador. */
END


// EVIL 1 NO CONOCE parte3
I_C_T P_KALAND 9 P_Dusk_Kaland3
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @90835 /* ¿Estás hablando en serio? Estas criaturas no son rivales para nosotros, Kalanda. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90845 /* ¡Ja! Estas criaturas no son ninguna amenaza para nosotros, transmutador. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @90836 /* ¿Qué estás tramando realmente? */
END 

// EVIL 1 NO CONOCE parte2
I_C_T P_KALAND 7 P_Dusk_Kaland2
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @90817 /* ¿A prueba? ¡Ja! ¿Qué prueba puede imponernos un mago tan patético como tú, elfo? */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @90818 /* ¿Es necesario que provoques un enfrentamiento, Dusk? Tenemos cosas más urgentes que atender aquí. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @90821 /* Hm... este elfo tiene una energía extraña a su alrededor, hombre del palito. Sin embargo, no creo que sea rival para mis conjuros. (No, no creo que lo sea...) */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @90819 /* Debes tener cuidado, Dusk. Así como el murciélago no puede encontrar alimento cuando ruge el viento con fuerza, no he sido capaz de encontrar un gramo de naturaleza en esta criatura élfica. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @90820 /* *risa* ¿Quién lo diría, abbil? Tienes algo de violencia racial en tu interior. Creo que los elfos de la superficie lo tienen merecido... */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @90822 /* Escupo en tus amenazas, elfo basura. Piernas flacas, sólo di las palabras y habré de descuartizarlo por ti. */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @90823 /* Cuervo blanco, debo decirte que este tal Kalanda tiene una fuerza misteriosa en él. No deberíamos tomarnos a la ligera sus amenazas. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @90824 /* Mi Orden es poderosa, Asesino de Magos. Puede que te hayas entrenado con Ojos de Serpiente para mejorar tu resistencia arcana... pero eso no será suficiente. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @90825 /* ¡¿Q-qué?! ¿Cómo sabes eso, elfo? ¡Habla, o morirás ahora mismo! */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @90826 /* ¿Eso se supone que es una broma? No entiendo el humor de los humanos... me parece patético. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @90827 /* No, no habré de hablar, Asesino de Magos. Y no, tampoco es mi hora de morir. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @90828 /* Pero será la de ustedes si no superan esta prueba. */
END

// EVIL 1 NO CONOCE parte1
I_C_T P_KALAND 2 P_Dusk_Kaland1
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @9085 /* <CHARNAME>, estamos ante un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9086 /* ¡¿Qué?! (Hmpf... sabía que no iba a lograr convencerlos... maldito el día en que oí los consejos de Sornhil) */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9087 /* Así que has identificado mi escuela de especialización, humano. Con sólo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @90842 /* Ah, sí, la típica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invocó a una tortuga, la cual habrá tenido el tamaño de mi rodilla. Golodon lanzó un conjuro de tranformación en ella y la misma creció de tamaño, a tal punto, que decidimos armar una casucha encima de su caparazón y vivir allí una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atención a este elfo. Puede que tenga intención de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @9088 /* Supongo que no me queda otra opción más que presentarme. Mi nombre es Kalanda, el Transmutador. */
END
