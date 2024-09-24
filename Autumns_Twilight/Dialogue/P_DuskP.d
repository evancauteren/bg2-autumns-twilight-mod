//Script para definir acciones en la partida de Dusk del equipo.

BEGIN P_DuskP

IF ~Global ("P_DUSK_IS_EVIL","GLOBAL",0)
OR(2)
ReputationLT(Player1,4) 
Global("P_DuskLeaves","GLOBAL",1)~ b17
  SAY @9463029 /* ~Tu maldad... parece no tener límites, <CHARNAME>. ¡Nuestros caminos se separan aquí y para siempre!~ */ IF ~~ THEN DO ~SetGlobal("P_DuskLeaves","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
END

IF ~Global("P_DuskDUSKDIEDFinalMission","GLOBAL",0)
Global("P_DuskAlliesAttacked","GLOBAL",0)
Global("P_DuskAlliesAttacked2","GLOBAL",0)
Global("P_DuskKickedOut","GLOBAL",0)
Global("P_Dusk_DornEnemy","GLOBAL",0)
Global("P_DuskLeavesGrovePoisoned","GLOBAL",0)
Global ("P_DuskLeavesHendakEnemy","GLOBAL",0)~ b2
SAY @9461 /* Supongo que nuestros caminos tomarán diferentes rumbos, ¿no es así? Si cambias de opinión, podrás encontrarme donde nos conocimos: en el Paseo de Waukin, cerca de las ruinas que provocó nuestro enemigo. */
++ @9462 /* Aguarda, Dusk. No te vayas, nuestro viaje debe continuar. */ DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ + @9463 /* Por supuesto, nos veremos allí, en el Paseo de Waukin. */ DO ~SetGlobal("P_DuskKickedOut","GLOBAL",1) MoveGlobal("AR0700","P_Dusk",[2736.1145])~ EXIT 
+ ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ + @9464 /* Mejor espérame aquí, Dusk. */ DO ~SetGlobal("P_DuskKickedOut","GLOBAL",1)~ EXIT
END

// Dlg para P_DuskKickedOut 1, cuando nos reencontramos con él

// GOOD/NEUTRAL
IF ~Global("P_DuskKickedOut","GLOBAL",1) Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_Dusk_DornEnemy","GLOBAL",0) Global("P_DuskAlliesAttacked","GLOBAL",0) Global("P_DuskAlliesAttacked2","GLOBAL",0)~ b3
SAY @9465 /* ¡<CHARNAME>! Has regresado. Espero que podamos retomar nuestro viaje. Debemos dar justicia a los caídos. */
++ @9466 /* Tienes razón, amigo. Vamos, únete a mí. */ + b3.1
++ @9467 /* Aún no, Dusk, debo arreglar algunos asuntos antes. */ + b3.2
END 

IF ~~ b3.1
SAY @9468 /* ¡Qué bien! <CHARNAME>, vamos. */
IF ~~ DO ~SetGlobal("P_DuskKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @9469 /* Esperaré aquí, entonces. */
IF ~~ EXIT
END

// GOOD/NEUTRAL
IF ~Global("P_Dusk_DornEnemy","GLOBAL",1)~ THEN BEGIN 334 // from:
  SAY @9463501 /* ~¿Planeas atacar a la Orden? No puedo consentirlo... ¡son mis aliados! <CHARNAME>, ¡prepárate!~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_DornEnemy","GLOBAL",2)~
 EXIT
END


///////////////////////////////
// EVIL
IF ~Global("P_DuskKickedOut","GLOBAL",1) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ b13
SAY @94619 /* Has regresado, <CHARNAME>. ¿Acaso has recapacitado y necesitas de mis servicios? */
++ @94620 /* Tienes razón, Dusk. Vamos, únete a mí. */ + b13.11
++ @9467 /* Aún no, Dusk, debo arreglar algunos asuntos antes. */ + b13.12
END 

IF ~~ b13.11
SAY @94621 /* Que así sea, <CHARNAME>. Vámonos. */
IF ~~ DO ~SetGlobal("P_DuskKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b13.12
SAY @9469 /* Esperaré aquí, entonces. */
IF ~~ EXIT
END

/////////////////////////////

IF ~OR (2)
Global("P_DuskDUSKDIEDFinalMission","GLOBAL",2)
Global("P_DuskDUSKDIEDFinalMission","GLOBAL",3)~ b4
SAY @94611 /* Pero... ¡¿Qué diantes?! Por un momento... ¿he perdido el conocimiento? */
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @94612 /* ~De hecho, habías muerto, Dusk. Michelson te ha traído de vuelta usando el Símbolo de Velsharún de Anthagar.~ */ + b4.1
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @94613 /* ~De hecho, habías muerto, Dusk. Danctian te ha traído de vuelta usando el Símbolo de Velsharún de Anthagar.~ */ + b4.1
END 

IF ~~ b4.1
SAY @94614 /* Ya... ya veo... */
  IF ~~ THEN DO ~~ GOTO b4.2
END

IF ~~ THEN BEGIN b4.2// from:
  SAY @94618 /* ~Creo que Michelson será capaz de llevarnos a casa cuando estemos listos... cuando lo consideres idóneo, <CHARNAME>, habla con él para que nos saque de este maldito lugar.~ */
	IF ~~ DO ~SetGlobal("P_DuskDUSKDIEDFinalMission","GLOBAL",0) JoinParty()~ EXIT
END

I_C_T P_DUSKP b4.1 P_DuskP_GOOD_FINALM
== p_miche2 IF ~~ THEN @94615 /* (Michelson, con una sonrisa de oreja a oreja, saluda a Dusk) */ 
== P_DuskP IF ~InMyArea("P_Dusk")~ THEN @94616 /* Michelson... no tengo palabras para agradecerte lo que has hecho... */
== P_DuskP IF ~InMyArea("P_Dusk")~ THEN @94617 /* Veo.. veo que Mathyus ha caído... Rayos... ha sido un combate arduo, <CHARNAME>... */
END

I_C_T UDSVIR03 26 P_Dusk_GOOD_SVIRN2
== P_DuskP IF ~InMyArea("P_Dusk") Global("P_Dusk_IS_GONE","GLOBAL",1) ~ THEN @94610 /* Bueno... al menos has recapacitado... Está bien... te seguiré... por ahora... */
DO ~JoinParty() SetGlobal("P_Dusk_IS_GONE","GLOBAL",0)~
END

