BEGIN P_Dus25P

IF ~Global("P_DuskToBKickedOut","GLOBAL",0)~ b1
SAY @9610 /* Supongo que un cambio de estrategia de vez en cuando no viene mal, �no es as�, <CHARNAME>? */
++ @9611 /* Perd�n, Dusk. Fue un error. No te vayas. */ DO ~JoinParty()~ EXIT

+ ~AreaCheck("AR4500")~ + @9612 /* S�lo esp�rame por aqu�. */ DO ~SetGlobal("P_DuskToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1637.1430]) Face(0)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @9612 /* S�lo esp�rame por aqu�. */ DO ~SetGlobal("P_DuskToBKickedOut","GLOBAL",1)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @9613 /* Te enviar� a la bolsa planar, Dusk. Esp�rame all�. */ DO ~SetGlobal("P_DuskToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1637.1430],0)~ EXIT 

END

IF ~Global("P_DuskToBKickedOut","GLOBAL",1)~ b2
SAY @9614 /* �Es hora de unir fuerzas una vez m�s? */
++ @9615 /* As� es, Dusk. �nete a m�. */ + b2.1
++ @9616 /* No, por el momento no. */ + b2.2
END 

IF ~~ b2.1
SAY @9617 /* Excelente. En marcha, pues. */
IF ~~ DO ~SetGlobal("P_DuskToBKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b2.2
SAY @9618 /* Te esperar� aqu� hasta que cambies de opini�n, <CHARNAME>. */
IF ~~ EXIT
END

