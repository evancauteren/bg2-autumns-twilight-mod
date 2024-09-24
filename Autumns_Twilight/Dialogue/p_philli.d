BEGIN P_PHILLI

IF ~!InParty("P_Fall")
Global ("P_FMeetingPhillipe","GLOBAL",0)
AreaCheck("P_FAR5")
~ THEN BEGIN 0A // from:
  SAY @9760 /* ~*grito ahogado* �Q-qu�? M�s primarios llegan a las cuevas... Phillipe estar sorprendido.~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingPhillipe","GLOBAL",1)~ GOTO 1A
END

IF ~~ THEN BEGIN 1A // from:
  SAY @976100 /* ~Viajeros estar en cuevas de las ara�as... Os dir�a que and�is con cuidado, pero Phillipe llevar d�as sin ver ara�a alguna. Extra�o, muy extra�o.~ */
  IF ~~ THEN GOTO 2
END

IF ~InParty("P_Fall")
Global ("P_FMeetingPhillipe","GLOBAL",0)
AreaCheck("P_FAR5")
~ THEN BEGIN 0 // from:
  SAY @9760 /* ~*grito ahogado* �Q-qu�? M�s primarios llegan a las cuevas... Phillipe estar sorprendido.~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingPhillipe","GLOBAL",1)~ EXTERN ~P_FALLJ~ 79 
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9761 /* ~�S�! Humana de orejas puntiagudas estar en cuevas de las ara�as... Os dir�a que and�is con cuidado, pero Phillipe llevar d�as sin ver ara�a alguna. Extra�o, muy extra�o.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9762 /* ~Phillipe preguntarse: �en qu� poder ayudar? Justo terminaba de cenar. �Quer�is?~*/
    IF ~~ THEN REPLY @9763 /* Saludos, Phillipe. Soy <CHARNAME>. �C�mo nos puedes servir de ayuda aqu� en Rachnidra? M�s importante a�n: �c�mo es que las ara�as a�n no te han devorado? */  GOTO 3
	IF ~~ THEN REPLY @9764 /* Escucha, rata, no me f�o de ti. Primero porque pareciera ser que nos estabas esperando. Segundo, porque est�s comiendo carne, posiblemente humana. Creo que deber�a acabar contigo, s�lo por si las dudas. */  GOTO 4
    IF ~~ THEN REPLY @9765 /* Phillipe. Soy <CHARNAME>. �Nos encontramos realmente en Rachnidra? No veo que el lugar est� plagado de ar�cnidos. �Qu� significa esto? */  GOTO 5
    IF ~~ THEN REPLY @9766 /* Por Candelero... todos esos cad�veres a nuestra izquierda... �qu� ha pasado aqu�? �Has sido t�? Quiz�s no seas tan inofensivo como aparentas. */  GOTO 4
    IF ~~ THEN REPLY @9767 /* Dinos lo que sepas de este lugar, engendro, de Rachnidra. Y hazlo con cuidado. Tengo mi arma y planeo usarla al menor indicio de traici�n. */  GOTO 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9768 /* ~Phillipe conoce bien los rincones de las cuevas ar�cnidas. Phillipe ha escapado del monstruo gigante que devora humanos... aunque... Phillipe no pudo salvar a su familia.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9769 /* ~�No, por favor! Phillipe no ser malvado... s�lo comer porque tener hambre... s�lo comer carne de ganado... No comer humanos... no es carne humana, lo prometo...~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5 // from:
  SAY @97610 /* ~Phillipe no sabe qu� ser Rachnidra... pero comprender que estas tierras pertenecen a las ara�as y a los lagartos. Lagartos librar guerra contra las ara�as. Aunque eso no explicar por qu� no haber ara�as en cuevas.~ */
  IF ~~ THEN GOTO 9
END


IF ~~ THEN BEGIN 6 // from:
  SAY @97611 /* ~�No, por favor! Phillipe no ser malvado... Phillipe no traicionar. Phillipe estar s�lo, muy s�lo. �Dir� lo que s�!~ */
  IF ~~ THEN GOTO 5
END


IF ~~ THEN BEGIN 7 // from:
  SAY @97612 /* ~P-por favor, perdonar vida a Phillipe. Phillipe ayudar, ser buen amigo.~*/
    IF ~~ THEN REPLY @97613 /* Hm. No, monstruo. No me f�o de ti. �Es hora de tu muerte! */  GOTO 8
	IF ~~ THEN REPLY @97614 /* De acuerdo, de acuerdo. Dinos lo que sepas de Rachnidra entonces. */  GOTO 5
END


IF ~~ THEN BEGIN 8 // from:
  SAY @97615 /* �NO!�Noooo! */
  IF ~~ THEN DO ~SetGlobal ("P_FMeetingPhillipe","GLOBAL",1) SetGlobal ("P_CharAttackPhillipe","GLOBAL",1) Enemy () ~ UNSOLVED_JOURNAL @310037 EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @97616 /* ~Ustedes... ustedes venir a luchar en la guerra, �no es as�?~*/
    IF ~~ THEN REPLY @97617 /* A decir verdad no esperaba entrar en territorio b�lico, pero si hay una batalla, no la rehuir�. �Puedes servirnos de gu�a en este lugar? */  GOTO 10
	IF ~~ THEN REPLY @97618 /* As� es, Phillipe. Somos soldados. Somos guerreros. Matar es nuestro destino. */  GOTO 12
	IF ~~ THEN REPLY @97619 /* Lo que hagamos aqu� no es asunto vuestro, peque�o. S�lo necesitamos que nos indiques hacia d�nde ir. */  GOTO 10
	IF ~~ THEN REPLY @97620 /* De ser posible preferir�a no interferir. Las guerras s�lo traen caos y destrucci�n. */  GOTO 11
END


IF ~~ THEN BEGIN 10 // from:
  SAY @97621 /* ~Phillipe indicar camino, pero no acompa�arlos... Phillipe creer que ustedes ser amigos, pero Phillipe ser muy cobarde. P-puedo ayudarlos dici�ndoles hacia d�nde ir.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 11 // from:
  SAY @97622 /* ~Creo comprender. Pensar como Phillipe. Phillipe ayudar.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY @97623 /* ~Phillip no ser soldado... no poder comprender necesidad de matar. S�lo querer vivir.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 13 // from:
  SAY @97624 /* ~Phillipe indicar camino, pero no acompa�arlos... Phillipe creer que ustedes ser amigos, pero Phillipe ser muy cobarde. P-puedo ayudarlos dici�ndoles hacia d�nde ir.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from:
  SAY @97625 /* ~Haber varios conductos que llevar a diferentes lugares. Pero advertir que s�lo podr�n cruzar por uno.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @97626 /* ~Phillipe no saber c�mo entrar, pero puede que ELLA lo sepa.~*/
    IF ~~ THEN REPLY @97627 /* �Ella? Phillipe, �a qui�n te refieres? */  GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @97632 /* ~Phillipe referirse a la hechicera. Es muy poderosa, pero puede que sepa c�mo ingresar al recinto de la Reina o de su campe�n.~*/
    IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY @97628 /* ~Llegar�n a ella a trav�s de las cuevas del Norte. S�, Norte.~*/
    IF ~~ THEN REPLY @97629 /* Gracias, Phillipe. �T� qu� har�s mientras tanto? */  GOTO 19
    IF ~~ THEN REPLY @97630 /* Gracias por la informaci�n. Ya no te necesito. Creo que ser� mejor matarte ya que si te atrapa el enemigo, puedes llegar a revelar mis planes... */  GOTO 8
END

IF ~~ THEN BEGIN 19 // from:
  SAY @97631 /* ~Si logras llegar a tierras de lagarto, busca mi refugio. All� podr�s descansar si querer. �Amigos son bienvenidos! Ahora, me despido. Andar con cuidado. Trampas ara�as y trampas m�gicas por todos lados.~*/
  IF ~~ THEN DO ~SetGlobal ("P_FMeetingPhillipe","GLOBAL",1) EscapeArea() ~ UNSOLVED_JOURNAL @310038 EXIT
END

IF ~Global ("P_FMeetingPhillipe","GLOBAL",1)
Global ("P_FMissionPhillipe","GLOBAL",0)
AreaCheck("P_FAR9")
~ THEN BEGIN 20 // from:
  SAY @97646 /* ~�Ah! Amigos de Phillipe llegar a refugio de Phillipe. �Qu� emoci�n! Tener cuidado en hogar de los lagartos. No ser tan peligrosos como ara�as pero ser peligrosos a fin de cuentas.~ */
    IF ~~ THEN REPLY @97647 /* Gracias por tu bienvenida, Phillipe. �As� que este es tu... hogar? */  GOTO 22
    IF ~~ THEN REPLY @97648 /* No tengo tiempo para esto. Adi�s, Phillipe. */  GOTO 21
END

IF ~~ THEN BEGIN 21 // from:
  SAY @97649 /* ~�Volver a visitar a Phillipe pronto! Phillipe disfrutar tu compa��a.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY @97650 /* ~Refugio abandonado ser hogar de Phillipe, s�. Bueno... no tan hogar. Estar s�lo no s� si considerar hogar. Phillipe ya no tiene hermanos. Ni compa��a.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @97651 /* ~�Poder descansar aqu�! No hay muchos lugares en donde poder descansar en este pa�s. Energ�as cham�nicas disturban sue�os. No poder dormir. Aqu� s� poder dormir.~*/
    IF ~~ THEN REPLY @97652 /* Comprendo. No te gusta estar s�lo, �verdad? */  GOTO 22_2
    IF ~~ THEN REPLY @97653 /* Gracias, Phillipe. Pero ahora debo irme. Nos vemos luego. */  GOTO 21
END

IF ~~ THEN BEGIN 22_2 // from:
  SAY @97654 /* ~No. Phillipe no gusta estar s�lo. Ser amigo tuyo ser la �nica felicidad en los �ltimos meses de Phillipe. Phillipe ya no estar tan triste.~ */
  IF ~~ THEN GOTO 23_2
END

IF ~~ THEN BEGIN 23_2 // from:
  SAY @97655 /* ~Ojal� t� poder quedar conmigo. Ser�amos buenos hermanos.~*/
    IF ~~ THEN REPLY @97656 /* Hay otro lugar que tambi�n es seguro. El Enclave de Vidomina. */  GOTO 24
    IF ~~ THEN REPLY @97657 /* Lo pensar�, Phillipe. Ahora debo irme. Hablamos despu�s. */  GOTO 21
END

IF ~~ THEN BEGIN 24 // from:
  SAY @97658 /* ~�Vido...mina? T� referirte a hechicera muerta, �s�? Phillipe pensar que ella odiar a Phillipe.~ */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @97659 /* ~Phillipe no creer que ella permita a Phillipe vivir en su Enclave.~*/
    IF ~~ THEN REPLY @97660 /* Puedo hablar con ella si lo deseas. Lo creas o no, ella sabe qui�n eres. No creo que tenga problemas en alojarte en su Enclave. */  GOTO 26
    IF ~~ THEN REPLY @97661 /* Puede que tengas raz�n, peque�o. Bueno, debo irme. Hablaremos luego, �s�? */  GOTO 21
END

IF ~~ THEN BEGIN 26 // from:
  SAY @97662 /* ~�Har�as... har�as eso por Phillipe? De acuerdo. Phillipe esperar aqu� por tu respuesta, mi buen amigo.~ ~�Har�as... har�as eso por Phillipe? De acuerdo. Phillipe esperar aqu� por tu respuesta, mi buena amiga.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FMissionPhillipe","GLOBAL",1) ~ UNSOLVED_JOURNAL @310042 EXIT
END

IF ~Global ("P_FMeetingPhillipe","GLOBAL",1)
AreaCheck("P_FAR9")
OR(2)
Global ("P_FMissionPhillipe","GLOBAL",1)
Global ("P_FMissionPhillipe","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY @97663 /* ~�Ah! Amigos de Phillipe llegar de nuevo. �C�mo ir? Phillipe estar emocionado.~ */
    IF ~PartyHasItem("P_FTALI6")~ THEN REPLY @97664 /* Vidomina quiere que vivas en su Enclave. All� estar�s seguro. Me ha dado este talism�n para ti. Con �l podr�s entrar a su recinto. */  GOTO 28
    IF ~!PartyHasItem("P_FTALI6")~ THEN REPLY @97665 /* A�n necesito hablar con Vidomina, Phillipe. Aguarda aqu�. */  GOTO 29
    IF ~~ THEN REPLY @97666 /* S�lo pasaba a saludar, Phillipe. Ahora debo irme. */  GOTO 21
END

IF ~~ THEN BEGIN 28 // from:
  SAY @97667 /* ~�De verdad? �Oh, qu� d�a tan feliz! Phillipe promete no tener miedo de los muertos. O al menos de estos muertos. Espero que t�, mi buen amigo, visitar a Phillipe, �s�?~ ~�De verdad? �Oh, qu� d�a tan feliz! Phillipe promete no tener miedo de los muertos. O al menos de estos muertos. Espero que t�, mi buena amiga, visitar a Phillipe, �s�?~ */
  IF ~~ THEN DO ~SetGlobal ("P_FMissionPhillipe","GLOBAL",3) TakePartyItem("P_FTALI6") EraseJournalEntry (@310042) EraseJournalEntry (@310043) AddexperienceParty(50000)EscapeArea()~ SOLVED_JOURNAL @310044 EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY @97668 /* ~�Oh, buenas noticias, buenas noticias! Phillipe esperar aqu� entonces. �Phillipe emocionado!~ */
  IF ~~ THEN EXIT
END


// PROGRAMAR ITEM DE RECOMPENSA PARA CHARNAME (decir nombre de charname a phillipe) P_FITM17
IF ~AreaCheck("P_FAR7")
Global ("P_SkelTharantQuest","GLOBAL",0)
Global ("P_PhillipeReward","GLOBAL",0)~ 
THEN BEGIN 30 // from:
  SAY @97670 /* ~�Amigo! Phillipe estar muy contento en casa de Lady Vidomina. Tratar a Phillipe bien.~ ~�Amiga! Phillipe estar muy contento en casa de Lady Vidomina. Tratar a Phillipe bien.~ */
  IF ~~ THEN DO ~SetGlobal ("P_PhillipeReward","GLOBAL",1)~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from:
  SAY @97671 /* ~Phillipe querer agradecer a amigo. Phillipe entregar extra�o artefacto que Phillipe encontrar en sus viajes. No parecer mucho pero esperar que gustar a mi buen amigo.~ ~Phillipe querer agradecer a amigo. Phillipe entregar extra�o artefacto que Phillipe encontrar en sus viajes. No parecer mucho pero esperar que gustar a mi buena amiga.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM17",1,2,1) GiveItem ("P_FITM17", LastTalkedToBy) SetGlobal ("P_PhillipeReward","GLOBAL",1)~ EXIT
END

IF ~AreaCheck("P_FAR7")
Global ("P_SkelTharantQuest","GLOBAL",0)
Global ("P_PhillipeReward","GLOBAL",1)~ 
THEN BEGIN 32 // from:
  SAY @97669 /* ~�Amigo! Lady Vidomina y sus amigos me han recibido de buena manera. Aqu� voy a estar a salvo. Phillipe sentir que ganar nueva familia. Gracias, gracias, gracias.~ ~�Amiga! Lady Vidomina y sus amigos me han recibido de buena manera. Aqu� voy a estar a salvo. Phillipe sentir que ganar nueva familia. Gracias, gracias, gracias.~ */
  IF ~~ THEN EXIT
END

IF ~AreaCheck("P_FAR7")
Global("P_PhillipeBravery","GLOBAL",2)
~ 
THEN BEGIN 33 // from:
  SAY @97672 /* ~<CHARNAME>... �e-es verdad lo que o�?~ */
  IF ~~ THEN DO ~SetGlobal ("P_PhillipeBravery","GLOBAL",3)~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from:
  SAY @97673 /* ~�Vais... vais a enfrentar a Skel'Tharant?~*/
    IF ~~ THEN REPLY @97674 /* A�n no lo he decidido, Phillipe. Pero teniendo en cuenta lo que Vidomina nos ha dicho, es muy probable que ese enfrentamiento sea inevitable. */  GOTO 35
    IF ~~ THEN REPLY @97675 /* Tengo pensado matarlo antes de mi enfrentamiento final contra Morgrath. �Por qu� lo preguntas, peque�o amigo? */  GOTO 35
END

IF ~~ THEN BEGIN 35 // from:
  SAY @97676 /* ~�No! Por favor, no hacerlo. Skel'Tharant matar familia de Phillipe. No querer que matar a ti tambi�n. No hacerlo. La bestia... no puede ser matada. Phillipe ver incontable cantidad de valientes guerreros intentarlo... todos ser devorados por Skel'Tharant.~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 60
END

IF ~~ THEN BEGIN 36 // from:
  SAY @97677 /* ~�Phillipe? *nervioso* �Q-qu� puede hacer Phillipe para ayudar?~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 64
END

IF ~~ THEN BEGIN 37 // from:
  SAY @97678 /* ~�N-no! No... Phillipe no poder hacerlo... Phillipe tener miedo... Skel'Tharant...~*/
    IF ~~ THEN REPLY @97679 /* Phillipe, �no seas cobarde! M�s te vale que est�s dispuesto a ayudarnos. He hecho mucho por ti y espero algo a cambio. */  GOTO 38
    IF ~~ THEN REPLY @97680 /* Phillipe, no te preocupes. No le temo a Skel'Tharant. Tengo la certeza de que podr� vencerle a�n sin ese aceite m�gico. */  GOTO 39
    IF ~~ THEN REPLY @97681 /* Phillipe, entiendo que tengas miedo. Yo tambi�n lo tendr�a. Pero, �acaso Skel'Tharant no mat� a tu familia? �No fueron tus hermanos asesinados por esa bestia a la que tanto temes? */  GOTO 41
END

IF ~~ THEN BEGIN 38 // from:
  SAY @97682 /* ~�N-no! *tiembla* Por favor... Phillipe no poder hacerlo...~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 67
END

IF ~~ THEN BEGIN 39 // from:
  SAY @97683 /* ~G-gracias por entender a Phillipe, buen amigo. P-perd�n por ser tan cobarde...~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 67
END

IF ~AreaCheck("P_FAR7")
Global ("P_SkelTharantQuest","GLOBAL",1)
Global ("P_PhillipeReward","GLOBAL",1)
Global ("P_PhillipeBravery","GLOBAL",9)
!Dead("P_SKEL")~ 
THEN BEGIN 40 // from:
  SAY @97684 /* ~<CHARNAME>, Phillipe lamentar no poder ayudar. P-perd�n...~ */
  IF ~~ THEN EXIT
END

IF ~AreaCheck("P_FAR7")
Global ("P_SkelTharantQuest","GLOBAL",1)
Global ("P_PhillipeReward","GLOBAL",1)
Global ("P_PhillipeBravery","GLOBAL",9)
Dead("P_SKEL")~ 
THEN BEGIN 40B // from:
  SAY @976101 /* ~�<CHARNAME>, derrotar a Skel'Tharant! Phillipe... sorprendido. <CHARNAME> tener poder incre�ble.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY @97685 /* ~Ser verdad... ser verdad. Skel'Tharant... matar familia. Phillipe tener oportunidad de venganza.~*/
    IF ~~ THEN REPLY @97686 /* Ay�dame, Phillipe. Juntos haremos pagar a Skel'Tharant por lo que le hizo a tu familia. */  GOTO 42
END

IF ~~ THEN BEGIN 42 // from:
  SAY @97687 /* ~S�... �S�! Phillipe ayudar a <CHARNAME>. Phillipe ayudar a Lady Vidomina.~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 68
END

IF ~AreaCheck("P_FAR7")
Global ("P_SkelTharantQuest","GLOBAL",1)
Global ("P_PhillipeReward","GLOBAL",1)
Global ("P_PhillipeBravery","GLOBAL",3)~ 
THEN BEGIN 43 // from:
  SAY @97688 /* ~�Phillipe ayudar a <CHARNAME> en su lucha contra Skel'Tharant!~ */
  IF ~~ THEN EXIT
END

IF ~AreaCheck("P_FA15")
Global ("P_PhillipeBravery","GLOBAL",4)~ 
THEN BEGIN 44 // from:
  SAY @97689 /* ~�No! �Skel'Tharant no matar� a <CHARNAME>!~ */
  IF ~~ THEN DO ~SetGlobal ("P_PhillipeBravery","GLOBAL",5)~ EXTERN ~P_SKEL~ 15
END

IF ~~ THEN BEGIN 45 // from:
  SAY @97690 /* ~Y-yo... yo...~*/
    IF ~~ THEN REPLY @97691 /* ~�Phillipe! Dame el aceite, yo me encargar� del resto.~ */  GOTO 46
	IF ~~ THEN REPLY @97692 /* ~�Phillipe! �Huye! No podr�s sobrepasar al monstruo. Yo puedo derrotarlo sin el aceite.~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from:
  SAY @97693 /* ~�No! Skel'Tharant equivocarse. Phillipe no tener miedo. �Phillipe vengar a sus hermanos!~ */
  IF ~~ THEN DO ~SetGlobal ("P_PhillipeBravery","GLOBAL",5)~ EXIT
END

//////////

IF ~AreaCheck("P_FA3B")
Global ("P_PhillipeBravery","GLOBAL",7)
Global ("P_PhillipeInAthkatla","GLOBAL",0)~ 
THEN BEGIN 47 // from:
  SAY @97695 /* ~Phillipe... �Phillipe estar vivo! �O no...? Recordar luchar contra Skel'Tharant...~ */
  IF ~~ THEN DO ~SetGlobal("P_PhillipeInAthkatla","GLOBAL",1)~ EXTERN ~P_VIDOMI~ 117 
END

IF ~~ THEN BEGIN 48 // from:
  SAY @97696 /* ~Oh, Phillipe estar feliz. �Ya no estamos en Abismo! Este lugar ser m�s hermoso que Rachnidra, eso seguro. <CHARNAME>, Phillipe alegrarse de ver amigo con vida.~ */
	IF ~~ THEN REPLY @97697 /* ~Tambi�n me alegra verte con vida, Phillipe.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from:
  SAY @97698 /* ~Visitar a Phillipe y sus amigos cuando quieras, <CHARNAME>. <CHARNAME> siempre ser amigo de Phillipe.~ */
  IF ~~ THEN DO ~SetGlobal ("P_PhillipeInAthkatla","GLOBAL",1)~ EXIT
END

IF ~AreaCheck("P_FA3B")
OR (2)
Global ("P_PhillipeBravery","GLOBAL",9)
Global ("P_PhillipeInAthkatla","GLOBAL",1)~ 
THEN BEGIN 50 // from:
  SAY @97699 /* ~�Phillipe estar en Faer�n! No salir a superficie pero disfrutar de las cloacas. Ser lugar mucho m�s pintoresco que Rachnidra.~ */
  IF ~~ THEN DO ~~ EXIT
END

I_C_T P_PHILLI 17 P_FallJ_PHILLIP_4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97633 /* Phillipe... esta hechicera. �Usa t�nicas como yo? */
== P_PHILLI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97634 /* �T�nicas? Phillipe no entender del todo... pero la Dama del Enclave usa ropas y joyas brillantes...  */
== P_PHILLI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97635 /* S�lo la vi una vez. Para llegar a su Enclave tener que luchar contra sus guardias... Dan mucho miedo.  */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97636 /* Puede que sea madre, <CHARNAME>. Deber�amos ir all� primero. */
END

I_C_T P_PHILLI 14 P_FallJ_PHILLIP_3
== P_PHILLI IF ~~ THEN @97637 /* Cuevas suroccidentales llevar a recinto de Skel'Tharant... criatura... criatura que devor� familia de Phillipe. */
== P_PHILLI IF ~~ THEN @97638 /* Skel'Tharant ser el campe�n de la Reina de las Ara�as... poderoso guerrero... ha devorado a incontables humanos que han llegado a las cuevas. Aventureros, magos... nadie se ha salvado. S�lo... s�lo Phillipe. */
== P_PHILLI IF ~~ THEN @97639 /* No poder entrar a recinto a menos que puedas disolver la oscuridad... pero Phillipe no saber c�mo hacerlo. */
== P_PHILLI IF ~~ THEN @97640 /* Luego estar la cueva oriental... Ir all� es peligroso, muy peligroso. Adem�s, no se puede entrar en ella. Es el recinto de la Reina Ara�a. De all� provienen sus hijos e hijas, sus guerreros y comandantes. */ 
END

I_C_T P_PHILLI 5 P_FallJ_PHILLIP_2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97641 /* �Lagartos? Cre� que este era el dominio de las ara�as. �Por qu� se encuentran en guerra dichas criaturas? */
== P_PHILLI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97642 /* Phillipe no tener seguridad del por qu�, pero creer que ser por una cuesti�n de territorio. Reina de los Lagartos odiar a Reina de las Ara�as... Entonces, llevar a cabo guerra sangrienta. */ 
END

I_C_T P_PHILLI 1 P_FallJ_PHILLIP_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97643 /* No soy una humana, soy una semielfa, peque�o. */
== P_PHILLI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97644 /* �Una qu�? Phillipe estar confundido. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97645 /* *suspiro* No importa. */
END

