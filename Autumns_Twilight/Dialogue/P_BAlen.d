BEGIN P_BAlen 

// AERIE 
CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenAerie1","GLOBAL",0)
OR (3)
!AreaCheck("P_FA3B")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR1")~ THEN P_BAlen P_AlenAerie1
@9650 /* Mi mente no logra comprender del todo c�mo es que una avariel le rinde pleites�a a Barvan, un dios mapache. */
DO ~SetGlobal("P_AlenAerie1","GLOBAL",1)~
== BAERIE @9651 /* �Baervan no es un mapache! Es el dios de los gnomos, Alendir. */
== P_BAlen @9652 /* Gnomos... insisto: eres una elfa. Correllon Larethian, Aerdrie Faenya o hasta Rillifane Rallathil habr�a tenido m�s sentido que un dios menor gn�mico. */
== BAERIE @9653 /* Las creencias no est�n ligadas a las razas. �Por qu� te molesta tanto lo que yo crea? */
== P_BAlen @9654 /* No me molesta. S�lo sent�a una nimia curiosidad, ni�a. */
== P_BAlen @9655 /* Ve y sigue idolatrando a los gnomos. Si eso es lo que te hace feliz... */
== BAERIE @9656 /* Hmpf... Har� lo que deba, Alendir. */
EXIT

// ANOMEN

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_Alenomen1","GLOBAL",0)~ THEN P_BAlen P_Alenomen1
@9657 /* No tienes una gran afecci�n a la magia, Anomen. Me pregunto por qu� ser�. */
DO ~SetGlobal("P_Alenomen1","GLOBAL",1)~
== BANOMEN @9658 /* Los magos son unos locos, Alendir. Creo que t� mismo eres una prueba viviente de ello. */
== P_BAlen @9659 /* Soy una prueba viviente de poder y de lo imposible, humano. Los d�biles tienden a llamar locos a aquellos que no pueden comprender del todo. */
== BANOMEN @96510 /* No necesito comprensi�n de la perfidia, mago. Mi coraz�n est� con Helm y con la justicia. Es todo lo que necesito. */
== P_BAlen @96511 /* El mundo en el que vives la magia lo controla todo. La Trama es m�s grande que cualquier concepto insulso que te hayan inculcado en esa Orden de humanos. */
== BANOMEN @96512 /* La justicia al final prevalecer�, Alendir. Eso es un hecho. */
== P_BAlen @96513 /* Eso, Anomen, es una sentencia. S�lo el tiempo dir� qui�n de nosotros dos tiene la raz�n. Aunque... lo m�s probable, es que t� est�s m�s lejos de verla que yo. */
EXIT

// CERND

CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenCernd1","GLOBAL",0)~ THEN BCERND P_AlenCernd1
@96514 /* Eres una perplejidad de la naturaleza, Alendir. Como el gusano que muere en la cris�lida y revive en su m�ximo esplendor en forma de alas y belleza. */
DO ~SetGlobal("P_AlenCernd1","GLOBAL",1)~
== P_BAlen @96515 /* La magia ha sido la responsable de mi debacle y resurrecci�n, Cernd. �Naturaleza? Puede que haya tenido algo que ver. Compararme con un gusano... no creo que sea de las m�s sabias sentencias. */
== BCERND @96516 /* La magia nos rodea, as� como la vida y la muerte lo hacen. Los vientos, la tierra que pisamos, el cielo que observamos. La magia de la que hablas proviene de una fuerza de la naturaleza, al menos una parte de ella. */
== P_BAlen @96517 /* Imagino que te refieres a la Nigromancia. Un asunto un tanto... turbio para los druidas puedo imaginar. */
== BCERND @96518 /* S�. Es verdad que tiene mucho de antinatural, la Muerte Viviente. Puedo aseverar que son enemigos de todo lo que ostenta el Equilibrio y deben ser detenidos para el mantenimiento del mismo. */
== P_BAlen @96519 /* T� no crees que yo sea capaz de alterar dicho Equilibrio, �verdad? */
== BCERND @96520 /* Creo que est�s explorando el mundo con nuevos ojos. Los guardianes del Equilibrio te observan de cerca, Alendir. Pero si me lo preguntas a m�, creo que no presentas peligro m�s que a ti mismo. */
== P_BAlen @96521 /* Hablas mucho, humano. Sin embargo, puede que no todo lo que digas sean sandeces... */
EXIT


// EDWIN
CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenEdwin1","GLOBAL",0)~ THEN P_BAlen P_AlenEdwin1
@96522 /* Por �ltima vez, Edwin. No voy a preguntarle a Vidomina sobre c�mo puede uno convertirse en liche. Es una locura siquiera pensar en ello. */
DO ~SetGlobal("P_AlenEdwin1","GLOBAL",1)~
== BEDWIN @96523 /* �Hmpf! Eres un cobarde, elfo. �Adm�telo! Temes que si llego a dicha proeza mi poder supere al de los Selu'taar (no es que me interesen en algo esos elfos pusil�nimes) */
== P_BAlen @96524 /* Sabes que los elfos tenemos el o�do m�s agudo que las dem�s razas, �no? */
== P_BAlen @96525 /* Pero sea como fuere, ve a molestar a otro. A menos que quieras que congele tus bolas de fuego. */
== BEDWIN @96526 /* �Ja! Ser�a interesante verte intent�ndolo, Alendir. Creo recordar tu muerte a manos de un g�lem. �Hay acaso una muerte m�s vergonzosa que esa? */
== P_BAlen @96527 /* Hay muchas muertes vergonzosas, Edwin. No creo que debamos competir por cu�l de nosotros dos fuera a tenerla. Eso pondr�a a <CHARNAME> muy triste. */
== BEDWIN @96528 /* Eso es cierto. Sin nuestro poder, <CHARNAME> no ser�a m�s que una damisela en apuros. O una criatura de hojalata corriendo desesperado ante el primer hechicero de cuarta que se encontrase.  */
== P_BAlen @96529 /* Es verdad. Es un poco desagradecido, �no lo crees? Podr�a darnos el reconocimiento que merecemos. */
== BEDWIN @96530 /* No me hagas comenzar con eso. Ni siquiera tenemos un sueldo por hacer el trabajo sucio. No logro comprender c�mo es que ha llegado con vida tan lejos.  */
== P_BAlen @96531 /* Tan misterioso como la Trama misma. */
== BEDWIN @96532 /* �Ja! As� es (puede que este elfo no sea tan malo despu�s de todo)  */
EXIT

// Haer-Dalis

CHAIN
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenHaerDalis1","GLOBAL",0)~ THEN BHAERDA P_AlenHaerDalis1
@96533 /* Ah, mi p�lido colibr�. �Qu� bello es vivir! Ser testigo de tu regreso a la vida me dan ganas de componer uno o dos poemas. */
DO ~SetGlobal("P_AlenHaerDalis1","GLOBAL",1)~
== P_BAlen @96534 /* Por favor, no lo hagas. */
== BHAERDA @96535 /* Vamos, compa�ero. Vas con esa cara de amargado por la vida cuando en realidad deber�as abrazar cada d�a como si fuera el �ltimo. */
== P_BAlen @96536 /* Tiefling, al�jate de m� y profesa tus estupideces a otro. */
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenImoen1","GLOBAL",0)~ THEN P_BAlen P_AlenImoen1
@96538 /* Tu ascendencia divina me intriga, humana. */
DO ~SetGlobal("P_AlenImoen1","GLOBAL",1)~
== IMOEN2J @96539 /* �Qu� tiene eso de intrigante, Alendir? */
== P_BAlen @96540 /* No tienes ni una pizca de lo que es <CHARNAME>. */
== IMOEN2J @96541 /* �Eso es bueno o malo a tus ojos, elfo palurdo? */
== P_BAlen @96542 /* Insolente. Bueno, puede que haya algo de <CHARNAME> en ti despu�s de todo. */
== IMOEN2J @96543 /* S�lo bromeaba, Alendir. Todo te lo tomas muy a pecho. Debes disfrutar un poco m�s de las cosas, �sabes? */
== P_BAlen @96537 /* *suspiro* Humanos... */
EXIT

// JAHEIRA 

CHAIN
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenJaheira1","GLOBAL",0)~ THEN BJAHEIR P_AlenJaheira1
@96544 /* Debes tener m�s cuidado con tus conjuros, Alendir. El fr�o extremo es capaz de da�ar irreparablemente a la tierra. */
DO ~SetGlobal("P_AlenJaheira1","GLOBAL",1)~
== P_BAlen @96545 /* Ah, si es la seguidora de Silvanus. *suspiro* He tenido demasiado con los tuyos, druida. En los bosques pululan como luci�rnagas en la oscuridad. Es un poco... cansino. */
== BJAHEIR @96546 /* Tus comentarios hacia los m�os no har�n que cambie de opini�n respecto a la advertencia que te estoy dando, Maestro de la Escarcha.  */
== P_BAlen @96547 /* Oh, con que es eso, �no? Una advertencia. */
== BJAHEIR @96548 /* Tengo la certeza de que una parte de ti a�n ama la naturaleza. Si no es por tu deviaci�n que lo arcano ha provocado, ser� por tu raza. Los selu'taar son conocidos por ello. */
== P_BAlen @96549 /* No necesito que hables de la... pureza de mi raza, Jaheira. Ni mucho menos de los Altos Elfos. */
== BJAHEIR @96550 /* No intentes escudarte en insultos, Alendir. S� que sabes que tengo raz�n.  */
== P_BAlen @96551 /* De acuerdo, hija de Silvanus. Prometo que tendr� m�s cuidado con mis hechizos. Puedo controlar el fr�o y os aseguro: no habr� da�o permanente a la tierra que tanto amas. */
== BJAHEIR @96552 /* Gracias, selu'taar Alendir. Sab�a que pod�a contar contigo. */
EXIT

// JAN ALL
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenJan1","GLOBAL",0)~ THEN BJAN P_AlenJan1
@96553 /* ...Y as� es como se crea la poci�n de la Mala Suerte Extrema. La esposa de Golodon intent� durante a�os envenenarlo. Por supuesto, yo era el mozo de cuadra encargado de ello. */
DO ~SetGlobal("P_AlenJan1","GLOBAL",1)~
== P_BAlen @96554 /* �Est�s hablando conmigo, Ilusionista? */
== BJAN @96555 /* Pues claro, mi �lfico amigo. �A qui�n m�s le habr�a de interesar la historia del Desmadrado? De hecho, t� me recuerdas un poco a �l. */
== P_BAlen @96556 /* He conocido las historias de Golodon y Dradeel. A mi parecer, el humano ha tenido un destino m�s que justo. Si te consideras su amigo, es porque eres un est�pido. */
== BJAN @96557 /* Bueno, yo no dir�a que fui su amigo. �Llamar�as amigo a alguien que te hace limpiar desechos t�xicos expelidos por un simp�tico mast�n? Aunque debo admitir que el hecho de que me solicitara que envenenase a su esposa con m�ltiples intentos utilizando jugo de mandr�gora era algo gracioso. �Si te hacen re�r puedes llamar a esa criatura un amigo? T� nunca te r�es, Alendir. Debe ser triste no tener amigos. */
== P_BAlen @96558 /* Con amigos como t� es mejor que uno se quede solo. Volviendo al tema de Golodon, que intentase asesinar a su esposa me parece, como poco, vil y despreciable. */
== BJAN @96559 /* En lugar de buscar una reconciliaci�n, ambos estaban atrapados en un c�rculo vicioso de tortura mutua. Ella, con su resistencia sobrenatural al veneno, y �l, con su sadismo m�gico, crearon una especie de danza macabra y sensual. �No crees que los humanos son altamente sensuales? Por algo se reproducen como conejos. */
== P_BAlen @96560 /* En eso estamos de acuerdo, gnomo. En lo de los conejos, claramente. */
EXIT

// KELDORN ///////////////////////////////////////////////


/*
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenKeldorn1","GLOBAL",0)~ THEN BKELDOR P_AlenKeldorn1
@96569 /* General, debo admitir que nunca pas� por mi mente luchar al lado de un hombre-lagarto. */
DO ~SetGlobal("P_AlenKeldorn1","GLOBAL",1)~
== P_BAlen @96570 /* Caballero, el sentimiento es mutuo. Aunque he de mencionar que en mi caso nunca se debi� a una cuesti�n racial. Un buen soldado debe seguir �rdenes. */
== BKELDOR @96571 /* �Lo dices por tu Reina? Tengo entendido que desconfiaba en sobremanera de los forasteros. */
== P_BAlen @96572 /* El Abismo es un lugar llamativo para los aventureros poderosos. Lleno de misterios y tesoros. Pero tambi�n de peligros y promesas de dolor. */
== P_BAlen @96573 /* Mi Reina, Tisiphone, siempre odi� a todo aquello que no fuera de nuestro pueblo. Muchos creyeron que siempre fue as�, pero no es verdad.  */
== BKELDOR @96574 /* Ya veo. Amabas a tu Reina, �no es as�? */
== P_BAlen @96575 /* Le serv� durante d�cadas. Estuve siempre a su lado y s�lo tras la intervenci�n de Gemystara mis ojos fueron abiertos. */
== P_BAlen @96576 /* La guerra contra las ara�as hab�a infectado su coraz�n. Al punto en que cualquier criatura que no fuese reptil deb�a morir en el momento en que pisase Dreach-naga. */
== BKELDOR @96577 /* La guerra muestra facetas de nosotros que no cre�amos conocer. Afecta a todos, es inevitable. */
== P_BAlen @96578 /* Tienes raz�n, caballero. Tienes raz�n. */
EXIT


// KORGAN 

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenKorgan1","GLOBAL",0)~ THEN P_BAlen P_AlenKorgan1
@96579 /* Para ser tan peque�o, tu furia durante el combate es muy grande. */
DO ~SetGlobal("P_AlenKorgan1","GLOBAL",1)~
== BKORGAN @96580 /* Muchos patas larga me han subestimado por mi tama�o. Y todos ellos han terminado con sus tripas por los suelos. �T� buscas lo mismo, jod�o lagarto? */
== P_BAlen @96581 /* Tu dialeto es tan rabioso como el balanceo de tu hacha. No era mi intenci�n insultar-- */
== BKORGAN @96582 /* Cierra el hocico, pat�tico anfibio. El �nico motivo por el cual mi hacha no se encuentra incrustada en tus escamas es porque <CHARNAME> cree que ser�s �til en sus jod�as aventuras. Ahora, vete de aqu�. */
== P_BAlen @96583 /* *susurro* Supongo que debo aprender a socializar mejor con los enanos... */
EXIT

// MAZZY

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenMazzy1","GLOBAL",0)~ THEN P_BAlen P_AlenMazzy1
@96584 /* Mazzy, en muchos sentidos me recuerdas a Vreshnak. Ella es una yuan-ti con grandes habilidades de combate pese a su tama�o. */
DO ~SetGlobal("P_AlenMazzy1","GLOBAL",1)~
== BMAZZY @96585 /* As� que todo, a�n en el Abismo, se reduce al tama�o, �no es as�? */
== P_BAlen @96586 /* �Huh? Oh, lo siento. No era mi intenci�n-- */
== BMAZZY @96587 /* Estoy bromeando, Cho. Por favor, cu�ntame de Vreshnak. */
== P_BAlen @96588 /* Ah, creo que entiendo. Bueno, Vreshnak se entren� con muchos hombres-lagarto, incluyendo el gigante Qyl'tar. Nunca se dej� amedrentar por la fuerza de sus compatriotas, pues Vreshnak compensaba la falta de fuerza con una agilidad asombrosa. */
== BMAZZY @96589 /* Golpes certeros y r�pidos pueden ser m�s eficaces que la fuerza bruta. S�, entiendo a que te refieres en tu comparaci�n. */
== P_BAlen @96590 /* Habr�as sido una gran yuan-ti en mi ej�rcito. Habr�amos conquistado incontable cantidad de capas abisales. */
== BMAZZY @96591 /* Me halaga pensar eso, buen General. */
== P_BAlen @96592 /* Pero esos tiempos ya pasaron. La conquista no lo es todo. Comienzo a pensar que disfrutar del mundo puede ser un objetivo m�s... deseable para m�. */
== BMAZZY @96593 /* En eso estamos de acuerdo, Cho. */
EXIT


// MINSC 

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
PartyHasItem("MISC84")
Global("P_AlenMinsc1","GLOBAL",0)~ THEN P_BAlen P_AlenMinsc1
@96594 /* Por quinta vez, guerrero. No estoy interesado en comerme a tu h�mster. */
DO ~SetGlobal("P_AlenMinsc1","GLOBAL",1)~
== BMINSC @96595 /* �Ah, s�? Pues Bub� opina lo contrario, hombre-lagarto. �Jura haber visto que babeas cuando miras su peludo pelaje! */
== P_BAlen @96596 /* �En serio crees que buscar�a comerme a tu amigo? *susurro* Es tan peque�o que no servir�a ni para bocado. */
== BMINSC @96597 /* �Qu� has dicho? */
== P_BAlen @96598 /* �Que mi dieta no se limita a comerme roedores! */
== P_BAlen @96599 /* Pierde el cuidado. No voy a comerme a tu Bub�. Lo juro por la memoria de mi naci�n: Dreach-naga. */
== BMINSC @965100 /* �Son tus juramentos como los de Rashemen? �Minsc tiene un gran sentido del deber y su palabra es tan grande como el coraz�n de la m�s pura Hathran! */
== P_BAlen @965101 /* En eso somos similares, guerrero. Mis juramentos son para siempre. */
== BMINSC @965102 /* Oh. De acuerdo. Creer� tu palabra entonces. Pero si veo que intentas si quiera saborear a Bub�, �te caer� con toda la fuerza de mi bota! */
== P_BAlen @965103 /* *suspiro* No ser� necesario, guerrero. No llegaremos a eso. */
EXIT


// NALIA
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenNalia1","GLOBAL",0)~ THEN BNALIA P_AlenNalia1
@965104 /* Cho'Nuja. Ya os he dicho que dej�is de mirarme. �Acaso quieres que os lance una nube aniquiladora? */
DO ~SetGlobal("P_AlenNalia1","GLOBAL",1)~
== P_BAlen @965105 /* *gru�ido* �Qu�? Peque�a hembra, �por qu� me evitas tanto? Creo haber demostrado no ser un enemigo para vosotros. */
== BNALIA @965106 /* Yo... lo lamento, Cho. No quise faltarte el respeto. Es que... a�n no me acostumbro a tu forma.  */
== P_BAlen @965107 /* �Forma? */
== BNALIA @965108 /* Tienes un cierto parecido a las Moles Sombr�as. Y no tengo un buen recuerdo de tales criaturas. */
== P_BAlen @965109 /* �Moles... sombr�as? No logro comprender. */
== BNALIA @965110 /* Son grandes criaturas subterr�neas. En apariencia parecen una combinaci�n horripilante de insectos y simios. No tienen escamas como t�, sino m�s bien una especie de exoesqueleto. Se la pasan excavando, trituran roca y carne por igual. Y son muy violentas. */
== P_BAlen @965111 /* Creo comprender. Te refieres a los Tonashi. Una palabra draconiana a la que denominamos a esas criaturas. Algunos llegaron a nuestro Reino, e incluso excavaron t�neles y devoraron a muchas de nuestras cr�as. */
== P_BAlen @965112 /* Luchamos duro, pero finalmente pudimos exterminar a todos los tonashi. �A esas criaturas te recuerdo? Yo... lamento que eso sea as�. */
== BNALIA @965113 /* No me refer�a a su comportamiento. Has demostrado tener honor e incluso bondadoso, Cho. Lamento... lamento haber dicho lo que dije. No eres para nada parecido a las Moles Sombr�as o Tonashi, c�mo t� les llamas. */
== P_BAlen @965114 /* Acepto tus palabras, peque�a hembra. */
== BNALIA @965115 /* Dime Nalia si quieres que nos llevemos mejor, �te parece? */
== P_BAlen @965116 /* Nalia ser�s entonces. */
== BNALIA @965117 /* As� me gusta. */
EXIT 

// VALYGAR

CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenValygar1","GLOBAL",0)~ THEN BVALYGA P_AlenValygar1
@965118 /* No te noto muy inc�modo cuando de asuntos arcanos se trata, Cho. */
DO ~SetGlobal("P_AlenValygar1","GLOBAL",1)~
== P_BAlen @965119 /* �Asuntos arcanos? */
== BVALYGA @965120 /* Me refiero a la magia. Creo que t� llamas a los magos como chamanes. */
== P_BAlen @965121 /* Entiendo. �Y por qu� habr�a de sentirme inc�modo? Los grandes chamanes yuan-ti ense�an a los Guardianes Salvajes a controlar la esencia interior de los guerreros. */
== P_BAlen @965122 /* En mi caso, puedo canalizar mi energ�a en un escudo �gneo, al que llamamos Escudo Salvaje de Dreach-naga. */
== P_BAlen @965123 /* Es esta habilidad, de origen cham�nico (o arcano, como t� le llamas) que me ha salvado en m�s de una ocasi�n. */
== BVALYGA @965124 /* S�, comprendo. He visto tu habilidad y me sorprende. Dime, Cho, en tu pueblo la magia no es una prioridad. Es decir, no llegar�a al punto de corromper a sus usuarios hasta la perversi�n. */
== P_BAlen @965125 /* Mi pueblo es una naci�n de fuerza f�sica. Los guerreros conforman la principal fuerza de defensa de nuestro pueblo. */
== P_BAlen @965126 /* Pero los chamanes han sido parte vital para nuestra supervivencia. Ellos han creado runas de protecci�n y las piedras guarda que han evitado el paso de visitantes indeseados durante tanto tiempo. */
== P_BAlen @965127 /* �Por qu� lo preguntas? He visto que tratan a los hechizos de una manera diferente aqu�. */
== BVALYGA @965128 /* La magia aqu� se ha desviado de su curso. La gran mayor�a de sus usuarios se han vueltos locos y sedientos de poder, como lo es el caso del enemigo de <CHARNAME> que arrebat� su alma. */
== BVALYGA @965129 /* Debes tener cuidado, Cho. En este plano, la magia puede ser algo sumamente peligroso y debemos ser cautos cuando tratamos con ella. */
== P_BAlen @965130 /* Tendr� en cuenta tus palabras, humano. */
EXIT

// VICONIA ALL

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenViconia1","GLOBAL",0)~ THEN P_BAlen P_AlenViconia1
@965131 /* He visto a algunos de tu clase en mi Reino, cham�n. */
DO ~SetGlobal("P_AlenViconia1","GLOBAL",1)~
== BVICONI @965132 /* Entonces sabes cu�n peligrosos podemos ser, �no es as�, linddil? */
== P_BAlen @965133 /* Lo s� de primera mano. Sin embargo, t� no pareces peligrosa. Al menos no has demostrado agresividad para conmigo. */
== BVICONI @965134 /* �Y por qu� habr�a de hacerlo? Tienes el aspecto de un phindar, pero has demostrado ser un aliado poderoso. */
== P_BAlen @965135 /* Supongo que es verdad. */
== BVICONI @965136 /* Si tienes alguna herida de gravedad, te curar�, no te preocupes. */
== P_BAlen @965137 /* Y yo me asegurar� de destajar a cualquiera que ose atacarte. */
== BVICONI @965138 /* No podr�a pedir m�s, linddil, no podr�a pedir m�s... */
EXIT

*/