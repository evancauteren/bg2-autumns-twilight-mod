BEGIN P_CHO

IF ~Global("P_FMeetingCho","GLOBAL",0)
AreaCheck("P_FAR8")
~ THEN BEGIN 0 // from:
  SAY @0 /* ~¡¿Qué?! Intrusos. ¡Comandante Qyl'tar!~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingCho","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~Aparentemente se trata de otra incursión a nuestras tierras. Primero la desaparición de las arañas. Y ahora esto. ¡Tú! Sé que puedes entenderme. ¿Quién eres y qué es lo que buscas? Tu vida depende de lo que respondas.~ */
    IF ~~ THEN REPLY @2 /* Soy <CHARNAME>, y he venido a por tu Reina. Necesito su corazón para poder llegar al Trono de Morgrath. */  GOTO 2
	IF ~~ THEN REPLY @3 /* Soy <CHARNAME> y no trato con monstruos. ¡Prepárate a morir! */  GOTO 3
    IF ~~ THEN REPLY @4 /* Las razones no le importan a los muertos... */  GOTO 3
    IF ~~ THEN REPLY @5 /* Soy <CHARNAME> y nos busco conflictos. Sin embargo, estamos aquí para pedir una audiencia a tu Reina, Tisiphone. */  GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY @6 /* ~¡Insensato! Te atreves a pedir el corazón de nuestra Reina. Debes morir. ¡Qyl'tar! Encárgate de ellos. Iré a advertir a los demás.~ ~¡Insensata! Te atreves a pedir el corazón de nuestra Reina. Debes morir. ¡Qyl'tar! Encárgate de ellos. Iré a advertir a los demás.~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],30) DestroySelf()~ EXTERN ~P_QYL~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~Lo suponía. No es más que otra panda de exploradores en búsqueda de tesoros. ¡Dreach-naga será su fin! Qyl'tar, encárgate de ellos. Yo iré a advertir a los demás.~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],30) DestroySelf()~ EXTERN ~P_QYL~ 1
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~¿Conoces... conoces el nombre de nuestra Reina? <CHARNAME>, soy el general de las fuerzas de Dreach-naga: Cho'Nuja. Dime, ¿qué es lo que buscas de nuestra Reina?~ */
    IF ~~ THEN REPLY @9 /* Estamos intentando detener a la Reina Araña, Morgrath. Tu Reina es la única que puede ayudarnos. */  EXTERN ~P_QYL~ 3
	IF ~~ THEN REPLY @10 /* No puedo develar las razones a un simple soldado. Mis palabras serán sólo para la Reina. */  GOTO 10
	IF ~~ THEN REPLY @11 /* Bah, me he cansado de tanto parloteo. ¡Te mataré y robaré tus posesiones! */  GOTO 3	
END

IF ~~ THEN BEGIN 5 // from:
  SAY @12 /* ~Es verdad. Esto no es lo que esperaba. Conoces a nuestra enemiga conoces a nuestra Reina. Sin embargo, llegas en el momento más extraño. Las arañas han desaparecido. ¿Cómo podemos saber que no eres aliado de ellas?~*/
  IF ~~ THEN EXTERN ~P_QYL~ 4
END

IF ~~ THEN BEGIN 6 // from:
  SAY @13 /* ~¡Qyl'tar! No debes revelar nada a los foráneos. Pero lo que dices es cierto. ¿Tienes alguna prueba de buena fe, <CHARNAME>? No pondré en riesgo la vida de mi Reina.~*/
    IF ~~ THEN REPLY @14 /* Tengo este talismán de Dreach-naga. Me fue dado por la Dama Vidomina, del Enclave Arcano. */  GOTO 8
	IF ~~ THEN REPLY @15 /* Tenemos un enemigo en común, Cho'Nuja, ¿no es eso suficiente? */  GOTO 7
	IF ~~ THEN REPLY @16 /* No tengo pruebas, General. Sólo tienes mi palabra. ¿Qué es lo que será entonces? */  GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @17 /* ~Me temo que no es suficiente, <CHARNAME>. Como os dije antes: No pondré en riesgo la vida de mi Reina. Qyl'tar, encárgate de ellos. Yo iré a advertir a los demás.~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],30) DestroySelf()~ EXTERN ~P_QYL~ 1
END

IF ~~ THEN BEGIN 8 // from:
  SAY @18 /* ~Así que la Bruja Liche es tu aliada. Todo comienza a cobrar sentido ahora.~ */
  IF ~~ THEN EXTERN ~P_QYL~ 5
END

IF ~~ THEN BEGIN 9 // from:
  SAY @19 /* ~Aguarda, Qyl'tar. Quiero preguntar una cosa más al foráneo. Dime, <CHARNAME>. ¿Cómo os puede ayudar nuestra Reina? Habéis llegado hasta aquí y no debe haber sido un camino fácil. Vidomina no ayuda a cualquiera y tú debes ser portador de un gran poder. ¿Qué es lo que buscas?~ */
	IF ~InParty("P_Fall")~ THEN REPLY @20 /* Fall, ¿quieres tomar la palabra? */  EXTERN ~P_FALLJ~ 84
	IF ~~ THEN REPLY @21 /* Necesitamos la sangre de tu Reina. Es la única forma de poder llegar al cubículo de Morgrath. */  GOTO 11
	IF ~~ THEN REPLY @22 /* No puedo develar las razones a un simple soldado. Mis palabras serán sólo para la Reina. */  GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @23 /* ~Entonces me temo que no pasarás, foráneo. Qyl'tar, encárgate de ellos. Yo iré a advertir a los demás.~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],30) DestroySelf()~ EXTERN ~P_QYL~ 1
END

IF ~~ THEN BEGIN 11 // from:
  SAY @24 /* ~Lo suponía. Comprendo las intenciones de Vidomina, pero os lo aseguro, no obtendrán ayuda alguna de la Reina de Dreach-naga. La única opción es la guerra. Qyl'tar, encárgate de ellos. Yo iré a advertir a los demás.~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],30) DestroySelf()~ EXTERN ~P_QYL~ 1
END

IF ~~ THEN BEGIN 12 // from:
  SAY @25 /* ~Tu rostro. Tus vestimentas. ¡Eres la hija de la hechicera que atacó a nuestra Reina! ~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @26 /* ~Comandante Qyl'tar, encárgate de ellos. Lucha con valentía, amigo mío, pues creo que estos oponentes no son simples aventureros. Yo debo preparar el resto de las defensas contra estos invasores.~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],30) DestroySelf()~ EXTERN ~P_QYL~ 6
END

// AREA 10A
IF ~Global("P_FMeetingCho","GLOBAL",1)
AreaCheck("P_FA10")
~ THEN BEGIN 14 // from:
  SAY @34 /* ~Tú de nuevo...~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingCho","GLOBAL",2)~ EXTERN ~P_VRESH~ 0
END

IF ~~ THEN BEGIN 15 // from:
  SAY @35 /* ~Por Dreach-naga, mi buena amiga. Por Dreach-naga.~*/
  IF ~~ THEN DO ~RunAwayFrom([PC],20) DestroySelf()~ UNSOLVED_JOURNAL @310045 EXIT
END

// AREA 11A
IF ~Global("P_FMeetingCho","GLOBAL",2)
AreaCheck("P_FA11")
~ THEN BEGIN 16 // from:
  SAY @36 /* ~Qué tu estés aquí... significa que mi comandante ha caído.~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingCho","GLOBAL",3)~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @37 /* ~Primero Qyl'tar y ahora Vreshnak. ¿Qué clase de criatura eres?~ */
	IF ~~ THEN REPLY @38 /* Soy quien acabará contigo, monstruo. ¡Tu hora ha llegado! */  GOTO 18
	IF ~~ THEN REPLY @39 /* No tiene sentido seguir combatiendo, Cho'Nuja. Sabes que esta es una pelea que no podrás ganar. */  GOTO 19
END

IF ~~ THEN BEGIN 18 // from:
  SAY @40 /* ~¡No me subestimes! Soy el Guardián Salvaje de Dreach-naga, general de las fuerzas reptiles de la Reina Tisiphone. ¡Mis guerreros, mis camaradas, serán vengados! Vamos, soldado: Veamos quién de los dos queda en pie.~*/
  IF ~~ THEN DO ~DestroyItem("IMMUNE1") CreateItem("p_fifirc",1,2,1) UseItem("p_fifirc",Myself) DestroyItem("p_fifirc") Enemy()~ UNSOLVED_JOURNAL @310046 EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY @41 /* ~Cuando tu vida es el combate, rápidamente descubrirás que la guerra en sí no tiene sentido. Pero no tenemos otra opción. ¡Luchar es el único camino! La paz o la muerte: el resultado es el mismo.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @42 /* ~Aún si eres enemigo de mi enemigo, no puedo permitir que mi Reina sea lastimada. ¡Vamos! Soy el Guardián Salvaje de Dreach-naga, general de las fuerzas reptiles de la Reina Tisiphone. ¡Mis guerreros, mis camaradas, serán vengados! Soldado: Veamos quién de los dos queda en pie.~*/
  IF ~~ THEN DO ~DestroyItem("IMMUNE1") CreateItem("p_fifirc",1,2,1) UseItem("p_fifirc",Myself) DestroyItem("p_fifirc") Enemy()~ UNSOLVED_JOURNAL @310046 EXIT
END

IF ~Global ("P_FallChoNujaNearestDead1","GLOBAL",1) AreaCheck("P_FA11")~ THEN BEGIN 21 // from:
  SAY @43 /* *tos* N-no puede ser... tu poder es demasiado. Debo... debo advertir a los demás. Puede que me hayas derrotado y quitado mi piedra, soldado, pero no podrás derrotar a Rask'tar Krathiss. Nadie jamás le ha vencido... Nos vemos en el Pantano... */
  IF ~~ THEN DO ~SetGlobal ("P_FallMesothelNearestDead1","GLOBAL",2) GiveItem("P_FTALI5", LastTalkedToBy) RunAwayFrom([PC],20) DestroySelf()~ UNSOLVED_JOURNAL @310047 EXIT
END

// AREA 12A
IF ~Global("P_FMeetingCho","GLOBAL",3)
!PartyHasItem("p_rahead")
AreaCheck("P_FA12")
~ THEN BEGIN 22 // from:
  SAY @44 /* ~Has llegado hasta aquí. *jadeo* Esto aún no ha terminado...~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingCho","GLOBAL",4) RunAwayFrom([PC],20) DestroySelf() ~ EXIT
END

IF ~Global("P_FMeetingCho","GLOBAL",3)
PartyHasItem("p_rahead")
AreaCheck("P_FA12")
~ THEN BEGIN 23 // from:
  SAY @45 /* ~T-tú... tienes la cabeza de Rask'tar... le has derrotado. No puede ser... *sacude su cabeza* Esto aún no ha terminado...~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingCho","GLOBAL",4) RunAwayFrom([PC],20) DestroySelf() ~ EXIT
END

// AREA 13
IF ~Global("P_FMeetingCho","GLOBAL",4)
AreaCheck("P_FA13")
~ THEN BEGIN 24 // from:
  SAY @46 /* ~N-no... ha llegado hasta aquí...~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingCho","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY @47 /* ~Su Alteza, que su apariencia no os engañe. Sus habilidades en combate son excepcionales. Nunca había visto algo así. Puede que incluso sea más fuerte que los ejércitos de Mesothel.~ */
  IF ~~ THEN EXTERN ~P_GASS~ 0
END

// AREA 13
IF ~Global("P_FMeetingCho","GLOBAL",5)
PartyHasItem("P_FCORA1")
AreaCheck("P_FA13")
~ THEN BEGIN 26 // from:
  SAY @48 /* ~*quejido* Has... matado a mi Reina.~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingCho","GLOBAL",6)~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from:
  SAY @49 /* ~Indirectamente... has ayudado a las Arañas a estar más cerca de su objetivo final. Sin Mi Reina... la victoria contra Morgrath ya no es posible.~ */
	IF ~~ THEN REPLY @50 /* ¿Por qué te importa tanto? Tu Reina estuvo dispuesta a matarte. */  GOTO 30
	IF ~~ THEN REPLY @51 /* ¿Cómo es que sigues vivo? Me sorprendes, pero no creo que te quede mucho tiempo. */  GOTO 28
END

IF ~~ THEN BEGIN 28 // from:
  SAY @52 /* ~No me queda mucho tiempo, es verdad. He visto cómo has destruido lo que quedaba de mi hogar. Ahora... sólo resta esperar la oscuridad.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from:
  SAY @53 /* ~Si en verdad eres enemigo de Morgrath... entonces usa el corazón de nuestra Reina para vencerla. Hazlo... por Dreach-naga...~ ~Si en verdad eres enemiga de Morgrath... entonces usa el corazón de nuestra Reina para vencerla. Hazlo... por Dreach-naga...~ */
  IF ~~ THEN DO ~SetGlobal ("P_FMeetingCho","GLOBAL",6) SetGlobal ("P_LetChoDie","GLOBAL",1) DestroyItem ("MINHP20") DestroyItem ("IMMUNE1") DestroyItem("P_DREAM2") Kill (Myself)~ UNSOLVED_JOURNAL @310049 EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY @54 /* ~Estuve muerto... al momento en que fui derrotado por ti. El fracaso en Dreach-naga significa la muerte.~ */
	IF ~~ THEN REPLY @55 /* No tiene por qué terminar así, General. Aún debemos enfrentarnos a las fuerzas de Rachnidra. ¿Por qué no te unes a nosotros? No tienes nada que perder. */  GOTO 31
	IF ~~ THEN REPLY @56 /* Tienes razón. Enfrentarte a mí ha sido un gran error. Supongo que no tienes más opción que esperar la muerte. */  GOTO 28
END

IF ~~ THEN BEGIN 31 // from:
  SAY @57 /* ~¿P-por qué habrías de ayudarme? Hemos sido enemigos mortales. No logro comprender.~ */
	IF ~~ THEN REPLY @58 /* No he querido enfrentarles, Cho. Nunca quise ser su enemigo, pero no he tenido otra opción. Puedes ayudarnos a enfrentarnos a Morgrath. No todo está perdido. */  GOTO 31_1
	IF ~~ THEN REPLY @59 /* Ahora que lo dices es verdad. Has intentado matarme. No tiene sentido que te ayude. Debes afrontar la muerte con honor, General. Tu fin se acerca. */  GOTO 28
END

IF ~~ THEN BEGIN 31_1 // from:
  SAY @60 /* ~*quejido* Aún si quisiera ayudarte, estoy muy herido. Ni siquiera mi factor regenerativo está funcionando.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from:
  SAY @61 /* ~Sólo la Salmuera del Pantano puede curar heridas tan graves. Creo que está en poder de Rask'tar Krathiss. Aunque no estoy seguro.~ */
	IF ~!PartyHasItem("P_FELIXI")~ THEN REPLY @62 /* Veré si puedo encontrarla, Cho. Resiste. */  GOTO 33
	IF ~PartyHasItem("P_FELIXI")~ THEN REPLY @63 /* ¿Es esta extraña pócima amarillenta? Ten, es toda tuya. */  GOTO 36
END

IF ~~ THEN BEGIN 33 // from:
  SAY @64 /* ~No me queda mucho tiempo... apresúrate.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FMeetingCho","GLOBAL",6) SetGlobal ("P_SearchSalmuera","GLOBAL",1)~ UNSOLVED_JOURNAL @310050 EXIT
END

IF ~Global("P_FMeetingCho","GLOBAL",6)
Global ("P_LetChoDie","GLOBAL",0)
Global ("P_SearchSalmuera","GLOBAL",1)
AreaCheck("P_FA13")
~ THEN BEGIN 34 // from:
  SAY @65 /* ~*quejido* ¿Lo has conseguido?~ */
	IF ~!PartyHasItem("P_FELIXI")~ THEN REPLY @66 /* Aún no, Cho. Resiste un poco más. */  GOTO 35
	IF ~PartyHasItem("P_FELIXI")~ THEN REPLY @67 /* ¡La he encontrado! Ten, es toda tuya. */  GOTO 36
END

IF ~~ THEN BEGIN 35 // from:
  SAY @64 /* ~No me queda mucho tiempo... apresúrate.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY @68 /* ~G-gracias, <PRO_RACE>.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FMeetingCho","GLOBAL",7) SetGlobal ("P_SearchSalmuera","GLOBAL",2) TakePartyItem("P_FELIXI") DestroyItem("P_FELIXI") DestroyItem("P_DREAM2")~ UNSOLVED_JOURNAL @310051 EXIT
END

// CHO AWAKE (PF13)
IF ~Global("P_ChoAwake","GLOBAL",2)
AreaCheck("P_FA13")
~ THEN BEGIN 37 // from:
  SAY @69 /* ~Lo has logrado... me has curado.~ */
  IF ~~ THEN DO ~SetGlobal("P_ChoAwake","GLOBAL",3)~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from:
  SAY @70 /* ~Perdóname, pero no sé tu nombre.~ */
	IF ~~ THEN REPLY @71 /* Mi nombre es <CHARNAME>. */  GOTO 39
END

IF ~~ THEN BEGIN 39 // from:
  SAY @72 /* ~<CHARNAME>. Has sido enemigo de Dreach-naga. Destruido a mis amigos y arrancado el corazón de mi Reina.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from:
  SAY @73 /* ~A sabiendas de que podría traicionarte, aún así has optado por curarme. Eres... una criatura extraña, cuando menos.~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from:
  SAY @74 /* ~Entiendo que eres aliado de Vidomina. Sé que debemos ir hacia allí con el corazón de mi Reina. Te ayudaré.~ */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from:
  SAY @75 /* ~Pero debes tener en cuenta lo siguiente: Las arañas no permitirán que lleguemos fácilmente al Enclave.~ */
	IF ~~ THEN REPLY @76 /* No hemos avistado a ningún arácnido enemigo, Cho. Creo que tenemos el camino libre. */  GOTO 43
	IF ~~ THEN REPLY @77 /* ¿Por qué lo dices? */  GOTO 44
END

IF ~~ THEN BEGIN 43 // from:
  SAY @78 /* ~No te confíes. Los hijos de Morgrath son crueles, <CHARNAME>. Pero por sobre todo son astutos.~ */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from:
  SAY @79 /* ~Has derrotado las fuerzas de Dreach-naga a lo largo del camino. Has dejado el camino libre a las Arañas para la conquista del Pantano.~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from:
  SAY @80 /* ~Aprovechen a descansar aquí. Os lo aseguro: las arañas ya habrán invadido el pantano para ahora.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from:
  SAY @81 /* ~Yo los estaré esperando en las afueras del Trono, <CHARNAME>. Tengo el presentimiento de que el camino al Enclave será arduo...~ */
  IF ~~ THEN DO ~SetGlobal("P_ChoAwake","GLOBAL",3) RunAwayFrom([PC],20) DestroySelf()~ UNSOLVED_JOURNAL @310052 EXIT
END

// CHO SWAMP (P12B)
IF ~Global("P_ChoccTalk1","GLOBAL",1)
AreaCheck("P_F12B")
~ THEN BEGIN 47 // from:
  SAY @89 /* ~¡Por el aliento de Rask'tar! El demonio Mesothel nos estaba esperando. ¡Fue una emboscada!~ */
  IF ~~ THEN DO ~SetGlobal("P_ChoccTalk1","GLOBAL",2)~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from:
  SAY @90 /* ~<CHARNAME>, lo lamento. Esperaba algo así, pero no contaba con que robaran las piedras guarda. El Pantano... debe estar infestado de arañas.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from:
  SAY @91 /* ~Es momento de que te cuente sobre nuestros combates contra los primogénitos de Morgrath.~ */
	IF ~~ THEN REPLY @92 /* ¿Primogénitos? Son sólo insectos, Cho'Nuja. No son rivales para nosotros. */  GOTO 50
	IF ~~ THEN REPLY @93 /* Te escucho. */  GOTO 51
END

IF ~~ THEN BEGIN 50 // from:
  SAY @94 /* ~Subestimarlos puede significar la muerte, <CHARNAME>. Por favor, escucha lo que he de decirte:~ */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from:
  SAY @95 /* ~Con nuestros comandantes y chamanes creíamos que Morgrath había engendrado como primogénitos a aquellos que ahora comandan su ejército. Posiblemente Mesothel haya sido el primero de todos.~ */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from:
  SAY @96 /* ~Luego de varias escaramuzas y arduos combates, hubo un momento en que pude destruir a Mesothel. Su ojo destruído completamente por mis garras y sus extremidades quemadas por el fuego de mi escudo de Dreach-naga.~ */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from:
  SAY @97 /* ~Sin embargo... al cabo de unos días, Mesothel apareció nuevamente. Completamente ileso. Su cuerpo aún se estaba pudriendo en los salones de nuestros antepasados y allí estaba Mesothel con su gran ojo, observándome fijamente.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @98 /* ~Las arañas no pueden morir. Al menos no permanentemente.~ */
	IF ~~ THEN REPLY @99 /* ¿Qué? Eso es imposible. ¿Cómo se supone que hemos de derrotar algo así? */  GOTO 55
	IF ~~ THEN REPLY @100 /* ¿Y qué se supone que podemos hacer ante un poder así? */  GOTO 55
END

IF ~~ THEN BEGIN 55 // from:
  SAY @101 /* ~Creemos que la fuente de su poder proviene de su madre. Morgrath. Sin embargo, nunca hemos sido capaces de llegar a ella. De hecho, nunca la hemos visto.~ */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from:
  SAY @102 /* ~Aunque... hace poco, las arañas construyeron una estatua en su honor en lo que fuera una vez la entrada a nuestra gran Nación. Una burla. Una provocación.~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from:
  SAY @103 /* ~¿La has visto? Su tamaño es descomunal, aunque no estoy seguro de que represente su verdadero tamaño.~ */
	IF ~~ THEN REPLY @104 /* La he visto. No me impresiona. Es sólo una estatua. */  GOTO 58
	IF ~~ THEN REPLY @105 /* La he visto. Es una figura horrible. */  GOTO 58
END

IF ~~ THEN BEGIN 58 // from:
  SAY @106 /* ~Tú eres valiente, <CHARNAME>. Habrías sido un gran soldado bajo mi mando. O puede que hayas llegado incluso a General. Es suficiente. Vamos, debemos encontrar a la Tejedora que tiene mi piedra guarda.~ */
  IF ~~ THEN DO ~SetGlobal("P_ChoccTalk1","GLOBAL",2) UseItem("p_fifirc",Myself)~ UNSOLVED_JOURNAL @310054 EXIT
END

IF ~Global("P_AttackedCho","GLOBAL",1)
OR(9)
AreaCheck("P_F12B")
AreaCheck("P_F11B")
AreaCheck("P_F10B")
AreaCheck("P_FA8B")
AreaCheck("P_FA6B")
AreaCheck("P_FAR5")
AreaCheck("P_FA14")
AreaCheck("P_FA15")
AreaCheck("P_FA16")
~ THEN BEGIN 59 // from:
  SAY @107 /* ~¿Estás atacándome? Me has salvado, ¿sólo para destruirme? No puedo entenderlo... Me iré y no te enfrentaré sólo porque el honor me lo dicta. ¡Pero espero que nuestros caminos no vuelvan a cruzarse!~ */
  IF ~~ THEN DO ~SetGlobal("P_AttackedCho","GLOBAL",2) EraseJournalEntry (@310054) EraseJournalEntry (@310052) EraseJournalEntry (@310051) EraseJournalEntry (@310050)~ SOLVED_JOURNAL @310055 EXIT
END

// CHO Enclave (P_FAR7)
IF ~Global("P_ChoccTalk2","GLOBAL",0)
Global("P_ChoccStay","GLOBAL",0)
Global ("P_ChocRevivalFriends","GLOBAL",0)
AreaCheck("P_FAR7")
~ THEN BEGIN 60 // from:
  SAY @108 /* ~<CHARNAME>, la guerra aún no ha terminado. Déjame acompañarte.~ */
  IF ~~ THEN DO ~SetGlobal("P_ChoccTalk2","GLOBAL",1)~ GOTO 61
END

IF ~~ THEN BEGIN 61 // from:
  SAY @109 /* ~Sabes de lo que soy capaz. Hemos llegado hasta aquí y Dreach-naga aún debe ser vengada.~ */
	IF ~~ THEN REPLY @110 /* Cho, eres valiente. Pero no quiero arriesgar tu vida. Quédate aquí, en el Enclave. Yo vengaré a los tuyos. Lo prometo. */  GOTO 62
	IF ~~ THEN REPLY @111 /* ¿Estás seguro, Cho? El camino es peligroso. Podrías morir y no tendría la capacidad de revivirte. */  GOTO 63
	IF ~~ THEN REPLY @112 /* No tengo lugar en mi compañía, Cho. No puedo abandonar a ningún compañero en este Abismo. */  GOTO 64
END

IF ~~ THEN BEGIN 62 // from:
  SAY @113 /* ~Hmpf. De acuerdo. He visto tu fuerza y de lo que eres capaz. Sólo... lamento perderme del combate. Que la fuerza de Dreach-naga te acompañe, mi buen amigo.~ ~Hmpf. De acuerdo. He visto tu fuerza y de lo que eres capaz. Sólo... lamento perderme del combate. Que la fuerza de Dreach-naga te acompañe, mi buena amiga.~ */
  IF ~~ THEN DO ~SetGlobal("P_ChoccTalk2","GLOBAL",1) SetGlobal("P_ChoccStay","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY @114 /* ~No le temo a la muerte, pues toda mi vida me he preparado a recibirla. Además, no tomaré el lugar de ninguno de tus acompañantes. Será como lo hicimos desde el Trono hasta aquí. Estaré a tu lado, pase lo que pase.~ */
  IF ~~ THEN DO ~SetGlobal("P_ChoccTalk2","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY @115 /* ~No tomaré el lugar de ninguno de tus acompañantes, <CHARNAME>. Será como lo hicimos desde el Trono hasta aquí. ¿Qué dices?~ */
	IF ~~ THEN REPLY @116 /* De acuerdo, Cho. Cuento contigo en los combates venideros. */  GOTO 65
	IF ~~ THEN REPLY @117 /* No, Cho. No quiero arriesgar tu vida en esto. Yo me encargaré de todo. */  GOTO 62
END

IF ~~ THEN BEGIN 65 // from:
  SAY @118 /* ~Juntos, haremos que Rachnidra caiga para siempre.~ */
  IF ~~ THEN DO ~SetGlobal("P_ChoccTalk2","GLOBAL",1)~ EXIT
END

IF ~Global("P_ChoccTalk2","GLOBAL",1)
Global("P_ChoccStay","GLOBAL",0)
AreaCheck("P_FAR7")
OR (2)
Global ("P_ChocRevivalFriends","GLOBAL",0)
Global ("P_ChocRevivalFriends","GLOBAL",2)
~ THEN BEGIN 66 // from:
  SAY @119 /* ~Estoy listo, <CHARNAME>. Cuando abandones el Enclave y partas a la guerra, yo lo haré contigo.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("P_ChoccTalk2","GLOBAL",1)
Global("P_ChoccStay","GLOBAL",1)
AreaCheck("P_FAR7")
~ THEN BEGIN 67 // from:
  SAY @120 /* ~Haré lo que me has pedido, <CHARNAME> y permaneceré aquí en el Enclave. Aunque lamento perderme de los combates.~ */
  IF ~~ THEN DO ~~ EXIT
END

// RESURRECCION de los lagartos

IF ~Global ("P_ChocRevivalFriends","GLOBAL",1)
AreaCheck("P_FAR7")
~ THEN BEGIN 68 // from:
  SAY @122 /* ~Mi Dama, he oído que eres capaz de revivir al pequeño que dió su vida contra Skel'Tharant. ¿Cómo es posible?~ */
  IF ~~ THEN DO ~SetGlobal("P_ChocRevivalFriends","GLOBAL",2)~ EXTERN ~P_VIDOMI~ 95
END

IF ~~ THEN BEGIN 69 // from:
  SAY @123 /* ~¿Puedes traer de vuelta a los guerreros de Dreach-naga? Creo que podrían ser útiles en la batalla final contra Morgrath.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_VIDOMI~ 98
END

IF ~~ THEN BEGIN 70 // from:
  SAY @124 /* ~Respeto tu decisión, <CHARNAME>. Pero he luchado a tu lado desde el Pantano de Rask'tar hasta las puertas del Enclave. Hemos sangrado juntos y tu ambición no es un signo de honor. Tu poder ya era envidiable como para que te escudes en un tridente o en el deseo ferviente por el oro.~ */
  IF ~~ THEN DO ~~ GOTO 71
END

IF ~~ THEN BEGIN 71 // from:
  SAY @125 /* ~Perdono tu elección... pero no estaré ahí en la batalla final. Volveré a a mis tierras y esperaré la inevitable declive de mi nación. Espero que obtengas la victoria... pero no por ti, sino por la caída de mis enemigos. Adiós.~ */
  IF ~~ THEN DO ~EraseJournalEntry (@310050) EraseJournalEntry (@310051) EraseJournalEntry (@310052) EraseJournalEntry (@310054) EraseJournalEntry (@310055)SetGlobal("P_ChocRevivalFriends","GLOBAL",9) EscapeArea()~ SOLVED_JOURNAL @310064 EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY @126 /* ~Queda claro, mi dama. Cuando <CHARNAME> y yo atravesemos la cueva arácnida y lleguemos al Cubil de Morgrath, mis comandantes estarán allí para presentar batalla.~ */
  IF ~~ THEN DO ~EraseJournalEntry (@310050) EraseJournalEntry (@310051) EraseJournalEntry (@310052) EraseJournalEntry (@310054) EraseJournalEntry (@310055)SetGlobal("P_ChocRevivalFriends","GLOBAL",5) AddexperienceParty (100000)~ SOLVED_JOURNAL @310065 EXIT
END

IF ~Global("P_ChocRevivalFriends","GLOBAL",5)
AreaCheck("P_FAR7")
~ THEN BEGIN 73 // from:
  SAY @127 /* ~Vidomina transportará a mis comandantes cuando ingresemos al Cubil de Morgrath, <CHARNAME>. Tamika, Nimbus y Xsi estarán allí también. El combate será a todo o nada. Estaré contigo hasta el final de esta guerra. Para bien o para mal.~ */
  IF ~~ THEN DO ~~ EXIT
END

I_C_T P_CHO 45 P_NPCs_Cho_F13_1
== P_CHO IF ~~ THEN @88 /* No ir preparados puede significar el fin. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @82 /* ~Oh, vaya. Eso no suena nada bien.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @83 /* ~Hmpf. Las arañas no son rivales para mi espada.~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @84 /* ~Yo digo que vengan. Mi hacha se encargará de despachar esas porquerías.~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @85 /* ~Como los pájaros huyen a refugiarse porque presienten una gran tormenta, tal es la sensación en mi sangre. Algo se avecina y es antinatural.~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @86 /* ~Nos encontramos advertidos de este peligro, <CHARNAME>. Debemos prepararnos para lo que se avecina.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @87 /* No debemos ignorar su advertencia, <CHARNAME>. Pero recuerda que el tiempo no está de nuestro lado. Madre corre peligro con cada segundo que perdemos. */
END

I_C_T P_CHO 12 P_FallJ_Cho_Fall_F8_1
== P_CHO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @27 /* No sabes lo que has provocado. Ese atentado... fue la gota que rebalsó la locura de nuestra Reina. Incluso si me aseguraras que con ello Morgrath sería derrotada, mi Reina nunca ayudará a aquella que osó herirla. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @28 /* Creo que sabes que algo está sumamente mal, General. Las arañas han desaparecido justo cuando mi madre ha penetrado en sus sombrías cuevas. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @29 /* Con la ayuda de Vidomina y <CHARNAME> podemos enfrentarnos a ese mal. */
== P_CHO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @30 /* No me estás entendiendo, foránea. Nuestra Reina... nunca ayudaría a los de vuestra raza. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @31 /* Entonces, ¿prefieres luchar? Algo me dice que evitarías un combate innecesario si así fuera posible. */
== P_CHO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @32 /* Hay batallas que pueden eludirse. Hay otras inevitables. No anhelo la guerra, ansío la paz. Pero parece un sueño inalcanzable. */
== P_CHO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @33 /* ~La desaparición de las arañas no es más que la calma antes de la tormenta. Y creo que tú y tu amigo <CHARNAME> son el inicio de ella.~ ~La desaparición de las arañas no es más que la calma antes de la tormenta. Y creo que tú y tu amiga <CHARNAME> son el inicio de ella.~ */
END


/*
PARA Tisiphone
  IF ~~ THEN DO ~DestroyItem("IMMUNE1") CreateItem("p_fitisc",1,2,1) UseItem("p_fitisc",Myself) DestroyItem("p_fitisc") Enemy()~ UNSOLVED_JOURNAL @310046 EXIT
END
*/