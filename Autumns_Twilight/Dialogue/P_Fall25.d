BEGIN P_Fall25

IF ~Global("P_FallSummoned","GLOBAL",1)~ b1
SAY @9490 /* Entonces tomas las uvas y las aplastas con tus pies... �eh? �Por Imnescar! �<CHARNAME>? */
++ @9491 /* �Fall! Bienvenida a mi bolsa planar. �De qu� diantes estabas hablando hace un momento? */ DO ~SetGlobal("P_FallSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY @9492 /* �Bolsa de qu�? Argh, no importa. Estaba hablando sobre el proceso de creaci�n de vinos en Imnescar con un comerciante de bebidas en Athkatla. Un mediano parlante en el Distrito del Puente. */
= @9493 /* Pero, basta de eso. �Qu� me cuentas, mi buen amigo? Adem�s de... ser due�o de esta cosa planar. */
= @9494 /* �Hay aventuras que nos llaman? Nunca es aburrido viajar contigo. */
++ @9495 /* As� es. Tus habilidades nos ser�n �tiles. �nete a m�, Fall. */ + b1.2
++ @9496 /* A�n no. Por favor, esp�rame por aqu�, Fall. */ + b1.3
END

IF ~~ b1.2
SAY @9497 /* �S�! Mi ballesta est� siempre lista, <CHARNAME>. Andando. */
IF ~~ DO ~SetGlobal("P_FallSummoned25Join","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ b1.3
SAY @9498 /* *refunfu�eo* Bien, bien, <CHARNAME>. Te esperar�. */
IF ~~ DO ~MoveToPointNoInterrupt([1600.1445]) Face(7)~ EXIT
END

IF ~Global("P_FallSummoned","GLOBAL",2)~ b3
SAY @9499 /* �Has regresado, <CHARNAME>! �Necesitas de mis habilidades? */
++ @94910 /* As� es. �nete a m�, Fall. */ + b3.1
++ @94911 /* A�n no. */ + b3.2
END 

IF ~~ b3.1
SAY @94912 /* �As� me gusta! Sabes, tener una representante de Imnescar le suma fama a tu reputaci�n. */
IF ~~ DO ~SetGlobal("P_FallSummoned25Join","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @9498 /* *refunfu�eo* Bien, bien, <CHARNAME>. Te esperar�. */
IF ~~ EXIT
END

IF ~Global("P_FallSummoned25Join","GLOBAL",1)~ b4
SAY @9499 /* �Has regresado, <CHARNAME>! �Necesitas de mis habilidades? */
++ @94910 /* As� es. �nete a m�, Fall. */ + b3.1
++ @94911 /* A�n no. */ + b3.2
END 

