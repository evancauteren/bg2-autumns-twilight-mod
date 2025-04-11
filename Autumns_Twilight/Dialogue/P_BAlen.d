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

// KELDORN 
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
AreaType(CITY)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenKeldorn1","GLOBAL",0)~ THEN BKELDOR P_AlenKeldorn1
@96561 /* Deberías tener cuidado con tus conjuros en la ciudad, Alendir. Lanzarlos está prohibido. */
DO ~SetGlobal("P_AlenKeldorn1","GLOBAL",1)~
== P_BAlen @96562 /* Lo cual me parece una insensatez, Keldorn. De todas formas, ya estaba al tanto de ello. Cuando estuve hospedado en la posada, debía llevar a cabo mis pesquisas puertas adentro. */
== P_BAlen @96563 /* Tener a los Magos Encapuchados respirando sobre mi nuca era lo último que necesitaba. */
== BKELDOR @96564 /* Si es así, no lo haces notar, hechicero. No tienes el más mínimo problema a la hora de lanzar tus conjuraciones. */
== P_BAlen @96565 /* ¿Por qué habría de tenerlo? Mi situación no es la misma que cuando llegué por primera vez a Athkatla. Ahora estamos de aventuras con <CHARNAME>. */
== BKELDOR @96566 /* Razón de más para tener más cuidado. En la ciudad viven muchos habitantes inocentes. No merecen ser congelados por algún ataque contingente de tu parte. */
== P_BAlen @96567 /* Ah... Inocentes. Tiempo atrás me habría reído de tal afirmación. Pero creo que debo reflexionar sobre tus palabras. */
== BKELDOR @96568 /* Sólo eso pido, buen Alendir. */
== P_BAlen @96569 /* Para ser un humano anciano, no estás tan mal, Keldorn. */
EXIT


// KORGAN 

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenKorgan1","GLOBAL",0)~ THEN P_BAlen P_AlenKorgan1
@96570 /* Es insensato de tu parte lanzarte al combate en medio de una tormenta de hielo, enano. ¿Acaso buscas quedarte congelado? */
DO ~SetGlobal("P_AlenKorgan1","GLOBAL",1)~
== BKORGAN @96571 /* Hmpf. Tus conjuros no son tan jodíamente buenos, elfo. Puedo resistirlos si así me lo propusiera. */
== P_BAlen @96572 /* Hasta cierto punto. No importa qué tan sangrienta sea tu furia. Ante el verdadero frío, nada puede moverse. */
== BKORGAN @96573 /* ¿Quieres intentarlo? Vamos, mequetrefe. Quiero saber qué es más rápido, si tu magia o mi hacha. */
== P_BAlen @96574 /* No soy estúpido, bersérker. Si lucho bajo tus términos, la victoria seguramente estará de tu lado. No he vivido tanto tiempo como para caer en artimañas tan insulsas... */
EXIT


// MAZZY

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenMazzy1","GLOBAL",0)~ THEN P_BAlen P_AlenMazzy1
@96575 /* Nunca entenderé tu fascinación con los humanos, mediana. */
DO ~SetGlobal("P_AlenMazzy1","GLOBAL",1)~
== BMAZZY @96576 /* ¿A qué te refieres, Alendir? */
== P_BAlen @96577 /* Actúas como un paladín. Al menos eso es lo que capto con tu forma de hablar y actuar. Aunque a mí no me engañas. Careces de ese fanatismo que puede inundar el corazón de los hombres. */
== BMAZZY @96578 /* Lucho por Arvorin, querido elfo. Puede que no tenga las capacidades específicas que deba tener un paladín, pero trato de compensarlo con mi fe y ferviente creencia en la justicia. */
== P_BAlen @96579 /* Entonces... ¿los humanos no han sido inspiración para ti? */
== BMAZZY @96580 /* Creo que tienes toda esa cuestión racial muy a pecho, Alendir. No te culpo, yo lo he sentido. Ser mediana en mis circunstancias no ha sido fácil. Pero en ese sentido diferimos. No te veo como un selu'taar que reniega de sus orígenes. */
== P_BAlen @96581 /* ¿Y por qué habría de hacerlo? Los altos elfos son una raza antigua y orgullosa. Mucho de lo bueno del mundo ha sido gracias a nosotros. */
== BMAZZY @96582 /* ¿Nosotros? Creo recordar de "alguien" que casi ocasiona la invasión del Plano Para-Elemental de Hielo en Faerûn. */
== P_BAlen @96583 /* *carraspeo* Tienes razón. Mystra me ha dado una nueva chance de enmendar mis pecados. Estoy encomendando mi vida a ello, tratando de descubrir cuál es mi destino. */
== BMAZZY @96584 /* Espero ayudarte en lo que pueda en tu tarea, Alendir. Hay mucho potencial de bien en ti. */
== P_BAlen @96585 /* Ehr... Será mejor que continuemos. Pero gracias, Lady Fentan. */
EXIT

// MINSC 
CHAIN
IF ~InParty("Minsc")
See("Minsc")
Global("P_MinscMeetAlendir","GLOBAL",1)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
PartyHasItem("MISC84")
Global("P_AlenMinsc1","GLOBAL",0)~ THEN P_BAlen P_AlenMinsc1
@96586 /* Tus constantes miradas me cansan, bárbaro. ¿Qué es lo que quieres? */
DO ~SetGlobal("P_AlenMinsc1","GLOBAL",1)~
== BMINSC @96587 /* Puede que Bubú tenga razón. Él dice que te conozco y en verdad te me haces conocido. Pero Minsc no logra recordar bien de dónde. */
== P_BAlen @96588 /* Soy Alendir, el elfo que conociste en la posada de las Cinco Jarras. Puede que mi actual apariencia te confunda, pero ha sido obra de-- */
== BMINSC @96589 /* ¡Tú no puedes ser Alendir! Ese elfo era viejo y arrugado. También amargado. Tú, en cambio, te ves joven y amable. */
== P_BAlen @96590 /* Pues, soy el mismo. He sido rejuvenecido en mi resurrección, Minsc. */
== P_BAlen @96591 /* ¿Comprendes lo que te estoy diciendo? */
== BMINSC @96592 /* Hm. No del todo. Pero Bubú me dice que debo creerte. Si él comprende, entonces puedo quedarme tranquilo. */
== P_BAlen @96593 /* ... (¿Cómo es posible que un hámster sea más listo que un hombre? Será mejor que lo siga estudiando de cerca) */
EXIT


// NALIA
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenNalia1","GLOBAL",0)~ THEN BNALIA P_AlenNalia1
@96594 /* Os lo he dicho, Alendir. No me importa en lo más mínimo mi linaje. */
DO ~SetGlobal("P_AlenNalia1","GLOBAL",1)~
== P_BAlen @96595 /* Pero, ¿por qué no? El poder en esta nación es ostentado por los humanos. Alguien de cuna noble tiene posibilidades infinitas. */
== BNALIA @96596 /* Los de cuna noble no son mejores que aquellos que han nacido en la pobreza, Alendir.  */
== P_BAlen @96597 /* Con excepción a que sí son mejores. Especialmente si hablamos de los humanos. Su vida es tan corta que es difícil para la mayoría marcar la diferencia si nacen en la podredumbre. */
== BNALIA @96598 /* ¿Podredumbre? No todos los pobres son corruptos. No puedo creer lo que estás diciendo. */
== P_BAlen @96599 /* No todos, pero sí la mayoría. Una corrupción menor, que en verdad no afecta el destino de las naciones. Pero corrupción al fin. */
== BNALIA @96600 /* Para haber vivido tantos años, no puedo creer que digas tan insensatez. */
== P_BAlen @96601 /* Eres joven, pero con el tiempo me darás la razón, Nalia De'Arnise. */
== BNALIA @96602 /* Lo dudo, Alendir. Realmente lo dudo. */
EXIT 


// VALYGAR
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenValygar1","GLOBAL",0)~ THEN BVALYGA P_AlenValygar1
@96603 /* Te lo advierto, hechicero. Aleja tus frías conjuraciones de mí. */
DO ~SetGlobal("P_AlenValygar1","GLOBAL",1)~
== P_BAlen @96604 /* ¿Me hablas a mí, hombre? */
== BVALYGA @96605 /* Sí. Puede que hayas sido revivido por fuerzas que no logro comprender, pero no por ello debo confiar en que harás algo de bien con tu nueva vida. */
== P_BAlen @96606 /* ¿Por qué debería hacer el bien, explorador? Los villanos reviven todo el tiempo y su maldad sólo vuelve potenciada. */
== P_BAlen @96607 /* *suspiro* Aunque nunca he considerado que lo que he hecho haya sido malvado. Tenía un objetivo, pero estaba equivocado. */
== P_BAlen @96608 /* Mis errores me costaron la vida. Quiero creer que he aprendido de ellos. */
== BVALYGA @96609 /* Tal vez, elfo. Pero te vigilaré de cerca. Tenlo por seguro. Al primer intento de traición, tu cabeza rodará por los suelos, no lo dudes. */
== P_BAlen @979160 /* (Humanos: siempre tan... violentos) */
EXIT



// VICONIA ALL
CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenViconia1","GLOBAL",0)~ THEN P_BAlen P_AlenViconia1
@979161 /* Me sorprende que <CHARNAME> haya permitido que sigas con vida, drow. En Evereska no dudarías ni dos asaltos. La magia de los Altos Elfos te pulverizaría. */
DO ~SetGlobal("P_AlenViconia1","GLOBAL",1)~
== BVICONI @979162 /* Ustedes los darthiir siempre tan... tajantes. */
== P_BAlen @979163 /* ¡Ja!... 'darthiir'. Sí, nosotros, los elfos de la superficie como ustedes nos llaman somos tajantes. Y creo que es un error. La determinación debe ser rápida y precisa. Si fuera por mí, los drows no durarían ni un segundo. */
== BVICONI @979164 /* El sentimiento es casi mutuo en la Infraoscuridad, faern. Casi, porque a muchos de ustedes primero os tomarían como esclavos para ser vendidos por puro entretenimiento. O quizás para ser exhibidos como los animales que son-- */
== P_BAlen @979165 /* No me asustas, servidora de Shar. He vivido en la Oscuridad y he visto más horrores de los que tú sólo podrías imaginar. El Frío Absoluto es un maestro cruel y no atiende a súplicas. Y nos llegará a todos... tarde o temprano. */
== BVICONI @979166 /* Interesante. No eres el típico darthirii lleno de estupideces en su boca. De vez en cuando sueltas cosas... seductoras. */
== P_BAlen @979167 /* Hmpf. ¿Qué puedo esperar interactuando con alguien como tú? Adiós, drow. */
== BVICONI @979168 /* Adiós, Alendir. Esperaré con ansias a nuestra próxima charla. *sonríe burlonamente* */
EXIT

