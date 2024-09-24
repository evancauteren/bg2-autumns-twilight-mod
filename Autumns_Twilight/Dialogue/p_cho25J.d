BEGIN P_Cho25J

// Volo

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("P_Chon") InMyArea("P_Chon")~ + @9670 /* H�blame de Cho'Nuja. */ + P_ChonVoloBio1

END

CHAIN SARVOLO P_ChonVoloBio1
@9671 /* El guerrero del Abismo, de un extinto lugar llamado Dreach-naga. Un combatiente sinigual que representa de manera digna la lucha contra las fuerzas de la Oscuridad, procurando que la amenaza de las ara�as no se expanda a nuestro Plano. Hace tiempo ya se ha dejado de creer que sea una invocaci�n. */
== P_Cho25J IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @9672 /* Bueno, yo seguir� diciendo que soy una convocaci�n, buen se�or. No quiero ocasionar problemas a <CHARNAME>. */
EXTERN SARVOLO 9






APPEND P_Cho25J

IF ~Global("P_ChonTalkToB","GLOBAL",2)~ b1
SAY @9673 /* <CHARNAME>, me gustar�a pensar que somos camaradas de batallas. Hemos pasado por mucho en Dreach-naga y Rachnidra. �Est�s de acuerdo conmigo? */
++ @9674 /* Es verdad, Cho. Hemos combatido demasiado en el Abismo. Nuestra victoria sobre Morgrath fue sublime cuando menos. */ + b1.2
++ @9675 /* Hemos batallado mucho juntos, s�. Pero eso no nos hace amigos. Somos m�s que nada una casualidad de los eventos. */ + b1.3
++ @9676 /* No tengo tiempo para hablar, Cho. Quiz�s en otro momento, �s�? */ + b.0
END


IF ~~ b.0
SAY @9677 /* ~Comprendo. Lamento interrumpir tu misi�n. Continuemos.~ */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",3)
~ EXIT
END

IF ~~ b1.2
SAY @9678 /* ~Entonces nos entendemos. Has salvado mi vida y luchar por ti mientras conozco el Plano Material es una de las razones que me permiten seguir adelante.~ */
= @9679 /* Sin embargo, mi intenci�n es sobre inquirir sobre ciertas cuestiones que no logro comprender del todo. Sobre toda esta guerra divina que llevas a cabo. */
++ @96710 /* Te escucho, amigo. �Qu� es lo que quieres saber? */ + b1.4
++ @96711 /* ~En verdad no tengo tiempo para esto, Cho. Lo dejemos para otra ocasi�n.~ */ + b.0
END

IF ~~ b1.3
SAY @96712 /* ~Quiz�s me equivoqu� al considerarte como una amistad como t� dices. Los conceptos que manejamos en Dreach-naga son un tanto diferentes.~ */
= @9679 /* Sin embargo, mi intenci�n es sobre inquirir sobre ciertas cuestiones que no logro comprender del todo. Sobre toda esta guerra divina que llevas a cabo. */
++ @96710 /* Te escucho, amigo. �Qu� es lo que quieres saber? */ + b1.4
++ @96711 /* ~En verdad no tengo tiempo para esto, Cho. Lo dejemos para otra ocasi�n.~ */ + b.0
END

//
IF ~~ b1.4
SAY @96713 /* Las criaturas que debes derrotar... creo incluso a aquellas que has derrotado, �son tus hermanos y hermanas? */
++ @96714 /* Venimos del mismo padre, por lo que en cierto sentido son mis parientes. Sin embargo, no he sido yo quien ha decidido matarlos. Son ellos o yo. Si yo pierdo, es muy probable que ellos conquisten estas tierras. */ + b1.5
++ @96715 /* No los considero as�. Algunos se han declarado mis enemigos y han intentado matarme a la primera oportunidad que han tenido. S�lo me he defendido de sus ataques. */ + b1.5
++ @96716 /* He derrotado y debo derrotar a mis hermanos y hermanas, Cho. S�lo as� podr� reclamar lo que es leg�timamente m�o. */ + b1.6
END

IF ~~ b1.5
SAY @96717 /* ~He le�do una frase en uno de los libros que hall� en el Abismo. "La sangre no termina en la familia." Pertenec�a a un caballero que muri� combatiendo. Cuando le mat�, saqu� ese libro de sus pertenencias.~ */
= @96718 /* Esa frase define mucho el esp�ritu de mi naci�n. Cuando la le�... sent� un gran remordimiento por haber acabado con la vida de ese guerrero. */
++ @96719 /* �Has tenido muchas experiencias similares, Cho? Me refiero a arrepentirte de matar a los invasores. */ + b1.7
++ @96720 /* ~Est� bien que lo hayas hecho, Cho. Deb�as proteger a los tuyos.~ */ + b1.7
END


IF ~~ b1.6
SAY @96721 /* Tu sed de poder me recuerda a mi Reina. Aunque preferir�a no hablar u opinar de ello. Quiero hablarte sobre otra cosa: */
= @96717 /* He le�do una frase en uno de los libros que hall� en el Abismo. "La sangre no termina en la familia." Pertenec�a a un caballero que muri� combatiendo. Cuando le mat�, saqu� ese libro de sus pertenencias. */
= @96718 /* Esa frase define mucho el esp�ritu de mi naci�n. Cuando la le�... sent� un gran remordimiento por haber acabado con la vida de ese guerrero. */
++ @96719 /* �Has tenido muchas experiencias similares, Cho? Me refiero a arrepentirte de matar a los invasores. */ + b1.7
++ @96720 /* ~Est� bien que lo hayas hecho, Cho. Deb�as proteger a los tuyos.~ */ + b1.7
END


IF ~~ b1.7
SAY @96722 /* ~Creo que lo debes haber adivinado para ahora, pero he aniquilado a muchos invasores del Plano Material cuando arribaron a Dreach-naga. No por deseo propio, sino por orden de mi Reina, Tisiphone.~ */
= @96723 /* Me pareci� l�gico aprender la Lengua Com�n, puesto a que aprender del enemigo es un paso necesario en la maestr�a b�lica. Cuando le� aquella frase del caballero, �ste ya ten�a a�os muerto. Leer esa frase me hizo recordar aquella batalla. */
= @96724 /* Parec�a no saber c�mo era que hab�a llegado al Abismo... hay muchas trampas abisales en este Plano que te llevan al Abismo cuando menos lo piensas. */
= @96725 /* Pero tampoco dud� en atacarme cuando me vi�. Lo cual comprendo. No soy una criatura hermosa a los ojos de los primarios. Para ser justos, ustedes tampoco son bellos para nosotros, incluso doy testimonio de que muchos hombres-lagarto les temen. */
= @96726 /* Erradicar el miedo de mis tropas se pudo hacer mediante arduas sesiones de entrenamiento. El miedo se transform� en odio, lo cual no era mi intenci�n. */
= @96727 /* Transformar ese odio en concentraci�n fue m�s dif�cil que cualquier sesi�n de combate en los Pantanos de Rask'tar. */
= @96728 /* �Sientes eso por aquellos parientes que tienes que aniquilar? */
++ @96729 /* No siento odio por mis enemigos, Cho. De hecho, no siento deseos de ir a una guerra por un reclamo divino. Voy porque no tengo otra alternativa. */ + b1.8
++ @96730 /* Por supuesto, Cho. El odio me fortalece. Me alimenta de poder y hace que el combate contra mis oponentes sea m�s eficaz. */ + b1.8
END

IF ~~ b1.8
SAY @96731 /* ~Interesante. Pensar� en tus palabras, <CHARNAME>.~ */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",3)~ EXIT
END


// Talk 2
IF ~Global("P_ChonTalkToB","GLOBAL",4)~ b2
SAY @96732 /* <CHARNAME>, �alguna vez te cont� de c�mo llegamos a aliarnos con los Yuan-Ti en Dreach-naga? */
++ @96733 /* Creo que, Cho. Por favor, cu�ntame m�s. */ + b2.1
++ @96734 /* Puede que tenga un leve recuerdo de ello. Pero no me molestar�a que me lo cuentes de nuevo, Cho. */ + b2.1
++ @96735 /* No, Cho. Y tampoco me interesa. Estamos muy ocupados en este momento. Ser� mejor que lo dejemos en otro momento. */ + b2.0
END

IF ~~ b2.0
SAY @9677 /* ~Comprendo. Lamento interrumpir tu misi�n. Continuemos.~ */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",5)
~ EXIT
END

IF ~~ b2.1
SAY @96736 /* ~Durante a�os los Yuan-Ti y los Hombres-Lagarto llevaron a cabo una guerra sangrienta por el dominio de Dreach-naga. Al punto en que llevamos a nuestro pueblo a un punto cercano de la extinci�n.~ */
= @96737 /* No fue hasta la llegada de Tisiphone que eso cambi�. Como sabr�s y habr�s contemplado, Tisiphone era una creaci�n serpentina humanoide. Posiblemente horrible para ti, pero ciertamente maravilloso para nosotros. */
= @96738 /* Ten�a los poderosos designios de los basiliscos y la gracia de los jaculis. Al no pertenecer a una tribu en particular y al poder sostenerse a s� misma por su gran poder, fue cuesti�n de tiempo para que pudiera presentarse como una esperanza para ambas razas. */
= @96739 /* Fue su idea de la crianza comunitaria de ambas razas, es decir, no distingu�amos preferencias a la hora de criar los huevos, sea cual sea su origen. */
= @96740 /* No bastaron muchos a�os para que los Hombres-lagarto y los Yuan-Ti se considerasen hermanos y hermanas y Dreach-naga pasara a ser una naci�n en paz, unida en contra de las invasiones for�neas. */
++ @96741 /* Creo saber a donde vas con esto, Cho. Sientes intriga por la guerra de los hijos de Bhaal, �no es as�? */ + b2.2
++ @96711 /* ~En verdad no tengo tiempo para esto, Cho. Lo dejemos para otra ocasi�n.~ */ + b2.0
END


IF ~~ b2.2
SAY @96742 /* ~As� es. Si los Yuan-Ti y los Hombres-lagarto lograron encontrar la paz y prosperar juntos pese a todas las transgresiones pasadas, �por qu� no pueden hacerlo ustedes?~ */
++ @96750 /* Ojal� fuera tan simple, Cho. No puedo hablar por los dem�s, pero es complicado encontrar la paz cuando un terrible poder se disputa entre medio. */ + b2.3
++ @96751 /* Has visto de lo que son capaces algunos Hijos de Bhaal. Sabr�s comprender que no se puede razonar con algunos. */ + b2.4
++ @96752 /* No se puede razonar con todos, Cho. En tu caso, surgi� una figura de poder que unific� a los pueblos. En nuestro caso, Bhaal es esa figura de poder y es cruel y s�dico. S�lo la destrucci�n ser� el resultado de su influjo. */ + b2.5
++ @96753 /* No es de mi inter�s forjar alianzas con seres inferiores a m�, Cho. El resto de mis "hermanos" y "hermanas" tratan de matarme. Por ello, pagar�n con sus vidas. */ + b2.6
++ @96754 /* ~Un tema demasiado complejo para hablarlo ahora. Hay cosas m�s importantes que hacer ahora, Cho.~ */ + b2.0
END

IF ~~ b2.3
SAY @96755 /* ~La paz no es tan compleja, <CHARNAME>. Puede que sea algo ir�nico que te lo diga alguien que ha vivido toda su vida en guerra... pero ello te da una perspectiva de lo que es la paz.~ */
= @96743 /* Pero tampoco soy iluso. */
= @96744 /* Comprendo a lo que te refieres. Los engendros de Bhaal son entes individuales que, en su mayor�a, parecen discernir lo que est� en juego. Un gran poder divino. */
= @96745 /* Esta guerra que lucho por ti... ser� la �ltima de mi vida. Morir� por ti en el campo de batalla... o sobrevivir� para contemplar tu victoria y luego, podr� elegir mi camino. */
= @96746 /* Recuerda esto, mi buen amigo: Hemos vivido bajo la sombra de los deseos de los dem�s. Hemos sido soldados de guerras que no elegimos... pero llegar� el d�a en que podremos elegir qu� hacer con lo que resta de nuestros d�as. */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",5) SetGlobal("P_ChonFINDING_HIS_DESTINY","GLOBAL",1)
~ EXIT
END

IF ~~ b2.4
SAY @96744 /* ~Comprendo a lo que te refieres. Los engendros de Bhaal son entes individuales que, en su mayor�a, parecen discernir lo que est� en juego. Un gran poder divino.~ */
= @96745 /* Esta guerra que lucho por ti... ser� la �ltima de mi vida. Morir� por ti en el campo de batalla... o sobrevivir� para contemplar tu victoria y luego, podr� elegir mi camino. */
= @96746 /* Recuerda esto, mi buen amigo: Hemos vivido bajo la sombra de los deseos de los dem�s. Hemos sido soldados de guerras que no elegimos... pero llegar� el d�a en que podremos elegir qu� hacer con lo que resta de nuestros d�as. */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",5) SetGlobal("P_ChonFINDING_HIS_DESTINY","GLOBAL",1)
~ EXIT
END

IF ~~ b2.5
SAY @96747 /* ~Admito que Bhaal es un asunto muy ajeno a mis conocimientos de este Plano. Aunque poco a poco logro comprender el influjo que mencionas. Bhaal ausente, Tisiphone ausente. Y sin embargo, parece que su presencia nos rodea en todo momento.~ */
= @96748 /* Pese a esto, sigo creyendo lo siguiente: */
= @96755 /* La paz no es tan compleja, <CHARNAME>. Puede que sea algo ir�nico que te lo diga alguien que ha vivido toda su vida en guerra... pero ello te da una perspectiva de lo que es la paz. */
= @96743 /* Pero tampoco soy iluso. */
= @96744 /* Comprendo a lo que te refieres. Los engendros de Bhaal son entes individuales que, en su mayor�a, parecen discernir lo que est� en juego. Un gran poder divino. */
= @96745 /* Esta guerra que lucho por ti... ser� la �ltima de mi vida. Morir� por ti en el campo de batalla... o sobrevivir� para contemplar tu victoria y luego, podr� elegir mi camino. */
= @96746 /* Recuerda esto, mi buen amigo: Hemos vivido bajo la sombra de los deseos de los dem�s. Hemos sido soldados de guerras que no elegimos... pero llegar� el d�a en que podremos elegir qu� hacer con lo que resta de nuestros d�as. */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",5) SetGlobal("P_ChonFINDING_HIS_DESTINY","GLOBAL",1)
~ EXIT
END

IF ~~ b2.6
SAY @96749 /* ~Me asombra el parecido de tus pensamientos con la tard�a Tisiphone. Mi Reina no siempre fue as�, sin embargo. Aunque ya he hablado de ello y no pretendo hacerlo ahora, <CHARNAME>. Tu gran poder demanda respeto de mi parte y lo tendr�s.~ */
= @96748 /* Pese a esto, sigo creyendo lo siguiente: */
= @96755 /* La paz no es tan compleja, <CHARNAME>. Puede que sea algo ir�nico que te lo diga alguien que ha vivido toda su vida en guerra... pero ello te da una perspectiva de lo que es la paz. */
= @96743 /* Pero tampoco soy iluso. */
= @96744 /* Comprendo a lo que te refieres. Los engendros de Bhaal son entes individuales que, en su mayor�a, parecen discernir lo que est� en juego. Un gran poder divino. */
= @96745 /* Esta guerra que lucho por ti... ser� la �ltima de mi vida. Morir� por ti en el campo de batalla... o sobrevivir� para contemplar tu victoria y luego, podr� elegir mi camino. */
= @96746 /* Recuerda esto, mi buen amigo: Hemos vivido bajo la sombra de los deseos de los dem�s. Hemos sido soldados de guerras que no elegimos... pero llegar� el d�a en que podremos elegir qu� hacer con lo que resta de nuestros d�as. */
IF ~~ DO ~SetGlobal("P_ChonTalkToB","GLOBAL",5) SetGlobal("P_ChonFINDING_HIS_DESTINY","GLOBAL",1)
~ EXIT
END



END // End to APPEND