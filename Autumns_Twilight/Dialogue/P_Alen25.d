BEGIN P_Alen25

IF ~Global("P_AlenSummoned","GLOBAL",1)~ b1
SAY @9500 /* *suspiro* Ahora resulta que uno no puede relajarse en frente de una chimenea sin que no lo involucren en una guerra divina con tintes abisales. */
++ @9501 /* Alendir, �c�mo sabes que se trata de algo relacionado a lo divino? */ DO ~SetGlobal("P_AlenSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY @9502 /* Contigo todo tiene que ver con lo divino, <CHARNAME>. */
= @9503 /* Sin embargo, mis divagaciones no tienen importancia. Lo importante es que me has llamado para que te ayude, �no es as�? */
= @9504 /* Tienes suerte de que est� dispuesto a poner mi poder en tus manos. */
++ @9505 /* Gracias, Alendir. Tus poderes arcanos me ser�n de gran ayuda. */ + b1.2
++ @9506 /* A�n no. Por favor, esp�rame por aqu�, Alendir. */ + b1.3
END

IF ~~ b1.2
SAY @9507 /* S�lo no seas maleducado, �s�? Ya demasiado he tenido que soportar a esos hediondos hoscos de la Corona de Cobre. S�lo no seas maleducada, �s�? Ya demasiado he tenido que soportar a esos hediondos hoscos de la Corona de Cobre. */
IF ~~ DO ~SetGlobal("P_AlenSummoned25Join","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ b1.3
SAY @9508 /* �Me llamas para hacerme esperar? T�pico de <CHARNAME>. De acuerdo, pero no te tardes. */
IF ~~ DO ~MoveToPointNoInterrupt([1430.1462]) Face(E)~ EXIT
END

IF ~Global("P_AlenSummoned","GLOBAL",2)~ b3
SAY @9509 /* Ya era hora de que regresaras. �Nos vamos al fin? */
++ @95010 /* As� es. �nete a m�, Alendir. */ + b3.1
++ @95011 /* A�n no. */ + b3.2
END 

IF ~~ b3.1
SAY @95012 /* Bien. Vamos. */
IF ~~ DO ~SetGlobal("P_AlenSummoned25Join","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @95013 /* Entonces, �qu� haces hablando conmigo? Vuelve cuando tengas algo interesante que decir, es decir: Pedirme que me una a tu campa�a. */
IF ~~ EXIT
END

IF ~Global("P_AlenSummoned25Join","GLOBAL",1)~ b4
SAY @9509 /* Ya era hora de que regresaras. �Nos vamos al fin? */
++ @95010 /* As� es. �nete a m�, Alendir. */ + b3.1
++ @95011 /* A�n no. */ + b3.2
END 

