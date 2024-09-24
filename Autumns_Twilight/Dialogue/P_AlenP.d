BEGIN P_AlenP

IF ~Global("P_AlenKickedOut","GLOBAL",0)~ b0
SAY @9531 /* ¿Vas a desestimar mi poder como si nada? Creí que eras más sensato que esto. */
++ @9532 /* He cometido un error, Alendir. Por favor, permanece conmigo. */ DO ~JoinParty()~ EXIT
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
!AreaCheck("AR1508")~ + @9533 /* No necesito tu poder por ahora, Alendir. Regresa con Vidomina a tu guarida. Llegado el momento, iremos por ti. */ DO ~SetGlobal("P_AlenKickedOut","GLOBAL",1) MoveGlobal("P_FA3B","P_Alen",[714.273])~ EXIT
END

IF ~Global("P_AlenKickedOut","GLOBAL",1)~ b3
SAY @9534 /* ¿Has vuelto? Este templo no me trae el mejor de los recuerdos, así que si estás dispuesto, puedo incorporarme a tu imperfecta compañía de aventuras. */
++ @9535 /* De acuerdo, anciano. Únete a mí y vámonos. */ + b3.1
++ @9536 /* Aún no, Alendir. Sólo vine a ver cómo estabas. */ + b3.2
END 

IF ~~ b3.1
SAY @9537 /* ¿Anciano? Estás envidioso de mi reciente adquirida juventud, ¿verdad? No te preocupes, es comprensible. Vamos, andando. */
IF ~~ DO ~SetGlobal("P_AlenKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @9538 /* De acuerdo. Seguiré estando aquí, ¿sabes? Es mejor que perder el tiempo en esa apestosa Corona del Cobre o como sea que se llame. */
IF ~~ EXIT
END