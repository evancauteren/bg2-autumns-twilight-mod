BEGIN P_Fall 

CHAIN IF ~Global("P_FallMet","GLOBAL",0)~ THEN P_Fall b1 
@9090 /* �Pst! �Oye, t�!, �s�, t�! Te estoy hablando a ti. */
DO ~SetGlobal("P_FallMet","GLOBAL",1)~ 
= @9091 /* Ac�rcate, necesito hablar contigo. */
END 
++ @9092 /* Erm... �Est�s hablando conmigo? */ EXTERN P_Fall b1.1 
++ @9093 /* No tengo tiempo para hablar con cortesanas. */  EXTERN P_Fall b1.2
++ @9094 /* �S�?, �qu� necesitas? */  EXTERN P_Fall b1.3
++ @9095 /* Lo lamento, se�orita. Ahora no tengo tiempo de hablar con usted. */  EXTERN P_Fall b1.4


CHAIN P_Fall b0
@9096 /* Como quieras... estar� aqu� si cambias de opini�n. */
EXIT

CHAIN P_Fall b1.4
@90948 /* *refunfu�eo* Los citadinos son todos iguales... una quiere hacer un bien liberando a unos pobres animales enjaulados y todo lo que hacen es dar vuelta la cabeza. */
= @9096 /* Como quieras... estar� aqu� si cambias de opini�n. */
EXIT



CHAIN P_Fall b1.1
@9097 /* �S�! Estoy hablando contigo, <LADYLORD> <PRO_RACE>. */
= @9098 /* Mi nombre es Fall y vengo del sur, de Inmescar. Veo que eres capaz ya que vas armado como si nada. Eso quiere decir que eres un aventurero, �no es as�? */
END
++ @9099 /* �Y qu� si lo soy? Mis servicios no son baratos. */ EXTERN P_Fall b2.1 
++ @90910 /* Soy m�s que un aventurero, media-elfa. �Qu� es lo que quieres? */  EXTERN P_Fall b2.2
++ @90911 /* Lo soy. �Qu� es lo que necesitas, Fall? */  EXTERN P_Fall b2.2


CHAIN P_Fall b1.2
@90912 /* �No soy ninguna cortesana! �Acaso no ves esta ballesta? �Tsk! Cre� que ustedes los citadinos eran criaturas despiertas. */
= @9098 /* Mi nombre es Fall y vengo del sur, de Inmescar. Veo que eres capaz ya que vas armado como si nada. Eso quiere decir que eres un aventurero, �no es as�? */
END
++ @9099 /* �Y qu� si lo soy? Mis servicios no son baratos. */ EXTERN P_Fall b2.1 
++ @90910 /* Soy m�s que un aventurero, media-elfa. �Qu� es lo que quieres? */  EXTERN P_Fall b2.2
++ @90911 /* Lo soy. �Qu� es lo que necesitas, Fall? */  EXTERN P_Fall b2.2


CHAIN P_Fall b1.3
@9098 /* Mi nombre es Fall y vengo del sur, de Inmescar. Veo que eres capaz ya que vas armado como si nada. Eso quiere decir que eres un aventurero, �no es as�? */
END
++ @9099 /* �Y qu� si lo soy? Mis servicios no son baratos. */ EXTERN P_Fall b2.1 
++ @90910 /* Soy m�s que un aventurero, media-elfa. �Qu� es lo que quieres? */  EXTERN P_Fall b2.2
++ @90911 /* Lo soy. �Qu� es lo que necesitas, Fall? */  EXTERN P_Fall b2.2


CHAIN P_Fall b2.1
@90913 /* Eso no importa. Puedo costear algo que podr�as considerar un trabajo f�cil. */
= @90914 /* Como os dije anteriormente, soy de Imnescar, pero mi camino me ha tra�do aqu�, a Athkatla por algo de suma importancia. */
= @90915 /* Sin embargo, mis asuntos personales se han visto paralizados por algo que considero urgente. */
= @90916 /* �Ves esos animales all�? Son del circo. Pretendo liberarlos. */
END
++ @90917 /* Ya veo. Y t� quieres que aniquilemos a los guardias para poder abrir las jaulas, �verdad? */ EXTERN P_Fall b3.1 
++ @90918 /* �En serio? Me parece una idea rid�cula, ni�a. */  EXTERN P_Fall b3.2
++ @90919 /* Entiendo. Pero, �c�mo pretendes hacer eso? No creo que los due�os vayan a liberarlos as� como as�. */  EXTERN P_Fall b3.3


CHAIN P_Fall b2.2
@90914 /* Como os dije anteriormente, soy de Imnescar, pero mi camino me ha tra�do aqu�, a Athkatla por algo de suma importancia. */
= @90915 /* Sin embargo, mis asuntos personales se han visto paralizados por algo que considero urgente. */
= @90916 /* �Ves esos animales all�? Son del circo. Pretendo liberarlos. */
END
++ @90917 /* Ya veo. Y t� quieres que aniquilemos a los guardias para poder abrir las jaulas, �verdad? */ EXTERN P_Fall b3.1 
++ @90918 /* �En serio? Me parece una idea rid�cula, ni�a. */  EXTERN P_Fall b3.2
++ @90919 /* Entiendo. Pero, �c�mo pretendes hacer eso? No creo que los due�os vayan a liberarlos as� como as�. */  EXTERN P_Fall b3.3


CHAIN P_Fall b3.1
@90920 /* �No! Esto se puede resolver sin acudir a la violencia. */
= @90921 /* El plan es mucho m�s simple. Podemos... sobornar a uno de los empleados para que liberen a los animales en los bosques australes de la ciudad. */
END
++ @90922 /* �Y para qu� me necesitas? Parece que lo tienes todo bastante resuelto. */ EXTERN P_Fall b4.1 
++ @90923 /* Me parece que tu plan apesta, Fall. Pero bueno, qui�n soy yo para juzgar. */  EXTERN P_Fall b4.2
++ @90924 /* Y, �cu�l ser�a mi papel en todo este esquema? */  EXTERN P_Fall b4.1


CHAIN P_Fall b3.2
@90925 /* Pues, �yo no lo creo as�! Ciertamente es mucho mejor que abrirse paso a espadazos. */
= @90921 /* El plan es mucho m�s simple. Podemos... sobornar a uno de los empleados para que liberen a los animales en los bosques australes de la ciudad. */
END
++ @90922 /* �Y para qu� me necesitas? Parece que lo tienes todo bastante resuelto. */ EXTERN P_Fall b4.1 
++ @90923 /* Me parece que tu plan apesta, Fall. Pero bueno, qui�n soy yo para juzgar. */  EXTERN P_Fall b4.2
++ @90924 /* Y, �cu�l ser�a mi papel en todo este esquema? */  EXTERN P_Fall b4.1

CHAIN P_Fall b3.3
@90926 /* Yo tampoco cuento con eso, mi <LADYLORD>. */
= @90921 /* El plan es mucho m�s simple. Podemos... sobornar a uno de los empleados para que liberen a los animales en los bosques australes de la ciudad. */
END
++ @90922 /* �Y para qu� me necesitas? Parece que lo tienes todo bastante resuelto. */ EXTERN P_Fall b4.1 
++ @90923 /* Me parece que tu plan apesta, Fall. Pero bueno, qui�n soy yo para juzgar. */  EXTERN P_Fall b4.2
++ @90924 /* Y, �cu�l ser�a mi papel en todo este esquema? */  EXTERN P_Fall b4.1


CHAIN P_Fall b4.1
@90927 /* El hombre que pretendo sobornar pide una cantidad excesiva de oro. Algo que yo no puedo solventar. Quiz�s, viajando con un grupo de aventureros pueda juntar la cantidad que pide. */
= @90928 /* Como recompensa, os dar�a una preciada gema. Para m� no tiene valor, pero puede que para ti s�. */
END
++ @90929 /* Puedo encargarme del trabajo, Fall. Pero no necesito a otro miembro en mi grupo. */  EXTERN P_Fall b5.1
++ @90930 /* Ya veo. Puede que me venga bien una mano extra. �C�mo s� que ser�as de utilidad en mi grupo? */ EXTERN P_Fall b5.2
++ @90931 /* No, gracias. Ser� mejor que busques ayuda en otra parte. */  EXTERN P_Fall b0

CHAIN P_Fall b4.2
@90932 /* Es obvio que muchos piensen que algo as� no valga la pena, �pero yo creo que s�! Adem�s, necesito ayuda. */
= @90927 /* El hombre que pretendo sobornar pide una cantidad excesiva de oro. Algo que yo no puedo solventar. Quiz�s, viajando con un grupo de aventureros pueda juntar la cantidad que pide. */
= @90928 /* Como recompensa, os dar�a una preciada gema. Para m� no tiene valor, pero puede que para ti s�. */
END
++ @90929 /* Puedo encargarme del trabajo, Fall. Pero no necesito a otro miembro en mi grupo. */  EXTERN P_Fall b5.1
++ @90930 /* Ya veo. Puede que me venga bien una mano extra. �C�mo s� que ser�as de utilidad en mi grupo? */ EXTERN P_Fall b5.2
++ @90931 /* No, gracias. Ser� mejor que busques ayuda en otra parte. */  EXTERN P_Fall b0


CHAIN P_Fall b5.1
@90933 /* �No! Yo debo estar presente cuando hables con el hombre del circo. Eso no es negociable. Esto es importante para m� y si vas a ayudarme, estar� contigo a tu lado hasta el final. */
= @90934 /* No soy una in�til, �sabes? Mi padre me ha ense�ado bien a usar la ballesta y mi madre es una poderosa hechicera, quien ha bordado esta t�nica m�gica para m�. */
= @90935 /* Poseo habilidades de exploradora y tengo aliados poderosos, como Daren y Sinna, quienes no dudar�an en matar por m�. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @90939 /* A Bub� le cae bien esta peque�a persona. �Adem�s lucha por el bienestar de las bestias! */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @90940 /* <CHARNAME>, esta ni�a parece tener el coraz�n en el lugar correcto. Aunque no s� si lo pueda compensar con su falta de experiencia. Como sea, la decisi�n es tuya. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @90941 /* Bueno, siempre es bueno contar con un buen aliado, <CHARNAME>. Parece que no bromea cuando habla de su ballesta. Podr�a ser bueno contar con ella en nuestra campa�a. */
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9094000 /* No s� si tenga voz al respecto, pero creo que la semielfa podr�a aportar algo bueno al grupo, pese a su inexperiencia. */
== P_Fall @90936 /* �Qu� dices? Me gustar�a viajar contigo. */
END
++ @90937 /* Quiz�s en alg�n momento, Fall. Por ahora, no tengo sitio para ti en mi grupo. */  EXTERN P_Fall b0
++ @90938 /* De acuerdo, Fall. En marcha. */ EXTERN P_Fall b6.1

CHAIN P_Fall b5.2
@90934 /* No soy una in�til, �sabes? Mi padre me ha ense�ado bien a usar la ballesta y mi madre es una poderosa hechicera, quien ha bordado esta t�nica para m�. */
= @90935 /* Poseo habilidades de exploradora y tengo aliados poderosos, como Daren y Sinna, quienes no dudar�an en matar por m�. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @90939 /* A Bub� le cae bien esta peque�a persona. �Adem�s lucha por el bienestar de las bestias! */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @90940 /* <CHARNAME>, esta ni�a parece tener el coraz�n en el lugar correcto. Aunque no s� si lo pueda compensar con su falta de experiencia. Como sea, la decisi�n es tuya. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @90941 /* Bueno, siempre es bueno contar con un buen aliado, <CHARNAME>. Parece que no bromea cuando habla de su ballesta. Podr�a ser bueno contar con ella en nuestra campa�a. */
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9094000 /* No s� si tenga voz al respecto, pero creo que la semielfa podr�a aportar algo bueno al grupo, pese a su inexperiencia. */
== P_Fall @90936 /* �Qu� dices? Me gustar�a viajar contigo. */
END
++ @90937 /* Quiz�s en alg�n momento, Fall. Por ahora, no tengo sitio para ti en mi grupo. */  EXTERN P_Fall b0
++ @90938 /* De acuerdo, Fall. En marcha. */ EXTERN P_Fall b6.1



CHAIN P_Fall b6.1
@90942 /* �S�! No te arrepentir�s... ehm... Creo que no o� tu nombre. */
END
++ @90943 /* Mi nombre es <CHARNAME>. */  UNSOLVED_JOURNAL @310001 EXTERN P_Fall b7.join

CHAIN P_Fall b7.join
@90944 /* �<CHARNAME>! Un placer conocerte. Soy Fall (hm... creo que ya hab�a dicho eso). En fin, deber�amos hablar con Andrew Oliva, un hombrecillo horrible que se encuentra cerca de la jaula de la serpiente. */
DO ~SetGlobal("P_FallMission1","GLOBAL",1) JoinParty() ~ 
EXIT


APPEND P_Fall

IF ~Global("P_FallMet","GLOBAL",1)~ b8
SAY @90945 /* �Ah! Miren qui�n ha vuelto a hablar con la buena de Fall. No, no mire, se�or enano, no estaba hablando con usted. *carraspeo* �Y bien? Espero que hayas cambiado de parecer. */
++ @90946 /* De hecho, s�. Puedes viajar con nosotros, Fall. */ + b6.1
++ @90947 /* Por el momento no, media-elfa. */ + b0
END 

END
