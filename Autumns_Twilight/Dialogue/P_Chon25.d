BEGIN P_Chon25

IF ~Global("P_ChonSummoned","GLOBAL",1)~ b1
SAY @9520 /* ¡Por el aliento de Rask'tar! <CHARNAME>, ¿qué haces aquí? Lo último que recuerdo es estar cerca de los lagos de las Colinas Ventolanza luchando contra unos orcos. */
++ @9521 /* ¡Cho! Lamento haberte traído sin previo aviso. Nos encontramos en mi bolsa planar. */ DO ~SetGlobal("P_ChonSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY @9522 /* Comprendo. Lady Vidomina me supo hablar de sitios así. Casi como si supiera que en algún momento de mi vida podía cruzarme con esto. */
= @9524 /* Pero no importa. Dime, querido amigo, ¿necesitas mi ayuda? */
++ @9525 /* Así es, Cho. Tus habilidades de combate me serán útiles en mi aventura. */ + b1.2
++ @9526 /* Aún no. Por favor, espérame por aquí, Cho. */ + b1.3
END

IF ~~ b1.2
SAY @9527 /* Será un honor viajar contigo otra vez, <CHARNAME>. Por Dreach-naga, haré buen uso de mi fuerza por ti. */
IF ~~ DO ~SetGlobal("P_ChonSummoned25Join","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ b1.3
SAY @9528 /* Muy bien. Esperaré por aquí. Después de todo, este lugar parece acogedor. */
IF ~~ DO ~MoveToPointNoInterrupt([1494.1400]) Face(SE)~ EXIT
END

IF ~Global("P_ChonSummoned","GLOBAL",2)~ b3
SAY @9529 /* Has vuelto, <LADY_LORD> <PRO_RACE>. Espero que sea para solicitar mi compañía. Estirar las patas me hará bien. */
++ @95210 /* Así es. Únete a mí, Cho. */ + b3.1
++ @95211 /* Aún no. */ + b3.2
END 

IF ~~ b3.1
SAY @9527 /* Será un honor viajar contigo otra vez, <CHARNAME>. Por Dreach-naga, haré buen uso de mi fuerza por ti. */
IF ~~ DO ~SetGlobal("P_ChonSummoned25Join","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @9528 /* Muy bien. Esperaré por aquí. Después de todo, este lugar parece acogedor. */
IF ~~ EXIT
END

IF ~Global("P_ChonSummoned25Join","GLOBAL",1)~ b4
SAY @9529 /* Has vuelto, <LADY_LORD> <PRO_RACE>. Espero que sea para solicitar mi compañía. Estirar las patas me hará bien. */
++ @95210 /* Así es. Únete a mí, Cho. */ + b3.1
++ @95211 /* Aún no. */ + b3.2
END 

