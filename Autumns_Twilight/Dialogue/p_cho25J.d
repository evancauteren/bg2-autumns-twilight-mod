BEGIN P_Cho25J

// Volo

EXTEND_BOTTOM SARVOLO 9
+ ~InParty("P_Chon") InMyArea("P_Chon") AreaCheck("AR5003")~ + @9670 /* Háblame de Cho'Nuja. */ + P_ChonVoloBio1

END

CHAIN SARVOLO P_ChonVoloBio1
@9671 /* El guerrero del Abismo, de un extinto lugar llamado Dreach-naga. Un combatiente sinigual que representa de manera digna la lucha contra las fuerzas de la Oscuridad, procurando que la amenaza de las arañas no se expanda a nuestro Plano. Hace tiempo ya se ha dejado de creer que sea una invocación. */
== P_Cho25J IF ~AreaCheck("AR5003") InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @9672 /* Bueno, yo seguiré diciendo que soy una convocación, buen señor. No quiero ocasionar problemas a <CHARNAME>. */
EXTERN SARVOLO 9

// TEST Amelysan
/*
EXTEND_BOTTOM FINSOL01 27
IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ DO ~SetGlobal("P_ChonFinSol","GLOBAL",1)~ EXTERN P_cho25J P_ChonSolarFriend1
END

CHAIN P_cho25J P_ChonSolarFriend1
@979152 /* Soldado, tu camino ha sido largo y complejo. Viajar por los planos es una proeza que pocas criaturas son capaces de lograr y tú has sido una de ellas. La decisión que tomes, creo firmemente, que será la correcta. */
COPY_TRANS FINSOL01 27
*/



I_C_T FINSOL01 27 P_ChoSolarFriend1
== P_cho25J IF ~InParty("P_Chon") InMyArea("P_Chon") !InParty("P_Dusk") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @979152 /* Soldado, tu camino ha sido largo y complejo. Viajar por los planos es una proeza que pocas criaturas son capaces de lograr y tú has sido una de ellas. La decisión que tomes, creo firmemente, que será la correcta. */
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @979153 /* He aprendido que el poder es algo que pocos son capaces de blandir, <CHARNAME>. Tú eres más que capaz de hacerlo. Por eso, tu decisión, estoy seguro, será de la más acertada. */
== P_Fal25J IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91831 /* No es una decisión fácil, <CHARNAME>. Pero tengo plena confianza en ti. Has sido capaz de superar dificultades que pocos habrían sido capaces de siquiera enfrentar. */
END



APPEND P_Cho25J

IF ~Global("P_ChonTalkToB","GLOBAL",2)~ b1
SAY @9673 /* <CHARNAME>, me gustaría pensar que somos camaradas de batallas. Hemos pasado por mucho en Dreach-naga y Rachnidra. ¿Estás de acuerdo conmigo? */
++ @9674 /* Es verdad, Cho. Hemos combatido demasiado en el Abismo. Nuestra victoria sobre Morgrath fue sublime cuando menos. */ + b1.2
++ @9675 /* Hemos batallado mucho juntos, sí. Pero eso no nos hace amigos. Somos más que nada una casualidad de los eventos. */ + b1.3
++ @9676 /* No tengo tiempo para hablar, Cho. Quizás en otro momento, ¿sí? */ + b.0
END


IF ~~ b.0
SAY @9677 /* ~Comprendo. Lamento interrumpir tu misión. Continuemos.~ */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",3)
~ EXIT
END

IF ~~ b1.2
SAY @9678 /* ~Entonces nos entendemos. Has salvado mi vida y luchar por ti mientras conozco el Plano Material es una de las razones que me permiten seguir adelante.~ */
= @9679 /* Sin embargo, mi intención es sobre inquirir sobre ciertas cuestiones que no logro comprender del todo. Sobre toda esta guerra divina que llevas a cabo. */
++ @96710 /* Te escucho, amigo. ¿Qué es lo que quieres saber? */ + b1.4
++ @96711 /* ~En verdad no tengo tiempo para esto, Cho. Lo dejemos para otra ocasión.~ */ + b.0
END

IF ~~ b1.3
SAY @96712 /* ~Quizás me equivoqué al considerarte como una amistad como tú dices. Los conceptos que manejamos en Dreach-naga son un tanto diferentes.~ */
= @9679 /* Sin embargo, mi intención es sobre inquirir sobre ciertas cuestiones que no logro comprender del todo. Sobre toda esta guerra divina que llevas a cabo. */
++ @96710 /* Te escucho, amigo. ¿Qué es lo que quieres saber? */ + b1.4
++ @96711 /* ~En verdad no tengo tiempo para esto, Cho. Lo dejemos para otra ocasión.~ */ + b.0
END

//
IF ~~ b1.4
SAY @96713 /* Las criaturas que debes derrotar... creo incluso a aquellas que has derrotado, ¿son tus hermanos y hermanas? */
++ @96714 /* Venimos del mismo padre, por lo que en cierto sentido son mis parientes. Sin embargo, no he sido yo quien ha decidido matarlos. Son ellos o yo. Si yo pierdo, es muy probable que ellos conquisten estas tierras. */ + b1.5
++ @96715 /* No los considero así. Algunos se han declarado mis enemigos y han intentado matarme a la primera oportunidad que han tenido. Sólo me he defendido de sus ataques. */ + b1.5
++ @96716 /* He derrotado y debo derrotar a mis hermanos y hermanas, Cho. Sólo así podré reclamar lo que es legítimamente mío. */ + b1.6
END

IF ~~ b1.5
SAY @96717 /* ~He leído una frase en uno de los libros que hallé en el Abismo. "La sangre no termina en la familia." Pertenecía a un caballero que murió combatiendo. Cuando le maté, saqué ese libro de sus pertenencias.~ */
= @96718 /* Esa frase define mucho el espíritu de mi nación. Cuando la leí... sentí un gran remordimiento por haber acabado con la vida de ese guerrero. */
++ @96719 /* ¿Has tenido muchas experiencias similares, Cho? Me refiero a arrepentirte de matar a los invasores. */ + b1.7
++ @96720 /* ~Está bien que lo hayas hecho, Cho. Debías proteger a los tuyos.~ */ + b1.7
END


IF ~~ b1.6
SAY @96721 /* Tu sed de poder me recuerda a mi Reina. Aunque preferiría no hablar u opinar de ello. Quiero hablarte sobre otra cosa: */
= @96717 /* He leído una frase en uno de los libros que hallé en el Abismo. "La sangre no termina en la familia." Pertenecía a un caballero que murió combatiendo. Cuando le maté, saqué ese libro de sus pertenencias. */
= @96718 /* Esa frase define mucho el espíritu de mi nación. Cuando la leí... sentí un gran remordimiento por haber acabado con la vida de ese guerrero. */
++ @96719 /* ¿Has tenido muchas experiencias similares, Cho? Me refiero a arrepentirte de matar a los invasores. */ + b1.7
++ @96720 /* ~Está bien que lo hayas hecho, Cho. Debías proteger a los tuyos.~ */ + b1.7
END


IF ~~ b1.7
SAY @96722 /* ~Creo que lo debes haber adivinado para ahora, pero he aniquilado a muchos invasores del Plano Material cuando arribaron a Dreach-naga. No por deseo propio, sino por orden de mi Reina, Tisiphone.~ */
= @96723 /* Me pareció lógico aprender la Lengua Común, puesto a que aprender del enemigo es un paso necesario en la maestría bélica. Cuando leí aquella frase del caballero, éste ya tenía años muerto. Leer esa frase me hizo recordar aquella batalla. */
= @96724 /* Parecía no saber cómo era que había llegado al Abismo... hay muchas trampas abisales en este Plano que te llevan al Abismo cuando menos lo piensas. */
= @96725 /* Pero tampoco dudó en atacarme cuando me vió. Lo cual comprendo. No soy una criatura hermosa a los ojos de los primarios. Para ser justos, ustedes tampoco son bellos para nosotros, incluso doy testimonio de que muchos hombres-lagarto les temen. */
= @96726 /* Erradicar el miedo de mis tropas se pudo hacer mediante arduas sesiones de entrenamiento. El miedo se transformó en odio, lo cual no era mi intención. */
= @96727 /* Transformar ese odio en concentración fue más difícil que cualquier sesión de combate en los Pantanos de Rask'tar. */
= @96728 /* ¿Sientes eso por aquellos parientes que tienes que aniquilar? */
++ @96729 /* No siento odio por mis enemigos, Cho. De hecho, no siento deseos de ir a una guerra por un reclamo divino. Voy porque no tengo otra alternativa. */ + b1.8
++ @96730 /* Por supuesto, Cho. El odio me fortalece. Me alimenta de poder y hace que el combate contra mis oponentes sea más eficaz. */ + b1.8
END

IF ~~ b1.8
SAY @96731 /* ~Interesante. Pensaré en tus palabras, <CHARNAME>.~ */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",3)~ EXIT
END


// Talk 2
IF ~Global("P_ChonTalkToB","GLOBAL",4)~ b2
SAY @96732 /* <CHARNAME>, ¿alguna vez te conté de cómo llegamos a aliarnos con los Yuan-Ti en Dreach-naga? */
++ @96733 /* Creo que, Cho. Por favor, cuéntame más. */ + b2.1
++ @96734 /* Puede que tenga un leve recuerdo de ello. Pero no me molestaría que me lo cuentes de nuevo, Cho. */ + b2.1
++ @96735 /* No, Cho. Y tampoco me interesa. Estamos muy ocupados en este momento. Será mejor que lo dejemos en otro momento. */ + b2.0
END

IF ~~ b2.0
SAY @9677 /* ~Comprendo. Lamento interrumpir tu misión. Continuemos.~ */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",5)
~ EXIT
END

IF ~~ b2.1
SAY @96736 /* ~Durante años los Yuan-Ti y los Hombres-Lagarto llevaron a cabo una guerra sangrienta por el dominio de Dreach-naga. Al punto en que llevamos a nuestro pueblo a un punto cercano de la extinción.~ */
= @96737 /* No fue hasta la llegada de Tisiphone que eso cambió. Como sabrás y habrás contemplado, Tisiphone era una creación serpentina humanoide. Posiblemente horrible para ti, pero ciertamente maravilloso para nosotros. */
= @96738 /* Tenía los poderosos designios de los basiliscos y la gracia de los jaculis. Al no pertenecer a una tribu en particular y al poder sostenerse a sí misma por su gran poder, fue cuestión de tiempo para que pudiera presentarse como una esperanza para ambas razas. */
= @96739 /* Fue su idea de la crianza comunitaria de ambas razas, es decir, no distinguíamos preferencias a la hora de criar los huevos, sea cual sea su origen. */
= @96740 /* No bastaron muchos años para que los Hombres-lagarto y los Yuan-Ti se considerasen hermanos y hermanas y Dreach-naga pasara a ser una nación en paz, unida en contra de las invasiones foráneas. */
++ @96741 /* Creo saber a donde vas con esto, Cho. Sientes intriga por la guerra de los hijos de Bhaal, ¿no es así? */ + b2.2
++ @96711 /* ~En verdad no tengo tiempo para esto, Cho. Lo dejemos para otra ocasión.~ */ + b2.0
END


IF ~~ b2.2
SAY @96742 /* ~Así es. Si los Yuan-Ti y los Hombres-lagarto lograron encontrar la paz y prosperar juntos pese a todas las transgresiones pasadas, ¿por qué no pueden hacerlo ustedes?~ */
++ @96750 /* Ojalá fuera tan simple, Cho. No puedo hablar por los demás, pero es complicado encontrar la paz cuando un terrible poder se disputa entre medio. */ + b2.3
++ @96751 /* Has visto de lo que son capaces algunos Hijos de Bhaal. Sabrás comprender que no se puede razonar con algunos. */ + b2.4
++ @96752 /* No se puede razonar con todos, Cho. En tu caso, surgió una figura de poder que unificó a los pueblos. En nuestro caso, Bhaal es esa figura de poder y es cruel y sádico. Sólo la destrucción será el resultado de su influjo. */ + b2.5
++ @96753 /* No es de mi interés forjar alianzas con seres inferiores a mí, Cho. El resto de mis "hermanos" y "hermanas" tratan de matarme. Por ello, pagarán con sus vidas. */ + b2.6
++ @96754 /* ~Un tema demasiado complejo para hablarlo ahora. Hay cosas más importantes que hacer ahora, Cho.~ */ + b2.0
END

IF ~~ b2.3
SAY @96755 /* ~La paz no es tan compleja, <CHARNAME>. Puede que sea algo irónico que te lo diga alguien que ha vivido toda su vida en guerra... pero ello te da una perspectiva de lo que es la paz.~ */
= @96743 /* Pero tampoco soy iluso. */
= @96744 /* Comprendo a lo que te refieres. Los engendros de Bhaal son entes individuales que, en su mayoría, parecen discernir lo que está en juego. Un gran poder divino. */
= @96745 /* Esta guerra que lucho por ti... será la última de mi vida. Moriré por ti en el campo de batalla... o sobreviviré para contemplar tu victoria y luego, podré elegir mi camino. */
= @96746 /* Recuerda esto, mi buen amigo: Hemos vivido bajo la sombra de los deseos de los demás. Hemos sido soldados de guerras que no elegimos... pero llegará el día en que podremos elegir qué hacer con lo que resta de nuestros días. */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",5) SetGlobal("P_ChonFINDING_HIS_DESTINY","GLOBAL",1)
~ EXIT
END

IF ~~ b2.4
SAY @96744 /* ~Comprendo a lo que te refieres. Los engendros de Bhaal son entes individuales que, en su mayoría, parecen discernir lo que está en juego. Un gran poder divino.~ */
= @96745 /* Esta guerra que lucho por ti... será la última de mi vida. Moriré por ti en el campo de batalla... o sobreviviré para contemplar tu victoria y luego, podré elegir mi camino. */
= @96746 /* Recuerda esto, mi buen amigo: Hemos vivido bajo la sombra de los deseos de los demás. Hemos sido soldados de guerras que no elegimos... pero llegará el día en que podremos elegir qué hacer con lo que resta de nuestros días. */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",5) SetGlobal("P_ChonFINDING_HIS_DESTINY","GLOBAL",1)
~ EXIT
END

IF ~~ b2.5
SAY @96747 /* ~Admito que Bhaal es un asunto muy ajeno a mis conocimientos de este Plano. Aunque poco a poco logro comprender el influjo que mencionas. Bhaal ausente, Tisiphone ausente. Y sin embargo, parece que su presencia nos rodea en todo momento.~ */
= @96748 /* Pese a esto, sigo creyendo lo siguiente: */
= @96755 /* La paz no es tan compleja, <CHARNAME>. Puede que sea algo irónico que te lo diga alguien que ha vivido toda su vida en guerra... pero ello te da una perspectiva de lo que es la paz. */
= @96743 /* Pero tampoco soy iluso. */
= @96744 /* Comprendo a lo que te refieres. Los engendros de Bhaal son entes individuales que, en su mayoría, parecen discernir lo que está en juego. Un gran poder divino. */
= @96745 /* Esta guerra que lucho por ti... será la última de mi vida. Moriré por ti en el campo de batalla... o sobreviviré para contemplar tu victoria y luego, podré elegir mi camino. */
= @96746 /* Recuerda esto, mi buen amigo: Hemos vivido bajo la sombra de los deseos de los demás. Hemos sido soldados de guerras que no elegimos... pero llegará el día en que podremos elegir qué hacer con lo que resta de nuestros días. */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",5) SetGlobal("P_ChonFINDING_HIS_DESTINY","GLOBAL",1)
~ EXIT
END

IF ~~ b2.6
SAY @96749 /* ~Me asombra el parecido de tus pensamientos con la tardía Tisiphone. Mi Reina no siempre fue así, sin embargo. Aunque ya he hablado de ello y no pretendo hacerlo ahora, <CHARNAME>. Tu gran poder demanda respeto de mi parte y lo tendrás.~ */
= @96748 /* Pese a esto, sigo creyendo lo siguiente: */
= @96755 /* La paz no es tan compleja, <CHARNAME>. Puede que sea algo irónico que te lo diga alguien que ha vivido toda su vida en guerra... pero ello te da una perspectiva de lo que es la paz. */
= @96743 /* Pero tampoco soy iluso. */
= @96744 /* Comprendo a lo que te refieres. Los engendros de Bhaal son entes individuales que, en su mayoría, parecen discernir lo que está en juego. Un gran poder divino. */
= @96745 /* Esta guerra que lucho por ti... será la última de mi vida. Moriré por ti en el campo de batalla... o sobreviviré para contemplar tu victoria y luego, podré elegir mi camino. */
= @96746 /* Recuerda esto, mi buen amigo: Hemos vivido bajo la sombra de los deseos de los demás. Hemos sido soldados de guerras que no elegimos... pero llegará el día en que podremos elegir qué hacer con lo que resta de nuestros días. */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",5) SetGlobal("P_ChonFINDING_HIS_DESTINY","GLOBAL",1)
~ EXIT
END



END // End to APPEND