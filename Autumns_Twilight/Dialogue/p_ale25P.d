BEGIN p_ale25P

IF ~Global("P_alenToBKickedOut","GLOBAL",0)~ k11
SAY @9580 /* As� que te atreves a dejarme afuera de tu historia, �no es as�, <CHARNAME>? */
++ @9581 /* Perd�n, Alendir. Fue un error. No te vayas. */ DO ~JoinParty()~ EXIT

+ ~AreaCheck("AR4500")~ + @9582 /* S�lo esp�rame por aqu�. */ DO ~SetGlobal("P_alenToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1536.1480]) Face(1)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @9582 /* S�lo esp�rame por aqu�. */ DO ~SetGlobal("P_alenToBKickedOut","GLOBAL",1)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @9583 /* Te enviar� a la bolsa planar, Alendir. Esp�rame all�. */ DO ~SetGlobal("P_alenToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1536.1480],0)~ EXIT 
END

IF ~Global("P_alenToBKickedOut","GLOBAL",1)~ k22
SAY @9584 /* As� que finalmente te has dado cuenta de lo necesaria que es mi presencia. */
++ @9585 /* No lo querr�a admitir, pero as� es, elfo. �Vienes? */ + k2.1
++ @9586 /* No, s�lo pasaba a ver c�mo estabas, Alendir. */ + k2.2
END 

IF ~~ k2.1
SAY @9587 /* No es f�cil para el ego de una semi-deidad el admitir que necesitas del buen Alendir, lo s�. De acuerdo, te seguir�. Andando. */
IF ~~ DO ~SetGlobal("P_alenToBKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ k2.2
SAY @9588 /* �C�mo estoy? Aburrido. Tampoco me gusta parlotear sobre sandeces, <CHARNAME>. Cuando me necesites, ven de nuevo. */
IF ~~ EXIT
END

