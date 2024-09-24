BEGIN P_BFal25



// AERIE 
// Colocar GLOBAL sobre Quest1 finalizada
CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallAerie1","GLOBAL",0)~ THEN P_BFal25 P_FallAerie1
@9790 /* Aerie, hace tiempo que noto que intentas establecer conversaci�n conmigo. Puedes hablarme con confianza, mi querida amiga. */
DO ~SetGlobal("P_FallAerie1","GLOBAL",1)~
== BAERIE25 @9791 /* �Fall! Y-yo... s�, es verdad. */
== P_BFal25 @9792 /* �Y bien? �Qu� sucede? Puedes hablarme de lo que sea. */
== BAERIE25 @9793 /* P-pues, Fall... no quiero que pienses mal de m�. Por haber estado en el circo. */
== P_BFal25 @9794 /* �A qu� te refieres? */
== BAERIE25 @9795 /* Lo que has hecho por los animales. Ha sido un acto noble. */
== P_BFal25 @9796 /* Entiendo. �No crees que habr� afectado de manera negativa el negocio de tu t�o Quayle? */
== BAERIE25 @9797 /* No, Fall. Quayle est� en contra de las jaulas tambi�n. Estoy seguro de que habr�a hecho algo al respecto por su cuenta. Pero sucedi� lo de Kalah. */
== P_BFal25 @9798 /* Es verdad. Pero es mejor tomar el asunto como propio cuando denotas injusticia, �no lo crees? */
== BAERIE25 @9799 /* S-s�, �tienes raz�n! */
== P_BFal25 @97910 /* Me alegra que pensemos lo mismo, Aerie. El hecho de que hayas estado en el circo no me hace pensar mal de ti. */
== P_BFal25 @97911 /* Tu coraz�n est� en el lugar correcto... y eso es suficiente para que te hayas ganado mi respeto. */
== BAERIE25 @97912 /* Gracias, Fall. Me alegra saber que cuento contigo. */
EXIT

// ANOMEN

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_Fallomen1","GLOBAL",0)~ THEN P_BFal25 P_Fallomen1
@97913 /* Los guerreros de la Orden son muy diferentes a los exploradores australes. */
DO ~SetGlobal("P_Fallomen1","GLOBAL",1)~
== BANOME25 @97914 /* �Por qu� lo dices, Fall? Helm dispone de muchos bravos soldados en sus filas. Imagino que los exploradores de tu hogar han de envidiarnos. */
== P_BFal25 @97915 /* Hm... no estoy tan segura. Te he visto combatir a ti. Y he visto combatir a mi padre. No tiene nada que envidiarte. */
== BANOME25 @97916 /* Lamento si lo que dije te ofendi�, milady. Estoy seguro de que tu padre fue un buen guerrero. */
== P_BFal25 @97917 /* Lo fue, Anomen. Su manejo con la ballesta era loable. Tuve el honor de aprender el arte de la guerra con �l. */
== BANOME25 @97918 /* Tu entrenamiento ha rendido frutos. */
== P_BFal25 @97919 /* Viniendo de ti, es todo un halago. Gracias, Anomen. */
EXIT

// CERND

CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallCernd1","GLOBAL",0)~ THEN BCERND25 P_FallCernd1
@97920 /* Fall, tu aprecio por los animales no es nada menos que inspirador si me lo permites decir. Luchas con la fiereza de una loba que har�a todo lo posible por proteger a sus cr�as. */
DO ~SetGlobal("P_FallCernd1","GLOBAL",1)~
== P_BFal25 @97921 /* Somos todos hijos de esta tierra, Cernd. Es lo menos que puedo hacer. A�n si utilizo las herramientas de un humano. */
== BCERND25 @97922 /* Entiendo que a veces te encuentres en una dicotom�a respecto a los hombres. */
== BCERND25 @97923 /* Yo mismo he sido testigo de c�mo la mano del hombre es capaz de crear... pero tambi�n de destruir. El fuego tiene la cualidad de salvar y destruir. Tal es el hombre. */
== P_BFal25 @97924 /* Me he enfrentado a muchos cazadores furtivos. Humanos en su mayor�a. Su ambici�n es capaz de engullir bosques enteros. */
== P_BFal25 @97925 /* Pero, por el otro lado, la persona que m�s he admirado era un humano. Mi padre. */
== BCERND25 @97926 /* Un poderoso Se�or de las Bestias, tengo entendido. */
== P_BFal25 @97927 /* S�. �l encontr� a Daren y Sinna cuando a�n eran unos lobitos. Fue... realmente doloroso verlo morir. */
== BCERND25 @97928 /* Lamento que hayas tenido que atestiguar eso. La naturaleza a veces puede ser muy cruel, pues es salvaje como un tornado, pero tambi�n puede ser afable como un c�firo. */
== P_BFal25 @97929 /* Tal vez, Cernd... ser� mejor que dejemos la conversaci�n para otro momento. Ahora mismo, el recuerdo de mi padre agita mi coraz�n. */
== BCERND25 @97930 /* Que as� sea, Fall. */
EXIT

// EDWIN

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallEdwin1","GLOBAL",0)~ THEN P_BFal25 P_FallEdwin1
@97931 /* �Te he visto, Edwin! Has estado viendo mi t�nica desde hace ya mucho tiempo. �Qu� pretendes? */
DO ~SetGlobal("P_FallEdwin1","GLOBAL",1)~
== BEDWIN25 @97932 /* �Por qu� te molesta, semielfa? Que los ojos de Edwin Odesseiron se posen en ti deber�a ser, cuando menos, halagador. */
== P_BFal25 @97933 /* �Halagador? No tienes ese porte de nobleza que tanto te esfuerzas por esbozar, mago. S� que tus intenciones son siempre turbias. */
== BEDWIN25 @97934 /* (�De qu� habla esta ni�a?) Hmpf, no tengo intenciones extra�as para contigo, mujer. Puede que tengas un cierto atractivo, pero tu t�nica es lo que en s� me ha llamado la atenci�n. */
== P_BFal25 @97935 /* �Y qu� con eso? */
== BEDWIN25 @97936 /* Vamos... es artesan�a de los Altos Elfos, �no es as�? Ostentas un poder arcano, pese a que act�es todo el tiempo como una cabeza de hojalata. */
== BEDWIN25 @97937 /* O puede que simplemente te imagine sin ella, �sabes? (S�, incluso una semielfa puede ser atractiva para el gran Edwin Odesseiron). */
== P_BFal25 @97938 /* Sabes que al ser parte elfa puedo oirte murmurar, �no? */
== BEDWIN25 @97939 /* �Q-qu�? (Hmpf, uno ya no puede ni pensar tranquilo) De todas formas, mujer, no me atraes. No me dignar�a a estar con alguien de sangre... contaminada. */
== P_BFal25 @97940 /* �De verdad? Pues, eso es un alivio. Ahora, aleja tus ojos de mi t�nica, �quieres? */
EXIT

// Haer-Dalis

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallHaerDalis1","GLOBAL",0)~ THEN BHAERD25 P_FallHaerDalis1
@97941 /* Ah, pero si es la adorada ave frutal. �Necesitas que el bueno de Haer-Dalis te dedique una canci�n? */
DO ~SetGlobal("P_FallHaerDalis1","GLOBAL",1)~
== P_BFal25 @97942 /* Hm... no, tiefling. De hecho, eres t� el que se acerc� a m�. �Necesitas algo? */
== BHAERD25 @97943 /* Pues, he notado que a veces emanas un aura de tristeza. Como ahora. �Nada como una buena poes�a para levantar los �nimos! */
== P_BFal25 @97944 /* Te lo agradezco, Haer-Dalis... pero estoy bien. No necesito-- */
== BHAERD25 @97945 /* En la tristeza el ave roja vuela,
Pero el buen tiefling su canci�n desvela,
Melod�as que emergen del coraz�n,
Un eco de amor, de arte y devoci�n. */
== P_BFal25 @97946 /* Ah, veo que ya la ten�as compuesta de antes. No es nece--- */
== BHAERD25 @97947 /* Sus notas susurran un misterio oculto,
Un canto de almas que busca el tumulto,
En cada verso se alza su esencia,
Transformando dolor en pura presencia. */
== P_BFal25 @97948 /* �Por qu� tanto �nfasis en la tristeza? Yo no me siento tris-- */
== BHAERD25 @97949 /* El ave roja, s�mbolo de pesar,
Encuentra consuelo en esta canci�n alentar,
El tiefling habilidoso, su voz despliega,
Un regalo de m�sica, magia que entrega. */
== P_BFal25 @97950 /* Bueno, eso ha sido hermo-- */
== BHAERD25 @97951 /* As�, en la tristeza brota la poes�a,
El arte que alivia y la alma gu�a,
El ave roja denota tristeza,
Pero el buen tiefling compone belleza. */
== P_BFal25 @97952 /* *se queda en silencio* */
== BHAERD25 @97953 /* �Y bien, qu� te ha parecido mi canci�n, ave frutal? */
== P_BFal25 @97954 /* (Oh, ya ha terminado al fin) Pues, �ha sido hermosa, Haer-Dalis! */
== BHAERD25 @97955 /* Puedo cantarte otra si quieres. */
== P_BFal25 @97956 /* �Oh, no! Mira la hora... es momento de entrenar con mi ballesta. Quiz�s en la pr�xima, �s�? �Adi�s! */
== BHAERD25 @97957 /* �Claro que s�! Vuela alto, avecilla frutal. */
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallImoen1","GLOBAL",0)~ THEN P_BFal25 P_FallImoen1
@97958 /* Imoen, �alguna vez has ido a Imnescar? Sabes, es famosa por su cultivo de frutas. */
DO ~SetGlobal("P_FallImoen1","GLOBAL",1)~
== BIMOEN25 @97959 /* No, no conozco Imnescar. De hecho, mis viajes se limitan a los lugares a los que he ido con <CHARNAME>. */
== P_BFal25 @97960 /* �Te gustar�a ir alg�n d�a? Creo que podemos hacer un buen grupo de viaje entre t�, yo, Daren y Sinna. �Qu� te parece? */
== BIMOEN25 @97961 /* Eso suena bien, Fall. Tus cachorros me caen bien. Sinna es muy dulce y en�rgica. */
== P_BFal25 @97962 /* �Qu� hay de Daren? */
== BIMOEN25 @97963 /* Oh... hmm me pone un poco nerviosa a decir verdad. Su mirada es penetrante. Parece que en cualquier momento te va a comer las piernas, �sabes? */
== P_BFal25 @97964 /* �Ja! No te dejes enga�ar. Daren es un dulce lobo. S�lo debes acariciar su lomo durante unos instantes y te ganar�s su coraz�n. */
== BIMOEN25 @97965 /* Pues... creo que prefiero a Sinna. �Sin �nimos de ofender! */
== P_BFal25 @97966 /* No te preocupes. Estoy segura de que con el tiempo, te llevar�s bien con Daren. No son tan diferentes ustedes dos, �sabes? */
EXIT

// JAHEIRA 

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallJaheira1","GLOBAL",0)~ THEN BJAHEI25 P_FallJaheira1
@97967 /* Habr�as sido una buena arpista, Fall. Es una l�stima que no te haya conocido antes. */
DO ~SetGlobal("P_FallJaheira1","GLOBAL",1)~
== P_BFal25 @97968 /* �Arpista? He o�do hablar de ellos, pero no estoy segura de qu� es lo que hacen. */
== BJAHEI25 @97969 /* Los arpistas se encargan de mantener el equilibrio entre la Naturaleza y la Civilizaci�n. Siempre que hay un evento importante en el mundo, all� est�n, vigilantes de que no ocasione el caos y el conocimiento general no se pierda. */
== P_BFal25 @97970 /* Ya veo. Una especie de organizaci�n que preserva la memoria. Es... interesante. Aunque, a decir verdad, prefiero volver a los bosques apenas termine mis asuntos en Amn. */
== BJAHEI25 @97971 /* Comprendo, querida. La naturaleza es atractiva para aquellos que son como nosotras. Creo... que incluso yo har�a lo mismo. */
== P_BFal25 @97972 /* �Y qu� te detiene, Jaheira? */
== BJAHEI25 @97973 /* Pues... supongo que lo mismo que a ti, Fall. Asuntos pendientes. Irenicus, <CHARNAME>. A�n queda mucho trabajo por hacer.  */
== P_BFal25 @97974 /* Es verdad. Supongo que lo sabremos cuando hayamos llegado all�, �no lo crees? */
== BJAHEI25 @97975 /* Es verdad, Fall. Es verdad...  */
EXIT

// JAN ALL
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallJan1","GLOBAL",0)~ THEN BJAN25 P_FallJan1
@97976 /* Te lo digo, Fall. Los nabos de la cosecha Jansen son tan deliciosos como aquellas frutas que describes de Imnescar. */
DO ~SetGlobal("P_FallJan1","GLOBAL",1)~
== P_BFal25 @97977 /* Es probable, Jan. Sin embargo, no creo que exista un comercio tan grande de nabos como lo existe con las frutas en el sur de Amn. Ver�s, ten�a un primo... bueno, en realidad no era un primo, sino que era Moco Manzana, el primo de todos. Era un mediano p�caro que gustaba robar semillas de melones para usarlos en sus experimentos alcoh�licos en su af�n por crear una bebida s�per dulce que habr�a de embriagar a cualquiera con s�lo su aroma. */
== BJAN25 @97978 /* Entiendo. Golodon quiso hacer algo similar con-- */
== P_BFal25 @97979 /* La cuesti�n es que Moco, de alguna manera, logr� crear dicha bebida. Pero no obtuvo el resultado deseado. Su pony bebi� del brebaje preliminar que hab�a creado y se volvi� loco. Obtuvo una fuerza similar a la de un toro, �sabes? O puede que a la de un grifo. Hm, lamento mencionar a los grifos, �sabes? S� que no has tenido buena experiencia con ellos. */
== BJAN25 @97980 /* Bueno, eso es cierto. Una vez un grifo-- */
== P_BFal25 @97981 /* Bueno, la cuesti�n es que este pony, el cual se llamaba Gran Dul�n. �Te hab�a mencionado que se llamaba Gran Dul�n? Es un juego de palabra, �sabes? �Grandul�n! Es muy gracioso si te pones a pensar. Bueno, la cuesti�n es que Gran Dul�n entr� en un estado de furia y comenz� a devorar todo el pasto que se cruzaba, con tal de aliviar el sabor dulz�n que hab�a ganado gracias a la bebida de Moco. */
== BJAN25 @97982 /* S�. Eso me recuerda a-- */
== P_BFal25 @97983 /* Nos tom� tres semanas enteras de tr�fico de pasto de los Bosques de Mir para que se calme. Yo era muy ni�a en esa �poca pero lo recuerdo con claridad. Ese a�o perdimos muchas libras de peras y limones en compensaci�n a los habitantes de Mir para que nos dejaran de ver con mala cara por el consumo excesivo que tuvo Gran Dul�n con su pasto. Fue todo un caos, �sabes? */
== BJAN25 @97984 /* Ehm... creo que es hora de que me ponga a trabajar sobre... ehm, uno de mis inventos, �s�, Fall? */
== P_BFal25 @97985 /* Oh, �no quieres saber c�mo sigue la historia, Jan? Te aseguro que es entretenida. */
== BJAN25 @97986 /* Hum... no, creo que he tenido suficiente, gracias. */
== BJAN25 @97987 /* *suspiro* (Con que as� se siente, �eh?) */
EXIT

// KELDORN

CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallKeldorn1","GLOBAL",0)~ THEN BKELDO25 P_FallKeldorn1
@97988 /* Fall, �c�mo te encuentras? He visto que �ltimamente has estado muy dubitativa. */
DO ~SetGlobal("P_FallKeldorn1","GLOBAL",1)~
== P_BFal25 @97989 /* Sir Keldorn, �alguna vez ha pensado en lo que hay m�s all� de nuestra existencia mortal? */
== BKELDO25 @97990 /* Una duda que ha muchos nos ha carcomido. Sin embargo, te responder� lo que yo creo: como palad�n, creo en la recompensa eterna de servir fielmente a Torm. */
== P_BFal25 @97991 /* Debe ser reconfortante tener esa convicci�n. Por mi parte, encuentro consuelo en los ciclos de la naturaleza y en la interconexi�n de todos los seres vivos. */
== BKELDO25 @97992 /* En efecto, la belleza de la creaci�n es innegable. Podemos diferir en nuestras creencias, pero hay sabidur�a en ambas perspectivas. */
== P_BFal25 @97993 /* Aprecio sus palabras, mi se�or. */
== BKELDO25 @97994 /* Siempre es un placer, Fall. */
EXIT


// KORGAN 

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallKorgan1","GLOBAL",0)~ THEN P_BFal25 P_FallKorgan1
@97995 /* *susurro* Buen trabajo, Daren. Buen trabajo, Sinna. */
DO ~SetGlobal("P_FallKorgan1","GLOBAL",1)~
== BKORGA25 @97996 /* Fall, why ye waste yer time with beasts and critters? A true warrior seeks glory in battle, not in the company of furry creatures. */
== P_BFal25 @97997 /* Korgan, animals are part of the intricate web of life. They are loyal allies and companions. They deserve our respect and protection. */
== BKORGA25 @97998 /* Bah! I'll stick to me axe and me tankard of ale. No need for cuddly companions or the whims of nature. */
== P_BFal25 @97999 /* Why do you harbor such disdain for animals? They possess a purity and loyalty that is often absent in the hearts of men. */
== BKORGA25 @979100 /* Animals, ye say? Bah! They're nothing but mindless creatures, driven by instinct and survival. */
== P_BFal25 @979101 /* Animals are not mere beasts. They possess an innate wisdom, attuned to the rhythms of nature. They teach us about harmony and adaptability. */
== BKORGA25 @979102 /* Hmpf... Wisdom? Bah! I prefer the straightforward path of steel and blood. Nature's teachings won't protect me when enemies are closing in. */
EXIT

// MAZZY

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallMazzy1","GLOBAL",0)~ THEN P_BFal25 P_FallMazzy1
@979103 /* Mazzy, tus habilidades con el arco corto son impresionantes. Me alegra tener a alguien valiente y justo como compa�era de batalla. */
DO ~SetGlobal("P_FallMazzy1","GLOBAL",1)~
== BMAZZY25 @979104 /* Gracias, Fall. Tambi�n admiro tu destreza con la ballesta y c�mo cuidas de tus lobos. Los animales son una parte especial de la naturaleza y debemos protegerlos. */
== P_BFal25 @979105 /* Los bosques son nuestro hogar y debemos preservarlos. �Alguna vez has sentido una conexi�n profunda con la naturaleza durante tus viajes? */
== BMAZZY25 @979106 /* S�, hay una paz y serenidad que encuentro en la naturaleza. Me ayuda a recordar el prop�sito de mi deber como Espada de Arvoreen: proteger a los inocentes y preservar la armon�a. */
== P_BFal25 @979107 /* Buenas palabras, querida amiga. Tu convicci�n no hace m�s que alimentar la m�a. */
== BMAZZY25 @979108 /* Creo que nuestra fe es lo que nos mantiene firmes en nuestro prop�sito, Fall. Vamos, continuemos. */
EXIT


// MINSC 

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallMinsc1","GLOBAL",0)~ THEN P_BFal25 P_FallMinsc1
@979109 /* Me encanta tu entusiasmo, Minsc. Siempre est�s dispuesto a enfrentarte a los peligros con valent�a. Y Bub�, ese h�mster tuyo, siempre tiene buenos consejos, �no es as�? */
DO ~SetGlobal("P_FallMinsc1","GLOBAL",1)~
== BMINSC25 @979110 /* �As� es, Fall! Bub� es mi compa�ero de confianza, el m�s sabio de todos los h�msters. A veces me susurra al o�do y me dice qu� hacer. �Es mi gu�a peludo! */
== P_BFal25 @979111 /* Esa conexi�n que tienes con Bub� es �nica, Minsc. Siempre me hace sonre�r veros interactuar. */
== BMINSC25 @979112 /* �Oh, Fall, no tienes idea de las aventuras que hemos vivido! �Juntos hemos enfrentado ara�as gigantes, hombres-lobo y toda clase de monstruos! �Somos invencibles! */
== P_BFal25 @979113 /* Impresionante. �Sigamos adelante, valientes exploradores, en busca de nuevas aventuras! */
== BMINSC25 @979114 /* �S�! �Minsc y Bub� est�n listos! *chillido* */
EXIT

// NALIA

CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallNalia1","GLOBAL",0)~ THEN BNALIA25 P_FallNalia1
@979115 /* Fall, me he estado preguntando sobre tus compa�eros animales, Daren y Sinna. �C�mo es que los invocas? A simple vista, parecen hechizos de conjuraci�n. */
DO ~SetGlobal("P_FallNalia1","GLOBAL",1)~
== P_BFal25 @979116 /* Ah, Nalia, mis leales lobos, Daren y Sinna, son m�s que simples compa�eros de cuatro patas para m�. Son parte de mi esp�ritu y de mi conexi�n con la naturaleza. A trav�s de la magia de convocaci�n, puedo llamarlos a mi lado y compartir nuestra fuerza y valent�a en batalla. Mi padre los encontr� cuando apenas eran unos cachorros. */
== BNALIA25 @979117 /* Fascinante. Me pregunto si esta conexi�n especial con los animales es algo que se puede aprender o si es un don innato. �Qu� opinas al respecto?  */
== P_BFal25 @979118 /* Creo que todos tenemos la capacidad de conectarnos con los animales, pero algunos poseen un v�nculo m�s profundo y natural. Para m�, ha sido una combinaci�n de estudio, pr�ctica y amor por la naturaleza. Gracias a mi madre, he dedicado tiempo y esfuerzo para comprender su lenguaje y su comportamiento, lo cual ha fortalecido nuestro lazo y me ha permitido desarrollar esta habilidad innata. */
== BNALIA25 @979119 /* Un don extraordinario, Fall. Me hubiera gustado... conocer a tu madre. He o�do que los selu'taar se encuentran entre los usuarios arcanos m�s poderosos de todo Faer�n. */
== P_BFal25 @979120 /* Creo que te llevar�as bien con ella, Nalia. Espero... espero que tengas la oportunidad de conocerla. Espero... espero poder hallarla. */
== BNALIA25 @979121 /* Espero lo mismo, querida amiga. Ten por seguro que cuentas con mi asistencia en tu empresa. */
== P_BFal25 @979122 /* Gracias, Nalia. De verdad. */
EXIT 

// VALYGAR

CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallValygar1","GLOBAL",0)~ THEN BVALYG25 P_FallValygar1
@979123 /* Fall, tengo una pregunta que me ha estado intrigando. Tu madre es una poderosa hechicera elfa, �verdad? Me pregunto c�mo te sientes al respecto de la magia, considerando tu linaje y tus lazos familiares. */
DO ~SetGlobal("P_FallValygar1","GLOBAL",1)~
== P_BFal25 @979124 /* �A qu� te refieres, Valygar? Siento... que hay algo que no quieres decir por temor a ser... �ofensivo? */
== BVALYG25 @979125 /* Lo... lamento, Fall. S� que tu madre est� desaparecida... pero, �no crees que es as� por que ella lo quiso? La magia... es un asunto complejo. Y veo que t� est�s ajena a ese tipo de tretas. */
== P_BFal25 @979126 /* �Tretas? En-entiendo, Valygar. Yo... admito que he pensado en ello. */
== P_BFal25 @979127 /* No estoy del todo segura en la corrupci�n innata de la magia arcana. Aunque he sido testigo de primera mano de lo que son capaces de hacer algunos hechiceros malvados. */
== P_BFal25 @979128 /* Pero no creo que sea el caso de mi madre. No... ella es amable. Ama la naturaleza. Am� a mi padre, quien era un humano. No, no puedo aceptar que ella se haya corrompido por la magia, Valygar. Que algo as� te haya pasado a ti, no quiere decir que est� destinado para todos. */
== BVALYG25 @979129 /* Es verdad, Fall. Lamento si te ofend� con mis insinuaciones. La magia es... un tema complicado para m�. */
== BVALYG25 @979130 /* Quiero que sepas que har� lo posible para estar a tu lado en tu b�squeda personal, Fall. */
== P_BFal25 @979131 /* Gracias, Valygar. Eres un buen hombre. */
EXIT

// VICONIA ALL

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallViconia1","GLOBAL",0)~ THEN P_BFal25 P_FallViconia1
@979132 /* Viconia... he visto que no tienes ning�n aprecio a Lolth. Creo que- */
DO ~SetGlobal("P_FallViconia1","GLOBAL",1)~
== BVICON25 @979133 /* S� a d�nde vas con esto, tu'rilthiir. Quieres encontrar un punto en com�n entre nosotras. Y no, no tengo simpat�a por las ara�as. */
== P_BFal25 @979134 /* Entiendo, pues yo- */
== BVICON25 @979135 /* Eso no quiere decir que seamos aliadas en nada, ligrr. No me compadezco de tu causa, ni tampoco tengo obligaci�n a unirme a ella. */
== P_BFal25 @979136 /* No espero cambiar tus creencias ni exigir tu lealtad, Viconia. */
== BVICON25 @979137 /* Veremos si tus palabras se sostienen en la pr�ctica. */
== P_BFal25 @979138 /* Veremos... */
EXIT


// Sarevok
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallSarevokToB1","GLOBAL",0)~ THEN BSAREV25 P_FallSarevokToB3
@979144 /* �Por qu� me observas tanto, ni�a? En tu lugar tendr�a m�s cuidado en donde se posan tus ojos. */
DO ~SetGlobal("P_FallSarevokToB1","GLOBAL",1)~
== P_BFal25 @979145 /* Oh, lo lamento, Sarevok. Es s�lo que... no puedo creer que seas hermano de <CHARNAME>. */
== BSAREV25 @979146 /* Venimos del mismo padre. Aunque ya no tenga la esencia de Bhaal, por las venas de <CHARNAME> corre la misma sangre que la m�a. */
== P_BFal25 @979147 /* Debes odiar a tu padre, �no? */
== BSAREV25 @979148 /* �Odiar? No creo en esas estupideces, cr�a. El tiempo que uno pierde en banales sentimientos, es tiempo que uno no recupera. */
== BSAREV25 @979149 /* Y el tiempo... es esencial. */
== P_BFal25 @979150 /* En eso coincidimos. Vaya, despu�s de todo, s� hay algo de <CHARNAME> en ti. */
== BSAREV25 @979151 /* Hmpf. Mejor deja de hablarme, �quieres? Hay trabajo por hacer. */
EXIT

/*
// YOSHIMO 

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallYoshimo1","GLOBAL",0)~ THEN P_BFall P_FallYoshimo1
@979139 /* �Por qu� te alejas de mis lobos cada vez que se encuentran entre nosotros, Yoshimo? Te lo aseguro, son inofensivos. */
DO ~SetGlobal("P_FallYoshimo1","GLOBAL",1)~
== BYOSHIM @979140 /* Oh, Fall. No es que Yoshimo tenga miedo de ellos. Y con respecto a "inofensivos", pues... digamos que he visto lo que hacen con aquellos a los que comandas atacar. */
== P_BFall @979141 /* �Ja! �Acaso los guerreros en Kara-tur no matan? Mis lobos y yo peleamos por una causa justa. El combate, a veces, es inevitable. */
== BYOSHIM @979142 /* Estamos de acuerdo en eso, querida Fall. Sin embargo, eso no quita que no quiera estar todo el tiempo cerca de tus... "cachorros". */
== P_BFall @979143 /* �Vamos, Yoshimo! Ya ver�s que buenos son ellos si tan s�lo los acaricias un poco. Hmm, bueno, supongo que acariciar lobos no es para todo el mundo. */
EXIT
*/