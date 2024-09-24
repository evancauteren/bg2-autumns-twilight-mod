BEGIN p_ale25P

IF ~Global("P_alenToBKickedOut","GLOBAL",0)~ k11
SAY @9580 /* Así que te atreves a dejarme afuera de tu historia, ¿no es así, <CHARNAME>? */
++ @9581 /* Perdón, Alendir. Fue un error. No te vayas. */ DO ~JoinParty()~ EXIT

+ ~AreaCheck("AR4500")~ + @9582 /* Sólo espérame por aquí. */ DO ~SetGlobal("P_alenToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1536.1480]) Face(1)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @9582 /* Sólo espérame por aquí. */ DO ~SetGlobal("P_alenToBKickedOut","GLOBAL",1)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @9583 /* Te enviaré a la bolsa planar, Alendir. Espérame allí. */ DO ~SetGlobal("P_alenToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1536.1480],0)~ EXIT 
END

IF ~Global("P_alenToBKickedOut","GLOBAL",1)~ k22
SAY @9584 /* Así que finalmente te has dado cuenta de lo necesaria que es mi presencia. */
++ @9585 /* No lo querría admitir, pero así es, elfo. ¿Vienes? */ + k2.1
++ @9586 /* No, sólo pasaba a ver cómo estabas, Alendir. */ + k2.2
END 

IF ~~ k2.1
SAY @9587 /* No es fácil para el ego de una semi-deidad el admitir que necesitas del buen Alendir, lo sé. De acuerdo, te seguiré. Andando. */
IF ~~ DO ~SetGlobal("P_alenToBKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ k2.2
SAY @9588 /* ¿Cómo estoy? Aburrido. Tampoco me gusta parlotear sobre sandeces, <CHARNAME>. Cuando me necesites, ven de nuevo. */
IF ~~ EXIT
END

