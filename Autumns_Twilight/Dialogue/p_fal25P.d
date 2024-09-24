BEGIN p_fal25P

IF ~Global("P_FallToBKickedOut","GLOBAL",0)~ k1
SAY @9590 /* ¿Debemos separarnos? ¡Qué faena! */
++ @9591 /* Perdón, Fall. Fue un error. No te vayas. */ DO ~JoinParty()~ EXIT

+ ~AreaCheck("AR4500")~ + @9592 /* Sólo espérame por aquí. */ DO ~SetGlobal("P_FallToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1536.1480]) Face(1)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @9592 /* Sólo espérame por aquí. */ DO ~SetGlobal("P_FallToBKickedOut","GLOBAL",1)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @9593 /* Te enviaré a la bolsa planar, Fall. Espérame allí. */ DO ~SetGlobal("P_FallToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1536.1480],0)~ EXIT 
END

IF ~Global("P_FallToBKickedOut","GLOBAL",1)~ k2
SAY @9594 /* Y una vez más vuelve el prodigioso <CHARNAME>. ¿Vienes a buscar a la buena de Fall? */
++ @9595 /* Así es, Fall. Únete a mí. */ + k2.1
++ @9596 /* No, por el momento no. */ + k2.2
END 

IF ~~ k2.1
SAY @9597 /* ¡Sí! Andando, mi buen <CHARNAME>. */
IF ~~ DO ~SetGlobal("P_FallToBKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ k2.2
SAY @9598 /* *refunfuñeo* ¡Bien! Esperaré aquí, <CHARNAME>. ¡Pero vuelve pronto! */
IF ~~ EXIT
END

