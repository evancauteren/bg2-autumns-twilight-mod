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

// KELDORN 
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
AreaType(CITY)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenKeldorn1","GLOBAL",0)~ THEN BKELDOR P_AlenKeldorn1
@96561 /* Deber�as tener cuidado con tus conjuros en la ciudad, Alendir. Lanzarlos est� prohibido. */
DO ~SetGlobal("P_AlenKeldorn1","GLOBAL",1)~
== P_BAlen @96562 /* Lo cual me parece una insensatez, Keldorn. De todas formas, ya estaba al tanto de ello. Cuando estuve hospedado en la posada, deb�a llevar a cabo mis pesquisas puertas adentro. */
== P_BAlen @96563 /* Tener a los Magos Encapuchados respirando sobre mi nuca era lo �ltimo que necesitaba. */
== BKELDOR @96564 /* Si es as�, no lo haces notar, hechicero. No tienes el m�s m�nimo problema a la hora de lanzar tus conjuraciones. */
== P_BAlen @96565 /* �Por qu� habr�a de tenerlo? Mi situaci�n no es la misma que cuando llegu� por primera vez a Athkatla. Ahora estamos de aventuras con <CHARNAME>. */
== BKELDOR @96566 /* Raz�n de m�s para tener m�s cuidado. En la ciudad viven muchos habitantes inocentes. No merecen ser congelados por alg�n ataque contingente de tu parte. */
== P_BAlen @96567 /* Ah... Inocentes. Tiempo atr�s me habr�a re�do de tal afirmaci�n. Pero creo que debo reflexionar sobre tus palabras. */
== BKELDOR @96568 /* S�lo eso pido, buen Alendir. */
== P_BAlen @96569 /* Para ser un humano anciano, no est�s tan mal, Keldorn. */
EXIT


// KORGAN 

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenKorgan1","GLOBAL",0)~ THEN P_BAlen P_AlenKorgan1
@96570 /* Es insensato de tu parte lanzarte al combate en medio de una tormenta de hielo, enano. �Acaso buscas quedarte congelado? */
DO ~SetGlobal("P_AlenKorgan1","GLOBAL",1)~
== BKORGAN @96571 /* Hmpf. Tus conjuros no son tan jod�amente buenos, elfo. Puedo resistirlos si as� me lo propusiera. */
== P_BAlen @96572 /* Hasta cierto punto. No importa qu� tan sangrienta sea tu furia. Ante el verdadero fr�o, nada puede moverse. */
== BKORGAN @96573 /* �Quieres intentarlo? Vamos, mequetrefe. Quiero saber qu� es m�s r�pido, si tu magia o mi hacha. */
== P_BAlen @96574 /* No soy est�pido, bers�rker. Si lucho bajo tus t�rminos, la victoria seguramente estar� de tu lado. No he vivido tanto tiempo como para caer en artima�as tan insulsas... */
EXIT


// MAZZY

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenMazzy1","GLOBAL",0)~ THEN P_BAlen P_AlenMazzy1
@96575 /* Nunca entender� tu fascinaci�n con los humanos, mediana. */
DO ~SetGlobal("P_AlenMazzy1","GLOBAL",1)~
== BMAZZY @96576 /* �A qu� te refieres, Alendir? */
== P_BAlen @96577 /* Act�as como un palad�n. Al menos eso es lo que capto con tu forma de hablar y actuar. Aunque a m� no me enga�as. Careces de ese fanatismo que puede inundar el coraz�n de los hombres. */
== BMAZZY @96578 /* Lucho por Arvorin, querido elfo. Puede que no tenga las capacidades espec�ficas que deba tener un palad�n, pero trato de compensarlo con mi fe y ferviente creencia en la justicia. */
== P_BAlen @96579 /* Entonces... �los humanos no han sido inspiraci�n para ti? */
== BMAZZY @96580 /* Creo que tienes toda esa cuesti�n racial muy a pecho, Alendir. No te culpo, yo lo he sentido. Ser mediana en mis circunstancias no ha sido f�cil. Pero en ese sentido diferimos. No te veo como un selu'taar que reniega de sus or�genes. */
== P_BAlen @96581 /* �Y por qu� habr�a de hacerlo? Los altos elfos son una raza antigua y orgullosa. Mucho de lo bueno del mundo ha sido gracias a nosotros. */
== BMAZZY @96582 /* �Nosotros? Creo recordar de "alguien" que casi ocasiona la invasi�n del Plano Para-Elemental de Hielo en Faer�n. */
== P_BAlen @96583 /* *carraspeo* Tienes raz�n. Mystra me ha dado una nueva chance de enmendar mis pecados. Estoy encomendando mi vida a ello, tratando de descubrir cu�l es mi destino. */
== BMAZZY @96584 /* Espero ayudarte en lo que pueda en tu tarea, Alendir. Hay mucho potencial de bien en ti. */
== P_BAlen @96585 /* Ehr... Ser� mejor que continuemos. Pero gracias, Lady Fentan. */
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
@96586 /* Tus constantes miradas me cansan, b�rbaro. �Qu� es lo que quieres? */
DO ~SetGlobal("P_AlenMinsc1","GLOBAL",1)~
== BMINSC @96587 /* Puede que Bub� tenga raz�n. �l dice que te conozco y en verdad te me haces conocido. Pero Minsc no logra recordar bien de d�nde. */
== P_BAlen @96588 /* Soy Alendir, el elfo que conociste en la posada de las Cinco Jarras. Puede que mi actual apariencia te confunda, pero ha sido obra de-- */
== BMINSC @96589 /* �T� no puedes ser Alendir! Ese elfo era viejo y arrugado. Tambi�n amargado. T�, en cambio, te ves joven y amable. */
== P_BAlen @96590 /* Pues, soy el mismo. He sido rejuvenecido en mi resurrecci�n, Minsc. */
== P_BAlen @96591 /* �Comprendes lo que te estoy diciendo? */
== BMINSC @96592 /* Hm. No del todo. Pero Bub� me dice que debo creerte. Si �l comprende, entonces puedo quedarme tranquilo. */
== P_BAlen @96593 /* ... (�C�mo es posible que un h�mster sea m�s listo que un hombre? Ser� mejor que lo siga estudiando de cerca) */
EXIT


// NALIA
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenNalia1","GLOBAL",0)~ THEN BNALIA P_AlenNalia1
@96594 /* Os lo he dicho, Alendir. No me importa en lo m�s m�nimo mi linaje. */
DO ~SetGlobal("P_AlenNalia1","GLOBAL",1)~
== P_BAlen @96595 /* Pero, �por qu� no? El poder en esta naci�n es ostentado por los humanos. Alguien de cuna noble tiene posibilidades infinitas. */
== BNALIA @96596 /* Los de cuna noble no son mejores que aquellos que han nacido en la pobreza, Alendir.  */
== P_BAlen @96597 /* Con excepci�n a que s� son mejores. Especialmente si hablamos de los humanos. Su vida es tan corta que es dif�cil para la mayor�a marcar la diferencia si nacen en la podredumbre. */
== BNALIA @96598 /* �Podredumbre? No todos los pobres son corruptos. No puedo creer lo que est�s diciendo. */
== P_BAlen @96599 /* No todos, pero s� la mayor�a. Una corrupci�n menor, que en verdad no afecta el destino de las naciones. Pero corrupci�n al fin. */
== BNALIA @96600 /* Para haber vivido tantos a�os, no puedo creer que digas tan insensatez. */
== P_BAlen @96601 /* Eres joven, pero con el tiempo me dar�s la raz�n, Nalia De'Arnise. */
== BNALIA @96602 /* Lo dudo, Alendir. Realmente lo dudo. */
EXIT 


// VALYGAR
CHAIN 
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenValygar1","GLOBAL",0)~ THEN BVALYGA P_AlenValygar1
@96603 /* Te lo advierto, hechicero. Aleja tus fr�as conjuraciones de m�. */
DO ~SetGlobal("P_AlenValygar1","GLOBAL",1)~
== P_BAlen @96604 /* �Me hablas a m�, hombre? */
== BVALYGA @96605 /* S�. Puede que hayas sido revivido por fuerzas que no logro comprender, pero no por ello debo confiar en que har�s algo de bien con tu nueva vida. */
== P_BAlen @96606 /* �Por qu� deber�a hacer el bien, explorador? Los villanos reviven todo el tiempo y su maldad s�lo vuelve potenciada. */
== P_BAlen @96607 /* *suspiro* Aunque nunca he considerado que lo que he hecho haya sido malvado. Ten�a un objetivo, pero estaba equivocado. */
== P_BAlen @96608 /* Mis errores me costaron la vida. Quiero creer que he aprendido de ellos. */
== BVALYGA @96609 /* Tal vez, elfo. Pero te vigilar� de cerca. Tenlo por seguro. Al primer intento de traici�n, tu cabeza rodar� por los suelos, no lo dudes. */
== P_BAlen @979160 /* (Humanos: siempre tan... violentos) */
EXIT



// VICONIA ALL
CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenViconia1","GLOBAL",0)~ THEN P_BAlen P_AlenViconia1
@979161 /* Me sorprende que <CHARNAME> haya permitido que sigas con vida, drow. En Evereska no dudar�as ni dos asaltos. La magia de los Altos Elfos te pulverizar�a. */
DO ~SetGlobal("P_AlenViconia1","GLOBAL",1)~
== BVICONI @979162 /* Ustedes los darthiir siempre tan... tajantes. */
== P_BAlen @979163 /* �Ja!... 'darthiir'. S�, nosotros, los elfos de la superficie como ustedes nos llaman somos tajantes. Y creo que es un error. La determinaci�n debe ser r�pida y precisa. Si fuera por m�, los drows no durar�an ni un segundo. */
== BVICONI @979164 /* El sentimiento es casi mutuo en la Infraoscuridad, faern. Casi, porque a muchos de ustedes primero os tomar�an como esclavos para ser vendidos por puro entretenimiento. O quiz�s para ser exhibidos como los animales que son-- */
== P_BAlen @979165 /* No me asustas, servidora de Shar. He vivido en la Oscuridad y he visto m�s horrores de los que t� s�lo podr�as imaginar. El Fr�o Absoluto es un maestro cruel y no atiende a s�plicas. Y nos llegar� a todos... tarde o temprano. */
== BVICONI @979166 /* Interesante. No eres el t�pico darthirii lleno de estupideces en su boca. De vez en cuando sueltas cosas... seductoras. */
== P_BAlen @979167 /* Hmpf. �Qu� puedo esperar interactuando con alguien como t�? Adi�s, drow. */
== BVICONI @979168 /* Adi�s, Alendir. Esperar� con ansias a nuestra pr�xima charla. *sonr�e burlonamente* */
EXIT

