BEGIN P_Dusk25

IF ~Global("P_DuskSummoned","GLOBAL",1)~ b1
SAY @9560 /* �D�nde estoy? Por Cormyr, otra vez estoy en el Abismo... */
++ @9561 /* No, Dusk. Soy yo. Este lugar es una bolsa planar que me pertenece. */ DO ~SetGlobal("P_DuskSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY @9563 /* Ya veo. No sab�a que bland�as tal poder. */
= @9564 /* Lo �ltimo que se supo de ti fue en Suldanessellar. Pero veo que, dentro de todo, te encuentras bien. */
= @9565 /* �Me has convocado para viajar contigo? Si es as�, sabes que cuentas conmigo. */
++ @9566 /* As� es. �nete a m�, Dusk. */ + b1.2
++ @9567 /* A�n no. Por favor, esp�rame por aqu�, Dusk. */ + b1.3
END

IF ~~ b1.2
SAY @9568 /* �Excelente! En marcha. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.3
SAY @9569 /* De acuerdo, <CHARNAME>. Te esperar�. */
IF ~~ DO ~MoveToPointNoInterrupt([1637.1430]) Face(5)~ EXIT
END

IF ~Global("P_DuskSummoned","GLOBAL",2)~ b3
SAY @95613 /* Veo que has regresado. �Esta vez me llevar�s contigo? */
++ @95614 /* As� es. �nete a m�, Dusk. */ + b3.1
++ @95615 /* A�n no. */ + b3.2
END 

IF ~~ b3.1
SAY @95616 /* �Excelente, <CHARNAME>! En marcha. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @95617 /* Supongo que tendr� que esperar... */
IF ~~ EXIT
END