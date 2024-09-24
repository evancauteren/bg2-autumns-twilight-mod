BEGIN p_valata

// EVIL PATH
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Valata_Confg","GLOBAL",0)
Global ("P_Dusk_Valata_Demon","GLOBAL",0)
Global("P_DUSK_IS_GOOD","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9170 /* ~Vaya, vaya... Capitán, esperaba una bienvenida más cálida... después de todo, te has hecho más poderoso gracias a nosotros...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Confg","GLOBAL",1)
  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 264
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9175 /* ~No mereces mi paciencia, fenónemo de circo... Sin embargo, hoy me siento amable: Soy Valatar, el Conjurador.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY @91714 /* ~Capitán Aldant... de seguro habremos de encontrarnos una vez más... si es que sobrevives, claro. ¡Ja, ja, ja! ~ */
  IF ~~ THEN DO ~  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210020 EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9176 /* Vayamos a asuntos más interesantes: Sé muy bien qué haces aquí, capitán. Debo decir que comparto tu amor por la venganza. Es... un sentimiento único cuando al fin logras realizarla. */ 
  IF ~~ THEN GOTO 2
END




// GOOD PATH
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Valata_Confg","GLOBAL",0)
Global ("P_Dusk_Valata_Demon","GLOBAL",0)
Global("P_DUSK_IS_GOOD","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @91717 /* ~Vaya, vaya... si es el Capitán Aldant y su inseparable camarada, <CHARNAME>...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Confg","GLOBAL",1)
  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 274
END

IF ~~ THEN BEGIN 5 // from:
  SAY @91721 /* ~Dado que no os considero una verdadera amenaza, os lo diré: Soy Valatar, el Conjurador.~ */
  IF ~~ THEN DO ~  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210022 EXIT
END



//GOOD
I_C_T P_VALATA 4 P_Dusk_Valata1Enc3
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @91718 /* ¿Qué es lo que buscas, mago? He rechazado el poder que tu amigo ha intentado ofrecerme. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @91719 /* Tus sucios trucos no funcionarán conmigo... y te lo advierto... si intentas algo, no dudaré en separar la cabeza de tu cuerpo con mi espada. */ 
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91720 /* (risa) Aunque no me impresionas, tu actitud sí. ¿Quizás se deba a tu extensa compañía junto a un engendro de Bhaal? */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91737 /* Percibo... una energía demoníaca en él, Dusk. Como si tuviera una conexión directa con el plano Astral. */
END


I_C_T P_VALATA 5 P_Dusk_Valata1Enc4
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @91722 /* ¿Y qué haces aquí, Valatar? Claramente, nos estás siguiendo. ¡Vamos, habla! */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91723 /* Hmpf... esto ya no es divertido... */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91724 /* Verás, mi Orden se encuentra muy interesada en tu inminente enfrentamiento contra Alabarza y su clan. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91725 /* Si logras vencerlos, aún podrías recuperar tu honor como Primera Espada en el Ejército de Cormyr, ¿no lo crees? */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @91726 /* ¿Q-qué...? */ 
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91727 /* Si hubieses aceptado el poder del orbe escarlata, esa no sería una preocupación para ti. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91728 /* El orbe habría despertado una fuerza descomunal en ti. Te habrías sentido tan poderoso como un dragón. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91729 /* Pero... en cambio, avanzas como un lobo, confiando en la fuerza de tu manada. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91730 /* Llegado el momento, capitán... verás lo poco que puede hacer una manada de animales salvajes en contra de una verdadera fuerza de poder. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @91731 /* Intentas intimidarme, Valatar... quizás aún en mi ignorancia sobre tu Orden, podría sentirme dubitativo. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @91732 /* Pero cuento con la fuerza de mis amigos, Mathyus, Michelson, <CHARNAME>. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @91733 /* El miedo no es un arma que puedas usar contra mí. */ 
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91734 /* ¡Ja! Eso está por verse, cormyreano. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91735 /* Me enviaron sólo a observarte... se supone que no debo matarte. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91736 /* Pero no dijeron nada de mis convocaciones. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @91716 /* ¡Lo sabía! Cuidado, <CHARNAME>. Creo que estamos ante una contingencia arcana. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @91714 /* ~Capitán Aldant... de seguro habremos de encontrarnos una vez más... si es que sobrevives, claro. ¡Ja, ja, ja! ~ */
END

//EVIL
I_C_T P_VALATA 0 P_Dusk_Valata1Enc1
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @9172 /* Supongo que te refieres al orbe escarlata de Sornhil. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @9173 /* Quizás deba agradecerles, mago. ¿Qué te parece tu corazón empalado en mi espada como símbolo de agradecimiento? */ 
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @9174 /* (risa) No sé si esa actitud se deba al orbe o a tu extensa compañía junto a un engendro de Bhaal. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91737 /* Percibo... una energía demoníaca en él, Dusk. Como si tuviera una conexión directa con el plano Astral. Debemos ser cuidadosos... */
END

I_C_T P_VALATA 3 P_Dusk_Valata1Enc2
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @9177 /* Tu opinión me importa muy poco, conjurador. Dime, ¿qué es lo que quieres? Tu vida depende de la respuesta que vayas a dar. */
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @9178 /* Fui enviado por mi Orden. Tenemos planes para ti y tu... líder. */ 
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @9179 /* Estamos muy interesados en el resultado del combate que se avecina entre tu grupo y el de Alabarza. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @91710 /* ¿Cómo es que saben tanto de nuestros movimientos? Creo que no eres diferente a tu compañero, Sornhil. Parece que disfrutan de escuchar su propia voz, aún cuando esté más vacía que una esponja seca. */
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @91711 /* Te lo aseguro, capitán... mi voz es de temer... */ 
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @91712 /* ¡Pero basta! Fui enviado para darte algo, capitán. Me dijeron exclusivamente que no debía intentar... matarte. */ 
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @91713 /* Sin embargo, tengo mucha curiosidad para ver cuál es el límite del orbe escarlata. Es por eso que... he preparado un... diabólico enfrentamiento. */
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @91715 /* YO no he de matarte... en eso, cumplo con mi Orden... Sin embargo, no dijeron nada de mis... convocaciones. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @91716 /* ¡Lo sabía! Cuidado, <CHARNAME>. Creo que estamos ante una contingencia arcana. */
END
