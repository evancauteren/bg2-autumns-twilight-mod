BEGIN P_BFall 

// AERIE 
// Colocar GLOBAL sobre Quest1 finalizada
CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallAerie1","GLOBAL",0)~ THEN P_BFall P_FallAerie1
@9790 /* Aerie, hace tiempo que noto que intentas establecer conversación conmigo. Puedes hablarme con confianza, mi querida amiga. */
DO ~SetGlobal("P_FallAerie1","GLOBAL",1)~
== BAERIE @9791 /* ¡Fall! Y-yo... sí, es verdad. */
== P_BFall @9792 /* ¿Y bien? ¿Qué sucede? Puedes hablarme de lo que sea. */
== BAERIE @9793 /* P-pues, Fall... no quiero que pienses mal de mí. Por haber estado en el circo. */
== P_BFall @9794 /* ¿A qué te refieres? */
== BAERIE @9795 /* Lo que has hecho por los animales. Ha sido un acto noble. */
== P_BFall @9796 /* Entiendo. ¿No crees que habrá afectado de manera negativa el negocio de tu tío Quayle? */
== BAERIE @9797 /* No, Fall. Quayle está en contra de las jaulas también. Estoy seguro de que habría hecho algo al respecto por su cuenta. Pero sucedió lo de Kalah. */
== P_BFall @9798 /* Es verdad. Pero es mejor tomar el asunto como propio cuando denotas injusticia, ¿no lo crees? */
== BAERIE @9799 /* S-sí, ¡tienes razón! */
== P_BFall @97910 /* Me alegra que pensemos lo mismo, Aerie. El hecho de que hayas estado en el circo no me hace pensar mal de ti. */
== P_BFall @97911 /* Tu corazón está en el lugar correcto... y eso es suficiente para que te hayas ganado mi respeto. */
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
== BANOMEN @97914 /* ¿Por qué lo dices, Fall? Helm dispone de muchos bravos soldados en sus filas. Imagino que los exploradores de tu hogar han de envidiarnos. */
== P_BFall @97915 /* Hm... no estoy tan segura. Te he visto combatir a ti. Y he visto combatir a mi padre. No tiene nada que envidiarte. */
== BANOMEN @97916 /* Lamento si lo que dije te ofendió, milady. Estoy seguro de que tu padre fue un buen guerrero. */
== P_BFall @97917 /* Lo fue, Anomen. Su manejo con la ballesta era loable. Tuve el honor de aprender el arte de la guerra con él. */
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
@97920 /* Fall, tu aprecio por los animales no es nada menos que inspirador si me lo permites decir. Luchas con la fiereza de una loba que haría todo lo posible por proteger a sus crías. */
DO ~SetGlobal("P_FallCernd1","GLOBAL",1)~
== P_BFall @97921 /* Somos todos hijos de esta tierra, Cernd. Es lo menos que puedo hacer. Aún si utilizo las herramientas de un humano. */
== BCERND @97922 /* Entiendo que a veces te encuentres en una dicotomía respecto a los hombres. */
== BCERND @97923 /* Yo mismo he sido testigo de cómo la mano del hombre es capaz de crear... pero también de destruir. El fuego tiene la cualidad de salvar y destruir. Tal es el hombre. */
== P_BFall @97924 /* Me he enfrentado a muchos cazadores furtivos. Humanos en su mayoría. Su ambición es capaz de engullir bosques enteros. */
== P_BFall @97925 /* Pero, por el otro lado, la persona que más he admirado era un humano. Mi padre. */
== BCERND @97926 /* Un poderoso Señor de las Bestias, tengo entendido. */
== P_BFall @97927 /* Sí. Él encontró a Daren y Sinna cuando aún eran unos lobitos. Fue... realmente doloroso verlo morir. */
== BCERND @97928 /* Lamento que hayas tenido que atestiguar eso. La naturaleza a veces puede ser muy cruel, pues es salvaje como un tornado, pero también puede ser afable como un céfiro. */
== P_BFall @97929 /* Tal vez, Cernd... será mejor que dejemos la conversación para otro momento. Ahora mismo, el recuerdo de mi padre agita mi corazón. */
== BCERND @97930 /* Que así sea, Fall. */
EXIT

// EDWIN

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallEdwin1","GLOBAL",0)~ THEN P_BFall P_FallEdwin1
@97931 /* ¡Te he visto, Edwin! Has estado viendo mi túnica desde hace ya mucho tiempo. ¿Qué pretendes? */
DO ~SetGlobal("P_FallEdwin1","GLOBAL",1)~
== BEDWIN @97932 /* ¿Por qué te molesta, semielfa? Que los ojos de Edwin Odesseiron se posen en ti debería ser, cuando menos, halagador. */
== P_BFall @97933 /* ¿Halagador? No tienes ese porte de nobleza que tanto te esfuerzas por esbozar, mago. Sé que tus intenciones son siempre turbias. */
== BEDWIN @97934 /* (¿De qué habla esta niña?) Hmpf, no tengo intenciones extrañas para contigo, mujer. Puede que tengas un cierto atractivo, pero tu túnica es lo que en sí me ha llamado la atención. */
== P_BFall @97935 /* ¿Y qué con eso? */
== BEDWIN @97936 /* Vamos... es artesanía de los Altos Elfos, ¿no es así? Ostentas un poder arcano, pese a que actúes todo el tiempo como una cabeza de hojalata. */
== BEDWIN @97937 /* O puede que simplemente te imagine sin ella, ¿sabes? (Sí, incluso una semielfa puede ser atractiva para el gran Edwin Odesseiron). */
== P_BFall @97938 /* Sabes que al ser parte elfa puedo oirte murmurar, ¿no? */
== BEDWIN @97939 /* ¿Q-qué? (Hmpf, uno ya no puede ni pensar tranquilo) De todas formas, mujer, no me atraes. No me dignaría a estar con alguien de sangre... contaminada. */
== P_BFall @97940 /* ¿De verdad? Pues, eso es un alivio. Ahora, aleja tus ojos de mi túnica, ¿quieres? */
EXIT

// Haer-Dalis

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallHaerDalis1","GLOBAL",0)~ THEN BHAERDA P_FallHaerDalis1
@97941 /* Ah, pero si es la adorada ave frutal. ¿Necesitas que el bueno de Haer-Dalis te dedique una canción? */
DO ~SetGlobal("P_FallHaerDalis1","GLOBAL",1)~
== P_BFall @97942 /* Hm... no, tiefling. De hecho, eres tú el que se acercó a mí. ¿Necesitas algo? */
== BHAERDA @97943 /* Pues, he notado que a veces emanas un aura de tristeza. Como ahora. ¡Nada como una buena poesía para levantar los ánimos! */
== P_BFall @97944 /* Te lo agradezco, Haer-Dalis... pero estoy bien. No necesito-- */
== BHAERDA @97945 /* En la tristeza el ave roja vuela,
Pero el buen tiefling su canción desvela,
Melodías que emergen del corazón,
Un eco de amor, de arte y devoción. */
== P_BFall @97946 /* Ah, veo que ya la tenías compuesta de antes. No es nece--- */
== BHAERDA @97947 /* Sus notas susurran un misterio oculto,
Un canto de almas que busca el tumulto,
En cada verso se alza su esencia,
Transformando dolor en pura presencia. */
== P_BFall @97948 /* ¿Por qué tanto énfasis en la tristeza? Yo no me siento tris-- */
== BHAERDA @97949 /* El ave roja, símbolo de pesar,
Encuentra consuelo en esta canción alentar,
El tiefling habilidoso, su voz despliega,
Un regalo de música, magia que entrega. */
== P_BFall @97950 /* Bueno, eso ha sido hermo-- */
== BHAERDA @97951 /* Así, en la tristeza brota la poesía,
El arte que alivia y la alma guía,
El ave roja denota tristeza,
Pero el buen tiefling compone belleza. */
== P_BFall @97952 /* *se queda en silencio* */
== BHAERDA @97953 /* ¿Y bien, qué te ha parecido mi canción, ave frutal? */
== P_BFall @97954 /* (Oh, ya ha terminado al fin) Pues, ¡ha sido hermosa, Haer-Dalis! */
== BHAERDA @97955 /* Puedo cantarte otra si quieres. */
== P_BFall @97956 /* ¡Oh, no! Mira la hora... es momento de entrenar con mi ballesta. Quizás en la próxima, ¿sí? ¡Adiós! */
== BHAERDA @97957 /* ¡Claro que sí! Vuela alto, avecilla frutal. */
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallImoen1","GLOBAL",0)~ THEN P_BFall P_FallImoen1
@97958 /* Imoen, ¿alguna vez has ido a Imnescar? Sabes, es famosa por su cultivo de frutas. */
DO ~SetGlobal("P_FallImoen1","GLOBAL",1)~
== IMOEN2J @97959 /* No, no conozco Imnescar. De hecho, mis viajes se limitan a los lugares a los que he ido con <CHARNAME>. */
== P_BFall @97960 /* ¿Te gustaría ir algún día? Creo que podemos hacer un buen grupo de viaje entre tú, yo, Daren y Sinna. ¿Qué te parece? */
== IMOEN2J @97961 /* Eso suena bien, Fall. Tus cachorros me caen bien. Sinna es muy dulce y enérgica. */
== P_BFall @97962 /* ¿Qué hay de Daren? */
== IMOEN2J @97963 /* Oh... hmm me pone un poco nerviosa a decir verdad. Su mirada es penetrante. Parece que en cualquier momento te va a comer las piernas, ¿sabes? */
== P_BFall @97964 /* ¡Ja! No te dejes engañar. Daren es un dulce lobo. Sólo debes acariciar su lomo durante unos instantes y te ganarás su corazón. */
== IMOEN2J @97965 /* Pues... creo que prefiero a Sinna. ¡Sin ánimos de ofender! */
== P_BFall @97966 /* No te preocupes. Estoy segura de que con el tiempo, te llevarás bien con Daren. No son tan diferentes ustedes dos, ¿sabes? */
EXIT

// JAHEIRA 

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallJaheira1","GLOBAL",0)~ THEN BJAHEIR P_FallJaheira1
@97967 /* Habrías sido una buena arpista, Fall. Es una lástima que no te haya conocido antes. */
DO ~SetGlobal("P_FallJaheira1","GLOBAL",1)~
== P_BFall @97968 /* ¿Arpista? He oído hablar de ellos, pero no estoy segura de qué es lo que hacen. */
== BJAHEIR @97969 /* Los arpistas se encargan de mantener el equilibrio entre la Naturaleza y la Civilización. Siempre que hay un evento importante en el mundo, allí están, vigilantes de que no ocasione el caos y el conocimiento general no se pierda. */
== P_BFall @97970 /* Ya veo. Una especie de organización que preserva la memoria. Es... interesante. Aunque, a decir verdad, prefiero volver a los bosques apenas termine mis asuntos en Amn. */
== BJAHEIR @97971 /* Comprendo, querida. La naturaleza es atractiva para aquellos que son como nosotras. Creo... que incluso yo haría lo mismo. */
== P_BFall @97972 /* ¿Y qué te detiene, Jaheira? */
== BJAHEIR @97973 /* Pues... supongo que lo mismo que a ti, Fall. Asuntos pendientes. Irenicus, <CHARNAME>. Aún queda mucho trabajo por hacer.  */
== P_BFall @97974 /* Es verdad. Supongo que lo sabremos cuando hayamos llegado allí, ¿no lo crees? */
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
== P_BFall @97977 /* Es probable, Jan. Sin embargo, no creo que exista un comercio tan grande de nabos como lo existe con las frutas en el sur de Amn. Verás, tenía un primo... bueno, en realidad no era un primo, sino que era Moco Manzana, el primo de todos. Era un mediano pícaro que gustaba robar semillas de melones para usarlos en sus experimentos alcohólicos en su afán por crear una bebida súper dulce que habría de embriagar a cualquiera con sólo su aroma. */
== BJAN @97978 /* Entiendo. Golodon quiso hacer algo similar con-- */
== P_BFall @97979 /* La cuestión es que Moco, de alguna manera, logró crear dicha bebida. Pero no obtuvo el resultado deseado. Su pony bebió del brebaje preliminar que había creado y se volvió loco. Obtuvo una fuerza similar a la de un toro, ¿sabes? O puede que a la de un grifo. Hm, lamento mencionar a los grifos, ¿sabes? Sé que no has tenido buena experiencia con ellos. */
== BJAN @97980 /* Bueno, eso es cierto. Una vez un grifo-- */
== P_BFall @97981 /* Bueno, la cuestión es que este pony, el cual se llamaba Gran Dulón. ¿Te había mencionado que se llamaba Gran Dulón? Es un juego de palabra, ¿sabes? ¡Grandulón! Es muy gracioso si te pones a pensar. Bueno, la cuestión es que Gran Dulón entró en un estado de furia y comenzó a devorar todo el pasto que se cruzaba, con tal de aliviar el sabor dulzón que había ganado gracias a la bebida de Moco. */
== BJAN @97982 /* Sí. Eso me recuerda a-- */
== P_BFall @97983 /* Nos tomó tres semanas enteras de tráfico de pasto de los Bosques de Mir para que se calme. Yo era muy niña en esa época pero lo recuerdo con claridad. Ese año perdimos muchas libras de peras y limones en compensación a los habitantes de Mir para que nos dejaran de ver con mala cara por el consumo excesivo que tuvo Gran Dulón con su pasto. Fue todo un caos, ¿sabes? */
== BJAN @97984 /* Ehm... creo que es hora de que me ponga a trabajar sobre... ehm, uno de mis inventos, ¿sí, Fall? */
== P_BFall @97985 /* Oh, ¿no quieres saber cómo sigue la historia, Jan? Te aseguro que es entretenida. */
== BJAN @97986 /* Hum... no, creo que he tenido suficiente, gracias. */
== BJAN @97987 /* *suspiro* (Con que así se siente, ¿eh?) */
EXIT

// KELDORN

CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallKeldorn1","GLOBAL",0)~ THEN BKELDOR P_FallKeldorn1
@97988 /* Fall, ¿cómo te encuentras? He visto que últimamente has estado muy dubitativa. */
DO ~SetGlobal("P_FallKeldorn1","GLOBAL",1)~
== P_BFall @97989 /* Sir Keldorn, ¿alguna vez ha pensado en lo que hay más allá de nuestra existencia mortal? */
== BKELDOR @97990 /* Una duda que ha muchos nos ha carcomido. Sin embargo, te responderé lo que yo creo: como paladín, creo en la recompensa eterna de servir fielmente a Torm. */
== P_BFall @97991 /* Debe ser reconfortante tener esa convicción. Por mi parte, encuentro consuelo en los ciclos de la naturaleza y en la interconexión de todos los seres vivos. */
== BKELDOR @97992 /* En efecto, la belleza de la creación es innegable. Podemos diferir en nuestras creencias, pero hay sabiduría en ambas perspectivas. */
== P_BFall @97993 /* Aprecio sus palabras, mi señor. */
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
@979103 /* Mazzy, tus habilidades con el arco corto son impresionantes. Me alegra tener a alguien valiente y justo como compañera de batalla. */
DO ~SetGlobal("P_FallMazzy1","GLOBAL",1)~
== BMAZZY @979104 /* Gracias, Fall. También admiro tu destreza con la ballesta y cómo cuidas de tus lobos. Los animales son una parte especial de la naturaleza y debemos protegerlos. */
== P_BFall @979105 /* Los bosques son nuestro hogar y debemos preservarlos. ¿Alguna vez has sentido una conexión profunda con la naturaleza durante tus viajes? */
== BMAZZY @979106 /* Sí, hay una paz y serenidad que encuentro en la naturaleza. Me ayuda a recordar el propósito de mi deber como Espada de Arvoreen: proteger a los inocentes y preservar la armonía. */
== P_BFall @979107 /* Buenas palabras, querida amiga. Tu convicción no hace más que alimentar la mía. */
== BMAZZY @979108 /* Creo que nuestra fe es lo que nos mantiene firmes en nuestro propósito, Fall. Vamos, continuemos. */
EXIT


// MINSC 

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallMinsc1","GLOBAL",0)~ THEN P_BFall P_FallMinsc1
@979109 /* Me encanta tu entusiasmo, Minsc. Siempre estás dispuesto a enfrentarte a los peligros con valentía. Y Bubú, ese hámster tuyo, siempre tiene buenos consejos, ¿no es así? */
DO ~SetGlobal("P_FallMinsc1","GLOBAL",1)~
== BMINSC @979110 /* ¡Así es, Fall! Bubú es mi compañero de confianza, el más sabio de todos los hámsters. A veces me susurra al oído y me dice qué hacer. ¡Es mi guía peludo! */
== P_BFall @979111 /* Esa conexión que tienes con Bubú es única, Minsc. Siempre me hace sonreír veros interactuar. */
== BMINSC @979112 /* ¡Oh, Fall, no tienes idea de las aventuras que hemos vivido! ¡Juntos hemos enfrentado arañas gigantes, hombres-lobo y toda clase de monstruos! ¡Somos invencibles! */
== P_BFall @979113 /* Impresionante. ¡Sigamos adelante, valientes exploradores, en busca de nuevas aventuras! */
== BMINSC @979114 /* ¡Sí! ¡Minsc y Bubú están listos! *chillido* */
EXIT

// NALIA

CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallNalia1","GLOBAL",0)~ THEN BNALIA P_FallNalia1
@979115 /* Fall, me he estado preguntando sobre tus compañeros animales, Daren y Sinna. ¿Cómo es que los invocas? A simple vista, parecen hechizos de conjuración. */
DO ~SetGlobal("P_FallNalia1","GLOBAL",1)~
== P_BFall @979116 /* Ah, Nalia, mis leales lobos, Daren y Sinna, son más que simples compañeros de cuatro patas para mí. Son parte de mi espíritu y de mi conexión con la naturaleza. A través de la magia de convocación, puedo llamarlos a mi lado y compartir nuestra fuerza y valentía en batalla. Mi padre los encontró cuando apenas eran unos cachorros. */
== BNALIA @979117 /* Fascinante. Me pregunto si esta conexión especial con los animales es algo que se puede aprender o si es un don innato. ¿Qué opinas al respecto?  */
== P_BFall @979118 /* Creo que todos tenemos la capacidad de conectarnos con los animales, pero algunos poseen un vínculo más profundo y natural. Para mí, ha sido una combinación de estudio, práctica y amor por la naturaleza. Gracias a mi madre, he dedicado tiempo y esfuerzo para comprender su lenguaje y su comportamiento, lo cual ha fortalecido nuestro lazo y me ha permitido desarrollar esta habilidad innata. */
== BNALIA @979119 /* Un don extraordinario, Fall. Me hubiera gustado... conocer a tu madre. He oído que los selu'taar se encuentran entre los usuarios arcanos más poderosos de todo Faerûn. */
== P_BFall @979120 /* Creo que te llevarías bien con ella, Nalia. Espero... espero que tengas la oportunidad de conocerla. Espero... espero poder hallarla. */
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
@979123 /* Fall, tengo una pregunta que me ha estado intrigando. Tu madre es una poderosa hechicera elfa, ¿verdad? Me pregunto cómo te sientes al respecto de la magia, considerando tu linaje y tus lazos familiares. */
DO ~SetGlobal("P_FallValygar1","GLOBAL",1)~
== P_BFall @979124 /* ¿A qué te refieres, Valygar? Siento... que hay algo que no quieres decir por temor a ser... ¿ofensivo? */
== BVALYGA @979125 /* Lo... lamento, Fall. Sé que tu madre está desaparecida... pero, ¿no crees que es así por que ella lo quiso? La magia... es un asunto complejo. Y veo que tú estás ajena a ese tipo de tretas. */
== P_BFall @979126 /* ¿Tretas? En-entiendo, Valygar. Yo... admito que he pensado en ello. */
== P_BFall @979127 /* No estoy del todo segura en la corrupción innata de la magia arcana. Aunque he sido testigo de primera mano de lo que son capaces de hacer algunos hechiceros malvados. */
== P_BFall @979128 /* Pero no creo que sea el caso de mi madre. No... ella es amable. Ama la naturaleza. Amó a mi padre, quien era un humano. No, no puedo aceptar que ella se haya corrompido por la magia, Valygar. Que algo así te haya pasado a ti, no quiere decir que esté destinado para todos. */
== BVALYGA @979129 /* Es verdad, Fall. Lamento si te ofendí con mis insinuaciones. La magia es... un tema complicado para mí. */
== BVALYGA @979130 /* Quiero que sepas que haré lo posible para estar a tu lado en tu búsqueda personal, Fall. */
== P_BFall @979131 /* Gracias, Valygar. Eres un buen hombre. */
EXIT

// VICONIA ALL

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallViconia1","GLOBAL",0)~ THEN P_BFall P_FallViconia1
@979132 /* Viconia... he visto que no tienes ningún aprecio a Lolth. Creo que- */
DO ~SetGlobal("P_FallViconia1","GLOBAL",1)~
== BVICONI @979133 /* Sé a dónde vas con esto, tu'rilthiir. Quieres encontrar un punto en común entre nosotras. Y no, no tengo simpatía por las arañas. */
== P_BFall @979134 /* Entiendo, pues yo- */
== BVICONI @979135 /* Eso no quiere decir que seamos aliadas en nada, ligrr. No me compadezco de tu causa, ni tampoco tengo obligación a unirme a ella. */
== P_BFall @979136 /* No espero cambiar tus creencias ni exigir tu lealtad, Viconia. */
== BVICONI @979137 /* Veremos si tus palabras se sostienen en la práctica. */
== P_BFall @979138 /* Veremos... */
EXIT

// YOSHIMO 

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallYoshimo1","GLOBAL",0)~ THEN P_BFall P_FallYoshimo1
@979139 /* ¿Por qué te alejas de mis lobos cada vez que se encuentran entre nosotros, Yoshimo? Te lo aseguro, son inofensivos. */
DO ~SetGlobal("P_FallYoshimo1","GLOBAL",1)~
== BYOSHIM @979140 /* Oh, Fall. No es que Yoshimo tenga miedo de ellos. Y con respecto a "inofensivos", pues... digamos que he visto lo que hacen con aquellos a los que comandas atacar. */
== P_BFall @979141 /* ¡Ja! ¿Acaso los guerreros en Kara-tur no matan? Mis lobos y yo peleamos por una causa justa. El combate, a veces, es inevitable. */
== BYOSHIM @979142 /* Estamos de acuerdo en eso, querida Fall. Sin embargo, eso no quita que no quiera estar todo el tiempo cerca de tus... "cachorros". */
== P_BFall @979143 /* ¡Vamos, Yoshimo! Ya verás que buenos son ellos si tan sólo los acaricias un poco. Hmm, bueno, supongo que acariciar lobos no es para todo el mundo. */
EXIT


// Alendir
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Alen",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallAlendir1","GLOBAL",0)~ THEN P_BAlen P_FallAlendir1
@979206 /* Caraneth, ¿cómo es que has terminado con esta panda de inadaptados? Esperaba mucho más de ti. */
DO ~SetGlobal("P_FallAlendir1","GLOBAL",1)~
== P_BFall @979207 /* ¡Alendir! Bueno, sé que no es el típico grupo de aventureros, ¡pero hemos logrado mucho juntos! */
== P_BAlen @979208 /* No puedo objetar eso. Icelock, Morgrath, Skel'Tharant. Sus victorias han sido impresionantes. Quizás...  */
== P_BFall @979209 /* ¿Quizás estés equivocado? */
== P_BAlen @979210 /* *carraspeo* Bueno, eso el tiempo lo dirá. Pero, hasta ahora, <CHARNAME> ha demostrado ser de un valor incalculable. La sangre divina es innegable. */
== P_BFall @979211 /* No creo que solo sea eso, Alendir. Pero, entiendo lo que quieres decir. Todos cometemos juicios erróneos alguna vez. */
EXIT 

// CHO'NUJA - Good Fall
CHAIN
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("P_Chon",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallChon1","GLOBAL",0)~ THEN P_BFall P_FallChon1
@979212 /* Nunca había visto a una criatura comer tantos insectos como tú, Cho. No creas que no te veo cuando usas esa lengua extraña que tienes para capturar varias moscas a la vez. */
DO ~SetGlobal("P_FallChon1","GLOBAL",1)~
== P_BChon @979213 /* ¿Qué puedo decir, Fall? Tu mundo tiene una gran variedad de comida que difícilmente existía en Dreach-naga. */
== P_BFall @979214 /* Serías un gran controlador de plagas. Podríamos ganar mucho dinero. Bueno, no es que el dinero me motive, pero podríamos ayudar a muchos con eso. */
== P_BChon @979215 /* ¿Control de plagas? */
== P_BFall @979216 /* ¡Sí! Muchos granjeros suelen tener problemas con plagas de langostas o gusanos. ¿Podrías manejar algo así? */
== P_BChon @979217 /* Sería una actividad interesante, cuanto menos. ¿Y pagarían por eso? No puedo creerlo. */
== P_BFall @979218 /* Así es, Cho. Aunque algo me dice que lo harías gratis. */
== P_BChon @979219 /* Por supuesto. Comer tan delicioso manjar ya de por sí es un gran pago. */
== P_BFall @979220 /* Bueno, ya veremos adónde llegamos con estas conversaciones, mi buen Cho. */
EXIT
