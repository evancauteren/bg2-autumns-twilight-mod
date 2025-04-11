BEGIN P_BFall 

// AERIE 
// Colocar GLOBAL sobre Quest1 finalizada
CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallAerie1","GLOBAL",0)~ THEN P_BFall P_FallAerie1
@9790 /* Aerie, hace tiempo que noto que intentas establecer conversaci�n conmigo. Puedes hablarme con confianza, mi querida amiga. */
DO ~SetGlobal("P_FallAerie1","GLOBAL",1)~
== BAERIE @9791 /* �Fall! Y-yo... s�, es verdad. */
== P_BFall @9792 /* �Y bien? �Qu� sucede? Puedes hablarme de lo que sea. */
== BAERIE @9793 /* P-pues, Fall... no quiero que pienses mal de m�. Por haber estado en el circo. */
== P_BFall @9794 /* �A qu� te refieres? */
== BAERIE @9795 /* Lo que has hecho por los animales. Ha sido un acto noble. */
== P_BFall @9796 /* Entiendo. �No crees que habr� afectado de manera negativa el negocio de tu t�o Quayle? */
== BAERIE @9797 /* No, Fall. Quayle est� en contra de las jaulas tambi�n. Estoy seguro de que habr�a hecho algo al respecto por su cuenta. Pero sucedi� lo de Kalah. */
== P_BFall @9798 /* Es verdad. Pero es mejor tomar el asunto como propio cuando denotas injusticia, �no lo crees? */
== BAERIE @9799 /* S-s�, �tienes raz�n! */
== P_BFall @97910 /* Me alegra que pensemos lo mismo, Aerie. El hecho de que hayas estado en el circo no me hace pensar mal de ti. */
== P_BFall @97911 /* Tu coraz�n est� en el lugar correcto... y eso es suficiente para que te hayas ganado mi respeto. */
== BAERIE @97912 /* Gracias, Fall. Me alegra saber que cuento contigo. */
EXIT

// ANOMEN

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_Fallomen1","GLOBAL",0)~ THEN P_BFall P_Fallomen1
@97913 /* Los guerreros de la Orden son muy diferentes a los exploradores australes. */
DO ~SetGlobal("P_Fallomen1","GLOBAL",1)~
== BANOMEN @97914 /* �Por qu� lo dices, Fall? Helm dispone de muchos bravos soldados en sus filas. Imagino que los exploradores de tu hogar han de envidiarnos. */
== P_BFall @97915 /* Hm... no estoy tan segura. Te he visto combatir a ti. Y he visto combatir a mi padre. No tiene nada que envidiarte. */
== BANOMEN @97916 /* Lamento si lo que dije te ofendi�, milady. Estoy seguro de que tu padre fue un buen guerrero. */
== P_BFall @97917 /* Lo fue, Anomen. Su manejo con la ballesta era loable. Tuve el honor de aprender el arte de la guerra con �l. */
== BANOMEN @97918 /* Tu entrenamiento ha rendido frutos. */
== P_BFall @97919 /* Viniendo de ti, es todo un halago. Gracias, Anomen. */
EXIT

// CERND

CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallCernd1","GLOBAL",0)~ THEN BCERND P_FallCernd1
@97920 /* Fall, tu aprecio por los animales no es nada menos que inspirador si me lo permites decir. Luchas con la fiereza de una loba que har�a todo lo posible por proteger a sus cr�as. */
DO ~SetGlobal("P_FallCernd1","GLOBAL",1)~
== P_BFall @97921 /* Somos todos hijos de esta tierra, Cernd. Es lo menos que puedo hacer. A�n si utilizo las herramientas de un humano. */
== BCERND @97922 /* Entiendo que a veces te encuentres en una dicotom�a respecto a los hombres. */
== BCERND @97923 /* Yo mismo he sido testigo de c�mo la mano del hombre es capaz de crear... pero tambi�n de destruir. El fuego tiene la cualidad de salvar y destruir. Tal es el hombre. */
== P_BFall @97924 /* Me he enfrentado a muchos cazadores furtivos. Humanos en su mayor�a. Su ambici�n es capaz de engullir bosques enteros. */
== P_BFall @97925 /* Pero, por el otro lado, la persona que m�s he admirado era un humano. Mi padre. */
== BCERND @97926 /* Un poderoso Se�or de las Bestias, tengo entendido. */
== P_BFall @97927 /* S�. �l encontr� a Daren y Sinna cuando a�n eran unos lobitos. Fue... realmente doloroso verlo morir. */
== BCERND @97928 /* Lamento que hayas tenido que atestiguar eso. La naturaleza a veces puede ser muy cruel, pues es salvaje como un tornado, pero tambi�n puede ser afable como un c�firo. */
== P_BFall @97929 /* Tal vez, Cernd... ser� mejor que dejemos la conversaci�n para otro momento. Ahora mismo, el recuerdo de mi padre agita mi coraz�n. */
== BCERND @97930 /* Que as� sea, Fall. */
EXIT

// EDWIN

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallEdwin1","GLOBAL",0)~ THEN P_BFall P_FallEdwin1
@97931 /* �Te he visto, Edwin! Has estado viendo mi t�nica desde hace ya mucho tiempo. �Qu� pretendes? */
DO ~SetGlobal("P_FallEdwin1","GLOBAL",1)~
== BEDWIN @97932 /* �Por qu� te molesta, semielfa? Que los ojos de Edwin Odesseiron se posen en ti deber�a ser, cuando menos, halagador. */
== P_BFall @97933 /* �Halagador? No tienes ese porte de nobleza que tanto te esfuerzas por esbozar, mago. S� que tus intenciones son siempre turbias. */
== BEDWIN @97934 /* (�De qu� habla esta ni�a?) Hmpf, no tengo intenciones extra�as para contigo, mujer. Puede que tengas un cierto atractivo, pero tu t�nica es lo que en s� me ha llamado la atenci�n. */
== P_BFall @97935 /* �Y qu� con eso? */
== BEDWIN @97936 /* Vamos... es artesan�a de los Altos Elfos, �no es as�? Ostentas un poder arcano, pese a que act�es todo el tiempo como una cabeza de hojalata. */
== BEDWIN @97937 /* O puede que simplemente te imagine sin ella, �sabes? (S�, incluso una semielfa puede ser atractiva para el gran Edwin Odesseiron). */
== P_BFall @97938 /* Sabes que al ser parte elfa puedo oirte murmurar, �no? */
== BEDWIN @97939 /* �Q-qu�? (Hmpf, uno ya no puede ni pensar tranquilo) De todas formas, mujer, no me atraes. No me dignar�a a estar con alguien de sangre... contaminada. */
== P_BFall @97940 /* �De verdad? Pues, eso es un alivio. Ahora, aleja tus ojos de mi t�nica, �quieres? */
EXIT

// Haer-Dalis

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallHaerDalis1","GLOBAL",0)~ THEN BHAERDA P_FallHaerDalis1
@97941 /* Ah, pero si es la adorada ave frutal. �Necesitas que el bueno de Haer-Dalis te dedique una canci�n? */
DO ~SetGlobal("P_FallHaerDalis1","GLOBAL",1)~
== P_BFall @97942 /* Hm... no, tiefling. De hecho, eres t� el que se acerc� a m�. �Necesitas algo? */
== BHAERDA @97943 /* Pues, he notado que a veces emanas un aura de tristeza. Como ahora. �Nada como una buena poes�a para levantar los �nimos! */
== P_BFall @97944 /* Te lo agradezco, Haer-Dalis... pero estoy bien. No necesito-- */
== BHAERDA @97945 /* En la tristeza el ave roja vuela,
Pero el buen tiefling su canci�n desvela,
Melod�as que emergen del coraz�n,
Un eco de amor, de arte y devoci�n. */
== P_BFall @97946 /* Ah, veo que ya la ten�as compuesta de antes. No es nece--- */
== BHAERDA @97947 /* Sus notas susurran un misterio oculto,
Un canto de almas que busca el tumulto,
En cada verso se alza su esencia,
Transformando dolor en pura presencia. */
== P_BFall @97948 /* �Por qu� tanto �nfasis en la tristeza? Yo no me siento tris-- */
== BHAERDA @97949 /* El ave roja, s�mbolo de pesar,
Encuentra consuelo en esta canci�n alentar,
El tiefling habilidoso, su voz despliega,
Un regalo de m�sica, magia que entrega. */
== P_BFall @97950 /* Bueno, eso ha sido hermo-- */
== BHAERDA @97951 /* As�, en la tristeza brota la poes�a,
El arte que alivia y la alma gu�a,
El ave roja denota tristeza,
Pero el buen tiefling compone belleza. */
== P_BFall @97952 /* *se queda en silencio* */
== BHAERDA @97953 /* �Y bien, qu� te ha parecido mi canci�n, ave frutal? */
== P_BFall @97954 /* (Oh, ya ha terminado al fin) Pues, �ha sido hermosa, Haer-Dalis! */
== BHAERDA @97955 /* Puedo cantarte otra si quieres. */
== P_BFall @97956 /* �Oh, no! Mira la hora... es momento de entrenar con mi ballesta. Quiz�s en la pr�xima, �s�? �Adi�s! */
== BHAERDA @97957 /* �Claro que s�! Vuela alto, avecilla frutal. */
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallImoen1","GLOBAL",0)~ THEN P_BFall P_FallImoen1
@97958 /* Imoen, �alguna vez has ido a Imnescar? Sabes, es famosa por su cultivo de frutas. */
DO ~SetGlobal("P_FallImoen1","GLOBAL",1)~
== IMOEN2J @97959 /* No, no conozco Imnescar. De hecho, mis viajes se limitan a los lugares a los que he ido con <CHARNAME>. */
== P_BFall @97960 /* �Te gustar�a ir alg�n d�a? Creo que podemos hacer un buen grupo de viaje entre t�, yo, Daren y Sinna. �Qu� te parece? */
== IMOEN2J @97961 /* Eso suena bien, Fall. Tus cachorros me caen bien. Sinna es muy dulce y en�rgica. */
== P_BFall @97962 /* �Qu� hay de Daren? */
== IMOEN2J @97963 /* Oh... hmm me pone un poco nerviosa a decir verdad. Su mirada es penetrante. Parece que en cualquier momento te va a comer las piernas, �sabes? */
== P_BFall @97964 /* �Ja! No te dejes enga�ar. Daren es un dulce lobo. S�lo debes acariciar su lomo durante unos instantes y te ganar�s su coraz�n. */
== IMOEN2J @97965 /* Pues... creo que prefiero a Sinna. �Sin �nimos de ofender! */
== P_BFall @97966 /* No te preocupes. Estoy segura de que con el tiempo, te llevar�s bien con Daren. No son tan diferentes ustedes dos, �sabes? */
EXIT

// JAHEIRA 

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallJaheira1","GLOBAL",0)~ THEN BJAHEIR P_FallJaheira1
@97967 /* Habr�as sido una buena arpista, Fall. Es una l�stima que no te haya conocido antes. */
DO ~SetGlobal("P_FallJaheira1","GLOBAL",1)~
== P_BFall @97968 /* �Arpista? He o�do hablar de ellos, pero no estoy segura de qu� es lo que hacen. */
== BJAHEIR @97969 /* Los arpistas se encargan de mantener el equilibrio entre la Naturaleza y la Civilizaci�n. Siempre que hay un evento importante en el mundo, all� est�n, vigilantes de que no ocasione el caos y el conocimiento general no se pierda. */
== P_BFall @97970 /* Ya veo. Una especie de organizaci�n que preserva la memoria. Es... interesante. Aunque, a decir verdad, prefiero volver a los bosques apenas termine mis asuntos en Amn. */
== BJAHEIR @97971 /* Comprendo, querida. La naturaleza es atractiva para aquellos que son como nosotras. Creo... que incluso yo har�a lo mismo. */
== P_BFall @97972 /* �Y qu� te detiene, Jaheira? */
== BJAHEIR @97973 /* Pues... supongo que lo mismo que a ti, Fall. Asuntos pendientes. Irenicus, <CHARNAME>. A�n queda mucho trabajo por hacer.  */
== P_BFall @97974 /* Es verdad. Supongo que lo sabremos cuando hayamos llegado all�, �no lo crees? */
== BJAHEIR @97975 /* Es verdad, Fall. Es verdad...  */
EXIT

// JAN ALL
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallJan1","GLOBAL",0)~ THEN BJAN P_FallJan1
@97976 /* Te lo digo, Fall. Los nabos de la cosecha Jansen son tan deliciosos como aquellas frutas que describes de Imnescar. */
DO ~SetGlobal("P_FallJan1","GLOBAL",1)~
== P_BFall @97977 /* Es probable, Jan. Sin embargo, no creo que exista un comercio tan grande de nabos como lo existe con las frutas en el sur de Amn. Ver�s, ten�a un primo... bueno, en realidad no era un primo, sino que era Moco Manzana, el primo de todos. Era un mediano p�caro que gustaba robar semillas de melones para usarlos en sus experimentos alcoh�licos en su af�n por crear una bebida s�per dulce que habr�a de embriagar a cualquiera con s�lo su aroma. */
== BJAN @97978 /* Entiendo. Golodon quiso hacer algo similar con-- */
== P_BFall @97979 /* La cuesti�n es que Moco, de alguna manera, logr� crear dicha bebida. Pero no obtuvo el resultado deseado. Su pony bebi� del brebaje preliminar que hab�a creado y se volvi� loco. Obtuvo una fuerza similar a la de un toro, �sabes? O puede que a la de un grifo. Hm, lamento mencionar a los grifos, �sabes? S� que no has tenido buena experiencia con ellos. */
== BJAN @97980 /* Bueno, eso es cierto. Una vez un grifo-- */
== P_BFall @97981 /* Bueno, la cuesti�n es que este pony, el cual se llamaba Gran Dul�n. �Te hab�a mencionado que se llamaba Gran Dul�n? Es un juego de palabra, �sabes? �Grandul�n! Es muy gracioso si te pones a pensar. Bueno, la cuesti�n es que Gran Dul�n entr� en un estado de furia y comenz� a devorar todo el pasto que se cruzaba, con tal de aliviar el sabor dulz�n que hab�a ganado gracias a la bebida de Moco. */
== BJAN @97982 /* S�. Eso me recuerda a-- */
== P_BFall @97983 /* Nos tom� tres semanas enteras de tr�fico de pasto de los Bosques de Mir para que se calme. Yo era muy ni�a en esa �poca pero lo recuerdo con claridad. Ese a�o perdimos muchas libras de peras y limones en compensaci�n a los habitantes de Mir para que nos dejaran de ver con mala cara por el consumo excesivo que tuvo Gran Dul�n con su pasto. Fue todo un caos, �sabes? */
== BJAN @97984 /* Ehm... creo que es hora de que me ponga a trabajar sobre... ehm, uno de mis inventos, �s�, Fall? */
== P_BFall @97985 /* Oh, �no quieres saber c�mo sigue la historia, Jan? Te aseguro que es entretenida. */
== BJAN @97986 /* Hum... no, creo que he tenido suficiente, gracias. */
== BJAN @97987 /* *suspiro* (Con que as� se siente, �eh?) */
EXIT

// KELDORN

CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallKeldorn1","GLOBAL",0)~ THEN BKELDOR P_FallKeldorn1
@97988 /* Fall, �c�mo te encuentras? He visto que �ltimamente has estado muy dubitativa. */
DO ~SetGlobal("P_FallKeldorn1","GLOBAL",1)~
== P_BFall @97989 /* Sir Keldorn, �alguna vez ha pensado en lo que hay m�s all� de nuestra existencia mortal? */
== BKELDOR @97990 /* Una duda que ha muchos nos ha carcomido. Sin embargo, te responder� lo que yo creo: como palad�n, creo en la recompensa eterna de servir fielmente a Torm. */
== P_BFall @97991 /* Debe ser reconfortante tener esa convicci�n. Por mi parte, encuentro consuelo en los ciclos de la naturaleza y en la interconexi�n de todos los seres vivos. */
== BKELDOR @97992 /* En efecto, la belleza de la creaci�n es innegable. Podemos diferir en nuestras creencias, pero hay sabidur�a en ambas perspectivas. */
== P_BFall @97993 /* Aprecio sus palabras, mi se�or. */
== BKELDOR @97994 /* Siempre es un placer, Fall. */
EXIT


// KORGAN 

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallKorgan1","GLOBAL",0)~ THEN P_BFall P_FallKorgan1
@97995 /* *susurro* Buen trabajo, Daren. Buen trabajo, Sinna. */
DO ~SetGlobal("P_FallKorgan1","GLOBAL",1)~
== BKORGAN @97996 /* Fall, why ye waste yer time with beasts and critters? A true warrior seeks glory in battle, not in the company of furry creatures. */
== P_BFall @97997 /* Korgan, animals are part of the intricate web of life. They are loyal allies and companions. They deserve our respect and protection. */
== BKORGAN @97998 /* Bah! I'll stick to me axe and me tankard of ale. No need for cuddly companions or the whims of nature. */
== P_BFall @97999 /* Why do you harbor such disdain for animals? They possess a purity and loyalty that is often absent in the hearts of men. */
== BKORGAN @979100 /* Animals, ye say? Bah! They're nothing but mindless creatures, driven by instinct and survival. */
== P_BFall @979101 /* Animals are not mere beasts. They possess an innate wisdom, attuned to the rhythms of nature. They teach us about harmony and adaptability. */
== BKORGAN @979102 /* Hmpf... Wisdom? Bah! I prefer the straightforward path of steel and blood. Nature's teachings won't protect me when enemies are closing in. */
EXIT

// MAZZY

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallMazzy1","GLOBAL",0)~ THEN P_BFall P_FallMazzy1
@979103 /* Mazzy, tus habilidades con el arco corto son impresionantes. Me alegra tener a alguien valiente y justo como compa�era de batalla. */
DO ~SetGlobal("P_FallMazzy1","GLOBAL",1)~
== BMAZZY @979104 /* Gracias, Fall. Tambi�n admiro tu destreza con la ballesta y c�mo cuidas de tus lobos. Los animales son una parte especial de la naturaleza y debemos protegerlos. */
== P_BFall @979105 /* Los bosques son nuestro hogar y debemos preservarlos. �Alguna vez has sentido una conexi�n profunda con la naturaleza durante tus viajes? */
== BMAZZY @979106 /* S�, hay una paz y serenidad que encuentro en la naturaleza. Me ayuda a recordar el prop�sito de mi deber como Espada de Arvoreen: proteger a los inocentes y preservar la armon�a. */
== P_BFall @979107 /* Buenas palabras, querida amiga. Tu convicci�n no hace m�s que alimentar la m�a. */
== BMAZZY @979108 /* Creo que nuestra fe es lo que nos mantiene firmes en nuestro prop�sito, Fall. Vamos, continuemos. */
EXIT


// MINSC 

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallMinsc1","GLOBAL",0)~ THEN P_BFall P_FallMinsc1
@979109 /* Me encanta tu entusiasmo, Minsc. Siempre est�s dispuesto a enfrentarte a los peligros con valent�a. Y Bub�, ese h�mster tuyo, siempre tiene buenos consejos, �no es as�? */
DO ~SetGlobal("P_FallMinsc1","GLOBAL",1)~
== BMINSC @979110 /* �As� es, Fall! Bub� es mi compa�ero de confianza, el m�s sabio de todos los h�msters. A veces me susurra al o�do y me dice qu� hacer. �Es mi gu�a peludo! */
== P_BFall @979111 /* Esa conexi�n que tienes con Bub� es �nica, Minsc. Siempre me hace sonre�r veros interactuar. */
== BMINSC @979112 /* �Oh, Fall, no tienes idea de las aventuras que hemos vivido! �Juntos hemos enfrentado ara�as gigantes, hombres-lobo y toda clase de monstruos! �Somos invencibles! */
== P_BFall @979113 /* Impresionante. �Sigamos adelante, valientes exploradores, en busca de nuevas aventuras! */
== BMINSC @979114 /* �S�! �Minsc y Bub� est�n listos! *chillido* */
EXIT

// NALIA

CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallNalia1","GLOBAL",0)~ THEN BNALIA P_FallNalia1
@979115 /* Fall, me he estado preguntando sobre tus compa�eros animales, Daren y Sinna. �C�mo es que los invocas? A simple vista, parecen hechizos de conjuraci�n. */
DO ~SetGlobal("P_FallNalia1","GLOBAL",1)~
== P_BFall @979116 /* Ah, Nalia, mis leales lobos, Daren y Sinna, son m�s que simples compa�eros de cuatro patas para m�. Son parte de mi esp�ritu y de mi conexi�n con la naturaleza. A trav�s de la magia de convocaci�n, puedo llamarlos a mi lado y compartir nuestra fuerza y valent�a en batalla. Mi padre los encontr� cuando apenas eran unos cachorros. */
== BNALIA @979117 /* Fascinante. Me pregunto si esta conexi�n especial con los animales es algo que se puede aprender o si es un don innato. �Qu� opinas al respecto?  */
== P_BFall @979118 /* Creo que todos tenemos la capacidad de conectarnos con los animales, pero algunos poseen un v�nculo m�s profundo y natural. Para m�, ha sido una combinaci�n de estudio, pr�ctica y amor por la naturaleza. Gracias a mi madre, he dedicado tiempo y esfuerzo para comprender su lenguaje y su comportamiento, lo cual ha fortalecido nuestro lazo y me ha permitido desarrollar esta habilidad innata. */
== BNALIA @979119 /* Un don extraordinario, Fall. Me hubiera gustado... conocer a tu madre. He o�do que los selu'taar se encuentran entre los usuarios arcanos m�s poderosos de todo Faer�n. */
== P_BFall @979120 /* Creo que te llevar�as bien con ella, Nalia. Espero... espero que tengas la oportunidad de conocerla. Espero... espero poder hallarla. */
== BNALIA @979121 /* Espero lo mismo, querida amiga. Ten por seguro que cuentas con mi asistencia en tu empresa. */
== P_BFall @979122 /* Gracias, Nalia. De verdad. */
EXIT 

// VALYGAR

CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallValygar1","GLOBAL",0)~ THEN BVALYGA P_FallValygar1
@979123 /* Fall, tengo una pregunta que me ha estado intrigando. Tu madre es una poderosa hechicera elfa, �verdad? Me pregunto c�mo te sientes al respecto de la magia, considerando tu linaje y tus lazos familiares. */
DO ~SetGlobal("P_FallValygar1","GLOBAL",1)~
== P_BFall @979124 /* �A qu� te refieres, Valygar? Siento... que hay algo que no quieres decir por temor a ser... �ofensivo? */
== BVALYGA @979125 /* Lo... lamento, Fall. S� que tu madre est� desaparecida... pero, �no crees que es as� por que ella lo quiso? La magia... es un asunto complejo. Y veo que t� est�s ajena a ese tipo de tretas. */
== P_BFall @979126 /* �Tretas? En-entiendo, Valygar. Yo... admito que he pensado en ello. */
== P_BFall @979127 /* No estoy del todo segura en la corrupci�n innata de la magia arcana. Aunque he sido testigo de primera mano de lo que son capaces de hacer algunos hechiceros malvados. */
== P_BFall @979128 /* Pero no creo que sea el caso de mi madre. No... ella es amable. Ama la naturaleza. Am� a mi padre, quien era un humano. No, no puedo aceptar que ella se haya corrompido por la magia, Valygar. Que algo as� te haya pasado a ti, no quiere decir que est� destinado para todos. */
== BVALYGA @979129 /* Es verdad, Fall. Lamento si te ofend� con mis insinuaciones. La magia es... un tema complicado para m�. */
== BVALYGA @979130 /* Quiero que sepas que har� lo posible para estar a tu lado en tu b�squeda personal, Fall. */
== P_BFall @979131 /* Gracias, Valygar. Eres un buen hombre. */
EXIT

// VICONIA ALL

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallViconia1","GLOBAL",0)~ THEN P_BFall P_FallViconia1
@979132 /* Viconia... he visto que no tienes ning�n aprecio a Lolth. Creo que- */
DO ~SetGlobal("P_FallViconia1","GLOBAL",1)~
== BVICONI @979133 /* S� a d�nde vas con esto, tu'rilthiir. Quieres encontrar un punto en com�n entre nosotras. Y no, no tengo simpat�a por las ara�as. */
== P_BFall @979134 /* Entiendo, pues yo- */
== BVICONI @979135 /* Eso no quiere decir que seamos aliadas en nada, ligrr. No me compadezco de tu causa, ni tampoco tengo obligaci�n a unirme a ella. */
== P_BFall @979136 /* No espero cambiar tus creencias ni exigir tu lealtad, Viconia. */
== BVICONI @979137 /* Veremos si tus palabras se sostienen en la pr�ctica. */
== P_BFall @979138 /* Veremos... */
EXIT

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


// Alendir
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Alen",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallAlendir1","GLOBAL",0)~ THEN P_BAlen P_FallAlendir1
@979206 /* Caraneth, �c�mo es que has terminado con esta panda de inadaptados? Esperaba mucho m�s de ti. */
DO ~SetGlobal("P_FallAlendir1","GLOBAL",1)~
== P_BFall @979207 /* �Alendir! Bueno, s� que no es el t�pico grupo de aventureros, �pero hemos logrado mucho juntos! */
== P_BAlen @979208 /* No puedo objetar eso. Icelock, Morgrath, Skel'Tharant. Sus victorias han sido impresionantes. Quiz�s...  */
== P_BFall @979209 /* �Quiz�s est�s equivocado? */
== P_BAlen @979210 /* *carraspeo* Bueno, eso el tiempo lo dir�. Pero, hasta ahora, <CHARNAME> ha demostrado ser de un valor incalculable. La sangre divina es innegable. */
== P_BFall @979211 /* No creo que solo sea eso, Alendir. Pero, entiendo lo que quieres decir. Todos cometemos juicios err�neos alguna vez. */
EXIT 

// CHO'NUJA - Good Fall
CHAIN
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("P_Chon",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallChon1","GLOBAL",0)~ THEN P_BFall P_FallChon1
@979212 /* Nunca hab�a visto a una criatura comer tantos insectos como t�, Cho. No creas que no te veo cuando usas esa lengua extra�a que tienes para capturar varias moscas a la vez. */
DO ~SetGlobal("P_FallChon1","GLOBAL",1)~
== P_BChon @979213 /* �Qu� puedo decir, Fall? Tu mundo tiene una gran variedad de comida que dif�cilmente exist�a en Dreach-naga. */
== P_BFall @979214 /* Ser�as un gran controlador de plagas. Podr�amos ganar mucho dinero. Bueno, no es que el dinero me motive, pero podr�amos ayudar a muchos con eso. */
== P_BChon @979215 /* �Control de plagas? */
== P_BFall @979216 /* �S�! Muchos granjeros suelen tener problemas con plagas de langostas o gusanos. �Podr�as manejar algo as�? */
== P_BChon @979217 /* Ser�a una actividad interesante, cuanto menos. �Y pagar�an por eso? No puedo creerlo. */
== P_BFall @979218 /* As� es, Cho. Aunque algo me dice que lo har�as gratis. */
== P_BChon @979219 /* Por supuesto. Comer tan delicioso manjar ya de por s� es un gran pago. */
== P_BFall @979220 /* Bueno, ya veremos ad�nde llegamos con estas conversaciones, mi buen Cho. */
EXIT
