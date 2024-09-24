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
@9650 /* Mi mente no logra comprender del todo cómo es que una avariel le rinde pleitesía a Barvan, un dios mapache. */
DO ~SetGlobal("P_AlenAerie1","GLOBAL",1)~
== BAERIE @9651 /* ¡Baervan no es un mapache! Es el dios de los gnomos, Alendir. */
== P_BAlen @9652 /* Gnomos... insisto: eres una elfa. Correllon Larethian, Aerdrie Faenya o hasta Rillifane Rallathil habría tenido más sentido que un dios menor gnómico. */
== BAERIE @9653 /* Las creencias no están ligadas a las razas. ¿Por qué te molesta tanto lo que yo crea? */
== P_BAlen @9654 /* No me molesta. Sólo sentía una nimia curiosidad, niña. */
== P_BAlen @9655 /* Ve y sigue idolatrando a los gnomos. Si eso es lo que te hace feliz... */
== BAERIE @9656 /* Hmpf... Haré lo que deba, Alendir. */
EXIT

// ANOMEN

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_Alenomen1","GLOBAL",0)~ THEN P_BAlen P_Alenomen1
@9657 /* No tienes una gran afección a la magia, Anomen. Me pregunto por qué será. */
DO ~SetGlobal("P_Alenomen1","GLOBAL",1)~
== BANOMEN @9658 /* Los magos son unos locos, Alendir. Creo que tú mismo eres una prueba viviente de ello. */
== P_BAlen @9659 /* Soy una prueba viviente de poder y de lo imposible, humano. Los débiles tienden a llamar locos a aquellos que no pueden comprender del todo. */
== BANOMEN @96510 /* No necesito comprensión de la perfidia, mago. Mi corazón está con Helm y con la justicia. Es todo lo que necesito. */
== P_BAlen @96511 /* El mundo en el que vives la magia lo controla todo. La Trama es más grande que cualquier concepto insulso que te hayan inculcado en esa Orden de humanos. */
== BANOMEN @96512 /* La justicia al final prevalecerá, Alendir. Eso es un hecho. */
== P_BAlen @96513 /* Eso, Anomen, es una sentencia. Sólo el tiempo dirá quién de nosotros dos tiene la razón. Aunque... lo más probable, es que tú estés más lejos de verla que yo. */
EXIT

// CERND

CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenCernd1","GLOBAL",0)~ THEN BCERND P_AlenCernd1
@96514 /* Eres una perplejidad de la naturaleza, Alendir. Como el gusano que muere en la crisálida y revive en su máximo esplendor en forma de alas y belleza. */
DO ~SetGlobal("P_AlenCernd1","GLOBAL",1)~
== P_BAlen @96515 /* La magia ha sido la responsable de mi debacle y resurrección, Cernd. ¿Naturaleza? Puede que haya tenido algo que ver. Compararme con un gusano... no creo que sea de las más sabias sentencias. */
== BCERND @96516 /* La magia nos rodea, así como la vida y la muerte lo hacen. Los vientos, la tierra que pisamos, el cielo que observamos. La magia de la que hablas proviene de una fuerza de la naturaleza, al menos una parte de ella. */
== P_BAlen @96517 /* Imagino que te refieres a la Nigromancia. Un asunto un tanto... turbio para los druidas puedo imaginar. */
== BCERND @96518 /* Sí. Es verdad que tiene mucho de antinatural, la Muerte Viviente. Puedo aseverar que son enemigos de todo lo que ostenta el Equilibrio y deben ser detenidos para el mantenimiento del mismo. */
== P_BAlen @96519 /* Tú no crees que yo sea capaz de alterar dicho Equilibrio, ¿verdad? */
== BCERND @96520 /* Creo que estás explorando el mundo con nuevos ojos. Los guardianes del Equilibrio te observan de cerca, Alendir. Pero si me lo preguntas a mí, creo que no presentas peligro más que a ti mismo. */
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
@96522 /* Por última vez, Edwin. No voy a preguntarle a Vidomina sobre cómo puede uno convertirse en liche. Es una locura siquiera pensar en ello. */
DO ~SetGlobal("P_AlenEdwin1","GLOBAL",1)~
== BEDWIN @96523 /* ¡Hmpf! Eres un cobarde, elfo. ¡Admítelo! Temes que si llego a dicha proeza mi poder supere al de los Selu'taar (no es que me interesen en algo esos elfos pusilánimes) */
== P_BAlen @96524 /* Sabes que los elfos tenemos el oído más agudo que las demás razas, ¿no? */
== P_BAlen @96525 /* Pero sea como fuere, ve a molestar a otro. A menos que quieras que congele tus bolas de fuego. */
== BEDWIN @96526 /* ¡Ja! Sería interesante verte intentándolo, Alendir. Creo recordar tu muerte a manos de un gólem. ¿Hay acaso una muerte más vergonzosa que esa? */
== P_BAlen @96527 /* Hay muchas muertes vergonzosas, Edwin. No creo que debamos competir por cuál de nosotros dos fuera a tenerla. Eso pondría a <CHARNAME> muy triste. */
== BEDWIN @96528 /* Eso es cierto. Sin nuestro poder, <CHARNAME> no sería más que una damisela en apuros. O una criatura de hojalata corriendo desesperado ante el primer hechicero de cuarta que se encontrase.  */
== P_BAlen @96529 /* Es verdad. Es un poco desagradecido, ¿no lo crees? Podría darnos el reconocimiento que merecemos. */
== BEDWIN @96530 /* No me hagas comenzar con eso. Ni siquiera tenemos un sueldo por hacer el trabajo sucio. No logro comprender cómo es que ha llegado con vida tan lejos.  */
== P_BAlen @96531 /* Tan misterioso como la Trama misma. */
== BEDWIN @96532 /* ¡Ja! Así es (puede que este elfo no sea tan malo después de todo)  */
EXIT

// Haer-Dalis

CHAIN
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenHaerDalis1","GLOBAL",0)~ THEN BHAERDA P_AlenHaerDalis1
@96533 /* Ah, mi pálido colibrí. ¡Qué bello es vivir! Ser testigo de tu regreso a la vida me dan ganas de componer uno o dos poemas. */
DO ~SetGlobal("P_AlenHaerDalis1","GLOBAL",1)~
== P_BAlen @96534 /* Por favor, no lo hagas. */
== BHAERDA @96535 /* Vamos, compañero. Vas con esa cara de amargado por la vida cuando en realidad deberías abrazar cada día como si fuera el último. */
== P_BAlen @96536 /* Tiefling, aléjate de mí y profesa tus estupideces a otro. */
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
== IMOEN2J @96539 /* ¿Qué tiene eso de intrigante, Alendir? */
== P_BAlen @96540 /* No tienes ni una pizca de lo que es <CHARNAME>. */
== IMOEN2J @96541 /* ¿Eso es bueno o malo a tus ojos, elfo palurdo? */
== P_BAlen @96542 /* Insolente. Bueno, puede que haya algo de <CHARNAME> en ti después de todo. */
== IMOEN2J @96543 /* Sólo bromeaba, Alendir. Todo te lo tomas muy a pecho. Debes disfrutar un poco más de las cosas, ¿sabes? */
== P_BAlen @96537 /* *suspiro* Humanos... */
EXIT

// JAHEIRA 

CHAIN
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenJaheira1","GLOBAL",0)~ THEN BJAHEIR P_AlenJaheira1
@96544 /* Debes tener más cuidado con tus conjuros, Alendir. El frío extremo es capaz de dañar irreparablemente a la tierra. */
DO ~SetGlobal("P_AlenJaheira1","GLOBAL",1)~
== P_BAlen @96545 /* Ah, si es la seguidora de Silvanus. *suspiro* He tenido demasiado con los tuyos, druida. En los bosques pululan como luciérnagas en la oscuridad. Es un poco... cansino. */
== BJAHEIR @96546 /* Tus comentarios hacia los míos no harán que cambie de opinión respecto a la advertencia que te estoy dando, Maestro de la Escarcha.  */
== P_BAlen @96547 /* Oh, con que es eso, ¿no? Una advertencia. */
== BJAHEIR @96548 /* Tengo la certeza de que una parte de ti aún ama la naturaleza. Si no es por tu deviación que lo arcano ha provocado, será por tu raza. Los selu'taar son conocidos por ello. */
== P_BAlen @96549 /* No necesito que hables de la... pureza de mi raza, Jaheira. Ni mucho menos de los Altos Elfos. */
== BJAHEIR @96550 /* No intentes escudarte en insultos, Alendir. Sé que sabes que tengo razón.  */
== P_BAlen @96551 /* De acuerdo, hija de Silvanus. Prometo que tendré más cuidado con mis hechizos. Puedo controlar el frío y os aseguro: no habrá daño permanente a la tierra que tanto amas. */
== BJAHEIR @96552 /* Gracias, selu'taar Alendir. Sabía que podía contar contigo. */
EXIT

// JAN ALL
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenJan1","GLOBAL",0)~ THEN BJAN P_AlenJan1
@96553 /* ...Y así es como se crea la poción de la Mala Suerte Extrema. La esposa de Golodon intentó durante años envenenarlo. Por supuesto, yo era el mozo de cuadra encargado de ello. */
DO ~SetGlobal("P_AlenJan1","GLOBAL",1)~
== P_BAlen @96554 /* ¿Estás hablando conmigo, Ilusionista? */
== BJAN @96555 /* Pues claro, mi élfico amigo. ¿A quién más le habría de interesar la historia del Desmadrado? De hecho, tú me recuerdas un poco a él. */
== P_BAlen @96556 /* He conocido las historias de Golodon y Dradeel. A mi parecer, el humano ha tenido un destino más que justo. Si te consideras su amigo, es porque eres un estúpido. */
== BJAN @96557 /* Bueno, yo no diría que fui su amigo. ¿Llamarías amigo a alguien que te hace limpiar desechos tóxicos expelidos por un simpático mastín? Aunque debo admitir que el hecho de que me solicitara que envenenase a su esposa con múltiples intentos utilizando jugo de mandrágora era algo gracioso. ¿Si te hacen reír puedes llamar a esa criatura un amigo? Tú nunca te ríes, Alendir. Debe ser triste no tener amigos. */
== P_BAlen @96558 /* Con amigos como tú es mejor que uno se quede solo. Volviendo al tema de Golodon, que intentase asesinar a su esposa me parece, como poco, vil y despreciable. */
== BJAN @96559 /* En lugar de buscar una reconciliación, ambos estaban atrapados en un círculo vicioso de tortura mutua. Ella, con su resistencia sobrenatural al veneno, y él, con su sadismo mágico, crearon una especie de danza macabra y sensual. ¿No crees que los humanos son altamente sensuales? Por algo se reproducen como conejos. */
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
@96569 /* General, debo admitir que nunca pasó por mi mente luchar al lado de un hombre-lagarto. */
DO ~SetGlobal("P_AlenKeldorn1","GLOBAL",1)~
== P_BAlen @96570 /* Caballero, el sentimiento es mutuo. Aunque he de mencionar que en mi caso nunca se debió a una cuestión racial. Un buen soldado debe seguir órdenes. */
== BKELDOR @96571 /* ¿Lo dices por tu Reina? Tengo entendido que desconfiaba en sobremanera de los forasteros. */
== P_BAlen @96572 /* El Abismo es un lugar llamativo para los aventureros poderosos. Lleno de misterios y tesoros. Pero también de peligros y promesas de dolor. */
== P_BAlen @96573 /* Mi Reina, Tisiphone, siempre odió a todo aquello que no fuera de nuestro pueblo. Muchos creyeron que siempre fue así, pero no es verdad.  */
== BKELDOR @96574 /* Ya veo. Amabas a tu Reina, ¿no es así? */
== P_BAlen @96575 /* Le serví durante décadas. Estuve siempre a su lado y sólo tras la intervención de Gemystara mis ojos fueron abiertos. */
== P_BAlen @96576 /* La guerra contra las arañas había infectado su corazón. Al punto en que cualquier criatura que no fuese reptil debía morir en el momento en que pisase Dreach-naga. */
== BKELDOR @96577 /* La guerra muestra facetas de nosotros que no creíamos conocer. Afecta a todos, es inevitable. */
== P_BAlen @96578 /* Tienes razón, caballero. Tienes razón. */
EXIT


// KORGAN 

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenKorgan1","GLOBAL",0)~ THEN P_BAlen P_AlenKorgan1
@96579 /* Para ser tan pequeño, tu furia durante el combate es muy grande. */
DO ~SetGlobal("P_AlenKorgan1","GLOBAL",1)~
== BKORGAN @96580 /* Muchos patas larga me han subestimado por mi tamaño. Y todos ellos han terminado con sus tripas por los suelos. ¿Tú buscas lo mismo, jodío lagarto? */
== P_BAlen @96581 /* Tu dialeto es tan rabioso como el balanceo de tu hacha. No era mi intención insultar-- */
== BKORGAN @96582 /* Cierra el hocico, patético anfibio. El único motivo por el cual mi hacha no se encuentra incrustada en tus escamas es porque <CHARNAME> cree que serás útil en sus jodías aventuras. Ahora, vete de aquí. */
== P_BAlen @96583 /* *susurro* Supongo que debo aprender a socializar mejor con los enanos... */
EXIT

// MAZZY

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenMazzy1","GLOBAL",0)~ THEN P_BAlen P_AlenMazzy1
@96584 /* Mazzy, en muchos sentidos me recuerdas a Vreshnak. Ella es una yuan-ti con grandes habilidades de combate pese a su tamaño. */
DO ~SetGlobal("P_AlenMazzy1","GLOBAL",1)~
== BMAZZY @96585 /* Así que todo, aún en el Abismo, se reduce al tamaño, ¿no es así? */
== P_BAlen @96586 /* ¿Huh? Oh, lo siento. No era mi intención-- */
== BMAZZY @96587 /* Estoy bromeando, Cho. Por favor, cuéntame de Vreshnak. */
== P_BAlen @96588 /* Ah, creo que entiendo. Bueno, Vreshnak se entrenó con muchos hombres-lagarto, incluyendo el gigante Qyl'tar. Nunca se dejó amedrentar por la fuerza de sus compatriotas, pues Vreshnak compensaba la falta de fuerza con una agilidad asombrosa. */
== BMAZZY @96589 /* Golpes certeros y rápidos pueden ser más eficaces que la fuerza bruta. Sí, entiendo a que te refieres en tu comparación. */
== P_BAlen @96590 /* Habrías sido una gran yuan-ti en mi ejército. Habríamos conquistado incontable cantidad de capas abisales. */
== BMAZZY @96591 /* Me halaga pensar eso, buen General. */
== P_BAlen @96592 /* Pero esos tiempos ya pasaron. La conquista no lo es todo. Comienzo a pensar que disfrutar del mundo puede ser un objetivo más... deseable para mí. */
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
@96594 /* Por quinta vez, guerrero. No estoy interesado en comerme a tu hámster. */
DO ~SetGlobal("P_AlenMinsc1","GLOBAL",1)~
== BMINSC @96595 /* ¿Ah, sí? Pues Bubú opina lo contrario, hombre-lagarto. ¡Jura haber visto que babeas cuando miras su peludo pelaje! */
== P_BAlen @96596 /* ¿En serio crees que buscaría comerme a tu amigo? *susurro* Es tan pequeño que no serviría ni para bocado. */
== BMINSC @96597 /* ¿Qué has dicho? */
== P_BAlen @96598 /* ¡Que mi dieta no se limita a comerme roedores! */
== P_BAlen @96599 /* Pierde el cuidado. No voy a comerme a tu Bubú. Lo juro por la memoria de mi nación: Dreach-naga. */
== BMINSC @965100 /* ¿Son tus juramentos como los de Rashemen? ¡Minsc tiene un gran sentido del deber y su palabra es tan grande como el corazón de la más pura Hathran! */
== P_BAlen @965101 /* En eso somos similares, guerrero. Mis juramentos son para siempre. */
== BMINSC @965102 /* Oh. De acuerdo. Creeré tu palabra entonces. Pero si veo que intentas si quiera saborear a Bubú, ¡te caeré con toda la fuerza de mi bota! */
== P_BAlen @965103 /* *suspiro* No será necesario, guerrero. No llegaremos a eso. */
EXIT


// NALIA
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenNalia1","GLOBAL",0)~ THEN BNALIA P_AlenNalia1
@965104 /* Cho'Nuja. Ya os he dicho que dejéis de mirarme. ¿Acaso quieres que os lance una nube aniquiladora? */
DO ~SetGlobal("P_AlenNalia1","GLOBAL",1)~
== P_BAlen @965105 /* *gruñido* ¿Qué? Pequeña hembra, ¿por qué me evitas tanto? Creo haber demostrado no ser un enemigo para vosotros. */
== BNALIA @965106 /* Yo... lo lamento, Cho. No quise faltarte el respeto. Es que... aún no me acostumbro a tu forma.  */
== P_BAlen @965107 /* ¿Forma? */
== BNALIA @965108 /* Tienes un cierto parecido a las Moles Sombrías. Y no tengo un buen recuerdo de tales criaturas. */
== P_BAlen @965109 /* ¿Moles... sombrías? No logro comprender. */
== BNALIA @965110 /* Son grandes criaturas subterráneas. En apariencia parecen una combinación horripilante de insectos y simios. No tienen escamas como tú, sino más bien una especie de exoesqueleto. Se la pasan excavando, trituran roca y carne por igual. Y son muy violentas. */
== P_BAlen @965111 /* Creo comprender. Te refieres a los Tonashi. Una palabra draconiana a la que denominamos a esas criaturas. Algunos llegaron a nuestro Reino, e incluso excavaron túneles y devoraron a muchas de nuestras crías. */
== P_BAlen @965112 /* Luchamos duro, pero finalmente pudimos exterminar a todos los tonashi. ¿A esas criaturas te recuerdo? Yo... lamento que eso sea así. */
== BNALIA @965113 /* No me refería a su comportamiento. Has demostrado tener honor e incluso bondadoso, Cho. Lamento... lamento haber dicho lo que dije. No eres para nada parecido a las Moles Sombrías o Tonashi, cómo tú les llamas. */
== P_BAlen @965114 /* Acepto tus palabras, pequeña hembra. */
== BNALIA @965115 /* Dime Nalia si quieres que nos llevemos mejor, ¿te parece? */
== P_BAlen @965116 /* Nalia serás entonces. */
== BNALIA @965117 /* Así me gusta. */
EXIT 

// VALYGAR

CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenValygar1","GLOBAL",0)~ THEN BVALYGA P_AlenValygar1
@965118 /* No te noto muy incómodo cuando de asuntos arcanos se trata, Cho. */
DO ~SetGlobal("P_AlenValygar1","GLOBAL",1)~
== P_BAlen @965119 /* ¿Asuntos arcanos? */
== BVALYGA @965120 /* Me refiero a la magia. Creo que tú llamas a los magos como chamanes. */
== P_BAlen @965121 /* Entiendo. ¿Y por qué habría de sentirme incómodo? Los grandes chamanes yuan-ti enseñan a los Guardianes Salvajes a controlar la esencia interior de los guerreros. */
== P_BAlen @965122 /* En mi caso, puedo canalizar mi energía en un escudo ígneo, al que llamamos Escudo Salvaje de Dreach-naga. */
== P_BAlen @965123 /* Es esta habilidad, de origen chamánico (o arcano, como tú le llamas) que me ha salvado en más de una ocasión. */
== BVALYGA @965124 /* Sí, comprendo. He visto tu habilidad y me sorprende. Dime, Cho, en tu pueblo la magia no es una prioridad. Es decir, no llegaría al punto de corromper a sus usuarios hasta la perversión. */
== P_BAlen @965125 /* Mi pueblo es una nación de fuerza física. Los guerreros conforman la principal fuerza de defensa de nuestro pueblo. */
== P_BAlen @965126 /* Pero los chamanes han sido parte vital para nuestra supervivencia. Ellos han creado runas de protección y las piedras guarda que han evitado el paso de visitantes indeseados durante tanto tiempo. */
== P_BAlen @965127 /* ¿Por qué lo preguntas? He visto que tratan a los hechizos de una manera diferente aquí. */
== BVALYGA @965128 /* La magia aquí se ha desviado de su curso. La gran mayoría de sus usuarios se han vueltos locos y sedientos de poder, como lo es el caso del enemigo de <CHARNAME> que arrebató su alma. */
== BVALYGA @965129 /* Debes tener cuidado, Cho. En este plano, la magia puede ser algo sumamente peligroso y debemos ser cautos cuando tratamos con ella. */
== P_BAlen @965130 /* Tendré en cuenta tus palabras, humano. */
EXIT

// VICONIA ALL

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenViconia1","GLOBAL",0)~ THEN P_BAlen P_AlenViconia1
@965131 /* He visto a algunos de tu clase en mi Reino, chamán. */
DO ~SetGlobal("P_AlenViconia1","GLOBAL",1)~
== BVICONI @965132 /* Entonces sabes cuán peligrosos podemos ser, ¿no es así, linddil? */
== P_BAlen @965133 /* Lo sé de primera mano. Sin embargo, tú no pareces peligrosa. Al menos no has demostrado agresividad para conmigo. */
== BVICONI @965134 /* ¿Y por qué habría de hacerlo? Tienes el aspecto de un phindar, pero has demostrado ser un aliado poderoso. */
== P_BAlen @965135 /* Supongo que es verdad. */
== BVICONI @965136 /* Si tienes alguna herida de gravedad, te curaré, no te preocupes. */
== P_BAlen @965137 /* Y yo me aseguraré de destajar a cualquiera que ose atacarte. */
== BVICONI @965138 /* No podría pedir más, linddil, no podría pedir más... */
EXIT

*/