BEGIN P_HAKAM

IF ~!See("P_DANCTI") 
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 0 // from:
  SAY @9040 /* ~Saludos, viajeros. Hakamir ibn Alix de Brest a su servicio. Poseo una interesante variedad de artefactos mágicos a mi disposición, listos para ser vendidos. Muchos provienen de Calimshan. ¿Estáis interesados en mi repertorio?~ */
    IF ~~ THEN REPLY @9041 /* De acuerdo, Hakamir. Muéstrame lo que tienes a la venta. */  GOTO 2
	IF ~~ THEN REPLY @9042 /* ¿Eres calishita? No lo pareces. */  GOTO 5
    IF ~~ THEN REPLY @9043 /* Por ahora no necesito nada. Adiós. */  GOTO 4E
    IF ~PartyHasItem("p_hgorms")~ THEN REPLY @90410 /* Hakamir, tengo la cabeza de este monstruo llamado Gorm. Acrull me ha mencionado que eres capaz de forjar algo de ella, ¿es posible? */  GOTO 5E
END

IF ~See("P_DANCTI")
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 0B // from:
  SAY @9040 /* ~Saludos, viajeros. Hakamir ibn Alix de Brest a su servicio. Poseo una interesante variedad de artefactos mágicos a mi disposición, listos para ser vendidos. Muchos provienen de Calimshan. ¿Estáis interesados en mi repertorio?~ */
    IF ~~ THEN REPLY @9041 /* De acuerdo, Hakamir. Muéstrame lo que tienes a la venta. */  GOTO 2
	IF ~~ THEN REPLY @9042 /* ¿Eres calishita? No lo pareces. */  GOTO 5
    IF ~~ THEN REPLY @9043 /* Por ahora no necesito nada. Adiós. */  GOTO 4E
    IF ~PartyHasItem("p_hgorms")~ THEN REPLY @90410 /* Hakamir, tengo la cabeza de este monstruo llamado Gorm. Acrull me ha mencionado que eres capaz de forjar algo de ella, ¿es posible? */  GOTO 5E
    IF ~~ THEN REPLY @90435 /* ¿No te preocupa la presencia de Danctian? */  GOTO 2B
END

IF ~~ THEN BEGIN 2B // from:
  SAY @90436 /* ~*tose* Prefiero no hablar de ello cuando claramente él nos puede escuchar. Pero no, no me preocupa. Acrull y yo hemos estado hablando e incluso intercambiamos algunas palabras con Danctian mismo.~ */
  IF ~~ THEN GOTO 3B
END

IF ~~ THEN BEGIN 3B // from:
  SAY @90437 /* ~Lo que pasó con Mathyus y el leprechaun, incluso el pobre perro, fue algo desafortunado. Pero no es algo que nos incumba, al menos por ahora. Habla con Acrull si quieres para saber un poco más sobre mi pensamiento al respecto. Pero no diré más. Si quieres algo de mi tienda, buen <CHARNAME>, vuelve a hablar conmigo.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9044 /* ~Una muy pertinente decisión, mi <LADYLORD>.~ */
  IF ~~ THEN DO ~StartStore("P_HAKAM",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 4E
  SAY @9045 /* ~Una pena, mi buen <PRO_RACE>. Espero que cambiéis de opinión en nuestro próximo encuentro.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9046 /* ~Nadie parece lo que debe parecer en los días que yacen sobre nuestras cabezas, mi <LADYLORD>. Sin embargo, soy de Calimshan, aunque mi paradero actual sea Brest. Athkatla es la ciudad de la moneda y me ha parecido muy propicio venir aquí.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9047 /* ~Estoy realizando tratos con mayores comerciantes para construir caravanas y carros para el comercio con el resto de las regiones. Eso no quiere decir que no pueda aprovechar mi tiempo para intentar vender algunos de mis artilugios mágicos y exclusivos a clientes tan especiales como tú, ¿no lo crees? Si necesitas ver mis mercancías, sólo dilo.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @9048 /* ~¡Ah, si es la pequeña Fall! No ha ocurrido nada grave, querida. El viejo Acrull y yo estamos prestando nuestros servicios en la buena Ciudad de la Moneda.~ */
  IF ~~ THEN EXTERN ~P_ACRULL~ 25
END

IF ~~ THEN BEGIN 8 // from:
  SAY @9049 /* ¡Ah, estoy seguro de que tu amigo estará más que dispuesto a ver mis mercancías! Envíalo al buen Hakamir o al buen Acrull y habremos de negociar, claro que sí. */
  IF ~~ THEN DO ~SetGlobal ("P_FallMetBrostFriends","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5E // from:
  SAY @90411 /* ~Así es, mi estimado. El buen Acrull me ha adelantado sobre vuestro hallazgo. Pero forjar algo no es de mis habilidades, sino más bien imbuir.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @90412 /* ~Hay ciertas armas que pueden ser mejoradas en sobremanera utilizando los ingredientes y conjuros indicados. Pero son pocas las opciones, eso sí. Ten en cuenta, también, que elijas lo que elijas, el costo de la imbuición será de 5000 piezas de oro.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @90413 /* ~Un mago llamado Wormsor logró crear un escudo de escamas de dragón rojo. Se halla perdido en algún lugar no tan lejano de Athkatla. De igual manera que las espadas Matadragones. Si tienes el escudo de escamas o la espada matadragones, puedo mejorar alguna de ellas.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY @90414 /* ~También he oído hablar de una cimitarra de Kara-Tur que se halla en las proximidades. Fue blandida por Taka Kobe y podría mejorar sus encantamientos si la encontrases. La espada se llama Belm.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @90415 /* ~Incluso podría mejorar una clava llamada Rechinante. Dicen que fue tallada por un druida con la ayuda del espíritu de un carcayú. Creo que el druida era llamado Makal.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @90416 /* ~Por último, una espada corta que fue blandida por el bandido Garno. Si la consigues puede que sea posible añadir daño ígneo a su hoja.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from:
  SAY @90417 /* ~En definitiva, si tienes un escudo de escamas de dragón, una espada matadragones, la cimitarra Belm, la clava Rechinante o la espada corta Aradaño, podré imbuir mejoras utilizando como ingrediente la cabeza de Gorm. Recuerda que necesitas, también, 5000 piezas de oro, mi buen amigo.~ */
    IF ~PartyGoldGT(4999) PartyHasItem("SW1H32")~ THEN REPLY @90418 /* Tengo la espada matadragones, Hakamir. */  GOTO 15
	IF ~PartyGoldGT(4999) PartyHasItem("SW1H30")~ THEN REPLY @90419 /* Tengo la cimitarra Belm, Hakamir. */  GOTO 17
    IF ~PartyGoldGT(4999) PartyHasItem("SW1H27")~ THEN REPLY @90420 /* Tengo la espada corta Aradaño, Hakamir. */  GOTO 19
    IF ~PartyGoldGT(4999) PartyHasItem("BLUN24")~ THEN REPLY @90421 /* Tengo la clava Rechinante, Hakamir. */  GOTO 21
    IF ~PartyGoldGT(4999) PartyHasItem("SHLD21")~ THEN REPLY @90422 /* Tengo el escudo de escamas de dragón rojo, Hakamir. */  GOTO 23
    IF ~~ THEN REPLY @90423 /* De acuerdo, Hakamir. Lo pensaré y volveré. Adiós. */  GOTO 6E
END

IF ~~ THEN BEGIN 6E
  SAY @90424 /* ~De acuerdo, mi buen <PRO_RACE>. Nos veremos pronto.~ */
  IF ~~ THEN DO ~~ EXIT
END

// Matadragones
IF ~~ THEN BEGIN 15 // from:
  SAY @90425 /* ~Con mucho placer tomaré tu oro y a lo que queda del desagradable Gorm. También tomaré la espada. Verás que las mejoras en la misma serán inmediatas. Hm... ¿cómo era? Ah, sí. ¡Aquí va!~ */
  IF ~~ THEN DO ~TakePartyItem("p_hgorms")
  DestroyItem("p_hgorms")  
  TakePartyGold(5000) TakePartyItem("SW1H32") 
  DestroyGold(5000)
  DestroyItem("SW1H32")  
  ~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @90426 /* ~¿Ves? No he tardado nada. Aquí tienes la nueva espada Matadragones. Espero que le des un buen uso, ¿sí? También recuerda volver a comprar alguno de mis artefactos, os aseguro que valdrá la pena.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISW132",1,1,1)  GiveItem("P_ISW132", LastTalkedToBy)~ EXIT
END

// Belm
IF ~~ THEN BEGIN 17 // from:
  SAY @90427 /* ~Con mucho placer tomaré tu oro y a lo que queda del desagradable Gorm. También tomaré la cimitarra. Verás que las mejoras en la misma serán inmediatas. Hm... ¿cómo era? Ah, sí. ¡Aquí va!~ */
  IF ~~ THEN DO ~TakePartyItem("p_hgorms")
  DestroyItem("p_hgorms")  
  TakePartyGold(5000) TakePartyItem("SW1H30")
  DestroyGold(5000)
  DestroyItem("SW1H30")  
  ~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @90428 /* ~¿Ves? No he tardado nada. Aquí tienes la nueva espada Belm. Espero que le des un buen uso, ¿sí? También recuerda volver a comprar alguno de mis artefactos, os aseguro que valdrá la pena.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISW130",1,1,1)  GiveItem("P_ISW130", LastTalkedToBy)~ EXIT
END

// Aradaño / Arbane
IF ~~ THEN BEGIN 19 // from:
  SAY @90429 /* ~Con mucho placer tomaré tu oro y a lo que queda del desagradable Gorm. También tomaré la espada corta. Verás que las mejoras en la misma serán inmediatas. Hm... ¿cómo era? Ah, sí. ¡Aquí va!~ */
  IF ~~ THEN DO ~TakePartyItem("p_hgorms")
  DestroyItem("p_hgorms")  
  TakePartyGold(5000) TakePartyItem("SW1H27")
  DestroyGold(5000)
  DestroyItem("SW1H27")  
  ~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @90430 /* ~¿Ves? No he tardado nada. Aquí tienes la nueva espada Aradaño. Espero que le des un buen uso, ¿sí? También recuerda volver a comprar alguno de mis artefactos, os aseguro que valdrá la pena.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISW127",1,1,1)  GiveItem("P_ISW127", LastTalkedToBy)~ EXIT
END

// Rechinante / Gnasher
IF ~~ THEN BEGIN 21 // from:
  SAY @90431 /* ~Con mucho placer tomaré tu oro y a lo que queda del desagradable Gorm. También tomaré la clava. Verás que las mejoras en la misma serán inmediatas. Hm... ¿cómo era? Ah, sí. ¡Aquí va!~ */
  IF ~~ THEN DO ~TakePartyItem("p_hgorms")
  DestroyItem("p_hgorms")  
  TakePartyGold(5000) TakePartyItem("BLUN24")
  DestroyGold(5000)
  DestroyItem("BLUN24")  
  ~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @90432 /* ~¿Ves? No he tardado nada. Aquí tienes la nueva clava Rechinante. Espero que le des un buen uso, ¿sí? También recuerda volver a comprar alguno de mis artefactos, os aseguro que valdrá la pena.~ */
  IF ~~ THEN DO ~CreateItem ("P_IBLU24",1,1,1)  GiveItem("P_IBLU24", LastTalkedToBy)~ EXIT
END

// Escudo de escamas
IF ~~ THEN BEGIN 23 // from:
  SAY @90433 /* ~Con mucho placer tomaré tu oro y a lo que queda del desagradable Gorm. También tomaré el escudo. Verás que las mejoras en la misma serán inmediatas. Hm... ¿cómo era? Ah, sí. ¡Aquí va!~ */
  IF ~~ THEN DO ~TakePartyItem("p_hgorms")
  DestroyItem("p_hgorms")  
  TakePartyGold(5000) TakePartyItem("SHLD21")
  DestroyGold(5000)
  DestroyItem("SHLD21")  
  ~ GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @90434 /* ~¿Ves? No he tardado nada. Aquí tienes el nuevo escudo de escamas de dragón y remorhaz. Espero que le des un buen uso, ¿sí? También recuerda volver a comprar alguno de mis artefactos, os aseguro que valdrá la pena.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISHD21",1,1,1)  GiveItem("P_ISHD21", LastTalkedToBy)~ EXIT
END
