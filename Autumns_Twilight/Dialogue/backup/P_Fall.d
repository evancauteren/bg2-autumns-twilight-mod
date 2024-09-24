BEGIN P_Fall 

CHAIN IF ~Global("P_FallMet","GLOBAL",0)~ THEN P_Fall b1 
@0 /* ¡Pst! ¡Oye, tú!, ¡sí, tú! Te estoy hablando a ti. */
DO ~SetGlobal("P_FallMet","GLOBAL",1)~ 
= @1 /* Acércate, necesito hablar contigo. */
END 
++ @2 /* Erm... ¿Estás hablando conmigo? */ EXTERN P_Fall b1.1 
++ @3 /* No tengo tiempo para hablar con cortesanas. */  EXTERN P_Fall b1.2
++ @4 /* ¿Sí?, ¿qué necesitas? */  EXTERN P_Fall b1.3
++ @5 /* Lo lamento, señorita. Ahora no tengo tiempo de hablar con usted. */  EXTERN P_Fall b1.4


CHAIN P_Fall b0
@6 /* Como quieras... estaré aquí si cambias de opinión. */
EXIT

CHAIN P_Fall b1.4
@48 /* *refunfuñeo* Los citadinos son todos iguales... una quiere hacer un bien liberando a unos pobres animales enjaulados y todo lo que hacen es dar vuelta la cabeza. */
= @6 /* Como quieras... estaré aquí si cambias de opinión. */
EXIT



CHAIN P_Fall b1.1
@7 /* ¡Sí! Estoy hablando contigo, <LADYLORD> <PRO_RACE>. */
= @8 /* Mi nombre es Fall y vengo del sur, de Inmescar. Veo que eres capaz ya que vas armado como si nada. Eso quiere decir que eres un aventurero, ¿no es así? */
END
++ @9 /* ¿Y qué si lo soy? Mis servicios no son baratos. */ EXTERN P_Fall b2.1 
++ @10 /* Soy más que un aventurero, media-elfa. ¿Qué es lo que quieres? */  EXTERN P_Fall b2.2
++ @11 /* Lo soy. ¿Qué es lo que necesitas, Fall? */  EXTERN P_Fall b2.2


CHAIN P_Fall b1.2
@12 /* ¡No soy ninguna cortesana! ¿Acaso no ves esta ballesta? ¡Tsk! Creí que ustedes los citadinos eran criaturas despiertas. */
= @8 /* Mi nombre es Fall y vengo del sur, de Inmescar. Veo que eres capaz ya que vas armado como si nada. Eso quiere decir que eres un aventurero, ¿no es así? */
END
++ @9 /* ¿Y qué si lo soy? Mis servicios no son baratos. */ EXTERN P_Fall b2.1 
++ @10 /* Soy más que un aventurero, media-elfa. ¿Qué es lo que quieres? */  EXTERN P_Fall b2.2
++ @11 /* Lo soy. ¿Qué es lo que necesitas, Fall? */  EXTERN P_Fall b2.2


CHAIN P_Fall b1.3
@8 /* Mi nombre es Fall y vengo del sur, de Inmescar. Veo que eres capaz ya que vas armado como si nada. Eso quiere decir que eres un aventurero, ¿no es así? */
END
++ @9 /* ¿Y qué si lo soy? Mis servicios no son baratos. */ EXTERN P_Fall b2.1 
++ @10 /* Soy más que un aventurero, media-elfa. ¿Qué es lo que quieres? */  EXTERN P_Fall b2.2
++ @11 /* Lo soy. ¿Qué es lo que necesitas, Fall? */  EXTERN P_Fall b2.2


CHAIN P_Fall b2.1
@13 /* Eso no importa. Puedo costear algo que podrías considerar un trabajo fácil. */
= @14 /* Como os dije anteriormente, soy de Imnescar, pero mi camino me ha traído aquí, a Athkatla por algo de suma importancia. */
= @15 /* Sin embargo, mis asuntos personales se han visto paralizados por algo que considero urgente. */
= @16 /* ¿Ves esos animales allí? Son del circo. Pretendo liberarlos. */
END
++ @17 /* Ya veo. Y tú quieres que aniquilemos a los guardias para poder abrir las jaulas, ¿verdad? */ EXTERN P_Fall b3.1 
++ @18 /* ¿En serio? Me parece una idea ridícula, niña. */  EXTERN P_Fall b3.2
++ @19 /* Entiendo. Pero, ¿cómo pretendes hacer eso? No creo que los dueños vayan a liberarlos así como así. */  EXTERN P_Fall b3.3


CHAIN P_Fall b2.2
@14 /* Como os dije anteriormente, soy de Imnescar, pero mi camino me ha traído aquí, a Athkatla por algo de suma importancia. */
= @15 /* Sin embargo, mis asuntos personales se han visto paralizados por algo que considero urgente. */
= @16 /* ¿Ves esos animales allí? Son del circo. Pretendo liberarlos. */
END
++ @17 /* Ya veo. Y tú quieres que aniquilemos a los guardias para poder abrir las jaulas, ¿verdad? */ EXTERN P_Fall b3.1 
++ @18 /* ¿En serio? Me parece una idea ridícula, niña. */  EXTERN P_Fall b3.2
++ @19 /* Entiendo. Pero, ¿cómo pretendes hacer eso? No creo que los dueños vayan a liberarlos así como así. */  EXTERN P_Fall b3.3


CHAIN P_Fall b3.1
@20 /* ¡No! Esto se puede resolver sin acudir a la violencia. */
= @21 /* El plan es mucho más simple. Podemos... sobornar a uno de los empleados para que liberen a los animales en los bosques australes de la ciudad. */
END
++ @22 /* ¿Y para qué me necesitas? Parece que lo tienes todo bastante resuelto. */ EXTERN P_Fall b4.1 
++ @23 /* Me parece que tu plan apesta, Fall. Pero bueno, quién soy yo para juzgar. */  EXTERN P_Fall b4.2
++ @24 /* Y, ¿cuál sería mi papel en todo este esquema? */  EXTERN P_Fall b4.1


CHAIN P_Fall b3.2
@25 /* Pues, ¡yo no lo creo así! Ciertamente es mucho mejor que abrirse paso a espadazos. */
= @21 /* El plan es mucho más simple. Podemos... sobornar a uno de los empleados para que liberen a los animales en los bosques australes de la ciudad. */
END
++ @22 /* ¿Y para qué me necesitas? Parece que lo tienes todo bastante resuelto. */ EXTERN P_Fall b4.1 
++ @23 /* Me parece que tu plan apesta, Fall. Pero bueno, quién soy yo para juzgar. */  EXTERN P_Fall b4.2
++ @24 /* Y, ¿cuál sería mi papel en todo este esquema? */  EXTERN P_Fall b4.1

CHAIN P_Fall b3.3
@26 /* Yo tampoco cuento con eso, mi <LADYLORD>. */
= @21 /* El plan es mucho más simple. Podemos... sobornar a uno de los empleados para que liberen a los animales en los bosques australes de la ciudad. */
END
++ @22 /* ¿Y para qué me necesitas? Parece que lo tienes todo bastante resuelto. */ EXTERN P_Fall b4.1 
++ @23 /* Me parece que tu plan apesta, Fall. Pero bueno, quién soy yo para juzgar. */  EXTERN P_Fall b4.2
++ @24 /* Y, ¿cuál sería mi papel en todo este esquema? */  EXTERN P_Fall b4.1


CHAIN P_Fall b4.1
@27 /* El hombre que pretendo sobornar pide una cantidad excesiva de oro. Algo que yo no puedo solventar. Quizás, viajando con un grupo de aventureros pueda juntar la cantidad que pide. */
= @28 /* Como recompensa, os daría una preciada gema. Para mí no tiene valor, pero puede que para ti sí. */
END
++ @29 /* Puedo encargarme del trabajo, Fall. Pero no necesito a otro miembro en mi grupo. */  EXTERN P_Fall b5.1
++ @30 /* Ya veo. Puede que me venga bien una mano extra. ¿Cómo sé que serías de utilidad en mi grupo? */ EXTERN P_Fall b5.2
++ @31 /* No, gracias. Será mejor que busques ayuda en otra parte. */  EXTERN P_Fall b0

CHAIN P_Fall b4.2
@32 /* Es obvio que muchos piensen que algo así no valga la pena, ¡pero yo creo que sí! Además, necesito ayuda. */
= @27 /* El hombre que pretendo sobornar pide una cantidad excesiva de oro. Algo que yo no puedo solventar. Quizás, viajando con un grupo de aventureros pueda juntar la cantidad que pide. */
= @28 /* Como recompensa, os daría una preciada gema. Para mí no tiene valor, pero puede que para ti sí. */
END
++ @29 /* Puedo encargarme del trabajo, Fall. Pero no necesito a otro miembro en mi grupo. */  EXTERN P_Fall b5.1
++ @30 /* Ya veo. Puede que me venga bien una mano extra. ¿Cómo sé que serías de utilidad en mi grupo? */ EXTERN P_Fall b5.2
++ @31 /* No, gracias. Será mejor que busques ayuda en otra parte. */  EXTERN P_Fall b0


CHAIN P_Fall b5.1
@33 /* ¡No! Yo debo estar presente cuando hables con el hombre del circo. Eso no es negociable. Esto es importante para mí y si vas a ayudarme, estaré contigo a tu lado hasta el final. */
= @34 /* No soy una inútil, ¿sabes? Mi padre me ha enseñado bien a usar la ballesta y mi madre es una poderosa hechicera, quien ha bordado esta túnica mágica para mí. */
= @35 /* Poseo habilidades de exploradora y tengo aliados poderosos, como Daren y Sinna, quienes no dudarían en matar por mí. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @39 /* A Bubú le cae bien esta pequeña persona. ¡Además lucha por el bienestar de las bestias! */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @40 /* <CHARNAME>, esta niña parece tener el corazón en el lugar correcto. Aunque no sé si lo pueda compensar con su falta de experiencia. Como sea, la decisión es tuya. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @41 /* Bueno, siempre es bueno contar con un buen aliado, <CHARNAME>. Parece que no bromea cuando habla de su ballesta. Podría ser bueno contar con ella en nuestra campaña. */
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4000 /* No sé si tenga voz al respecto, pero creo que la semielfa podría aportar algo bueno al grupo, pese a su inexperiencia. */
== P_Fall @36 /* ¿Qué dices? Me gustaría viajar contigo. */
END
++ @37 /* Quizás en algún momento, Fall. Por ahora, no tengo sitio para ti en mi grupo. */  EXTERN P_Fall b0
++ @38 /* De acuerdo, Fall. En marcha. */ EXTERN P_Fall b6.1

CHAIN P_Fall b5.2
@34 /* No soy una inútil, ¿sabes? Mi padre me ha enseñado bien a usar la ballesta y mi madre es una poderosa hechicera, quien ha bordado esta túnica para mí. */
= @35 /* Poseo habilidades de exploradora y tengo aliados poderosos, como Daren y Sinna, quienes no dudarían en matar por mí. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @39 /* A Bubú le cae bien esta pequeña persona. ¡Además lucha por el bienestar de las bestias! */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @40 /* <CHARNAME>, esta niña parece tener el corazón en el lugar correcto. Aunque no sé si lo pueda compensar con su falta de experiencia. Como sea, la decisión es tuya. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @41 /* Bueno, siempre es bueno contar con un buen aliado, <CHARNAME>. Parece que no bromea cuando habla de su ballesta. Podría ser bueno contar con ella en nuestra campaña. */
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4000 /* No sé si tenga voz al respecto, pero creo que la semielfa podría aportar algo bueno al grupo, pese a su inexperiencia. */
== P_Fall @36 /* ¿Qué dices? Me gustaría viajar contigo. */
END
++ @37 /* Quizás en algún momento, Fall. Por ahora, no tengo sitio para ti en mi grupo. */  EXTERN P_Fall b0
++ @38 /* De acuerdo, Fall. En marcha. */ EXTERN P_Fall b6.1



CHAIN P_Fall b6.1
@42 /* ¡Sí! No te arrepentirás... ehm... Creo que no oí tu nombre. */
END
++ @43 /* Mi nombre es <CHARNAME>. */  UNSOLVED_JOURNAL @310001 EXTERN P_Fall b7.join

CHAIN P_Fall b7.join
@44 /* ¡<CHARNAME>! Un placer conocerte. Soy Fall (hm... creo que ya había dicho eso). En fin, deberíamos hablar con Andrew Oliva, un hombrecillo horrible que se encuentra cerca de la jaula de la serpiente. */
DO ~SetGlobal("P_FallMission1","GLOBAL",1) JoinParty() ~ 
EXIT


APPEND P_Fall

IF ~Global("P_FallMet","GLOBAL",1)~ b8
SAY @45 /* ¡Ah! Miren quién ha vuelto a hablar con la buena de Fall. No, no mire, señor enano, no estaba hablando con usted. *carraspeo* ¿Y bien? Espero que hayas cambiado de parecer. */
++ @46 /* De hecho, sí. Puedes viajar con nosotros, Fall. */ + b6.1
++ @47 /* Por el momento no, media-elfa. */ + b0
END 

END
