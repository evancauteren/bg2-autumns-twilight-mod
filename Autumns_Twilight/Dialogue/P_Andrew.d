BEGIN P_Andrew

IF ~!InParty("P_Fall")
!See("P_Fall")
OR (3)
Global("P_FallMission1","GLOBAL",0)
Global("P_FallMission1","GLOBAL",1)
Global("P_FallMission1","GLOBAL",9)~ THEN BEGIN 0 // from:
  SAY @9200 /* ~*suspiro* La verdad que estos problemas en el circo es una mala señal para los negocios. ¿Perdón, te conozco? Si no es así, circula, plebeyo.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
!See("P_Fall")
OR (2)
Global("P_FallMission1","GLOBAL",0)
Global("P_FallMission1","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY @9200 /* ~*suspiro* La verdad que estos problemas en el circo es una mala señal para los negocios. ¿Perdón, te conozco? Si no es así, circula, plebeyo.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
Global("P_FallMission1","GLOBAL",1)~ THEN BEGIN 2 // from:
  SAY @9201 /* ~¡Ah! Saludos, ciudadanos. *susurro* Fall, ¿qué diantres haces con estos foráneos? Demasiados problemas tenemos ya con la explosión que provocó ese maniático. No es algo bueno para los negocios.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission1","GLOBAL",2)~ EXTERN ~P_FALLJ~ 7
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9202 /* ~Ya veo. Pues, será problema para ti. Los animales dan una buena ganancia al circo. Su pérdida nos debe ser compensada de alguna forma.~*/
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9203 /* ~Verás, el precio aumentó a 7500 piezas de oro, Fall. Esta idea tuya... es un riesgo grande para mi cuello.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 9
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9204 /* ~Los tiempos cambian rápidamente, niña. Estoy seguro de que el <PRO_RACE> aquí presente estará de acuerdo conmigo.~*/
    IF ~~ THEN REPLY @9205 /* ~Tengo la certeza de que podemos llegar a un acuerdo, Andrew.~ */  EXTERN ~P_FALLJ~ 1
	IF ~~ THEN REPLY @9206 /* ~Fall, tú me dijiste que sería menos dinero. No creo que la gema que nos has prometido sea suficiente.~ */  EXTERN ~P_FALLJ~ 2
END

IF ~!InParty("P_Fall")
!See("P_Fall")
Global("P_FallMission1","GLOBAL",3)~ THEN BEGIN 6 // from:
  SAY @9207 /* ~La muchacha semielfa me exigió (casi en contra de mi voluntad) que no haría tratos contigo a menos que no estuviese ella presente y en tu compañía. Así que si quieres hablar conmigo, tráela contigo.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
!See("P_Fall")
Global("P_FallMission1","GLOBAL",3)~ THEN BEGIN 7 // from:
  SAY @9207 /* ~La muchacha semielfa me exigió (casi en contra de mi voluntad) que no haría tratos contigo a menos que no estuviese ella presente y en tu compañía. Así que si quieres hablar conmigo, tráela contigo.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
Global("P_FallMission1","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY @92018 /* ~¿Y bien?, ¿Han reunido el oro que les pedí?~ */
  IF ~~ THEN REPLY @9208 /* ~Aún no hemos logrado reunir el oro necesario, Andrew.~ */ GOTO 9
  IF ~PartyGoldGT(7499)~ THEN REPLY @9209 /* ~Tengo la cantidad de dinero que solicitas, Andrew. 7500. ¿Cómo continuamos?~ */ GOTO 10
  IF ~PartyGoldGT(4999)
	CheckStatGT([PC],17,CHR)
	~ THEN REPLY @92010 /* ~Andrew, estoy seguro de que puedes honrar el trato original. 5000 piezas es lo que poseo y 5000 piezas es lo que tendrás inmediatamente si aceptas el trato ahora.~ */ GOTO 15
   IF ~PartyGoldGT(3499)
	CheckStatGT([PC],17,INT)
	~ THEN REPLY @92011 /* ~Tengo la certeza de que un hombre inteligente como tú puede lidiar con menos dinero del estipulado. Verás, poseo 3500 piezas como ves aquí. Más que suficiente para suplir gastos y obtener una pequeña ganancia.~ */ GOTO 16
   IF ~PartyGoldGT(2499)
	CheckStatGT([PC],17,WIS)
	~ THEN REPLY @92012 /* ~Andrew, creo que existe una innegable bondad en ti. Después de todo, la liberación de animales enjaulados es una acción loable. ¿Crees que 2500 piezas de oro puedan cubrir los gastos de liberación?~ */ GOTO 18

END


IF ~~ THEN BEGIN 9 // from:
  SAY @92013 /* ~Entonces será mejor que los busques, amigo. Estaré aquí cuando los consigas.~ ~Entonces será mejor que los busques, amiga. Estaré aquí cuando los consigas.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @92014 /* ~¡Muy bien! El dinero será más que suficiente para suplir todos los gastos.~*/
  IF ~~ THEN DO ~TakePartyGold(7500)~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY @92015 /* ~Verás, no soy el único involucrado. Gastos de transporte, guardias sobornados, alguna que otra moneda en algún bolsillo de un juez.~*/
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @92016 /* ~Hm... no estoy seguro. No es fácil arreglar este tipo de complot, ¿sabes?~*/
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @92017 /* ~¿A-Alendir? *traga saliva* No, Fall. No es necesario. Creo... creo que podré resolver esto rápido. En menos de un día, verás cómo las jaulas están vacías y los animales a salvo.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 10
END

IF ~~ THEN BEGIN 14 // from:
  SAY @92027 /* ~D-descuida, Fall.~*/
   IF ~~ THEN REPLY @92019 /* ~Fall, ¿quién se supone que es Alendir?~ */ EXTERN ~P_FALLJ~ 11
END

IF ~~ THEN BEGIN 15 // from:
  SAY @92020 /* ~*suspiro* De acuerdo, <PRO_RACE>. Hay algo en ti que me insta a ser... honorable. Tomaré las 5000 piezas.~*/
  IF ~~ THEN DO ~TakePartyGold(5000)~ GOTO 11
END

IF ~~ THEN BEGIN 16 // from:
  SAY @92021 /* ~*suspiro* Es verdad. Soy un hombre inteligente. ¡Me alegra que alguien pueda verlo!~*/
  IF ~~ THEN DO ~TakePartyGold(3500)~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @92022 /* ~Siempre he sido bueno para las cuentas, ¿sabes? Puedo emplear esos 3500 para nuestra empresa.~*/
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 18 // from:
  SAY @92023 /* ~Supongo... supongo que tienes razón. Me metí en esto porque quería que las criaturas fuesen libres.~*/
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @92024 /* ~No pueden culparme por querer obtener alguna ganancia en el proceso.~*/
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @92025 /* ~Está bien. Los 2500 son más que suficientes para cubrir los gastos.~*/
  IF ~~ THEN DO ~TakePartyGold(2500)~ GOTO 11
END

IF ~Global("P_FallMission1","GLOBAL",9)~ THEN BEGIN 21 // from:
  SAY @9200 /* ~~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("P_FallMission1","GLOBAL",4)~ THEN BEGIN 22 // from:
  SAY @92026 /* ~Haré de cuenta que no te conozco, ¿sí? No te preocupes por los animales. Quedaron a buen recaudo. Unos exploradores del sur se encargarán de cuidarlos. Ahora, adiós.~ */
  IF ~~ THEN DO ~~ EXIT
END

I_C_T P_ANDREW 11 P_Fall_ANDREW11b
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9203000 /* Entonces, ¿cuándo crees que podrás cumplir con tu parte del trato, Andrew? */
END

I_C_T P_ANDREW 12 P_Fall_ANDREW12b
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9203001 /* ¡Andrew! No quería llegar a esto, pero, ¿me obligarás a decirle a Alendir lo que estás haciendo? */
END


I_C_T P_ANDREW 13 P_Fall_DuskANDREW13b
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @9204000 /* Fall, ¿no podrías haber mencionado a ese tal Alendir antes? Creo que nos habríamos ahorrado un par de dolores de cabeza. */
== P_FallJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @9204001 /* Dusk... puede ser, pero *susurro* puede que sólo lo haya mencionado para asustar a Andrew. */
END

/* SAND INTJ
I_C_T P_ANDREW 3 P_Fall_Sand3b
== P_SandJ IF ~InParty("P_SandJ") InMyArea("P_SandJ") !StateCheck("P_SandJ",CD_STATE_NOTVALID)~ THEN @9205000 /* Reconozco a un oportunista cuando lo veo. Estoy seguro de que este sujeto intentará sacar más de lo que originalmente se pactó, <CHARNAME>. */
END */