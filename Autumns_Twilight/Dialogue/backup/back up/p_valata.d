BEGIN p_valata

// EVIL PATH
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Valata_Confg","GLOBAL",0)
Global ("P_Dusk_Valata_Demon","GLOBAL",0)
Global("P_DUSK_IS_GOOD","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~Vaya, vaya... Capitán, esperaba una bienvenida más cálida... después de todo, te has hecho más poderoso gracias a nosotros...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Confg","GLOBAL",1)
  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 264
END

IF ~~ THEN BEGIN 1 // from:
  SAY @5 /* ~No mereces mi paciencia, fenónemo de circo... Sin embargo, hoy me siento amable: Soy Valatar, el Conjurador.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY @14 /* ~Capitán Aldant... de seguro habremos de encontrarnos una vez más... si es que sobrevives, claro. ¡Ja, ja, ja! ~ */
  IF ~~ THEN DO ~  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210020 EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @6 /* Vayamos a asuntos más interesantes: Sé muy bien qué haces aquí, capitán. Debo decir que comparto tu amor por la venganza. Es... un sentimiento único cuando al fin logras realizarla. */ 
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
  SAY @17 /* ~Vaya, vaya... si es el Capitán Aldant y su inseparable camarada, <CHARNAME>...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Confg","GLOBAL",1)
  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 274
END

IF ~~ THEN BEGIN 5 // from:
  SAY @21 /* ~Dado que no os considero una verdadera amenaza, os lo diré: Soy Valatar, el Conjurador.~ */
  IF ~~ THEN DO ~  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210022 EXIT
END



//GOOD
I_C_T P_VALATA 4 P_Dusk_Valata1Enc3
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @18 /* ¿Qué es lo que buscas, mago? He rechazado el poder que tu amigo ha intentado ofrecerme. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @19 /* Tus sucios trucos no funcionarán conmigo... y te lo advierto... si intentas algo, no dudaré en separar la cabeza de tu cuerpo con mi espada. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4000 /* Percibo... una energía demoníaca en él, Dusk. Como si tuviera una conexión directa con el plano Astral. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @20 /* (risa) Aunque no me impresionas, tu actitud sí. ¿Quizás se deba a tu extensa compañía junto a un engendro de Bhaal? */
END


I_C_T P_VALATA 5 P_Dusk_Valata1Enc4
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @22 /* ¿Y qué haces aquí, Valatar? Claramente, nos estás siguiendo. ¡Vamos, habla! */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @23 /* Hmpf... esto ya no es divertido... */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @24 /* Verás, mi Orden se encuentra muy interesada en tu inminente enfrentamiento contra Alabarza y su clan. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @25 /* Si logras vencerlos, aún podrías recuperar tu honor como Primera Espada en el Ejército de Cormyr, ¿no lo crees? */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @26 /* ¿Q-qué...? */ 
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @27 /* Si hubieses aceptado el poder del orbe escarlata, esa no sería una preocupación para ti. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @28 /* El orbe habría despertado una fuerza descomunal en ti. Te habrías sentido tan poderoso como un dragón. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @29 /* Pero... en cambio, avanzas como un lobo, confiando en la fuerza de tu manada. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @30 /* Llegado el momento, capitán... verás lo poco que puede hacer una manada de animales salvajes en contra de una verdadera fuerza de poder. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @31 /* Intentas intimidarme, Valatar... quizás aún en mi ignorancia sobre tu Orden, podría sentirme dubitativo. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @32 /* Pero cuento con la fuerza de mis amigos, Mathyus, Michelson, <CHARNAME>. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @33 /* El miedo no es un arma que puedas usar contra mí. */ 
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @34 /* ¡Ja! Eso está por verse, cormyreano. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @35 /* Me enviaron sólo a observarte... se supone que no debo matarte. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @36 /* Pero no dijeron nada de mis convocaciones. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @16 /* ¡Lo sabía! Cuidado, <CHARNAME>. Creo que estamos ante una contingencia arcana. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @14 /* ~Capitán Aldant... de seguro habremos de encontrarnos una vez más... si es que sobrevives, claro. ¡Ja, ja, ja! ~ */
END

//EVIL
I_C_T P_VALATA 0 P_Dusk_Valata1Enc1
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @2 /* Supongo que te refieres al orbe escarlata de Sornhil. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @3 /* Quizás deba agradecerles, mago. ¿Qué te parece tu corazón empalado en mi espada como símbolo de agradecimiento? */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4000 /* Percibo... una energía demoníaca en él, Dusk. Como si tuviera una conexión directa con el plano Astral. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @4 /* (risa) No sé si esa actitud se deba al orbe o a tu extensa compañía junto a un engendro de Bhaal. */
END

I_C_T P_VALATA 3 P_Dusk_Valata1Enc2
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @7 /* Tu opinión me importa muy poco, conjurador. Dime, ¿qué es lo que quieres? Tu vida depende de la respuesta que vayas a dar. */
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @8 /* Fui enviado por mi Orden. Tenemos planes para ti y tu... líder. */ 
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @9 /* Estamos muy interesados en el resultado del combate que se avecina entre tu grupo y el de Alabarza. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @10 /* ¿Cómo es que saben tanto de nuestros movimientos? Creo que no eres diferente a tu compañero, Sornhil. Parece que disfrutan de escuchar su propia voz, aún cuando esté más vacía que una esponja seca. */
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @11 /* Te lo aseguro, capitán... mi voz es de temer... */ 
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @12 /* ¡Pero basta! Fui enviado para darte algo, capitán. Me dijeron exclusivamente que no debía intentar... matarte. */ 
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @13 /* Sin embargo, tengo mucha curiosidad para ver cuál es el límite del orbe escarlata. Es por eso que... he preparado un... diabólico enfrentamiento. */
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @15 /* YO no he de matarte... en eso, cumplo con mi Orden... Sin embargo, no dijeron nada de mis... convocaciones. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @16 /* ¡Lo sabía! Cuidado, <CHARNAME>. Creo que estamos ante una contingencia arcana. */
END
