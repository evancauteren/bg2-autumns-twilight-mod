BEGIN P_FallP

IF ~OR(2)
ReputationLT(Player1,4) 
Global("P_FallLeaves","GLOBAL",1)~ b16
  SAY @9513029 /* ~¡Se acabó! Esto... esto es inconcebible. ¡No puedo soportarlo más! Espero... ¡Espero que nuestros caminos no vuelvan a cruzarse!~ */ IF ~~ THEN DO ~SetGlobal("P_FallLeaves","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
END

IF ~ReputationGT(Player1,4)
Global("P_FallKickedOut","GLOBAL",0)
Global("P_FallLeavesGrovePoisoned","GLOBAL",0)
Global("P_FallLeaves","GLOBAL",0)
Global ("P_FallLeavesHendakEnemy","GLOBAL",0)~ b0
SAY @9511 /* ¿Estás seguro de que no quieres continuar? Creo que aún hay mucho para hacer. Aunque, si quieres que me vaya, lo entiendo. Estaré en la Posada de los Siete Valles en el Paseo de Waukin si llegases a cambiar de opinión. */
++ @9512 /* Un momento, Fall. Me he equivocado. Nuestro viaje debe continuar. */ DO ~JoinParty()~ EXIT
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
!AreaCheck("AR1508")~ + @9513 /* Por supuesto, nos veremos allí, en la Posada de los Siete Valles. */ DO ~SetGlobal("P_FallKickedOut","GLOBAL",1) MoveGlobal("AR0709","P_Fall",[436.428])~ EXIT 
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
!AreaCheck("AR0803")~ + @9514 /* Mejor espérame aquí, Fall. */ DO ~SetGlobal("P_FallKickedOut","GLOBAL",1)~ EXIT
END

IF ~Global("P_FallKickedOut","GLOBAL",1)~ b3
SAY @9515 /* ¡Pero si es el bueno de <CHARNAME>! ¿Me has extrañado? ¡A que sí! */
++ @9516 /* Vale, vale, lo admito. Te necesito. ¿Vienes? */ + b3.1
++ @9517 /* Aún no, Fall. Sólo vine a ver cómo estabas. */ + b3.2
END 

IF ~~ b3.1
SAY @9518 /* ¡Esperaba que dijeras eso! En marcha. */
IF ~~ DO ~SetGlobal("P_FallKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @9519 /* Pues yo estoy bien. Es un buen lugar una vez que te acostumbras. Aunque no hay nada como los bosques de Imnescar. Vale, si llegas a cambiar de opinión, sabes dónde encontrarme. */
IF ~~ EXIT
END