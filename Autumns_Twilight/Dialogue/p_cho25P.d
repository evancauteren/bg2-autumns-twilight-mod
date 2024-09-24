BEGIN p_cho25P

IF ~Global("P_ChonToBKickedOut","GLOBAL",0)~ k11
SAY @9600 /* ¿Cambio de estrategia? Una pena, justo acababa de afilar mis garras... */
++ @9601 /* No, Cho. Fue un error. No te vayas. */ DO ~JoinParty()~ EXIT

+ ~AreaCheck("AR4500")~ + @9602 /* Sólo espérame por aquí. */ DO ~SetGlobal("P_ChonToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1536.1480]) Face(1)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @9602 /* Sólo espérame por aquí. */ DO ~SetGlobal("P_ChonToBKickedOut","GLOBAL",1)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @9603 /* Te enviaré a la bolsa planar, Cho. Espérame allí. */ DO ~SetGlobal("P_ChonToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1494.1400],SE)~ EXIT 
END

IF ~Global("P_ChonToBKickedOut","GLOBAL",1)~ k22
SAY @9609 /* ¿Es momento de la batalla? Tengo deseos de combatir al enemigo, <CHARNAME>. */
++ @9605 /* Así es, Cho. Únete a mí. */ + k2.1
++ @9606 /* No, por el momento no. */ + k2.2
END 

IF ~~ k2.1
SAY @9607 /* Sia Wiivai ui Malakta, <CHARNAME>. */
IF ~~ DO ~SetGlobal("P_ChonToBKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ k2.2
SAY @9608 /* *gruñido* Esperaré, <CHARNAME>. */
IF ~~ EXIT
END

