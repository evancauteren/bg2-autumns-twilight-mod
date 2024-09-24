BEGIN P_VIDOMI

IF ~Global ("P_FMeetingVidomina","GLOBAL",0)
Global ("P_FDreach_Mission1","GLOBAL",0)
AreaCheck("P_FAR7")
~ THEN BEGIN 0 // from:
  SAY @0 /* ~Entrad, mortales, a mi Enclave. La luz escarlata de la Dama Severa os recibe. Mi nombre es Vidomina y os doy la bienvenida.~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingVidomina","GLOBAL",1) SetGlobal ("P_FDreach_Mission1","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~Tu esencia... no es la de un mortal com�n y corriente. �Qui�n eres?~ ~Tu esencia... no es la de una mortal com�n y corriente. �Qui�n eres?~ */
    IF ~!InParty("P_Fall")~ THEN REPLY @177 /* Soy <CHARNAME>, descendiente de Bhaal. Venimos de Athkatla en busca de un antiguo mal que amenaza nuestras tierras. */  GOTO 3
    IF ~!InParty("P_Fall")~ THEN REPLY @178 /* Soy <CHARNAME>, un semidi�s. Venimos de Athkatla en busca de un antiguo mal y de todas las recompensas que tal b�squeda podr�a engendrar. */  GOTO 3
    IF ~InParty("P_Fall")~ THEN REPLY @2 /* Soy <CHARNAME>, descendiente de Bhaal. Venimos de Athkatla en busca de la madre de Fall. �Puedes sernos de ayuda, mi dama? */  GOTO 3
	IF ~InParty("P_Fall")~ THEN REPLY @3 /* Soy <CHARNAME> y t�, �t� eres un monstruo! Prep�rate, liche. �Tu malvada existencia termina aqu�! */  EXTERN ~P_FALLJ~ 82
    IF ~InParty("P_Fall")~ THEN REPLY @4 /* Mi nombre no es asunto tuyo, bruja. No me f�o de los muertos vivientes. */  EXTERN ~P_FALLJ~ 80
    IF ~InParty("P_Fall")~ THEN REPLY @5 /* Soy <CHARNAME>. Creo que eso es todo lo que debes saber, por ahora. */  EXTERN ~P_FALLJ~ 80
END

IF ~~ THEN BEGIN 2 // from:
  SAY @6 /* ~Si te refieres a tu descendencia divina, lamento decir que eso no es ning�n secreto aqu� en Rachnidra.~*/
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~Ya veo. Una declaraci�n que en otros tiempos me habr�a sorprendido. Pero lamento decir que tu linaje es algo ya sabido aqu�, en Rachnidra.~*/
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3_1 // from:
  SAY @69 /* ~Lamento decir que tu secreto no est� guardado aqu� en Rachnidra, hijo de Bhaal.~ ~Lamento decir que tu secreto no est� guardado aqu� en Rachnidra, hija de Bhaal.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~Si te preguntas el porqu�, la respuesta es simple. Mesothel, uno de los comandantes de la Reina Ara�a, ha incursionado en el Plano Material hace algunas dekhanas. Sabe mucho de vosotros, <CHARNAME>. Incluso sobre sus actuales compa�eros.~*/
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9 /* ~Aunque �ltimamente, las fuerzas ar�cnidas se encuentran... desaparecidas.~ */
    IF ~~ THEN REPLY @10 /* Es verdad. Cuando llegamos no nos hemos encontrado con ninguna ara�a enemiga. �Qu� ha pasado con ellas? */  GOTO 5_1
	IF ~~ THEN REPLY @11 /* Puede que ya hayan sido derrotadas por esos de Dreach-naga que t� mencionas. */  GOTO 5_2
    IF ~~ THEN REPLY @12 /* S�lo nos hemos encontrado con un hombre-rata llamado Phillipe. Nos dijo que t� pod�as ayudarnos. */  GOTO 5_5
    IF ~~ THEN REPLY @13 /* El �nico obst�culo para llegar aqu� fueron un grupo de muertos vivientes. De hecho, esa que est� ah� se me hace muy familiar. */  EXTERN ~P_TAMIKA~ 1
END

IF ~~ THEN BEGIN 5_1 // from:
  SAY @14 /* ~Buena observaci�n, mortal. Pero hablaremos de ello en tan s�lo un instante.~*/
  IF ~~ THEN GOTO 5_6
END

IF ~~ THEN BEGIN 5_2 // from:
  SAY @15 /* ~No, los reptiles no han encontrado la forma de erradicar las fuerzas de la Oscura y al paso que van, dudo que lo hagan. Pero hablaremos de ello m�s tarde.~*/
  IF ~~ THEN GOTO 5_6
END

IF ~~ THEN BEGIN 5_5 // from:
  SAY @16 /* ~Ah, la peque�a criatura humanoide. S� a qui�n te refieres. Pese a ser inofensivo, ha demostrado una gran habilidad para sortear las fuerzas ar�cnidas y reptiles.~*/
  IF ~~ THEN GOTO 5_6
END

IF ~~ THEN BEGIN 5_6 // from:
  SAY @17 /* ~S� que tambi�n te has encontrado con mis fuerzas guardianas. Pues llevas contigo mi talism�n, de lo contrario, no habr�as sido capaz de entrar aqu�. Como ver�s, las fuerzas con las que has luchado se encuentran aqu�, como la que ves all�.~*/
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @18 /* ~Tamika es una de mis guerreras m�s fuertes. Y s�, esa partida de muertos vivientes son el custodio de mi Enclave, <CHARNAME>. Pero no debes preocuparte por ellos. No os atacar�n, as� como ustedes no pueden da�arlos aqu�.~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @19 /* ~El Enclave se encuentra protegido por un poderoso hechizo de Wee Jas. No podr�n da�arnos y nosotros no habremos de da�arlos a ustedes. Aqu� podr�n descansar e incluso podr�n comerciar.~*/
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @20 /* ~Para descansar podr�n hablar con Nimbus. Tamika maneja una peque�a tienda de artefactos variados, mientras que Xsi podr� curarte y brindarte informaci�n sobre Rachnidra y Dreach-naga. ~*/
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @21 /* ~Lamentablemente necesitar�n oro para la mayor�a de sus transacciones. Usamos ese material para reforzar la protecci�n del Enclave contra las fuerzas exteriores. Aunque si tienes objetos para vender, tambi�n nos ser� de utilidad.~*/
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @22 /* ~Lo importante aqu� es lo siguiente: si quieren encontrar a la hechicera de Evereska, deber�n ingresar al cubil de la Ara�a Reina. Lo encontrar�n al este de las cuevas ar�cnidas. ~*/
    IF ~~ THEN REPLY @23 /* No se puede acceder a dicho lugar. Es casi como si una fuerza nos impidiera el paso. */  GOTO 12
	IF ~~ THEN REPLY @24 /* �No nos estar�s enviando a nuestra muerte? Algo me dice que todas las ara�as se encuentran all�. */  GOTO 11
    IF ~~ THEN REPLY @25 /* �C�mo podemos entrar? Creo que sabes tan bien como nosotros que es inaccesible. */  GOTO 12
    IF ~~ THEN REPLY @280 /* �Qui�n es la hechicera de Evereska? */  GOTO 10A
END

IF ~~ THEN BEGIN 10A // from:
  SAY @281 /* ~Una mortal que ha atravesado el velo del Abismo en busca de la Reina Ara�a. Poco despu�s de su arribo, las ara�as desaparecieron de Rachnidra. Puede que ella sea la soluci�n a la Legi�n que no se puede ver. La �ltima vez que se supo de ella fue cuando ingres� al Cubil de la Reina.~*/
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from:
  SAY @26 /* ~Es muy probable que sus esbirros m�s poderosos se encuentren all�, <CHARNAME>. Cr�eme... no es de mi inter�s tu destrucci�n ni la de tus aliados.~*/
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @27 /* ~Lo cierto es que no podr�s entrar a sus aposentos a menos que una condici�n se cumpla y es que necesitas la sangre de una criatura de la realeza. Antigua y poderosa.~*/
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @28 /* ~Tendr�s que encontrar a Tisiphone, la Reina de Dreach-naga.~*/
    IF ~~ THEN REPLY @29 /* �Por qu�, Vidomina? �C�mo es que sabes que eso ser� suficiente para penetrar en la oscuridad de esa cueva? */  GOTO 14
	IF ~~ THEN REPLY @30 /* Entendido. �D�nde puedo encontrarla? */  GOTO 16
    IF ~~ THEN REPLY @31 /* �No existe otra forma? No era mi intenci�n involucrarme en esta guerra abisal. */  GOTO 15
END

IF ~~ THEN BEGIN 14 // from:
  SAY @32 /* ~Durante a�os hemos visto c�mo las incursiones reptiles fallaron contra las ara�as. Por m�s que lo intentaban, no eran capaces de atravesar la oscuridad de las cuevas.~*/
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 15 // from:
  SAY @33 /* ~Lamento decirlo, <CHARNAME>, pero no existe otra forma. Con lo que he de narrarte habr�s de comprender el porqu�.~*/
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY @34 /* ~Antes de decirte eso, debes o�r mi advertencia y el porqu� debes hacerlo:~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 17 // from:
  SAY @35 /* ~�Os queda claro?~*/
    IF ~~ THEN REPLY @36 /* �C�mo haremos para entrar a Dreach-naga? No tenemos ninguna de esas piedras y no podemos avanzar m�s all� de este recinto. */  GOTO 20
	IF ~~ THEN REPLY @37 /* Vidomina, �c�mo has de ayudarnos? */  GOTO 20
    IF ~~ THEN REPLY @38 /* �Qu� sacas t� de todo esto? */  GOTO 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY @39 /* ~Wee Jas nos ense�a que la magia es la clave de todas las cosas y que el embellecimiento personal es un deber. Si Morgrath conquista esta capa del Abismo, obtendr� el poder suficiente para llegar al Plano Material. Si eso sucede... la vida y la magia podr�an llegar a su fin.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @40 /* ~Hemos jurado quedarnos aqu� y hacer lo posible para evitar que eso suceda. Pero, fuera de este recinto, no hemos logrado mucho. Rachnidra y Dreach-naga han tratado de destruirnos y no nos ha quedado otra opci�n m�s que permanecer aqu� y tratar de que ninguno de los dos bandos ganen. Pero es hora de seguir, <CHARNAME>:~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @41 /* ~Os brindar� un talism�n que... "obtuvimos" de los reptiles. Con �l podr�n ingresar a las tierras de Dreach-naga. Recuerden: necesitar� la sangre o el coraz�n de la Reina Medusa para que yo les pueda preparar un artefacto que les permitir� invadir el cubil de la Reina Ara�a.~ */
  IF ~~ THEN GOTO 21
END


IF ~~ THEN BEGIN 21 // from:
  SAY @42 /* ~Mientras tanto, ser�n bienvenidos aqu� a descansar o comerciar. Pueden hablar con mis esbirros si lo desean. Tobias se encargar� de sus cosas si desean descansar algunas horas aqu�. Si desean hablar conmigo, estar� m�s que encantada de serviros.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FMeetingVidomina","GLOBAL",1) SetGlobal ("P_FDreach_Mission1","GLOBAL",1) CreateItem ("P_FTALI2",1,2,1) GiveItem ("P_FTALI2", LastTalkedToBy)~ UNSOLVED_JOURNAL @310039 EXIT
END

IF ~Global ("P_FMeetingVidomina","GLOBAL",1)
Global ("P_FDreach_Mission1","GLOBAL",1)
Global ("P_FMissionPhillipe","GLOBAL",0)
AreaCheck("P_FAR7")
~ THEN BEGIN 22 // from:
  SAY @70 /* ~Saludos, viajeros del m�s all�. Estoy aqu� para serviros.~ */
    IF ~~ THEN REPLY @71 /* No conozco a Wee Jas. �Qui�n es esa diosa a la que adoras? */  GOTO 23
	IF ~~ THEN REPLY @72 /* �Qu� se supone que es esa marmota? No puedo evitar observar que est�... vestido. */  GOTO 25
    IF ~~ THEN REPLY @73 /* De nuevo, �con qui�n tengo que hablar si necesito comerciar o descansar? */  GOTO 27
	IF ~~ THEN REPLY @86 /* �C�mo es que son inmunes aqu�? Has dicho que no pueden sufrir da�o. �Por qu� no atraer a las ara�as aqu� y derrotarlas? */  GOTO 28
	IF ~~ THEN REPLY @92 /* Por ahora no tengo dudas, Vidomina. Adi�s. */  GOTO 30
END

IF ~~ THEN BEGIN 23 // from:
  SAY @74 /* ~Vengo de Flanaess, no de Faer�n, por lo que es natural que no hayas o�do hablar de mi Dama.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @75 /* ~Espero que t� puedas cambiar eso. Nuestro destino tambi�n est� en tus manos, hijo de Bhaal.~ ~Espero que t� puedas cambiar eso. Nuestro destino tambi�n est� en tus manos, hija de Bhaal.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY @76 /* ~Ah, te refieres a Tobias. �l es una marmota sumamente inteligente y servicial. Posiblemente se deba a un conjuro de protecci�n que lanc� sobre �l cuando lo encontramos.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from:
  SAY @77 /* ~No s� cu�nto tiempo lleve con nosotros, pero ya han pasado varios a�os. Ha superado el lapso de vida que suelen tener las marmotas, eso seguro. El tiempo en el Abismo es algo muy extra�o.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY @20 /* ~Para descansar podr�n hablar con Nimbus. Tamika maneja una peque�a tienda de artefactos variados, mientras que Xsi podr� curarte y brindarte informaci�n sobre Rachnidra y Dreach-naga.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY @87 /* ~La inmunidad es causa del artefacto que observas detr�s m�o. Me tom� d�cadas poder terminarlo y deposit� en �l gran parte de mi poder.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from:
  SAY @88 /* ~La �nica opci�n es llevar la lucha al trono de Morgrath. Pero para ello, primero debe caer Tisiphone.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY @93 /* ~Que la Hechicera Rub� proteja tus pasos, hijo de Bhaal.~ ~Que la Hechicera Rub� proteja tus pasos, hija de Bhaal.~ */
  IF ~~ THEN EXIT
END

IF ~Global ("P_FMeetingVidomina","GLOBAL",1)
Global ("P_FDreach_Mission1","GLOBAL",1)
Global ("P_FMissionPhillipe","GLOBAL",1)
AreaCheck("P_FAR7")
~ THEN BEGIN 31 // from:
  SAY @70 /* ~Saludos, viajeros del m�s all�. Estoy aqu� para serviros.~ */
    IF ~~ THEN REPLY @71 /* No conozco a Wee Jas. �Qui�n es esa diosa a la que adoras? */  GOTO 23
	IF ~~ THEN REPLY @72 /* �Qu� se supone que es esa marmota? No puedo evitar observar que est�... vestido. */  GOTO 25
    IF ~~ THEN REPLY @73 /* De nuevo, �con qui�n tengo que hablar si necesito comerciar o descansar? */  GOTO 27
	IF ~~ THEN REPLY @86 /* �C�mo es que son inmunes aqu�? Has dicho que no pueden sufrir da�o. �Por qu� no atraer a las ara�as aqu� y derrotarlas? */  GOTO 28
	IF ~~ THEN REPLY @94 /* Mi Dama, he encontrado el Refugio de Phillipe, el hombre-rata. �Crees que podr�as aceptarlo en tu Enclave? */  GOTO 32
	IF ~~ THEN REPLY @92 /* Por ahora no tengo dudas, Vidomina. Adi�s. */  GOTO 30
END

IF ~~ THEN BEGIN 32 // from:
  SAY @95 /* ~Ah, ya veo. Has encontrado su peque�o hogar en Dreach-naga. Es incre�ble que haya logrado asegurarse un recoveco en una tierra tan hostil, �no lo crees?~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @96 /* ~S� muy bien su historia, <CHARNAME>. Su familia fue aniquilada por una de las criaturas m�s poderosas que he conocido. Skel'Tharant.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from:
  SAY @97 /* ~Que el peque�o haya sobrevivido a su encuentro es, de por s�, una haza�a muy encomiable.~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from:
  SAY @98 /* ~He intentado hacer un acercamiento a �l y ofrecerle lo que pides. Pero es muy... cobarde. La sola presencia de alguno de mis ni�os le asusta a m�s no poder.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from:
  SAY @99 /* ~Has hecho algo digno, <CHARNAME>. Te dar� este talism�n para que se lo entregues. Dile a Phillipe que con �l podr� entrar a nuestro Enclave. Y que no debe temernos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FMissionPhillipe","GLOBAL",2) CreateItem ("P_FTALI6",1,2,1) GiveItem ("P_FTALI6", LastTalkedToBy)~ UNSOLVED_JOURNAL @310043 EXIT
END

IF ~Global ("P_FMeetingVidomina","GLOBAL",1)
Global ("P_FDreach_Mission1","GLOBAL",1)
AreaCheck("P_FAR7")
OR(2)
Global ("P_FMissionPhillipe","GLOBAL",2)
Global ("P_FMissionPhillipe","GLOBAL",3)
~ THEN BEGIN 37 // from:
  SAY @70 /* ~Saludos, viajeros del m�s all�. Estoy aqu� para serviros.~ */
    IF ~~ THEN REPLY @71 /* No conozco a Wee Jas. �Qui�n es esa diosa a la que adoras? */  GOTO 23
	IF ~~ THEN REPLY @72 /* �Qu� se supone que es esa marmota? No puedo evitar observar que est�... vestido. */  GOTO 25
    IF ~~ THEN REPLY @73 /* De nuevo, �con qui�n tengo que hablar si necesito comerciar o descansar? */  GOTO 27
	IF ~~ THEN REPLY @86 /* �C�mo es que son inmunes aqu�? Has dicho que no pueden sufrir da�o. �Por qu� no atraer a las ara�as aqu� y derrotarlas? */  GOTO 28
	IF ~~ THEN REPLY @92 /* Por ahora no tengo dudas, Vidomina. Adi�s. */  GOTO 30
END

// REGRESO DE Dreach-naga
// CREAR SCRIPT PARA JUMPTOPOINT AL CIERRE DE LA MISION DE DREACH-NAGA
IF ~Global ("P_FDreach_Mission1","GLOBAL",2)
PartyHasItem("P_FCORA1")
See("P_CHO")
AreaCheck("P_FAR7")
~ THEN BEGIN 38 // from:
  SAY @100 /* ~Finalmente, �han retornado!~ */
  IF ~~ THEN DO ~SetGlobal ("P_FDreach_Mission1","GLOBAL",3)~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from:
  SAY @101 /* ~El Coraz�n de Tisiphone, Reina de Dreach-naga. <CHARNAME>, con esto podr� imbuir una poderosa Linterna, la cual os permitir� ingresar a su Cubil Ar�cnido.~ */
  IF ~~ THEN DO ~TakePartyItem ("P_FCORA1") DestroyItem ("P_FCORA1")~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from:
  SAY @102 /* ~Pero la verdad es que puedo ir a�n m�s all�. Puedo reforzar el poder del Enclave y enviaros a ustedes de regreso a su plano. Aunque para ello primero deben eliminar a Morgrath.~ */
  IF ~~ THEN GOTO 40_1
END

IF ~~ THEN BEGIN 40_1 // from:
  SAY @103 /* ~Ver�s, la Telara�a de la Reina Demonio no es s�lo algo f�sico, sino que tambi�n traspasa los planos abisales. A�n si logro alcanzar el poder necesario para abrir un portal entre los planos, el umbral del mismo no podr� ser atravesado a menos que esa Telara�a deje de existir.~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from:
  SAY @104 /* ~Por ende, Morgrath debe ser eliminada.~ */
    IF ~~ THEN REPLY @105 /* Queda claro. Eliminaremos al demonio y as� podremos volver a casa. */  GOTO 42
	IF ~~ THEN REPLY @106 /* �Hay algo m�s que quieras decir? Tus... "ojos" brillan m�s de lo usual. */  GOTO 43
END

IF ~~ THEN BEGIN 42 // from:
  SAY @107 /* ~Eso no es todo, <CHARNAME>. Hay algo m�s que deber�as saber.~ */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from:
  SAY @108 /* ~Skel'Tharant. Su Campe�n. Si no lo matas antes de ir al Cubil de la Reina, �sta habr� de invocarlo y la batalla final ser� mucho m�s complicada.~ */
    IF ~~ THEN REPLY @109 /* Cre� que sus hijos no pod�an ser matados de forma permanente. �Por qu� habr�a de ser diferente con esta criatura? */  GOTO 44
END

IF ~~ THEN BEGIN 44 // from:
  SAY @110 /* ~Skel'Tharant no es hijo de Morgrath. Es una criatura antigua, quiz�s tan antigua como la misma Morgrath. Es una pesadilla forjada en las sombras m�s profundas del Abismo.~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from:
  SAY @111 /* ~Durante siglos se ha alimentado de demonios, hasta que conoci� a Morgrath y �sta le ofreci� una dieta m�s... convincente.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from:
  SAY @112 /* ~Desde entonces, Mesothel se ha encargado de brindar sacrificios vivos a los aposentos de Skel'Tharant. Incontable cantidad de criaturas han muerto en sus fauces.~ */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from:
  SAY @113 /* ~Gracias al Coraz�n de Tisiphone, puedo imbuir una gema m�gica que iluminar� tu camino hacia sus aposentos. Encontrar�s la Guarida de Skel'Tharant en los t�neles suroccidentales de las Cuevas Ar�cnidas.~ */
  IF ~~ THEN DO ~CreateItem ("P_FGEMA1",1,2,1)  GiveItem("P_FGEMA1", LastTalkedToBy)~ UNSOLVED_JOURNAL @310061 GOTO 48
END

IF ~~ THEN BEGIN 48 // from:
  SAY @114 /* ~Debo advertirte... Skel'Tharant es implacable. Por algo es el Campe�n de Rachnidra. Derrotarlo no ser� f�cil y tendr�s que ser persistente en tus combates.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from:
  SAY @115 /* ~Estudiar� un poco m�s sobre los misterios de Dreach-naga, pues puede que encontremos algo en la sabidur�a de los reptiles que nos permita obtener una ventaja en esta lucha.~ */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from:
  SAY @116 /* ~Pero no os puedo prometer que obtenga respuestas favorables...~ */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from:
  SAY @117 /* ~Por lo pronto, comenzar� a imbuir la Linterna, <CHARNAME>. Aprovecha a descansar y habla con mis hijos si lo deseas. En cuesti�n de horas, el artefacto estar� listo.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FDreach_Mission1","GLOBAL",3)~ UNSOLVED_JOURNAL @310059 EXIT
END

IF ~Global ("P_Fall_KakutoSummoningIA","GLOBAL",1)
See("P_Fall")
OR(3)
Global ("P_FDreach_Mission1","GLOBAL",3)
Global ("P_FDreach_Mission1","GLOBAL",4)
Global ("P_FDreach_Mission1","GLOBAL",5)
~ THEN BEGIN 57 // from:
  SAY @147 /* ~Fall, tu poder ha incrementado desde que has llegado. Hay un aura en ti que no logro comprender del todo.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_KakutoSummoningIA","GLOBAL",2)~ GOTO 58
END

IF ~Global("P_FDreach_Mission1","GLOBAL",3)
AreaCheck("P_FAR7")
OR(3)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",0)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",2)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",4)
~ THEN BEGIN 52 // from:
  SAY @118 /* ~A�n estoy trabajando en la Linterna, <CHARNAME>. Vuelve m�s tarde, por favor.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global ("P_FDreach_Mission1","GLOBAL",2)
PartyHasItem("P_FCORA1")
!See("P_CHO")
AreaCheck("P_FAR7")
~ THEN BEGIN 53 // from:
  SAY @100 /* ~Finalmente, �han retornado!~ */
  IF ~~ THEN DO ~SetGlobal ("P_FDreach_Mission1","GLOBAL",3)~ GOTO 39
END

IF ~Global ("P_FDreach_Mission1","GLOBAL",4)
AreaCheck("P_FAR7")
~ THEN BEGIN 54 // from:
  SAY @119 /* ~<CHARNAME>, la Linterna de Dreach-naga est� lista.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FDreach_Mission1","GLOBAL",5)~ GOTO 55
END

IF ~~ THEN BEGIN 55 // from:
  SAY @120 /* ~Ten cuidado. La lucha final est� cerca y es cuando la Reina utilizar� todo su poder para lograr su cometido. Recuerda que sus aposentos se encuentran en las cuevas orientales de los T�neles ar�cnidos. Yo seguir� trabajando en el conjuro para llevaros de vuelta a su hogar y rezar� a Wee Jas para que tu misi�n tenga �xito.~ */
  IF ~~ THEN DO ~CreateItem ("P_FLANT1",1,2,1)  GiveItem("P_FLANT1", LastTalkedToBy) SetGlobal ("P_FDreach_Mission1","GLOBAL",5) SetGlobal ("P_SkelTharantQuest","GLOBAL",1) EraseJournalEntry(@310039) EraseJournalEntry(@310041)EraseJournalEntry(@310045) EraseJournalEntry(@310046) EraseJournalEntry(@310047)EraseJournalEntry(@310048) EraseJournalEntry(@310049) EraseJournalEntry(@310059) AddexperienceParty(100000)~ SOLVED_JOURNAL @310060 EXIT
END

IF ~Global ("P_FDreach_Mission1","GLOBAL",5)
Global("P_SkelIsDead","GLOBAL",0)
AreaCheck("P_FAR7")
OR (6)
Global ("P_SkelTharantQuest","GLOBAL",1)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",0)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",1)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",2)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",3)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",4)
~ THEN BEGIN 56 // from:
  SAY @70 /* ~Saludos, viajeros del m�s all�. Estoy aqu� para serviros.~ */
    IF ~~ THEN REPLY @71 /* No conozco a Wee Jas. �Qui�n es esa diosa a la que adoras? */  GOTO 23
	IF ~~ THEN REPLY @72 /* �Qu� se supone que es esa marmota? No puedo evitar observar que est�... vestido. */  GOTO 25
    IF ~~ THEN REPLY @73 /* De nuevo, �con qui�n tengo que hablar si necesito comerciar o descansar? */  GOTO 27
	IF ~~ THEN REPLY @86 /* �C�mo es que son inmunes aqu�? Has dicho que no pueden sufrir da�o. �Por qu� no atraer a las ara�as aqu� y derrotarlas? */  GOTO 28
	IF ~~ THEN REPLY @92 /* Por ahora no tengo dudas, Vidomina. Adi�s. */  GOTO 30
	// Legado de Rask
	IF ~PartyHasItem ("P_rascal")~ THEN REPLY @238 /* Mi Dama, he obtenido estas escamas de la bestia del pantano, la hydra de Dreach-naga. �Crees que podamos hacer uso de ellas? */  GOTO 1LH
END

IF ~~ THEN BEGIN 1LH // from:
  SAY @239 /* ~Derrotar a Rask'tar Krathiss no debe haber sido una tarea f�cil. No era una criatura maligna, pero estoy segura de que habr�a hecho todo lo posible para evitar que ataquen al Trono de Tisiphone. Entiendo que no has tenido otra opci�n m�s que matarlo.~ */
  IF ~~ THEN GOTO 1LH2
END

IF ~~ THEN BEGIN 1LH2 // from:
  SAY @240 /* ~El poder que irradia es considerable. Puedo imbuir una armadura de escamas y obtener un nuevo artefacto a partir de ello. Que uses el cuerpo de Rask'tar, por as� decirlo, deber�a ser un s�mbolo de venganza de Dreach-naga hacia Rachnidra.~ */
  IF ~~ THEN GOTO 1LH3
END

IF ~~ THEN BEGIN 1LH3 // from:
  SAY @241 /* ~Aqu� tienes, <CHARNAME>. �sala con sabidur�a y emplea su poder contra la Oscuridad de Morgrath.~ */
  IF ~~ THEN DO ~TakePartyItem("P_rascal") DestroyItem("P_rascal") CreateItem("P_raskle",1,2,1) GiveItem ("P_raskle", LastTalkedToBy)~ EXIT
END

//////////////// Se mueve Quest KAKUTO m�s arriba

IF ~~ THEN BEGIN 58 // from:
  SAY @148 /* ~Que YA has alcanzado dicho poder y ni siquiera te has dado cuenta.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_KakutoSummoningIA","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY @164 /* ~As� es, peque�a. Hmm. Trata de no llamarlo aqu� ya que no disponemos de tanto... espacio. Espero que hagas un buen uso de tu nueva habilidad, Fall de Imnescar.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_KakutoSummoningIA","GLOBAL",4)~ EXIT
END

// Phillipe Bravery
IF ~~ THEN BEGIN 60 // from:
  SAY @165 /* ~Peque�o Phillipe. El enfrentamiento contra Skel'Tharant es inevitable. No debes temer por <CHARNAME>. Su capacidad sobrepasa la de muchos mortales. Adem�s, creo haber encontrado la forma de acabar con el factor regenerativo de Skel'Tharant.~ */
    IF ~~ THEN REPLY @166 /* �Lo has averiguado, Vidomina? Por favor, te escucho. */  GOTO 61
END

IF ~~ THEN BEGIN 61 // from:
  SAY @167 /* ~Seg�n he podido averiguar a lo largo de los a�os, Skel'Tharant cuenta con una capacidad de curaci�n excepcional a la hora de combatir. Es una criatura antigua y misteriosa cuanto menos, pero no escapa a las pesquisas que he realizado aqu� en el Enclave.~ */
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from:
  SAY @168 /* ~Puedo crear una especie de aceite que evitar� que las heridas de Skel'Tharant se regeneren r�pidamente. Esto deber�a facilitar el combate de manera significativa.~ */
    IF ~~ THEN REPLY @169 /* �Puedes d�rmelo? Tengo pensado enfrentarlo antes de ir al Cubil de Morgrath. */  GOTO 63
END

IF ~~ THEN BEGIN 63 // from:
  SAY @170 /* ~Lamentablemente el proceso llevar� m�s tiempo del esperado. Pero puedo hacer que te sea entregado una vez que llegues a su Guarida. Aqu� es cuando entras t�, peque�o Phillipe.~ */
  IF ~~ THEN EXTERN ~P_PHILLI~ 36
END

IF ~~ THEN BEGIN 64 // from:
  SAY @171 /* ~Si llego a terminar la preparaci�n del aceite, es vital que se lo lleves a <CHARNAME> cuando �ste se est� enfrentando a Skel'Tharant. La criatura es muy astuta y es muy probable que realice alguna de sus artima�as para salvaguardarse del aceite. Pero si es en el fragor del combate, t� podr�as entreg�rselo a <CHARNAME> para que lo use contra la bestia.~ */
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from:
  SAY @172 /* ~Mis ni�os no pueden ir tan lejos del Enclave, debido a la atadura arcana que poseemos con el lugar. Y no puedo enviar a Tobias con el aceite ya que �l es muy peque�o y no creo que tenga la fuerza suficiente para cargar con dicho artefacto.~ */
  IF ~~ THEN EXTERN ~P_TOBIAS~ 2
END

IF ~~ THEN BEGIN 66 // from:
  SAY @173 /* ~Me temo que eres nuestra �nica esperanza, peque�o Phillipe.~ */
  IF ~~ THEN EXTERN ~P_PHILLI~ 37
END

IF ~~ THEN BEGIN 67 // from:
  SAY @174 /* ~Lo lamento, <CHARNAME>. No creo que puedas contar con mi ayuda en tu combate contra Skel'Tharant. Dejemos a Phillipe en paz. Ya ha sufrido demasiado.~ */
  IF ~~ THEN DO ~SetGlobal ("P_PhillipeBravery","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY @175 /* ~�Es una buena noticia, peque�o Phillipe! <CHARNAME>, t� debes enfrentar a Skel'Tharant en su Guarida al suroeste de las cuevas ar�cnidas. Tratar� de tener todo listo para que Phillipe pueda ir en tu ayuda.~ */
  IF ~~ THEN DO ~SetGlobal ("P_PhillipeBravery","GLOBAL",3) SetGlobal ("P_PhillipeWillSpawn","GLOBAL",1) ~ UNSOLVED_JOURNAL @310062 EXIT
END

// Skel'Tharant ha muerto

IF ~Global("P_SkelIsDead","GLOBAL",2)
Global ("P_PhillipeBravery","GLOBAL",7)
AreaCheck("P_FAR7")
~ THEN BEGIN 69 // from:
  SAY @179 /* ~�Lo has logrado! El Campe�n de Rachnidra, Skel'Tharant, �ha muerto!~ */
  IF ~~ THEN DO ~SetGlobal ("P_SkelIsDead","GLOBAL",3) SetGlobal ("P_PhillipeIsDead","GLOBAL",1)~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from:
  SAY @180 /* ~El combate contra Morgrath est� cada vez m�s cerca, <CHARNAME>. �D�nde est� Phillipe?~ */
    IF ~~ THEN REPLY @181 /* Lo lamento, Vidomina. Phillipe se ha sacrificado. Se lanz� en un ataque contra Skel'Tharant utilizando el Aceite que preparaste. El mismo le provoc� da�os graves y detuvo el factor regenerativo. Lamentablemente, Phillipe no sobrevivi� al ataque. */  GOTO 71
    IF ~~ THEN REPLY @182 /* Intent� advertir a Phillipe que me entregase el Aceite para que yo pudiese utilizarlo contra Skel'Tharant. Pero el muy tonto prefiri� lanzarse contra el enemigo. Muri�, aunque provoc� graves heridas en Skel'Tharant. */  GOTO 71
END

IF ~~ THEN BEGIN 71 // from:
  SAY @183 /* ~Es... desafortunado. Pero por lo que me narras, el peque�o fue capaz de superar su miedo. Finalmente pudo vengar a sus hermanos ca�dos.~ */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from:
  SAY @184 /* ~Aunque... no puedo evitar sentir tristeza por su muerte. El Abismo puede ser un lugar muy cruel y el sentimiento de desesperanza es m�s frecuente de lo que uno desear�a.~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from:
  SAY @185 /* ~Creo que puedo revivirlo, pero primero: Morgrath debe ser derrotada. Su influjo es cada vez m�s fuerte y el poder del Enclave se debilita. <CHARNAME>, �has logrado rescatar algo del cuerpo de Skel'Tharant? Espec�ficamente sus gl�ndulas.~ */
    IF ~PartyHasItem("p_skelgl")~ THEN REPLY @186 /* S�. He obtenido estas gl�ndulas de bebilith. �Puedes hacer algo con ellas? */  GOTO 75
    IF ~!PartyHasItem("p_skelgl")~ THEN REPLY @187 /* No, Vidomina. Quiz�s deba volver y ver si encuentro algo en su Guarida. */  GOTO 76
END

IF ~~ THEN BEGIN 74 // from:
  SAY @188 /* ~Muy bien. Ve con cuidado, <CHARNAME>. El combate final est� cerca y Morgrath no dudar� en matarte si tiene la oportunidad de hacerlo.~ */
  IF ~~ THEN DO ~SetGlobal ("P_SkelIsDead","GLOBAL",3) EraseJournalEntry(@310061) EraseJournalEntry(@310062)~ SOLVED_JOURNAL @310063 EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY @189 /* ~Interesante, <CHARNAME>. Esto servir� para reforzar el poder del Enclave. Te ofrezco este anillo, querido. Estoy segura de que te ser� �til en tus combates venideros.~ ~Interesante, <CHARNAME>. Esto servir� para reforzar el poder del Enclave. Te ofrezco este anillo, querida. Estoy segura de que te ser� �til en tus combates venideros.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelgl") DestroyItem("p_skelgl") CreateItem ("P_FITM25",1,2,1) GiveItem("P_FITM25", LastTalkedToBy) SetGlobal("P_VidominaSkelGlands","GLOBAL",1)~ GOTO 76
END

IF ~~ THEN BEGIN 76 // from:
  SAY @190 /* ~�Hay algo m�s que hayas logrado rescatar?~ */
    IF ~PartyHasItem("p_skelht")~ THEN REPLY @191 /* S�. Este es su coraz�n. �Se puede hacer algo con esto? */  GOTO 77
    IF ~!PartyHasItem("p_skelht")~ THEN REPLY @192 /* No, Vidomina. Quiz�s deba volver y ver si encuentro algo en su Guarida. */  GOTO 74
END

IF ~~ THEN BEGIN 77 // from:
  SAY @193 /* ~Ya veo. S�, puedo usarlo para aumentar el poder del Enclave. Ya no necesitaremos de tanto oro, por lo que podemos dispensar de ello. �15.000 piezas de oro te parece una recompensa adecuada?~ */
    IF ~~ THEN REPLY @194 /* S�, Vidomina, es m�s que aceptable. */  GOTO 79
    IF ~~ THEN REPLY @195 /* No, Bruja, no lo vale. Me ha costado mucho acabar con la bestia como para obtener s�lo oro a cambio. */  GOTO 78
    IF ~OR (5) PartyHasItem("SW1H31") PartyHasItem("SW1H51") PartyHasItem("HALB09")PartyHasItem("SW2H15") PartyHasItem("SW1H54")~ THEN REPLY @196 /* �No puedes reforzar alguna de mis armas con el coraz�n del bebilith, Vidomina? */  GOTO 80
END

IF ~~ THEN BEGIN 78 // from:
  SAY @197 /* ~Comprendo. En caso de que cambies de opini�n, aqu� estar�.~ */
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 79 // from:
  SAY @198 /* ~Gracias, <CHARNAME>. El oro ya se encuentra a tu disposici�n. Har� buen uso de este coraz�n, os lo aseguro.~ */
  IF ~~ THEN DO ~GiveGoldForce(15000) TakePartyItem("p_skelht") DestroyItem("p_skelht")~ GOTO 74
END

IF ~~ THEN BEGIN 80 // from:
  SAY @199 /* ~Podr�a intentarlo. �Qu� artefacto tienes en mente?~ */
    IF ~PartyHasItem("SW1H31")~ THEN REPLY @200 /* Me gustar�a mejorar esta espada larga: Diastro. */  GOTO 81
    IF ~PartyHasItem("SW1H51")~ THEN REPLY @201 /* Me gustar�a mejorar esta katana: Furia Celestial. */  GOTO 84
    IF ~PartyHasItem("HALB09")~ THEN REPLY @202 /* Me gustar�a mejorar esta alabarda: Oleaje. */  GOTO 86
    IF ~PartyHasItem("SW2H15")~ THEN REPLY @203 /* Me gustar�a mejorar este mandoble hecho de plata Githyanki. */  GOTO 88
    IF ~PartyHasItem("SW1H54")~ THEN REPLY @204 /* Me gustar�a mejorar esta espada larga: La Igualadora. */  GOTO 90c
    IF ~~ THEN REPLY @205 /* He cambiado de opini�n. Creo que prefiero el oro, Vidomina. */  GOTO 79
    IF ~~ THEN REPLY @206 /* A�n no lo he decidido, Vidomina. Por ahora me ir� a descansar y luego te dir� qu� decido al respecto. */  GOTO 74
END

IF ~~ THEN BEGIN 81 // from:
  SAY @207 /* ~De acuerdo. Por favor, entr�game el coraz�n y la espada.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelht") DestroyItem("p_skelht") TakePartyItem("SW1H31") DestroyItem("SW1H31")~ GOTO 82
END

IF ~~ THEN BEGIN 82 // from:
  SAY @208 /* ~Wee Jas me ha facilitado el conocimiento en la imbuci�n de armas m�gicas. El coraz�n de Skel'Tharant irradia un poder incre�ble.~ */
  IF ~~ THEN DO ~CreateItem ("P_SW1H3I",1,2,1) GiveItem("P_SW1H3I", LastTalkedToBy)~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from:
  SAY @209 /* ~Espero que le des un buen uso a tu nuevo artefacto, <CHARNAME>. Aunque s� que lo har�s.~ */
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 84 // from:
  SAY @210 /* ~De acuerdo. Por favor, entr�game el coraz�n y la espada.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelht") DestroyItem("p_skelht") TakePartyItem("SW1H51") DestroyItem("SW1H51")~ GOTO 85
END

IF ~~ THEN BEGIN 85 // from:
  SAY @211 /* ~Wee Jas me ha facilitado el conocimiento en la imbuci�n de armas m�gicas. El coraz�n de Skel'Tharant irradia un poder incre�ble.~ */
  IF ~~ THEN DO ~CreateItem ("P_SW1H5I",1,2,1) GiveItem("P_SW1H5I", LastTalkedToBy)~ GOTO 83
END

IF ~~ THEN BEGIN 86 // from:
  SAY @212 /* ~De acuerdo. Por favor, entr�game el coraz�n y la alabarda.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelht") DestroyItem("p_skelht") TakePartyItem("HALB09") DestroyItem("HALB09")~ GOTO 87
END

IF ~~ THEN BEGIN 87 // from:
  SAY @211 /* ~Wee Jas me ha facilitado el conocimiento en la imbuci�n de armas m�gicas. El coraz�n de Skel'Tharant irradia un poder incre�ble.~ */
  IF ~~ THEN DO ~CreateItem ("P_IHAL09",1,2,1) GiveItem("P_IHAL09", LastTalkedToBy)~ GOTO 83
END

IF ~~ THEN BEGIN 88 // from:
  SAY @210 /* ~De acuerdo. Por favor, entr�game el coraz�n y la espada.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelht") DestroyItem("p_skelht") TakePartyItem("SW2H15") DestroyItem("SW2H15")~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from:
  SAY @211 /* ~Wee Jas me ha facilitado el conocimiento en la imbuci�n de armas m�gicas. El coraz�n de Skel'Tharant irradia un poder incre�ble.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISW215",1,2,1) GiveItem("P_ISW215", LastTalkedToBy)~ GOTO 83
END

IF ~~ THEN BEGIN 90c // from:
  SAY @210 /* ~De acuerdo. Por favor, entr�game el coraz�n y la espada.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelht") DestroyItem("p_skelht") TakePartyItem("SW1H54") DestroyItem("SW1H54")~ GOTO 91c
END

IF ~~ THEN BEGIN 91c // from:
  SAY @211 /* ~Wee Jas me ha facilitado el conocimiento en la imbuci�n de armas m�gicas. El coraz�n de Skel'Tharant irradia un poder incre�ble.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISW54",1,2,1) GiveItem("P_ISW54", LastTalkedToBy)~ GOTO 83
END

IF ~Global("P_SkelIsDead","GLOBAL",2)
!Global ("P_PhillipeBravery","GLOBAL",7)
AreaCheck("P_FAR7")
~ THEN BEGIN 90 // from:
  SAY @179 /* ~�Lo has logrado! El Campe�n de Rachnidra, Skel'Tharant, �ha muerto!~ */
  IF ~~ THEN DO ~SetGlobal ("P_SkelIsDead","GLOBAL",3)~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from:
  SAY @213 /* ~El combate contra Morgrath est� cada vez m�s cerca. <CHARNAME>, �has logrado rescatar algo del cuerpo de Skel'Tharant? Espec�ficamente sus gl�ndulas.~ */
    IF ~PartyHasItem("p_skelgl")~ THEN REPLY @186 /* S�. He obtenido estas gl�ndulas de bebilith. �Puedes hacer algo con ellas? */  GOTO 75
    IF ~!PartyHasItem("p_skelgl")~ THEN REPLY @187 /* No, Vidomina. Quiz�s deba volver y ver si encuentro algo en su Guarida. */  GOTO 76
END

IF ~Global ("P_FDreach_Mission1","GLOBAL",5)
Global("P_SkelIsDead","GLOBAL",3)
AreaCheck("P_FAR7")
OR (5) 
Global ("P_Fall_KakutoSummoningIA","GLOBAL",0)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",1)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",2)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",3)
Global ("P_Fall_KakutoSummoningIA","GLOBAL",4)
~ THEN BEGIN 92 // from:
  SAY @70 /* ~Saludos, viajeros del m�s all�. Estoy aqu� para serviros.~ */
    IF ~~ THEN REPLY @71 /* No conozco a Wee Jas. �Qui�n es esa diosa a la que adoras? */  GOTO 23
	IF ~~ THEN REPLY @72 /* �Qu� se supone que es esa marmota? No puedo evitar observar que est�... vestido. */  GOTO 25
    IF ~~ THEN REPLY @73 /* De nuevo, �con qui�n tengo que hablar si necesito comerciar o descansar? */  GOTO 27
	IF ~~ THEN REPLY @86 /* �C�mo es que son inmunes aqu�? Has dicho que no pueden sufrir da�o. �Por qu� no atraer a las ara�as aqu� y derrotarlas? */  GOTO 28
	IF ~~ THEN REPLY @92 /* Por ahora no tengo dudas, Vidomina. Adi�s. */  GOTO 30
    IF ~PartyHasItem("p_skelgl")~ THEN REPLY @214 /* He obtenido estas gl�ndulas de bebilith. �Puedes hacer algo con ellas? */  GOTO 93
	IF ~PartyHasItem("p_skelht")~ THEN REPLY @215 /* Tengo el coraz�n de Skel'Tharant. �Se puede hacer algo con �l? */  GOTO 77b
	IF ~PartyHasItem ("P_rascal")~ THEN REPLY @238 /* Mi Dama, he obtenido estas escamas de la bestia del pantano, la hydra de Dreach-naga. �Crees que podamos hacer uso de ellas? */  GOTO 1LH
END

IF ~~ THEN BEGIN 94 // from:
  SAY @188 /* ~Muy bien. Ve con cuidado, <CHARNAME>. El combate final est� cerca y Morgrath no dudar� en matarte si tiene la oportunidad de hacerlo.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY @189 /* ~Interesante, <CHARNAME>. Esto servir� para reforzar el poder del Enclave. Te ofrezco este anillo, querido. Estoy segura de que te ser� �til en tus combates venideros.~ ~Interesante, <CHARNAME>. Esto servir� para reforzar el poder del Enclave. Te ofrezco este anillo, querida. Estoy segura de que te ser� �til en tus combates venideros.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelgl") DestroyItem("p_skelgl") CreateItem ("P_FITM25",1,2,1) GiveItem("P_FITM25", LastTalkedToBy) SetGlobal("P_VidominaSkelGlands","GLOBAL",1)~ GOTO 94
END

IF ~~ THEN BEGIN 77b // from:
  SAY @193 /* ~Ya veo. S�, puedo usarlo para aumentar el poder del Enclave. Ya no necesitaremos de tanto oro, por lo que podemos dispensar de ello. �15.000 piezas de oro te parece una recompensa adecuada?~ */
    IF ~~ THEN REPLY @194 /* S�, Vidomina, es m�s que aceptable. */  GOTO 79b
    IF ~~ THEN REPLY @195 /* No, Bruja, no lo vale. Me ha costado mucho acabar con la bestia como para obtener s�lo oro a cambio. */  GOTO 78b
    IF ~OR (5) PartyHasItem("SW1H31") PartyHasItem("SW1H51") PartyHasItem("HALB09")PartyHasItem("SW2H15") PartyHasItem("SW1H54")~ THEN REPLY @196 /* �No puedes reforzar alguna de mis armas con el coraz�n del bebilith, Vidomina? */  GOTO 80b
END

IF ~~ THEN BEGIN 78b // from:
  SAY @197 /* ~Comprendo. En caso de que cambies de opini�n, aqu� estar�.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79b // from:
  SAY @198 /* ~Gracias, <CHARNAME>. El oro ya se encuentra a tu disposici�n. Har� buen uso de este coraz�n, os lo aseguro.~ */
  IF ~~ THEN DO ~GiveGoldForce(15000) TakePartyItem("p_skelht") DestroyItem("p_skelht")~ EXIT
END

IF ~~ THEN BEGIN 80b // from:
  SAY @199 /* ~Podr�a intentarlo. �Qu� artefacto tienes en mente?~ */
    IF ~PartyHasItem("SW1H31")~ THEN REPLY @200 /* Me gustar�a mejorar esta espada larga: Diastro. */  GOTO 81b
    IF ~PartyHasItem("SW1H51")~ THEN REPLY @201 /* Me gustar�a mejorar esta katana: Furia Celestial. */  GOTO 84b
    IF ~PartyHasItem("HALB09")~ THEN REPLY @202 /* Me gustar�a mejorar esta alabarda: Oleaje. */  GOTO 86b
    IF ~PartyHasItem("SW2H15")~ THEN REPLY @203 /* Me gustar�a mejorar este mandoble hecho de plata Githyanki. */  GOTO 88b
    IF ~PartyHasItem("SW1H54")~ THEN REPLY @204 /* Me gustar�a mejorar esta espada larga: La Igualadora. */  GOTO 88d
    IF ~~ THEN REPLY @205 /* He cambiado de opini�n. Creo que prefiero el oro, Vidomina. */  GOTO 79b
    IF ~~ THEN REPLY @206 /* A�n no lo he decidido, Vidomina. Por ahora me ir� a descansar y luego te dir� qu� decido al respecto. */  GOTO 78b
END

IF ~~ THEN BEGIN 81b // from:
  SAY @207 /* ~De acuerdo. Por favor, entr�game el coraz�n y la espada.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelht") DestroyItem("p_skelht") TakePartyItem("SW1H31") DestroyItem("SW1H31")~ GOTO 82b
END

IF ~~ THEN BEGIN 82b // from:
  SAY @208 /* ~Wee Jas me ha facilitado el conocimiento en la imbuci�n de armas m�gicas. El coraz�n de Skel'Tharant irradia un poder incre�ble.~ */
  IF ~~ THEN DO ~CreateItem ("P_SW1H3I",1,2,1) GiveItem("P_SW1H3I", LastTalkedToBy)~ GOTO 83b
END

IF ~~ THEN BEGIN 83b // from:
  SAY @209 /* ~Espero que le des un buen uso a tu nuevo artefacto, <CHARNAME>. Aunque s� que lo har�s.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84b // from:
  SAY @210 /* ~De acuerdo. Por favor, entr�game el coraz�n y la espada.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelht") DestroyItem("p_skelht") TakePartyItem("SW1H51") DestroyItem("SW1H51")~ GOTO 85b
END

IF ~~ THEN BEGIN 85b // from:
  SAY @211 /* ~Wee Jas me ha facilitado el conocimiento en la imbuci�n de armas m�gicas. El coraz�n de Skel'Tharant irradia un poder incre�ble.~ */
  IF ~~ THEN DO ~CreateItem ("P_SW1H5I",1,2,1) GiveItem("P_SW1H5I", LastTalkedToBy)~ GOTO 83b
END

IF ~~ THEN BEGIN 86b // from:
  SAY @212 /* ~De acuerdo. Por favor, entr�game el coraz�n y la alabarda.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelht") DestroyItem("p_skelht") TakePartyItem("HALB09") DestroyItem("HALB09")~ GOTO 87b
END

IF ~~ THEN BEGIN 87b // from:
  SAY @211 /* ~Wee Jas me ha facilitado el conocimiento en la imbuci�n de armas m�gicas. El coraz�n de Skel'Tharant irradia un poder incre�ble.~ */
  IF ~~ THEN DO ~CreateItem ("P_IHAL09",1,2,1) GiveItem("P_IHAL09", LastTalkedToBy)~ GOTO 83b
END

IF ~~ THEN BEGIN 88b // from:
  SAY @210 /* ~De acuerdo. Por favor, entr�game el coraz�n y la espada.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelht") DestroyItem("p_skelht") TakePartyItem("SW2H15") DestroyItem("SW2H15")~ GOTO 89b
END

IF ~~ THEN BEGIN 89b // from:
  SAY @211 /* ~Wee Jas me ha facilitado el conocimiento en la imbuci�n de armas m�gicas. El coraz�n de Skel'Tharant irradia un poder incre�ble.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISW215",1,2,1) GiveItem("P_ISW215", LastTalkedToBy)~ GOTO 83b
END

IF ~~ THEN BEGIN 88d // from:
  SAY @210 /* ~De acuerdo. Por favor, entr�game el coraz�n y la espada.~ */
  IF ~~ THEN DO ~TakePartyItem("p_skelht") DestroyItem("p_skelht") TakePartyItem("SW1H54") DestroyItem("SW1H54")~ GOTO 89d
END

IF ~~ THEN BEGIN 89d // from:
  SAY @211 /* ~Wee Jas me ha facilitado el conocimiento en la imbuci�n de armas m�gicas. El coraz�n de Skel'Tharant irradia un poder incre�ble.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISW54",1,2,1) GiveItem("P_ISW54", LastTalkedToBy)~ GOTO 83b
END

//SW1H31 Diastro -> P_SW1H3I
//SW1H51 Furia Celestial -> P_SW1H5I
//HALB09 Oleaje -> P_IHAL09
//SW2H15 Espada de plata -> P_ISW215
//SW1H54 La Igualadora -> P_ISW54

// RESURRECCION de los comandantes lagartos

IF ~~ THEN BEGIN 95 // from:
  SAY @216 /* ~�Te refieres a Phillipe? As� es, General Cho'Nuja. Puedo traer de vuelta a Phillipe por voluntad de Wee Jas. Gracias a ti y a <CHARNAME>.~ */
  IF ~~ THEN DO ~~ GOTO 96
END

IF ~~ THEN BEGIN 96 // from:
  SAY @217 /* ~Parte del poder de Skel'Tharant ahora yace en el n�cleo de poder del Enclave. Esto es gracias a que ustedes fueron capaces de matarlo y de traerme compuestos del cuerpo mortal del bebilith.~ */
  IF ~~ THEN DO ~~ GOTO 97
END

IF ~~ THEN BEGIN 97 // from:
  SAY @218 /* ~Sin embargo, s� que no lo preguntas por mera curiosidad, General. �Qu� es lo que realmente quieres saber?~ */
  IF ~~ THEN DO ~~ EXTERN ~P_CHO~ 69
END

IF ~~ THEN BEGIN 98 // from:
  SAY @219 /* ~Ya veo. �Y qu� pasar� cuando Tisiphone quiera tomar venganza contra nosotros? Tu Reina no era conocida por su clemencia. Creo que t�, mejor que nadie, deber�a saberlo.~ */
  IF ~~ THEN DO ~~ GOTO 99
END

IF ~~ THEN BEGIN 99 // from:
  SAY @220 /* ~Muy bien, General. <CHARNAME>, �tienes algo que haya pertenecido a los comandantes de Dreach-naga?~ */
    IF ~~ THEN REPLY @221 /* S�, tengo algunas anotaciones que pude recuperar de sus cuerpos. Aqu� est�n. */  GOTO 100
END

IF ~~ THEN BEGIN 100 // from:
  SAY @222 /* ~S�, esto servir�, al menos en principio. General, estas anotaciones poseen una connotaci�n intr�nseca contigo. Pero no es suficiente para traerlos de nuevo.~ */
  IF ~~ THEN DO ~TakePartyItem("P_QYLNOT") TakePartyItem("P_VRENOT") TakePartyItem("P_GASNOT") DestroyItem ("P_QYLNOT") DestroyItem ("P_VRENOT") DestroyItem ("P_GASNOT")~ GOTO 101
END

IF ~~ THEN BEGIN 101 // from:
  SAY @223 /* ~S�, esos compuestos ser�an m�s que suficiente para ejecutar ahora mi hechizo. <CHARNAME>, �estar�as dispuesto a entregarlos? S� que el arma de Tisiphone es poderosa y que la cabeza de una hydra puede tener un valor alt�simo en cuanto a oro se refiere.~ */
    IF ~~ THEN REPLY @224 /* De acuerdo, Vidomina. Entregar� lo que pides. */  GOTO 102
	IF ~~ THEN REPLY @225 /* He luchado duro para obtener estas recompensas. Lo que me piden no es algo que yo est� dispuesto a pagar. */  GOTO 103
END

IF ~~ THEN BEGIN 102 // from:
  SAY @226 /* ~Has hecho algo noble, <CHARNAME>. E inteligente. Si el General Cho'Nuja logra convencer a sus soldados de luchar con nosotros, el combate final contra Morgrath podr�a tornarse a nuestro favor. Ahora proceder� a ejecutar el sortilegio. Observad el poder de la Hechiera Rub�:~ */
  IF ~~ THEN DO ~TakePartyItem("p_rahead") TakePartyItem("p_isper") DestroyItem ("p_rahead") DestroyItem ("p_isper") SetGlobal("P_ChocRevivalFriends","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY @227 /* ~Comprendo, <CHARNAME>. Lo lamento, General. Te entrego las anotaciones de tus ni�os. S� que es lo que har�s a continuaci�n.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_CHO~ 70
END

// Sin Fall P_FA16 Porque FALL Cay� en combate
IF ~AreaCheck("P_FA16")
!InMyArea("P_FALL")
Global("P_MorgrathSpawnPF16","GLOBAL",7)
Global("P_FallDiedInFinalBattle","GLOBAL",1)
~ THEN BEGIN 104B // from:
  SAY @242 /* Selu'taar Gemystara. Soy Vidomina de Falcongr�s y he venido en tu ayuda. */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",8)~ GOTO 105B
END

IF ~~ THEN BEGIN 105B // from:
  SAY @243 /* ~He sentido la desaparici�n de la energ�a de Morgrath en la Trama, junto a una explosi�n de energ�a arcana y divina. Nunca hab�a presenciado tal poder, mortal.~ */
  IF ~~ THEN DO ~~ GOTO 106A
END

// Sin Fall P_FA16
IF ~AreaCheck("P_FA16")
!InMyArea("P_FALL")
Global("P_MorgrathSpawnPF16","GLOBAL",7)
Global("P_FallDiedInFinalBattle","GLOBAL",0)
~ THEN BEGIN 104A // from:
  SAY @242 /* Selu'taar Gemystara. Soy Vidomina de Falcongr�s y he venido en tu ayuda. */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",8)~ GOTO 105A
END

IF ~~ THEN BEGIN 105A // from:
  SAY @243 /* ~He sentido la desaparici�n de la energ�a de Morgrath en la Trama, junto a una explosi�n de energ�a arcana y divina. Nunca hab�a presenciado tal poder, mortal.~ */
  IF ~~ THEN DO ~~ GOTO 106A
END

IF ~~ THEN BEGIN 106A // from:
  SAY @244 /* ~Muy bien. <CHARNAME>, cuando te encuentres listo, habla conmigo y viajaremos de vuelta a Faer�n.~ ~Muy bien. <CHARNAME>, cuando te encuentres lista, habla conmigo y viajaremos de vuelta a Faer�n.~ */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",8)~ UNSOLVED_JOURNAL @310068 EXIT
END

// Con Fall P_FA16
IF ~AreaCheck("P_FA16")
InMyArea("P_FALL")
Global("P_MorgrathSpawnPF16","GLOBAL",7)
~ THEN BEGIN 104 // from:
  SAY @242 /* Selu'taar Gemystara. Soy Vidomina de Falcongr�s y he venido en tu ayuda. */
  IF ~~ THEN DO ~SetGlobal("P_FallFinalSceneSoA1","GLOBAL",1) SetGlobal("P_MorgrathSpawnPF16","GLOBAL",8)~ GOTO 105
END

IF ~~ THEN BEGIN 105 // from:
  SAY @243 /* ~He sentido la desaparici�n de la energ�a de Morgrath en la Trama, junto a una explosi�n de energ�a arcana y divina. Nunca hab�a presenciado tal poder, mortal.~ */
  IF ~~ THEN DO ~~ GOTO 106
END

IF ~~ THEN BEGIN 106 // from:
  SAY @244 /* ~Muy bien. <CHARNAME>, cuando te encuentres listo, habla conmigo y viajaremos de vuelta a Faer�n.~ ~Muy bien. <CHARNAME>, cuando te encuentres lista, habla conmigo y viajaremos de vuelta a Faer�n.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallFinalSceneSoA1","GLOBAL",1) SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",8)~ UNSOLVED_JOURNAL @310068 EXIT
END

// SIN FALL
IF ~Global ("P_FallFinalSceneSoA1","GLOBAL",0)
Global("P_MorgrathSpawnPF16","GLOBAL",8)
AreaCheck("P_FA16")
~ THEN BEGIN 107 // from:
  SAY @251 /* ~<CHARNAME>, �est�n listos para volver a casa?~ */
    IF ~~ THEN REPLY @252 /* A�n no, Vidomina. */  GOTO 108
	IF ~~ THEN REPLY @253 /* S�, Vidomina. Salgamos de aqu� cuanto antes. */  GOTO 109A
END

IF ~~ THEN BEGIN 109A // from:
  SAY @255 /* ~Wee Jas, gu�a mi mano. Es hora de abandonar el Abismo...~ */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",9)~ EXIT
END

// CON FALL
IF ~Global ("P_FallFinalSceneSoA1","GLOBAL",1)
Global("P_MorgrathSpawnPF16","GLOBAL",8)
AreaCheck("P_FA16")
~ THEN BEGIN 107 // from:
  SAY @251 /* ~<CHARNAME>, �est�n listos para volver a casa?~ */
    IF ~~ THEN REPLY @252 /* A�n no, Vidomina. */  GOTO 108
	IF ~~ THEN REPLY @253 /* S�, Vidomina. Salgamos de aqu� cuanto antes. */  GOTO 109
END



IF ~~ THEN BEGIN 108 // from:
  SAY @254 /* ~Apres�rate, <CHARNAME>. No s� cu�nto tiempo m�s pueda resistir Gemystara.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY @255 /* ~Wee Jas, gu�a mi mano. Es hora de abandonar el Abismo...~ */
  IF ~~ THEN DO ~SetGlobal("P_FallFinalSceneSoA1","GLOBAL",2) SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY @256 /* ~Creo que una parte de ti lo sabe, Gemystara.~ */
  IF ~~ THEN DO ~~ GOTO 111
END

IF ~~ THEN BEGIN 111 // from:
  SAY @257 /* ~Tu coraz�n es c�lido, peque�a. Pero el ciclo de la vida incluye la muerte. De la p�rdida obtenemos sabidur�a y de la sabidur�a la luz necesaria para combatir el miedo. Alguien conocido a ustedes se acerca...~ */
  IF ~~ THEN DO ~SetGlobal("P_FallGemAR2601","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY @268 /* ~Es lo menos que pod�a hacer, peque�a Fall. Vamos, es momento de ir a Athkatla.~ */ 
  IF ~~ THEN DO ~SetGlobal ("P_FallGemAR2601","GLOBAL",5)~ EXIT
END

// SIN FALL
IF ~AreaCheck("P_FA3B")
!InMyArea("P_Fall")
Global ("P_BackToAthkatla001","GLOBAL",0)
~ THEN BEGIN 113A // from:
  SAY @269 /* ~Finalmente hemos arribado a Athkatla.~ */
  IF ~~ THEN DO ~SetGlobal ("P_BackToAthkatla001","GLOBAL",1)~ GOTO 114
END

// CON FALL
IF ~AreaCheck("P_FA3B")
InMyArea("P_Fall")
Global ("P_BackToAthkatla001","GLOBAL",0)
~ THEN BEGIN 113 // from:
  SAY @269 /* ~Finalmente hemos arribado a Athkatla.~ */
  IF ~~ THEN DO ~SetGlobal ("P_BackToAthkatla001","GLOBAL",1)~ GOTO 114
END

IF ~~ THEN BEGIN 114 // from:
  SAY @270 /* ~<CHARNAME>, lamento no poder ser de gran ayuda en tu lucha contra aquel que agobia las tierras �lficas.~ */
    IF ~~ THEN REPLY @271 /* No te preocupes, Vidomina. Que nos hayas tra�do aqu� es m�s que suficiente. He aumentado mi poder gracias a la experiencia que obtuve en mi viaje abisal. */  GOTO 115
	IF ~~ THEN REPLY @272 /* Es una pena, Vidomina. No me vendr�a mal la ayuda en la lucha contra Irenicus. */  GOTO 115
END

IF ~~ THEN BEGIN 115 // from:
  SAY @273 /* ~Pese a esto, querido, puede que alguno de los amigos que hemos forjado en Rachnidra y Dreach-naga tengan algo para decirte. He tra�do a todas las criaturas vivas que no fueron v�ctimas ni aliadas de las ara�as. Adem�s, mis ni�os y yo nos quedaremos un tiempo, as� que si necesitas algo, no tienes m�s que hablar con nosotros.~ */
  IF ~~ THEN DO ~SetGlobal ("P_BackToAthkatla001","GLOBAL",1) AddexperienceParty(200000) EraseJournalEntry(@310034) EraseJournalEntry(@310035)EraseJournalEntry(@310036)EraseJournalEntry(@310037)EraseJournalEntry(@310038)EraseJournalEntry(@310053)EraseJournalEntry(@310056)EraseJournalEntry(@310057)EraseJournalEntry(@310058)EraseJournalEntry(@310068) EraseJournalEntry(@310070)~ SOLVED_JOURNAL @310069 EXIT
END

IF ~AreaCheck("P_FA3B")
Global ("P_BackToAthkatla001","GLOBAL",1)
~ THEN BEGIN 116 // from:
  SAY @278 /* ~Falcongr�s, mi hogar, me queda lejos. Faer�n ser� mi hogar hasta que encuentre la forma de volver. Mis ni�os me acompa�aran, si es que lo desean, claro.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY @279 /* ~Querido Phillipe, te he revivido y tra�do a Athkatla. Morgraht y Skel'Tharant han sido derrotados e incluso t� has jugado un papel en ello. Adem�s, eres parte de mi familia. Revivirte me pareci� una recompensa acorde a tus esfuerzos.~ */
  IF ~~ THEN EXTERN ~P_PHILLI~ 48 
END

IF ~~ THEN BEGIN 118 // from:
  SAY @285 /* ~Ha sido obra m�a. Hace un tiempo logr� contactar con Mystra. Alendir, eras un selu'taar poderoso, ca�do en gracia ante los ojos de la Dama de los Misterios. Sin embargo, tus esfuerzos evitaron una invasi�n a estos planos, tanto por parte de Icelock como por parte de Morgrath. Pude utilizar parte del poder de mi Enclave, y con la ayuda de tu Se�ora, has vuelto a la vida.~ */
  IF ~~ THEN EXTERN ~P_ALEN~ 1
END

IF ~~ THEN BEGIN 118B // from:
  SAY @285 /* ~Ha sido obra m�a. Hace un tiempo logr� contactar con Mystra. Alendir, eras un selu'taar poderoso, ca�do en gracia ante los ojos de la Dama de los Misterios. Sin embargo, tus esfuerzos evitaron una invasi�n a estos planos, tanto por parte de Icelock como por parte de Morgrath. Pude utilizar parte del poder de mi Enclave, y con la ayuda de tu Se�ora, has vuelto a la vida.~ */
  IF ~~ THEN EXTERN ~P_ALEN~ 5
END

IF ~~ THEN BEGIN 119 // from:
  SAY @286 /* ~<CHARNAME>.~ */
    IF ~~ THEN REPLY @287 /* �Qu�? */  GOTO 120
	IF ~~ THEN REPLY @288 /* �Y yo qu� tengo que ver con esto? */  GOTO 120
END

IF ~~ THEN BEGIN 120 // from:
  SAY @289 /* ~Alendir, <CHARNAME> ha sido part�cipe directo de tus �ltimos actos. Sin su intervenci�n, no habr�as enfrentado a Icelock. Eso es lo que ha provocado que Mystra permita tu renacimiento de nuevo al Plano Material.~ */
  IF ~~ THEN EXTERN ~P_ALEN~ 2
END

I_C_T P_VIDOMI 113A P_VIDOMI__GEM_5A
== P_VIDOMI IF ~~ THEN @274 /* ~<CHARNAME>, es un placer ver que has llegado sano y salvo aqu�.~ ~<CHARNAME>, es un placer ver que has llegado sana y salva aqu�.~ */
== P_VIDOMI IF ~~ THEN @282 /* ~Lamentablemente, la elfa selu'taar que ayud� en la destrucci�n de Morgrath no ha sobrevivido.~ */
== P_VIDOMI IF ~~ THEN @283 /* ~Gemystara, como era su nombre, utiliz� gran parte de su poder y energ�a vital para desterrar a Morgrath de aquella capa abisal.~ */
== P_VIDOMI IF ~~ THEN @284 /* ~He dejado su esp�ritu en los bosques de Tir na Og, bajo el manto divino del Padre Roble. Ella podr� descansar, al fin, en paz.~ */
END

I_C_T P_VIDOMI 105B P_VIDOMI__GEM_4B
== P_GEM IF ~~ THEN @245 /* T� eres... la Dama del Enclave... */
== P_VIDOMI IF ~~ THEN @246 /* As� es, querida. Yo... ahora puedo ver el resultado de tu sacrificio. */
== P_VIDOMI IF ~~ THEN @290 /* Fall... no veo a Fall... */
== P_GEM IF ~~ THEN @291 /* Mi hija... ha ca�do en combate, mi Dama. Yo... no pude hacer nada al respecto. */
== P_VIDOMI IF ~~ THEN @292 /* No permitas que la tristeza inunde tu coraz�n. No siempre la muerte es el fin de todas las cosas. */
== P_VIDOMI IF ~~ THEN @293 /* Fall puede ser revivida por <CHARNAME> o seguir su rumbo en las praderas del Padre Roble. */
== P_VIDOMI IF ~~ THEN @294 /* Morgrath ha fallado en su plan. Lo que han hecho aqu� es de gran importancia. Fall estar�a orgullosa, selu'taar Gemystara. */
== P_GEM IF ~~ THEN @295 /* Entiendo... */
END

I_C_T P_VIDOMI 105A P_VIDOMI__GEM_4A
== P_GEM IF ~~ THEN @245 /* T� eres... la Dama del Enclave... */
== P_VIDOMI IF ~~ THEN @246 /* As� es, querida. Yo... ahora puedo ver el resultado de tu sacrificio. */ 
== P_VIDOMI IF ~~ THEN @250 /* ... */
END

I_C_T P_VIDOMI 113 P_VIDOMI__GEM_3
== P_VIDOMI IF ~~ THEN @274 /* ~<CHARNAME>, es un placer ver que has llegado sano y salvo aqu�.~ ~<CHARNAME>, es un placer ver que has llegado sana y salva aqu�.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @275 /* Mi Dama, gracias por todo lo que has hecho. Aunque... lamento que madre no haya podido salvarse. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @276 /* Sin embargo, la tristeza no me abruma. Tengo este sentimiento en el pecho, una nostalgia. Me siento esperanzada por el porvenir. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @277 /* ~Fall, has crecido en sobremanera. Siento que yo tambi�n lo he hecho. No es f�cil hacer amigos en el Abismo, pero ustedes forman parte de lo que es preciado para m�.~ */
END

I_C_T P_VIDOMI 110 P_VIDOMI__GEM_2
== P_GEM IF ~~ THEN @258 /* S�... Lo s�. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @259 /* Mam�, �qu� est� pasando? �D�nde estamos? */
== P_GEM IF ~~ THEN @260 /* Tir na Og... estamos en el Bosque Profundo, el Reino de Silvanus. */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @261 /* ~Ahora comprendo la sensaci�n de nostalgia en mi coraz�n. �C�mo es que llegamos aqu�?~ */
== P_VIDOMI IF ~~ THEN @262 /* He utilizado gran parte de mi poder para traernos aqu�. Peque�a Fall, tu madre est� muriendo. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @263 /* No... no es posible. Mam�, te hemos rescatado... hemos vencido a Morgrath. Ya no estamos en el Abismo... �c�mo? �por qu�? */
== P_GEM IF ~~ THEN @264 /* He utilizado casi toda mi fuerza vital para expulsar a Morgrath... para regresarla a la Oscuridad donde pertenece. */
== P_GEM IF ~~ THEN @265 /* Hija... lo lamento. */
== P_VIDOMI IF ~~ THEN @266 /* Sacarla de este plano significar� su muerte, Fall. Por eso es que Tir na Og me pareci� el lugar m�s indicado para traer a la selu'taar que permiti� nuestro escape del Abismo. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @267 /* No... �No! No puedo aceptarlo... hemos recorrido mucho camino para que todo esto termine as�. Mam�... */
END

I_C_T P_VIDOMI 105 P_VIDOMI__GEM_1
== P_GEM IF ~~ THEN @245 /* T� eres... la Dama del Enclave... */
== P_VIDOMI IF ~~ THEN @246 /* As� es, querida. Yo... ahora puedo ver el resultado de tu sacrificio. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @247 /* �Sacrificio? Vidomina, �de qu� est�s hablando? */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @248 /* Madre, �qu� est� pasando? */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @249 /* Todo va a estar bien, Fall. Mi Dama... salgamos de este plano... p-por favor, ll�vanos a Faer�n. */
== P_VIDOMI IF ~~ THEN @250 /* ... */
END

///////////////

I_C_T P_VIDOMI 100 P_VIDOMI__CHO_2
== P_CHO IF ~~ THEN @228 /* �Qu� m�s necesita, mi Dama? */
== P_VIDOMI IF ~~ THEN @229 /* No es f�cil pedirlo, pero necesitar� algunos compuestos de poder significativo para poder ejecutar mi sortilegio de resurrecci�n. */ 
== P_VIDOMI IF ~~ THEN @230 /* Algo perteneciente a Tisiphone. Algo perteneciente a Rask'tar Krathiss. */ 
== P_CHO IF ~~ THEN @231 /* ~Entiendo. <CHARNAME> se ha hecho con el Tridente de mi Reina, as� como de una de las cabezas de Rask'tar. La decisi�n: pertenece a �l.~ ~Entiendo. <CHARNAME> se ha hecho con el Tridente de mi Reina, as� como de una de las cabezas de Rask'tar. La decisi�n: pertenece a ella.~ */
END


I_C_T P_VIDOMI 98 P_VIDOMI__CHO_1
== P_CHO IF ~~ THEN @232 /* Quiz�s pueda convencerla... */
== P_VIDOMI IF ~~ THEN @233 /* Aunque quisiera, lord General, no podr�a revivirla. No al menos a Tisiphone o a su campe�n, Rask'tar Krathiss. Eran criaturas poderosas y antiguas y requerir�a de un poder mayor del que poseo el traerlos de vuelta. */ 
== P_CHO IF ~~ THEN @234 /* Yo... comprendo... */
== P_VIDOMI IF ~~ THEN @235 /* Sin embargo, algo se podr�a hacer con tus comandantes. */
== P_TAMIKA IF ~~ THEN @236 /* Mi Dama, �qu� pasar�a si los lagartos se vuelven en nuestra contra? */
== P_CHO IF ~~ THEN @237 /* Eso no pasar�. Mis comandantes seguir�n mis �rdenes. Seremos aliados del Enclave y de <CHARNAME>. */
END


I_C_T P_VIDOMI 57 P_FallJ_P_VIDOMI_9
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @149 /* Mi Dama, �a qu� te refieres? */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @150 /* Para llegar aqu�, has realizado un sacrificio en tu fuerza vital, �no es as�? */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @151 /* Pues... s�. Para llegar al Templo en el que Alendir abri� un portal hacia aqu�, tuvimos un encuentro con un escarabajo rinoceronte del Valle del Viento Helado. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @152 /* �Y qu� fue lo que sucedi�? */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @153 /* Pudimos comunicarnos con el escarabajo gracias a las criaturas del Plano Astral. En orden de romper las cadenas arcanas que lo manten�an atado a la entrada del Templo, eleg� sacrificar parte de mi energ�a. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @154 /* No quiero sonar cruel con lo que he de decir, pero �no pod�an despachar a la criatura? Matarla habr�a evitado que realizases dicho sacrificio. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @155 /* Es verdad... matarlo era una opci�n. Pero no pod�a permitirlo. No es el designio del Padre Roble. No es lo que mi padre me ense��.  */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @156 /* Trato de honrar a la Naturaleza lo mejor que puedo. S� que no he sido perfecta y he fallado muchas veces. Pero he hecho lo que he considerado correcto. No me arrepiento de ello. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @157 /* Ya veo. La criatura a la que has salvado, la has enviado al Plano Astral, �no es as�? */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @158 /* Est�s en lo correcto. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @159 /* Estoy segura de que el escarabajo debe tenerte en alta estima, Fall. �Por qu� no has intentado convocarlo para que te ayude en tus misiones? */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @160 /* Erhm... *se rasca la cabeza* No s� c�mo. Si bien he logrado forjar un v�nculo con todas mis convocaciones y hacer de su llegada desde el Plano Astral algo consistente, con Kakuto no he podido hacerlo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @161 /* Es una criatura muy poderosa. Creo que se requiere de un gran poder para poder llamarle. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @162 /* Es verdad, mi querida. Pero hay algo que no sabes. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @163 /* �El qu�? */
END


I_C_T P_VIDOMI 40 P_FallJ_P_VIDOMI_8
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @142 /* Mi Dama, �crees que mi madre siga a�n con vida? */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @143 /* La selu'taar a�n est� con vida, mi ni�a. Pero debo serte sincera: su fuerza vital est� disminuyendo a medida que pasa el tiempo. */ 
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @144 /* La ca�da de Dreach-naga parece haber incrementado los poderes de Morgrath. Ya no tiene restricciones en la conquista de este plano. No tienen otra opci�n m�s que derrotarla antes de que ella los atrape a ustedes en su telara�a demon�aca. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @145 /* Haremos todo lo posible, Vidomina. �Tenlo por seguro! */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @146 /* Conf�o en que lo har�n, Fall de Imnescar. Ahora d�jame explicar por qu� deben eliminar a Morgrath en pos de volver a su plano: */ 
END

I_C_T P_VIDOMI 38 P_FallJ_P_VIDOMI_7
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @121 /* �General Cho'Nuja? Veo que acompa�as a <CHARNAME>. Y a su vez traen el Coraz�n de la Reina Tisiphone. Percibo una tristeza profunda en tus ojos. Lamento que la guerra haya tenido que llegar a estas instancias. */
== P_CHO IF ~OR(1) InMyArea("p_vidomi")~ THEN @122 /* ~Al fin nos conocemos, Bruja. As� que has sido t� quien ha enviado al semidi�s a destruir mi hogar.~ */
== P_TAMIKA IF ~OR(1) InMyArea("p_cho")~ THEN @123 /* Cuidado, hombre-lagarto. Si no quieres perder la cabeza, te dirigir�s a mi Se�ora de una manera m�s respetuosa. */
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @124 /* Es suficiente, mi querida Tamika. El resentimiento del General es comprensible. Pero esta es una conversaci�n entre �l y yo. */
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @125 /* Lo que dices es cierto, General. He sido yo quien ha encomendado la misi�n a <CHARNAME> de acabar con Tisiphone. */
== P_CHO IF ~OR(1) InMyArea("p_vidomi")~ THEN @126 /* ~Entonces, �lo admites?~ */
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @127 /* S�. �Cu�l es el precio para poner fin a una guerra abisal? Dos Reinas. */
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @128 /* Sabes tan bien como yo del poder de las ara�as. Criaturas como Mesothel o Skel'Tharant no detendr�n su maldad aqu� en Dreach-naga. No, General. Extender�n su oscuridad a trav�s de la negrura del cosmos, recorriendo un destino funesto por las telara�as demon�acas tejidas por La Legi�n que no se puede ver. */
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @129 /* Es cierto que para llegar al Cubil de la Reina Ara�a es necesario de la sangre de una criatura real del Abismo. La selu'taar necesit� s�lo de un poco para poder llegar all�.  */
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @130 /* Pero lo cierto es que para lograr que <CHARNAME> atraviese el umbral se requiere de una cantidad mayor.  */
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @131 /* Algunos de mis protegidos, como Xsi, creen que era posible razonar con la naci�n de Dreach-naga. Y en cierto sentido ten�an raz�n. El simple hecho de que est�s aqu� y no est�s empleando tus poderosas garras para destruir el Enclave es prueba de ello.  */
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @132 /* Pero dime, General Cho'Nuja. �Crees que tu Reina habr�a estado dispuesta a sacrificarse por el bien de su Reino?  */
== P_CHO IF ~OR(1) InMyArea("p_vidomi")~ THEN @133 /* ~Yo... Creo que no...~ */
== P_CHO IF ~OR(1) InMyArea("p_vidomi")~ THEN @134 /* ~Lo cierto es que mi Reina estaba perdiendo la cordura, poco a poco. Algunos culpaban a la criatura arcana, la que t� llamas seluu'tar.~ */
== P_CHO IF ~OR(1) InMyArea("p_vidomi")~ THEN @135 /* ~Pero lo cierto es que, como uno de sus guerreros m�s cercanos, puedo decir que no era as�.~ */
== P_CHO IF ~OR(1) InMyArea("p_vidomi")~ THEN @136 /* ~Est�bamos destinados a perder esta guerra. Las ara�as consumir nuestro pantano y luego utilizar nuestro antiguo poder para ascender a otros planos. Lo s�... s�lo que es la primera vez que lo digo en voz alta.~ */
== P_CHO IF ~OR(1) InMyArea("p_vidomi")~ THEN @137 /* ~Durante a�os entren� a mis soldados, forj� sus cuerpos y mentes para hacer de Dreach-naga una naci�n brillante en la oscuridad infinita del Abismo.~ */
== P_CHO IF ~OR(1) InMyArea("p_vidomi")~ THEN @138 /* ~Todo eso se ha perdido.~ */
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @139 /* No, General. El hecho de que est�s aqu� con <CHARNAME> me dice que las esperanzas a�n existen. Dreach-naga no habr� ca�do en vano, pues su sacrificio es lo que nos permitir� acabar con Morgrath.  */
== P_CHO IF ~OR(1) InMyArea("p_vidomi")~ THEN @140 /* ~Espero que est�s en lo correcto, mi Dama.~ */
== P_VIDOMI IF ~OR(1) InMyArea("p_cho")~ THEN @141 /* Aqu� eres bienvenido, General. Descansa mientras hablo con <CHARNAME>.  */
END

////////////////

I_C_T P_VIDOMI 28 P_FallJ_P_VIDOMI_6
== P_VIDOMI IF ~~ THEN @89 /* Cuando llegu� aqu� ya era una poderosa liche. No estoy segura de por qu� fui uno de los objetivos de Mesothel. Pero lo m�s probable es que segu�a las �rdenes de su Reina madre. */
== P_VIDOMI IF ~~ THEN @90 /* El hecho de que est� obsesionada con el poder arcano me ha convencido de que pretende hacerse del poder de varios magos para as� poder llevar sus huestes al Plano Material y as� liberar todo su Shyntquarra.  */
== P_VIDOMI IF ~~ THEN @91 /* Preguntas por qu� no atraer a las ara�as aqu�... La raz�n es bastante simple: las ara�as est�n conscientes de que el Enclave es una trampa mortal para ellas. As� que har�n lo posible por mantenerse alejadas.  */
END

I_C_T P_VIDOMI 25 P_FallJ_P_VIDOMI_5
== P_VIDOMI IF ~~ THEN @78 /* Puede que lo hayas observado cuando llegaste, pero las ara�as se alimentan de carne. Utilizan a sus ara�as fase para viajar por los planos y traer presas que devoran de forma cruel. */
== P_TOBIAS IF ~~ THEN @79 /* *Tobias se estremece al escuchar el relato.* */
== P_VIDOMI IF ~~ THEN @80 /* Tobias, como le llamamos, fue la �nica criatura que logr� acercarse al Enclave. Nimbus le rescat� y lo trajo consigo antes de que fuese alcanzado por Mesothel. */
END


I_C_T P_VIDOMI 23 P_FallJ_P_VIDOMI_4
== P_VIDOMI IF ~~ THEN @81 /* La Dama Severa es la guardiana de los muertos y tiene control sobre el tr�nsito de las almas. Aunque es una diosa de la muerte, no es malvada; m�s bien, se enfoca en el orden y el respeto hacia los muertos. */
== P_VIDOMI IF ~~ THEN @82 /* Es una diosa de la magia y se la venera como la patrona de los magos y hechiceros. Valora el conocimiento arcano y el estudio de las artes m�gicas. Representa la ley y el orden. Sus seguidores valoran la disciplina, el respeto por las tradiciones y las jerarqu�as establecidas. */
== P_VIDOMI IF ~~ THEN @83 /* Entiendo que la muerte viviente no sea vista como una fuerza natural de donde vienes, pero Wee Jas respeta la Necromancia siempre que se haga con respeto y control. Como imaginar�s, requiere de una gran disciplina y concentraci�n de poder. */
== P_VIDOMI IF ~~ THEN @84 /* Mis esbirros no fueron forzados a vivir en la muerte viviente, sino m�s bien que fue un acuerdo mutuo. Aceptaron ayudarme hasta que encontremos la forma de detener a Morgrath. */
== P_VIDOMI IF ~~ THEN @85 /* Pero tambi�n est�n conscientes de que nunca podamos regresar a nuestros respectivos planos. Por ahora, ya sea Faer�n o Flanaess, cualquier opci�n que no sea el Abismo servir�... */
END


/////////////////////////////

I_C_T P_VIDOMI 14 P_FallJ_P_VIDOMI_3
== P_VIDOMI IF ~~ THEN @43 /* No fue hasta que lleg� la hechicera selu'taar que eso cambi�. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @44 /* Entonces madre supo c�mo sortear ese obst�culo. �Lo ves, <CHARNAME>? Madre es muy poderosa. */
== P_VIDOMI IF ~~ THEN @45 /* Creo que ella siempre estuvo consciente de que mis esbirros le segu�an y no hizo nada al respecto. */
== P_VIDOMI IF ~~ THEN @46 /* Observamos c�mo incursion�, sigilosamente, en las tierras reptiles. */
== P_VIDOMI IF ~~ THEN @47 /* Lleg� al mism�simo trono de Tisiphone y con una daga m�gica le realiz� un corte. El arma qued� ba�ada en la sangre de la Reina y con eso, la selu'taar desapareci� en una nube arcana. */
== P_VIDOMI IF ~~ THEN @48 /* Para nuestra sorpresa, la sangre en la daga dispers� las sombras de la cueva oriental y all� fue cuando vimos por �ltima vez a la selu'taar. */
== P_VIDOMI IF ~~ THEN @49 /* D�as despu�s, las ara�as parecieron desaparecer de Rachnidra. Esto, ciertamente, nos desconcierta y preocupa. */
== P_VIDOMI IF ~~ THEN @50 /* Pronto descubrir�s que explorar Dreach-naga no ser� tan f�cil como parece. El Abismo puede ser un lugar traicionero y confuso. */
== P_VIDOMI IF ~~ THEN @51 /* Luego del ataque, Tisiphone orden� que se activaran las Piedras Guarda de las diferentes regiones. Para avanzar, no tendr�s otra opci�n m�s que obtener dichas Piedras Guarda. */
== P_VIDOMI IF ~~ THEN @52 /* Hemos descubierto que se encuentran en poder de los diferentes comandantes de Tisiphone, por lo que tendr�s que derrotarlos en pos de llegar al trono. */
END

I_C_T P_VIDOMI 9 P_FallJ_P_VIDOMI_2
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @53 /* Ahora debemos hablar de lo que nos conscierne: La selu'taar. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @54 /* �Sabes qu� ha sido de ella, Vidomina? */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @55 /* No hace mucho tiempo, una poderosa fuerza arcana arrib� a las cuevas ar�cnidas. Xsi, mi sacerdote hechicero, ha reconocido la magia como la de Evereska, el Reino Oculto de los elfos. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @56 /* La hechicera mantuvo al margen a las legiones de la Reina Ara�a e incluso fue capaz de penetrar en su cub�culo. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @57 /* Los planes de la regente ar�cnica eran invadir Faer�n. De hecho lo intent� hace varios a�os. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @58 /* Una incursi�n de criaturas ar�cnidas atac� mi hogar natal, Imnescar. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @59 /* Pero tal incursi�n fue detenida por los habitantes de la superficie, lo s�, peque�a. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @60 /* �Por qu�, Vidomina? Me he preguntado eso durante a�os. �Cu�l es el objetivo de Morgrath? */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @61 /* Ah, veo que su nombre te ha sido develado. Morgrath. S�. Ella es la Reina Ara�a. La art�fice de una fuerza descomunal llamada Shyntquarra. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @62 /* No tengo la certeza de su objetivo, mi ni�a. Pero lo cierto es que la Reina Ara�a lleva siglos invadiendo y conquistando capas abisales. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @63 /* No es sorpresa que varios demonios y monstruos busquen la conquista del Plano Material y el objetivo no suele ser m�s complejo que el de la destrucci�n absoluta. */
END

I_C_T P_VIDOMI 0 P_FallJ_P_VIDOMI_1
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @64 /* S� mucho sobre Rachnidra y sobre Dreach-naga. Os ayudaremos lo m�s que podamos para poner fin a esta guerra. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @65 /* Esperaba... esperaba encontrar a mi madre... pero t� no eres ella. �Dreach-naga?, �guerra? Hechicera, �a qu� te refieres? */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @66 /* Puedes llamarme Vidomina, peque�a. En cuanto a tu pregunta, te�ricamente, este lugar no siempre fue Rachnidra. Hace siglos, toda esta capa del Abismo pertenec�a al Reino de Dreach-naga. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @67 /* Un d�a, las fuerzas de La Oscura llegaron y comenzaron a arrasar con la civilizaci�n reptil, al punto en que casi los lleva a su extinci�n. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @68 /* Dreach-naga opuso una fuerte resistencia, pues no es un reinado d�bil. De la mano del campe�n Rask'tar Krathiss y del General Cho'Nuja, las ara�as se han mantenido al margen durante muchos a�os. */
== P_VIDOMI IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @176 /* Pero ya hablaremos sobre ello. Tu compa�ero me intriga. Su esencia... no es la de un mortal com�n y corriente. �Qui�n eres? */
END

