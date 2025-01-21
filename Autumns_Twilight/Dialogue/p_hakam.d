BEGIN P_HAKAM

IF ~!See("P_DANCTI") 
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 0 // from:
  SAY @9040 /* ~Saludos, viajeros. Hakamir ibn Alix de Brest a su servicio. Poseo una interesante variedad de artefactos m�gicos a mi disposici�n, listos para ser vendidos. Muchos provienen de Calimshan. �Est�is interesados en mi repertorio?~ */
    IF ~~ THEN REPLY @9041 /* De acuerdo, Hakamir. Mu�strame lo que tienes a la venta. */  GOTO 2
	IF ~~ THEN REPLY @9042 /* �Eres calishita? No lo pareces. */  GOTO 5
    IF ~~ THEN REPLY @9043 /* Por ahora no necesito nada. Adi�s. */  GOTO 4E
    IF ~PartyHasItem("p_hgorms")~ THEN REPLY @90410 /* Hakamir, tengo la cabeza de este monstruo llamado Gorm. Acrull me ha mencionado que eres capaz de forjar algo de ella, �es posible? */  GOTO 5E
END

IF ~See("P_DANCTI")
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 0B // from:
  SAY @9040 /* ~Saludos, viajeros. Hakamir ibn Alix de Brest a su servicio. Poseo una interesante variedad de artefactos m�gicos a mi disposici�n, listos para ser vendidos. Muchos provienen de Calimshan. �Est�is interesados en mi repertorio?~ */
    IF ~~ THEN REPLY @9041 /* De acuerdo, Hakamir. Mu�strame lo que tienes a la venta. */  GOTO 2
	IF ~~ THEN REPLY @9042 /* �Eres calishita? No lo pareces. */  GOTO 5
    IF ~~ THEN REPLY @9043 /* Por ahora no necesito nada. Adi�s. */  GOTO 4E
    IF ~PartyHasItem("p_hgorms")~ THEN REPLY @90410 /* Hakamir, tengo la cabeza de este monstruo llamado Gorm. Acrull me ha mencionado que eres capaz de forjar algo de ella, �es posible? */  GOTO 5E
    IF ~~ THEN REPLY @90435 /* �No te preocupa la presencia de Danctian? */  GOTO 2B
END

IF ~~ THEN BEGIN 2B // from:
  SAY @90436 /* ~*tose* Prefiero no hablar de ello cuando claramente �l nos puede escuchar. Pero no, no me preocupa. Acrull y yo hemos estado hablando e incluso intercambiamos algunas palabras con Danctian mismo.~ */
  IF ~~ THEN GOTO 3B
END

IF ~~ THEN BEGIN 3B // from:
  SAY @90437 /* ~Lo que pas� con Mathyus y el leprechaun, incluso el pobre perro, fue algo desafortunado. Pero no es algo que nos incumba, al menos por ahora. Habla con Acrull si quieres para saber un poco m�s sobre mi pensamiento al respecto. Pero no dir� m�s. Si quieres algo de mi tienda, buen <CHARNAME>, vuelve a hablar conmigo.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9044 /* ~Una muy pertinente decisi�n, mi <LADYLORD>.~ */
  IF ~~ THEN DO ~StartStore("P_HAKAM",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 4E
  SAY @9045 /* ~Una pena, mi buen <PRO_RACE>. Espero que cambi�is de opini�n en nuestro pr�ximo encuentro.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9046 /* ~Nadie parece lo que debe parecer en los d�as que yacen sobre nuestras cabezas, mi <LADYLORD>. Sin embargo, soy de Calimshan, aunque mi paradero actual sea Brest. Athkatla es la ciudad de la moneda y me ha parecido muy propicio venir aqu�.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9047 /* ~Estoy realizando tratos con mayores comerciantes para construir caravanas y carros para el comercio con el resto de las regiones. Eso no quiere decir que no pueda aprovechar mi tiempo para intentar vender algunos de mis artilugios m�gicos y exclusivos a clientes tan especiales como t�, �no lo crees? Si necesitas ver mis mercanc�as, s�lo dilo.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @9048 /* ~�Ah, si es la peque�a Fall! No ha ocurrido nada grave, querida. El viejo Acrull y yo estamos prestando nuestros servicios en la buena Ciudad de la Moneda.~ */
  IF ~~ THEN EXTERN ~P_ACRULL~ 25
END

IF ~~ THEN BEGIN 8 // from:
  SAY @9049 /* �Ah, estoy seguro de que tu amigo estar� m�s que dispuesto a ver mis mercanc�as! Env�alo al buen Hakamir o al buen Acrull y habremos de negociar, claro que s�. */
  IF ~~ THEN DO ~SetGlobal ("P_FallMetBrostFriends","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5E // from:
  SAY @90411 /* ~As� es, mi estimado. El buen Acrull me ha adelantado sobre vuestro hallazgo. Pero forjar algo no es de mis habilidades, sino m�s bien imbuir.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @90412 /* ~Hay ciertas armas que pueden ser mejoradas en sobremanera utilizando los ingredientes y conjuros indicados. Pero son pocas las opciones, eso s�. Ten en cuenta, tambi�n, que elijas lo que elijas, el costo de la imbuici�n ser� de 5000 piezas de oro.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @90413 /* ~Un mago llamado Wormsor logr� crear un escudo de escamas de drag�n rojo. Se halla perdido en alg�n lugar no tan lejano de Athkatla. De igual manera que las espadas Matadragones. Si tienes el escudo de escamas o la espada matadragones, puedo mejorar alguna de ellas.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY @90414 /* ~Tambi�n he o�do hablar de una cimitarra de Kara-Tur que se halla en las proximidades. Fue blandida por Taka Kobe y podr�a mejorar sus encantamientos si la encontrases. La espada se llama Belm.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @90415 /* ~Incluso podr�a mejorar una clava llamada Rechinante. Dicen que fue tallada por un druida con la ayuda del esp�ritu de un carcay�. Creo que el druida era llamado Makal.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @90416 /* ~Por �ltimo, una espada corta que fue blandida por el bandido Garno. Si la consigues puede que sea posible a�adir da�o �gneo a su hoja.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from:
  SAY @90417 /* ~En definitiva, si tienes un escudo de escamas de drag�n, una espada matadragones, la cimitarra Belm, la clava Rechinante o la espada corta Arada�o, podr� imbuir mejoras utilizando como ingrediente la cabeza de Gorm. Recuerda que necesitas, tambi�n, 5000 piezas de oro, mi buen amigo.~ */
    IF ~PartyGoldGT(4999) PartyHasItem("SW1H32")~ THEN REPLY @90418 /* Tengo la espada matadragones, Hakamir. */  GOTO 15
	IF ~PartyGoldGT(4999) PartyHasItem("SW1H30")~ THEN REPLY @90419 /* Tengo la cimitarra Belm, Hakamir. */  GOTO 17
    IF ~PartyGoldGT(4999) PartyHasItem("SW1H27")~ THEN REPLY @90420 /* Tengo la espada corta Arada�o, Hakamir. */  GOTO 19
    IF ~PartyGoldGT(4999) PartyHasItem("BLUN24")~ THEN REPLY @90421 /* Tengo la clava Rechinante, Hakamir. */  GOTO 21
    IF ~PartyGoldGT(4999) PartyHasItem("SHLD21")~ THEN REPLY @90422 /* Tengo el escudo de escamas de drag�n rojo, Hakamir. */  GOTO 23
    IF ~~ THEN REPLY @90423 /* De acuerdo, Hakamir. Lo pensar� y volver�. Adi�s. */  GOTO 6E
END

IF ~~ THEN BEGIN 6E
  SAY @90424 /* ~De acuerdo, mi buen <PRO_RACE>. Nos veremos pronto.~ */
  IF ~~ THEN DO ~~ EXIT
END

// Matadragones
IF ~~ THEN BEGIN 15 // from:
  SAY @90425 /* ~Con mucho placer tomar� tu oro y a lo que queda del desagradable Gorm. Tambi�n tomar� la espada. Ver�s que las mejoras en la misma ser�n inmediatas. Hm... �c�mo era? Ah, s�. �Aqu� va!~ */
  IF ~~ THEN DO ~TakePartyItem("p_hgorms")
  DestroyItem("p_hgorms")  
  TakePartyGold(5000) TakePartyItem("SW1H32") 
  DestroyGold(5000)
  DestroyItem("SW1H32")  
  ~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @90426 /* ~�Ves? No he tardado nada. Aqu� tienes la nueva espada Matadragones. Espero que le des un buen uso, �s�? Tambi�n recuerda volver a comprar alguno de mis artefactos, os aseguro que valdr� la pena.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISW132",1,1,1)  GiveItem("P_ISW132", LastTalkedToBy)~ EXIT
END

// Belm
IF ~~ THEN BEGIN 17 // from:
  SAY @90427 /* ~Con mucho placer tomar� tu oro y a lo que queda del desagradable Gorm. Tambi�n tomar� la cimitarra. Ver�s que las mejoras en la misma ser�n inmediatas. Hm... �c�mo era? Ah, s�. �Aqu� va!~ */
  IF ~~ THEN DO ~TakePartyItem("p_hgorms")
  DestroyItem("p_hgorms")  
  TakePartyGold(5000) TakePartyItem("SW1H30")
  DestroyGold(5000)
  DestroyItem("SW1H30")  
  ~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @90428 /* ~�Ves? No he tardado nada. Aqu� tienes la nueva espada Belm. Espero que le des un buen uso, �s�? Tambi�n recuerda volver a comprar alguno de mis artefactos, os aseguro que valdr� la pena.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISW130",1,1,1)  GiveItem("P_ISW130", LastTalkedToBy)~ EXIT
END

// Arada�o / Arbane
IF ~~ THEN BEGIN 19 // from:
  SAY @90429 /* ~Con mucho placer tomar� tu oro y a lo que queda del desagradable Gorm. Tambi�n tomar� la espada corta. Ver�s que las mejoras en la misma ser�n inmediatas. Hm... �c�mo era? Ah, s�. �Aqu� va!~ */
  IF ~~ THEN DO ~TakePartyItem("p_hgorms")
  DestroyItem("p_hgorms")  
  TakePartyGold(5000) TakePartyItem("SW1H27")
  DestroyGold(5000)
  DestroyItem("SW1H27")  
  ~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @90430 /* ~�Ves? No he tardado nada. Aqu� tienes la nueva espada Arada�o. Espero que le des un buen uso, �s�? Tambi�n recuerda volver a comprar alguno de mis artefactos, os aseguro que valdr� la pena.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISW127",1,1,1)  GiveItem("P_ISW127", LastTalkedToBy)~ EXIT
END

// Rechinante / Gnasher
IF ~~ THEN BEGIN 21 // from:
  SAY @90431 /* ~Con mucho placer tomar� tu oro y a lo que queda del desagradable Gorm. Tambi�n tomar� la clava. Ver�s que las mejoras en la misma ser�n inmediatas. Hm... �c�mo era? Ah, s�. �Aqu� va!~ */
  IF ~~ THEN DO ~TakePartyItem("p_hgorms")
  DestroyItem("p_hgorms")  
  TakePartyGold(5000) TakePartyItem("BLUN24")
  DestroyGold(5000)
  DestroyItem("BLUN24")  
  ~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @90432 /* ~�Ves? No he tardado nada. Aqu� tienes la nueva clava Rechinante. Espero que le des un buen uso, �s�? Tambi�n recuerda volver a comprar alguno de mis artefactos, os aseguro que valdr� la pena.~ */
  IF ~~ THEN DO ~CreateItem ("P_IBLU24",1,1,1)  GiveItem("P_IBLU24", LastTalkedToBy)~ EXIT
END

// Escudo de escamas
IF ~~ THEN BEGIN 23 // from:
  SAY @90433 /* ~Con mucho placer tomar� tu oro y a lo que queda del desagradable Gorm. Tambi�n tomar� el escudo. Ver�s que las mejoras en la misma ser�n inmediatas. Hm... �c�mo era? Ah, s�. �Aqu� va!~ */
  IF ~~ THEN DO ~TakePartyItem("p_hgorms")
  DestroyItem("p_hgorms")  
  TakePartyGold(5000) TakePartyItem("SHLD21")
  DestroyGold(5000)
  DestroyItem("SHLD21")  
  ~ GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @90434 /* ~�Ves? No he tardado nada. Aqu� tienes el nuevo escudo de escamas de drag�n y remorhaz. Espero que le des un buen uso, �s�? Tambi�n recuerda volver a comprar alguno de mis artefactos, os aseguro que valdr� la pena.~ */
  IF ~~ THEN DO ~CreateItem ("P_ISHD21",1,1,1)  GiveItem("P_ISHD21", LastTalkedToBy)~ EXIT
END
