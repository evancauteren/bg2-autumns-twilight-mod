BEGIN P_QYL

IF ~Global("P_FMeetingQyl","GLOBAL",0)
AreaCheck("P_FAR8")
~ THEN BEGIN 0 // from:
  SAY @9050 /* ~�Mi General! Estaba con los tratativos para remover la horrible estatua de... Oh, ya veo. �M�s aventureros!~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingQyl","GLOBAL",1)~ EXTERN ~P_CHO~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9051 /* ~�Ser� un placer, general Cho'Nuja!~*/
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9052 /* ~En cuanto a ti, criatura fea, �prep�rate a sentir la fuerza de Dreach-naga!~*/
  IF ~~ THEN DO ~DestroyItem("MINHP1")DestroyItem("IMMUNE1")Enemy() ~ UNSOLVED_JOURNAL @310041 EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9053 /* ~Mi General, esta criatura horrible sabe el nombre de nuestra enemiga mortal.~*/
  IF ~~ THEN EXTERN ~P_CHO~ 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9054 /* ~Puede que sean aliados de esa otra criatura horrible que atac� a nuestra Reina. Usted sabe, la que la apu�al�.~*/
  IF ~~ THEN EXTERN ~P_CHO~ 6
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9055 /* ~Mi General, no debemos confiarnos de la Bruja. Sus criaturas siempre andan rondando por nuestras tierras. Puede que no nos ataquen, pero creo que son responsables del ataque que sufri� nuestra Reina.~*/
  IF ~~ THEN EXTERN ~P_CHO~ 9
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9056 /* ~�Ser� un honor, general Cho'Nuja!~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @9057 /* ~En cuanto a ti, <CHARNAME>, prep�rate. �Soy la primer l�nea de defensa del gran Reino de Dreach-naga!~*/
  IF ~~ THEN DO ~DestroyItem("MINHP1")DestroyItem("IMMUNE1") CreateItem("P_FITM16",1,2,1) Enemy() ~ UNSOLVED_JOURNAL @310041 EXIT
END

IF ~Global("P_ChocRevivalFriends","GLOBAL",4)
AreaCheck("P_FAR7")
~ THEN BEGIN 8 // from:
  SAY @9058 /* ~�Estoy... vivo? �T�! T� eres la fea criatura que me derrot�. �General? �La Bruja? �Alguien quiere--?~ */
  IF ~~ THEN DO ~SetGlobal("P_ChocRevivalFriends","GLOBAL",5)~ EXTERN ~P_CHO~ 72
END

IF ~Global("P_ChocRevivalFriends","GLOBAL",5)
AreaCheck("P_FAR7")
~ THEN BEGIN 9 // from:
  SAY @90549 /* ~Yo, Qyl'tar, luchar� al lado de la criatura fea, <CHARNAME>. �Ser� un combate memorable!~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
AreaCheck("P_FA3B")
~ THEN BEGIN 10 // from:
  SAY @90550 /* ~He visto lugares feos, pero este se lleva los premios. *gru�ido* No importa, al cabo de unos d�as nos iremos con la Bruja. Vreshnak insiste en que viajemos junto con Gassthon. Creo que ir�. Alguien tiene que proteger a Vreshnak, �sabes?~ */ IF ~~ THEN DO ~~ EXIT
END

I_C_T P_QYL 8 P_QYL_REVIVAL_1
== P_VRESH IF ~~ THEN @9059 /* Claramente fuimos revividos, Qyl'tar. Pero por ninguno de nuestros chamanes. Ha sido obra de la Bruja del Enclave. */
== p_tamika IF ~~ THEN @90510 /* Lady Vidomina para ti, reptil. Te dirigir�s a ella con respeto.  */
== P_VRESH IF ~~ THEN @90511 /* �O sino qu�? No pareces la gran cosa, for�nea. */
== P_CHO IF ~~ THEN @90512 /* �Suficiente! Vreshnak, Qyl'tar. Es verdad, fueron revividos por Vidomina a pedido m�o y de <CHARNAME>. */
== P_GASS IF ~~ THEN @90513 /* Cho, �c�mo es que sigues con vida? La �ltima vez que te vi estabas agonizando por el tridente de nuestra Reina. */
== P_QYL IF ~~ THEN @90514 /* �Nuestra Reina atac� a nuestro General? No tiene sentido, �por qu� habr�a de hacer algo tan insensato? */
== P_VRESH IF ~~ THEN @90515 /* Vamos, Qyl'tar. Hac�a ya un buen tiempo que nuestra Reina estaba perdiendo los estribos. Que haya querido acabar con la vida de nuestro General no es algo que me sorprenda. */
== P_VRESH IF ~~ THEN @90516 /* Seguramente se vio acorralada por la criatura que acompa�a a nuestro General, el tal <CHARNAME>. */
== P_QYL IF ~~ THEN @90517 /* �Y por qu� Cho'Nuja est� aliado con este tal <CHARNAME>? Dudo que nuestra Reina permita algo as�. */
== P_GASS IF ~~ THEN @90518 /* Nuestra Reina ha muerto, Qyl'tar. */
== P_QYL IF ~~ THEN @90519 /* ��Qu�?! No es posible... */
== P_VRESH IF ~~ THEN @90520 /* Esta vez debo coincidir con Qyl. Dudo mucho que Rask'tar hubiese permitido que entrasen tan f�cilmente al Trono... a menos que... */
== P_GASS IF ~~ THEN @90521 /* Rask'tar Krathiss ha muerto tambi�n. Ha sido obra de <CHARNAME>. */
== P_QYL IF ~~ THEN @90522 /* Dreach-naga... �ha ca�do! Mi General, �por qu� no ha acabado con esta horrible criatura? Que est� respirando es un insulto para-- */
== P_CHO IF ~~ THEN @90523 /* �Ya basta! Es verdad, <CHARNAME> ha matado a Tisiphone y a Rask'tar. Pero tambi�n ha acabado con Arthrom, Kankra, Liphix y Mesothel. */
== P_CHO IF ~~ THEN @90524 /* Hemos enfrentado a Skel'Tharant y le hemos matado. Incluso nos hemos enfrentado contra la misma Morgrath y hemos sobrevivido. */
== P_CHO IF ~~ THEN @90525 /* <CHARNAME> ha empleado el bot�n que obtuvo en sus combates para ampliar el poder del Enclave y prepararnos para la batalla final contra Rachnidra. Pero parte de ese poder ha ido para revivirlos a ustedes. */
== P_CHO IF ~~ THEN @90526 /* Es verdad, Gassthon. Yo deber�a estar muerto por el castigo realizado por nuestra Reina. Pero <CHARNAME> me salv�. Salv� mi vida y luchamos juntos para llegar aqu�, al Enclave construido por Vidomina. */
== P_QYL IF ~~ THEN @90527 /* �Skel'Tharant... est� muerto? */
== P_VRESH IF ~~ THEN @90528 /* Tambi�n han derrotado a los hijos de Morgrath. Es incre�ble. */
== P_GASS IF ~~ THEN @90529 /* Pero... �qu� pasar� con Dreach-naga, Cho? */
== P_CHO IF ~~ THEN @90530 /* Puede que Dreach-naga haya ca�do con la muerte de nuestra Reina y de nuestro Campe�n. Y entiendo que a�n deben procesar eso. Yo lo he hecho mientras he combatido contra las ara�as y a�n debo pensar en lo que vendr� despu�s, si es que sobrevivimos. */
== P_CHO IF ~~ THEN @90531 /* Pero Dreach-naga no es s�lo la tierra que ahora se encuentra infectada con el Shyntquarra. Dreach-naga somos nosotros. Nuestro pueblo seguir� existiendo mientras sigamos luchando. */
== P_CHO IF ~~ THEN @90532 /* Vidomina y <CHARNAME> se encuentran en las �ltimas instancias de la guerra contra Morgrath. �Qu� haremos nosotros? */
== P_VRESH IF ~~ THEN @90533 /* �A qu� te refieres, Cho? */
== P_CHO IF ~~ THEN @90534 /* �Nos quedaremos de brazos cruzados mientras unos for�neos pelean con nuestros enemigos? �O acaso presentaremos batalla? */
== P_CHO IF ~~ THEN @90535 /* Es momento de presentarnos a la batalla, mis comandantes. Morgrath ha infectado nuestras tierras. Si triunfa invadir� otros planos y har� lo mismo. No se detendr� hasta que todo sea oscuridad y sangre. */
== P_CHO IF ~~ THEN @90536 /* Ustedes han vuelto porque hemos utilizado el Tridente de Dreach-naga, el arma Real de nuestra Reina. Ustedes han vuelto porque una de las cabezas de nuestro Campe�n ha servido para que sus esp�ritus renazcan. */
== P_CHO IF ~~ THEN @90537 /* Nuestra Reina, nuestro Campe�n, nuestra tierra corre en su sangre. Donde vayan, Dreach-naga vivir�. */
== P_CHO IF ~~ THEN @90538 /* Por eso... os pido, no como su General, sino como su amigo, que me acompa�en en esta batalla final. */
== P_GASS IF ~~ THEN @90539 /* ... */
== P_GASS IF ~~ THEN @90540 /* De acuerdo, Cho. Cuenta conmigo. */
== P_VRESH IF ~~ THEN @90541 /* Yo tambi�n ir�, Cho. */
== P_QYL IF ~~ THEN @90542 /* Si Vresh y Gassthon han de luchar, �Qyl'tar tambi�n lo har�! */
== P_GASS IF ~~ THEN @90543 /* Ya hemos muerto una vez. �Qu� tanto da�o nos har� hacerlo una segunda vez? */
== p_tamika IF ~~ THEN @90544 /* Admiro tu actitud, yuan-ti. */
== P_GASS IF ~~ THEN @90545 /* Gracias, criatura tenebrosa. */
== P_VIDOMI IF ~~ THEN @90546 /* Ahora que la parte m�s importante ha pasado y s� que contamos con vuestra alianza, he de contarles que si caen en la batalla, podr� revivirlos. */
== P_VIDOMI IF ~~ THEN @90547 /* Por supuesto, para que eso suceda, Morgrath debe morir. Si todos caen en combate, la Reina Ara�a conquistar� esta capa abisal y podr� incluso destruir mi Enclave. */
== P_VIDOMI IF ~~ THEN @90548 /* Perder esta batalla significa perder la guerra. Espero que entiendan esto. */
END
