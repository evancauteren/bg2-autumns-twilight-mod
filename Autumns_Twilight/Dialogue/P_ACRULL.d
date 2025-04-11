BEGIN P_ACRULL

IF ~!InParty("P_Fall")
!See("P_Fall")
AreaCheck("AR1900")
Global ("P_Fall_Kitoch_Charname_TELEPORT1","GLOBAL",0)
OR (2)
Global("P_Fall_Kitoch_Charname","GLOBAL",6)
Global("P_Fall_Kitoch_Charname","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY @9750 /* ~Saludos, caminante del Norte. Nuestro amigo felino en com�n me ha encomendado venir aqu�, pero s�lo puedo proseguir con Fall en tu compa��a. Tr�ela contigo y hablaremos.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
!See("P_Fall")
AreaCheck("AR1900")
Global ("P_Fall_Kitoch_Charname_TELEPORT1","GLOBAL",0)
OR (2)
Global("P_Fall_Kitoch_Charname","GLOBAL",6)
Global("P_Fall_Kitoch_Charname","GLOBAL",7)~ THEN BEGIN 1 // from:
  SAY @9750 /* ~Saludos, caminante del Norte. Nuestro amigo felino en com�n me ha encomendado venir aqu�, pero s�lo puedo proseguir con Fall en tu compa��a. Tr�ela contigo y hablaremos.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
Global("P_Fall_Kitoch_Charname","GLOBAL",6)
Global ("P_Fall_Kitoch_Charname_TELEPORT1","GLOBAL",0)
AreaCheck("AR1900")~ THEN BEGIN 2 // from:
  SAY @9751 /* ~Ah, Fall. Has venido como lo ha indicado Kitochi.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_Charname","GLOBAL",7)~ EXTERN ~P_FALLJ~ 71
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9752 /* ~Caminante del Norte, perm�teme explicar brevemente lo que haremos.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9753 /* �Est�n listos para viajar? */
    IF ~~ THEN REPLY @9754 /* ~De acuerdo, Acrull. Estamos listos. Ll�vamos a ese lugar.~ */  GOTO 6
    IF ~~ THEN REPLY @9755 /* ~A�n no estamos listos, druida.~ */  GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9756 /* ~De acuerdo, caminante. Cuando lo est�n, vuelve a hablar conmigo.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",7)~ UNSOLVED_JOURNAL @310030 EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9757 /* ~Prep�rense... en un breve aleteo de mariposa se hallar�n en la caverna de Gorm...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",7) SetGlobal ("P_Fall_Kitoch_Charname_TELEPORT1","GLOBAL",1)~ UNSOLVED_JOURNAL @310030 EXIT
END
IF ~InParty("P_Fall")
See("P_Fall")
Global("P_Fall_Kitoch_Charname","GLOBAL",7)
Global ("P_Fall_Kitoch_Charname_TELEPORT1","GLOBAL",0)
AreaCheck("AR1900")~ THEN BEGIN 7 // from:
  SAY @9758 /* ~�Ya est�n listos para partir?~ */
    IF ~~ THEN REPLY @9755 /* ~A�n no estamos listos, druida.~ */  GOTO 5
    IF ~~ THEN REPLY @9754 /* ~De acuerdo, Acrull. Estamos listos. Ll�vamos a ese lugar.~ */  GOTO 6
END

IF ~InParty("P_Fall")
See("P_Fall")
Global("P_FallAboutGormsDeath_KitAlive","GLOBAL",4)
AreaCheck("AR1900")~ THEN BEGIN 8 // from:
  SAY @97519 /* ~�Han vuelto! Y triunfantes. La cabeza del monstruo lo demuestra.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutGormsDeath_KitAlive","GLOBAL",5)~ EXTERN ~P_FALLJ~ 74
END

IF ~~ THEN BEGIN 9 // from:
  SAY @97520 /* ~El Abismo nos ha quitado muchos de nuestros mejores guerreros, ahora ustedes han debilitado las fuerzas del Abismo. El equilibrio se est� restaurando.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @97521 /* ~Por lo pronto, me despido. Os felicito de nuevo por su gran haza�a.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallAboutGormsDeath_KitAlive","GLOBAL",5) EraseJournalEntry(@310026) EraseJournalEntry(@310027) EraseJournalEntry(@310028) EraseJournalEntry(@310029) EraseJournalEntry(@310030) EraseJournalEntry(@310031) 
  AddexperienceParty (100000) EscapeArea()~ SOLVED_JOURNAL @310032 EXIT
END


// In Athkatla

IF ~Global("P_AcrullMet","GLOBAL",0)
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 11 // from:
  SAY @97525 /* ~Saludos, caminante del Norte. Acrull Escudonorte�o est� aqu� para ayudar a su amigo Hakamir a reunir los fondos necesarios para ayudar en las reparaciones en Brost, la Villa de las Setas.~ */
    IF ~~ THEN REPLY @97526 /* Ya veo. �Y qu� es lo que tienes para ofrecer? */  GOTO 12
	IF ~~ THEN REPLY @97527 /* �Por qu� un druida estar�a dispuesto a ayudar a un comerciante calishita? Cre� que el deber de los tuyos estar�a para con el bosque. */  GOTO 13
    // IF ~~ THEN REPLY @9753 /* Por ahora no necesito nada, Acrull. Adi�s. */  GOTO 4E
END

IF ~~ THEN BEGIN 12 // from:
  SAY @97528 /* ~Puedo realizar mejoras en botas m�gicas. Me refiero a las llamadas Botas de Velocidad. Si tienes alg�n par, ven a hablar conmigo y por un precio (que fue establecido por el buen Hakamir) mejorar� dicho artefacto.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @97529 /* ~Creo que Hakamir tiene un ejemplar a la venta en su repertorio. Si me lo traes, podr� mejorarlo en menos de lo que canta un gallo.~ */
  IF ~~ THEN DO ~SetGlobal("P_AcrullMet","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY @97530 /* ~En Brost todos mantienen un estatus igual: Druidas, batidores, exploradores, constructores de carros y fabricantes de cerveza. Hombres y elfos, sean afines a la naturaleza o no, trabajan en conjunto para mantener una vida de paz y armon�a entre los habitantes de la villa y el bosque.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @97531 /* ~Hace unos a�os, el bosque recibi� un ataque de cazadores furtivos del sur. Con la alianza de los habitantes de Brost, el ataque pudo ser repelido y el bosque salvado. Ahora los hombres tienen una crisis que llaman econ�mica y he decidido venir a Athkatla junto a Hakamir para remediar ese asunto.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @97532 /* ~Si necesitas artefactos m�gicos, Hakamir puede proveerlos. Por mi parte, puedo encantar botas de velocidad para mejorar sus aptitudes m�gicas. Por un precio, claro est�. Los druidas no necesitamos el oro, pero lo hago por Brost. Lo que obtengamos aqu�, ir� para las reparaciones de la villa.~ */
  IF ~~ THEN DO ~SetGlobal("P_AcrullMet","GLOBAL",1)~ EXIT
END

IF ~!See("P_DANCTI")
Global("P_AcrullMet","GLOBAL",1)
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 17 // from:
  SAY @97533 /* ~Saludos, caminante del Norte. Acrull Escudonorte�o est� aqu� para ayudar a su amigo Hakamir a reunir los fondos necesarios para ayudar en las reparaciones en Brost, la Villa de las Setas. Recuerda que si tienes botas de velocidad, puedo mejorar su encantamiento.~ */
    IF ~OR(5) 
	PartyHasItem ("BOOT01")
	PartyHasItem ("TROLLBOO")
	PartyHasItem ("BOOTDRIZ")
	PartyHasItem ("DASBOOT")
	PartyHasItem ("MOVE7")
	~ THEN REPLY @97534 /* Tengo este par de botas, Acrull. �Qu� tipo de mejoras puedes aplicar en ellas? */  GOTO 18
    IF ~PartyHasItem ("p_wsboot")~ THEN REPLY @97557 /* Acrull, �crees que puedas hacer algo para mejorar este par de botas? Son las botas llamadas Camino de los Ancestros. */  GOTO 4W
    IF ~~ THEN REPLY @97535 /* Por ahora no necesito nada, Acrull. Adi�s. */  GOTO 4E
END

IF ~See("P_DANCTI")
Global("P_AcrullMet","GLOBAL",1)
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 17B // from:
  SAY @97533 /* ~Saludos, caminante del Norte. Acrull Escudonorte�o est� aqu� para ayudar a su amigo Hakamir a reunir los fondos necesarios para ayudar en las reparaciones en Brost, la Villa de las Setas. Recuerda que si tienes botas de velocidad, puedo mejorar su encantamiento.~ */
    IF ~OR(5) 
	PartyHasItem ("BOOT01")
	PartyHasItem ("TROLLBOO")
	PartyHasItem ("BOOTDRIZ")
	PartyHasItem ("DASBOOT")
	PartyHasItem ("MOVE7")
	~ THEN REPLY @97534 /* Tengo este par de botas, Acrull. �Qu� tipo de mejoras puedes aplicar en ellas? */  GOTO 18
    IF ~PartyHasItem ("p_wsboot")~ THEN REPLY @97557 /* Acrull, �crees que puedas hacer algo para mejorar este par de botas? Son las botas llamadas Camino de los Ancestros. */  GOTO 4W
    IF ~~ THEN REPLY @97535 /* Por ahora no necesito nada, Acrull. Adi�s. */  GOTO 4E
    IF ~~ THEN REPLY @97573 /* �No te preocupa la presencia de Danctian, Acrull? */  GOTO 18B
END

IF ~~ THEN BEGIN 18B // from:
  SAY @97574 /* ~El asunto es m�s complejo de lo que crees, Caminante del Norte. Danctian Shadow proviene del Plano del Pandemonium, sin embargo, no es una criatura inherente de all�.~ */
  IF ~~ THEN GOTO 19B
END

IF ~~ THEN BEGIN 19B // from:
  SAY @97575 /* ~�Has visto c�mo Mathyus, Michelson y Demoledor han muerto a manos de Dusk? Sus cuerpos fueron desapareciendo con el paso de las horas a una velocidad antinatural. Ellos han muerto aqu�, pero viven en el Pandemonium.~ */
  IF ~~ THEN GOTO 20B
END

IF ~~ THEN BEGIN 20B // from:
  SAY @97577 /* ~No culpo a Dusk sobre no hablar de ello. Es una... situaci�n m�s dif�cil de lo que �l o cualquiera podr�a admitir. Por m�s sorprendente que parezca, la presencia de Danctian aqu� no ha afectado al Equilibrio, siempre y cuando Mathyus permanezca en el Pandemonium.~ */
  IF ~~ THEN GOTO 21B
END

IF ~~ THEN BEGIN 21B // from:
  SAY @97578 /* ~Por eso es que he instigado a Hakamir a no abandonar, a�n, Athkatla. No s� si lo has notado, pero aqu�, tanto Hakamir como yo tenemos una protecci�n, inducida por nuestros poderes arcanos y consustanciales en conjunto.~ */
  IF ~~ THEN GOTO 22B
END

IF ~~ THEN BEGIN 22B // from:
  SAY @97579 /* ~Danctian podr�a haber roto ese enlace y haber acabado con nosotros. Pero no lo ha hecho. Su plan no parece querer alterar el Equilibrio de Faer�n, sino, por m�s extra�o que parezca, tratar de salvaguardarlo. Con el tiempo comprender�s a qu� me refiero.~ */
  IF ~~ THEN GOTO 23B
END

IF ~~ THEN BEGIN 23B // from:
  SAY @97580 /* ~Por lo pronto, si necesitas de mi asistencia en algo o de Hakamir para comercio, no dudes en acudir a nosotros.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 4W // from:
  SAY @97554 /* ~Hm... interesante. Puedo mejorarlas, s�. Tengo entendido que pertenecieron al Duque Benork. Era un buen hombre. Asumo que les dar�s un buen uso, caminante.~ */
  IF ~~ THEN  DO ~ TakePartyItem("p_wsboot") DestroyItem("p_wsboot")   CreateItem ("p_wsboo2",1,1,1)  GiveItem("p_wsboo2", LastTalkedToBy)~ GOTO 4W2
END

IF ~~ THEN BEGIN 4W2
  SAY @97555 /* ~Aqu� tienes. Sin costo. Notar�s la mejora de forma inmediata. Si necesitas algo m�s, sabes d�nde encontrarme.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 4E
  SAY @97536 /* ~De acuerdo, caminante. Estar� aqu� un buen tiempo hasta que vuelva a Tethyr. Hasta entonces, adi�s.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY @97537 /* ~Puedo realizar alguna de las siguientes mejoras. Ten en cuenta que el precio variar� dependiendo de lo que elijas, ya que el esfuerzo difiere en sus encantamientos.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @97538 /* ~Las Botas Acolchonadas agregar� defensa f�sica a las botas de velocidad. El costo ser�a de unas 5000 piezas de oro.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @97539 /* ~Las botas de los elementos agregar� defensa contra ataques elementales, tanto f�sicos como m�gicos. El costo ser�a de unas 7500 piezas de oro.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from:
  SAY @97540 /* ~Las botas divinas permitir�n al cl�rigo o druida mejorar su conexi�n con sus deidades, permitiendo mejoras en su memorizaci�n de conjuros. Tambi�n puedo aplicarlas para los magos, �sas ser�an las botas arcanas. Cualquiera de esas botas costar�a unas 15000 piezas de oro.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from:
  SAY @97541 /* ~Por �ltimo, puedo realizar un encantamiento para que absorba el da�o f�sico recibido. Estas las llamo las Botas Endurecidas. Su costo ser�a de unas 12500 piezas de oro.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @97542 /* ~�Y bien? Dime si deseas que comience con los encantamientos, caminante.~ */
    IF ~PartyGoldGT(4999)~ THEN REPLY @97543 /* Quiero las Botas Acolchonadas, Acrull. */  GOTO 24A
	
    IF ~PartyGoldGT(7499)~ THEN REPLY @97544 /* Quiero las Botas Elementales, Acrull. */  GOTO 24B
    IF ~PartyGoldGT(14999)~ THEN REPLY @97545 /* Quiero las Botas Divinas, Acrull. */  GOTO 24C
    IF ~PartyGoldGT(14999)~ THEN REPLY @97546 /* Quiero las Botas Arcanas, Acrull. */  GOTO 24D
    IF ~PartyGoldGT(12499)~ THEN REPLY @97547 /* Quiero las Botas Endurecidas, Acrull. */  GOTO 24E
    IF ~~ THEN REPLY @97548 /* Debo pensarlo, Acrull. Volver� en cuanto sepa qu� es lo que quiera hacer. */  GOTO 4E
END


// BOTAS ACOLCHONADAS
IF ~~ THEN BEGIN 24A // from:
  SAY @97549 /* ~De acuerdo. Necesitar� de tus botas de velocidad.~ */
    IF ~PartyHasItem("BOOT01")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24A_1
    IF ~PartyHasItem("TROLLBOO")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24A_2
    IF ~PartyHasItem("BOOTDRIZ")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24A_3
    IF ~PartyHasItem("DASBOOT")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24A_4
    IF ~PartyHasItem("MOVE7")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24A_5
    IF ~~ THEN REPLY @97556 /* Acabo de cambiar de opini�n, Acrull. Debo pensarlo un poco m�s. */  GOTO 4E
END

//1
IF ~~ THEN BEGIN 24A_1 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("BOOT01")
  DestroyGold(5000)
  DestroyItem("BOOT01")  
  ~ GOTO 24A_1_1
END

IF ~~ THEN BEGIN 24A_1_1
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM04",1,1,1)  GiveItem("P_FITM04", LastTalkedToBy)~ EXIT
END

//2
IF ~~ THEN BEGIN 24A_2 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("TROLLBOO")
  DestroyGold(5000)
  DestroyItem("TROLLBOO")  
  ~ GOTO 24A_1_2
END

IF ~~ THEN BEGIN 24A_1_2
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM04",1,1,1)  GiveItem("P_FITM04", LastTalkedToBy)~ EXIT
END

//3
IF ~~ THEN BEGIN 24A_3 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("BOOTDRIZ")
  DestroyGold(5000)
  DestroyItem("BOOTDRIZ")  
  ~ GOTO 24A_1_3
END

IF ~~ THEN BEGIN 24A_1_3
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM04",1,1,1)  GiveItem("P_FITM04", LastTalkedToBy)~ EXIT
END

//4
IF ~~ THEN BEGIN 24A_4 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("DASBOOT")
  DestroyGold(5000)
  DestroyItem("DASBOOT")  
  ~ GOTO 24A_1_4
END

IF ~~ THEN BEGIN 24A_1_4
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM04",1,1,1)  GiveItem("P_FITM04", LastTalkedToBy)~ EXIT
END

//5
IF ~~ THEN BEGIN 24A_5 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MOVE7")
  DestroyGold(5000)
  DestroyItem("MOVE7")  
  ~ GOTO 24A_1_5
END

IF ~~ THEN BEGIN 24A_1_5
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM04",1,1,1)  GiveItem("P_FITM04", LastTalkedToBy)~ EXIT
END

// BOTAS ELEMENTALES
IF ~~ THEN BEGIN 24B // from:
  SAY @97549 /* ~De acuerdo. Necesitar� de tus botas de velocidad.~ */
    IF ~PartyHasItem("BOOT01")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24B_1
    IF ~PartyHasItem("TROLLBOO")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24B_2
    IF ~PartyHasItem("BOOTDRIZ")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24B_3
    IF ~PartyHasItem("DASBOOT")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24B_4
    IF ~PartyHasItem("MOVE7")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24B_5
    IF ~~ THEN REPLY @97556 /* Acabo de cambiar de opini�n, Acrull. Debo pensarlo un poco m�s. */  GOTO 4E
END

//1
IF ~~ THEN BEGIN 24B_1 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(7500) TakePartyItem("BOOT01")
  DestroyGold(7500)
  DestroyItem("BOOT01")  
  ~ GOTO 24B_1_1
END

IF ~~ THEN BEGIN 24B_1_1
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM05",1,1,1)  GiveItem("P_FITM05", LastTalkedToBy)~ EXIT
END

//2
IF ~~ THEN BEGIN 24B_2 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(7500) TakePartyItem("TROLLBOO")
  DestroyGold(7500)
  DestroyItem("TROLLBOO")  
  ~ GOTO 24B_1_2
END

IF ~~ THEN BEGIN 24B_1_2
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM05",1,1,1)  GiveItem("P_FITM05", LastTalkedToBy)~ EXIT
END

//3
IF ~~ THEN BEGIN 24B_3 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(7500) TakePartyItem("BOOTDRIZ")
  DestroyGold(7500)
  DestroyItem("BOOTDRIZ")  
  ~ GOTO 24B_1_3
END

IF ~~ THEN BEGIN 24B_1_3
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM05",1,1,1)  GiveItem("P_FITM05", LastTalkedToBy)~ EXIT
END

//4
IF ~~ THEN BEGIN 24B_4 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(7500) TakePartyItem("DASBOOT")
  DestroyGold(7500)
  DestroyItem("DASBOOT")  
  ~ GOTO 24B_1_4
END

IF ~~ THEN BEGIN 24B_1_4
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM05",1,1,1)  GiveItem("P_FITM05", LastTalkedToBy)~ EXIT
END

//5
IF ~~ THEN BEGIN 24B_5 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(7500) TakePartyItem("MOVE7")
  DestroyGold(7500)
  DestroyItem("MOVE7")  
  ~ GOTO 24B_1_5
END

IF ~~ THEN BEGIN 24B_1_5
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM05",1,1,1)  GiveItem("P_FITM05", LastTalkedToBy)~ EXIT
END




// BOTAS DIVINAS
IF ~~ THEN BEGIN 24C // from:
  SAY @97549 /* ~De acuerdo. Necesitar� de tus botas de velocidad.~ */
    IF ~PartyHasItem("BOOT01")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24C_1
    IF ~PartyHasItem("TROLLBOO")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24C_2
    IF ~PartyHasItem("BOOTDRIZ")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24C_3
    IF ~PartyHasItem("DASBOOT")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24C_4
    IF ~PartyHasItem("MOVE7")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24C_5
    IF ~~ THEN REPLY @97556 /* Acabo de cambiar de opini�n, Acrull. Debo pensarlo un poco m�s. */  GOTO 4E
END


//1
IF ~~ THEN BEGIN 24C_1 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItem("BOOT01")
  DestroyGold(15000)
  DestroyItem("BOOT01")  
  ~ GOTO 24C_1_1
END

IF ~~ THEN BEGIN 24C_1_1
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM06",1,1,1)  GiveItem("P_FITM06", LastTalkedToBy)~ EXIT
END

//2
IF ~~ THEN BEGIN 24C_2 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItem("TROLLBOO")
  DestroyGold(15000)
  DestroyItem("TROLLBOO")  
  ~ GOTO 24C_1_2
END

IF ~~ THEN BEGIN 24C_1_2
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM06",1,1,1)  GiveItem("P_FITM06", LastTalkedToBy)~ EXIT
END

//3
IF ~~ THEN BEGIN 24C_3 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItem("BOOTDRIZ")
  DestroyGold(15000)
  DestroyItem("BOOTDRIZ")  
  ~ GOTO 24C_1_3
END

IF ~~ THEN BEGIN 24C_1_3
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM06",1,1,1)  GiveItem("P_FITM06", LastTalkedToBy)~ EXIT
END

//4
IF ~~ THEN BEGIN 24C_4 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItem("DASBOOT")
  DestroyGold(15000)
  DestroyItem("DASBOOT")  
  ~ GOTO 24C_1_4
END

IF ~~ THEN BEGIN 24C_1_4
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM06",1,1,1)  GiveItem("P_FITM06", LastTalkedToBy)~ EXIT
END

//5
IF ~~ THEN BEGIN 24C_5 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItem("MOVE7")
  DestroyGold(15000)
  DestroyItem("MOVE7")  
  ~ GOTO 24C_1_5
END

IF ~~ THEN BEGIN 24C_1_5
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM06",1,1,1)  GiveItem("P_FITM06", LastTalkedToBy)~ EXIT
END


// BOTAS ARCANAS
IF ~~ THEN BEGIN 24D // from:
  SAY @97549 /* ~De acuerdo. Necesitar� de tus botas de velocidad.~ */
    IF ~PartyHasItem("BOOT01")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24D_1
    IF ~PartyHasItem("TROLLBOO")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24D_2
    IF ~PartyHasItem("BOOTDRIZ")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24D_3
    IF ~PartyHasItem("DASBOOT")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24D_4
    IF ~PartyHasItem("MOVE7")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24D_5
    IF ~~ THEN REPLY @97556 /* Acabo de cambiar de opini�n, Acrull. Debo pensarlo un poco m�s. */  GOTO 4E
END

//1
IF ~~ THEN BEGIN 24D_1 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItem("BOOT01")
  DestroyGold(15000)
  DestroyItem("BOOT01")  
  ~ GOTO 24D_1_1
END

IF ~~ THEN BEGIN 24D_1_1
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM07",1,1,1)  GiveItem("P_FITM07", LastTalkedToBy)~ EXIT
END

//2
IF ~~ THEN BEGIN 24D_2 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItem("TROLLBOO")
  DestroyGold(15000)
  DestroyItem("TROLLBOO")  
  ~ GOTO 24D_1_2
END

IF ~~ THEN BEGIN 24D_1_2
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM07",1,1,1)  GiveItem("P_FITM07", LastTalkedToBy)~ EXIT
END

//3
IF ~~ THEN BEGIN 24D_3 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItem("BOOTDRIZ")
  DestroyGold(15000)
  DestroyItem("BOOTDRIZ")  
  ~ GOTO 24D_1_3
END

IF ~~ THEN BEGIN 24D_1_3
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM07",1,1,1)  GiveItem("P_FITM07", LastTalkedToBy)~ EXIT
END

//4
IF ~~ THEN BEGIN 24D_4 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItem("DASBOOT")
  DestroyGold(15000)
  DestroyItem("DASBOOT")  
  ~ GOTO 24D_1_4
END

IF ~~ THEN BEGIN 24D_1_4
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM07",1,1,1)  GiveItem("P_FITM07", LastTalkedToBy)~ EXIT
END

//5
IF ~~ THEN BEGIN 24D_5 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItem("MOVE7")
  DestroyGold(15000)
  DestroyItem("MOVE7")  
  ~ GOTO 24D_1_5
END

IF ~~ THEN BEGIN 24D_1_5
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM07",1,1,1)  GiveItem("P_FITM07", LastTalkedToBy)~ EXIT
END

// BOTAS ENDURECIDAS
IF ~~ THEN BEGIN 24E // from:
  SAY @97549 /* ~De acuerdo. Necesitar� de tus botas de velocidad.~ */
    IF ~PartyHasItem("BOOT01")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24E_1
    IF ~PartyHasItem("TROLLBOO")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24E_2
    IF ~PartyHasItem("BOOTDRIZ")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24E_3
    IF ~PartyHasItem("DASBOOT")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24E_4
    IF ~PartyHasItem("MOVE7")~ THEN REPLY @97550 /* Claro. Aqu� tienes. *Entregas un par de botas de velocidad* */  GOTO 24E_5
    IF ~~ THEN REPLY @97556 /* Acabo de cambiar de opini�n, Acrull. Debo pensarlo un poco m�s. */  GOTO 4E
END

//1
IF ~~ THEN BEGIN 24E_1 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(12500) TakePartyItem("BOOT01")
  DestroyGold(12500)
  DestroyItem("BOOT01")  
  ~ GOTO 24E_1_1
END

IF ~~ THEN BEGIN 24E_1_1
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM08",1,1,1)  GiveItem("P_FITM08", LastTalkedToBy)~ EXIT
END

//2
IF ~~ THEN BEGIN 24E_2 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(12500) TakePartyItem("TROLLBOO")
  DestroyGold(12500)
  DestroyItem("TROLLBOO")  
  ~ GOTO 24E_1_2
END

IF ~~ THEN BEGIN 24E_1_2
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM08",1,1,1)  GiveItem("P_FITM08", LastTalkedToBy)~ EXIT
END

//3
IF ~~ THEN BEGIN 24E_3 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(12500) TakePartyItem("BOOTDRIZ")
  DestroyGold(12500)
  DestroyItem("BOOTDRIZ")  
  ~ GOTO 24E_1_3
END

IF ~~ THEN BEGIN 24E_1_3
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM08",1,1,1)  GiveItem("P_FITM08", LastTalkedToBy)~ EXIT
END

//4
IF ~~ THEN BEGIN 24E_4 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(12500) TakePartyItem("DASBOOT")
  DestroyGold(12500)
  DestroyItem("DASBOOT")  
  ~ GOTO 24E_1_4
END

IF ~~ THEN BEGIN 24E_1_4
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM08",1,1,1)  GiveItem("P_FITM08", LastTalkedToBy)~ EXIT
END

//5
IF ~~ THEN BEGIN 24E_5 // from:
  SAY @97551 /* ~Muy bien. No me tomar� mucho tiempo aplicar los encantamientos necesarios...~ */
  IF ~~ THEN DO ~TakePartyGold(12500) TakePartyItem("MOVE7")
  DestroyGold(12500)
  DestroyItem("MOVE7")  
  ~ GOTO 24E_1_5
END

IF ~~ THEN BEGIN 24E_1_5
  SAY @97552 /* ~Bien. El trabajo est� hecho, caminante. Aqu� tienes. Si tienes otro par, no dudes en venir.~ */
  IF ~~ THEN DO ~CreateItem ("P_FITM08",1,1,1)  GiveItem("P_FITM08", LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY @97558 /* ~Los habitantes de las Setas sufren por las guerras aleda�as a nuestra naci�n, Fall. Hakamir me ha convencido de ayudarle a reunir oro para recuperar las p�rdidas de comercios y el da�o que los cazadores furtivos han infligido a los nuestros.~ */
  IF ~~ THEN EXTERN ~P_HAKAM~ 8
END

I_C_T P_ACRULL 25 P_Fall_ACRULL_HAKAM_MET01
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97559 /* Comprendo. �Hay algo que pueda hacer para ayudar? */
== P_HAKAM IF ~~ THEN @97560 /* Puedes convencer a tu amigo de que nos compre algunos artefactos si lo desea. No son baratos, eso s�. Pero valen la pena por sus encantamientos. */
== P_HAKAM IF ~~ THEN @97561 /* Nuestro buen druida est� m�s que dispuesto a brindar sus famosos refuerzos m�gicos en botas, �no es as�, Acrull? */
== P_ACRULL IF ~~ THEN @97562 /* Es verdad, Fall. Si tienen Botas de Velocidad podr� mejorarlas. Si fuese por m� lo har�a gratis, pero Hakamir dice que necesitamos el oro y no podemos dispensar de su uso. */
== P_HAKAM IF ~~ THEN @97563 /* Afortunadamente, nuestro nuevo amigo, Mathyus Davis, nos permite estar aqu� sin cobrarnos nada. */
== P_MATUT IF ~~ THEN @97564 /* *carraspeo* T�cnicamente este sitio pertenece a un tal Aran Linvail. Lo he rentado a cambio de un buen arco Shilmista. Le gustan las cosas �lficas, �sabes? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97565 /* Eso explica muchas cosas. Te has hecho un buen negocio, Mathyus. */
== P_MATUT IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97566 /* Por supuesto, Capit�n. Tu servidor, Mathyus Davis, es tan bueno con el arco como con la labia. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97567 /* Es bueno saber que est�n haciendo algo por Brost, mis buenos amigos. Madre estar�a orgullosa de ustedes. */
== P_HAKAM IF ~~ THEN @97568 /* Por cierto, �d�nde se encuentra Gemystara? Cre� que la encontrar�amos aqu�, pero no he sabido de ella, Fall. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97569 /* Yo... prefiero no hablar de ello, Hakamir, espero que lo entiendas. */
== P_HAKAM IF ~~ THEN @97570 /* Ya... veo. De acuerdo, Fall. No me inmiscuir� donde no me llaman. */
== P_ACRULL IF ~~ THEN @97571 /* Si est�s en aprietos, sabes que pueden acudir a nosotros, ni�a. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97572 /* Lo s�, Acrull. Gracias. Por ahora, puede que <CHARNAME> pueda ayudarles comprando alguno de sus objetos. */
END

I_C_T P_ACRULL 9 P_Fall_9ACRULL3_QUEST2
== P_ACRULL IF ~~ THEN @97522 /* �Puedo... puedo examinar lo que queda de la criatura? */
== P_ACRULL IF ~~ THEN @97523 /* Interesante. Su composici�n es muy valiosa por lo que puedo ver. Se puede extraer de ella un poderoso veneno. */ DO ~TakePartyItem("p_hgormu") DestroyItem("p_hgormu") CreateItem("p_hgorms",1,1,1)~
== P_ACRULL IF ~~ THEN @97524 /* Los mercaderes te dar�n una buena suma de oro por ella. Puede que exista alguien que pueda forjar algo de ella, pero lo dudo. */ DO ~GiveItem("p_hgorms", LastTalkedToBy)~
END

I_C_T P_ACRULL 3 P_Fall_ACRULL3_QUEST1
== P_ACRULL IF ~~ THEN @9759 /* En mi poder poseo una de las escamas que supo pertenecer a la criatura a la que le dar�n caza. */
== P_ACRULL IF ~~ THEN @97510 /* Al ser una criatura planar y yo poseer una conexi�n con esta tierra, me permitir� abrir un portal temporal hacia su guarida. */
== P_ACRULL IF ~~ THEN @97511 /* El lugar al que ir�n es peligroso, aunque en un principio, posiblemente, no se encuentren con ning�n enemigo. */
== P_ACRULL IF ~~ THEN @97512 /* Fall, cuando lleguen a ese lugar, debes invocar a Kitochi. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97514 /* Entendido. */
== P_ACRULL IF ~~ THEN @97515 /* Cuando tu amigo est� con vosotros, ten en cuenta que atraer� a Gorm y el combate, inevitablemente, comenzar�. */
== P_ACRULL IF ~~ THEN @97516 /* Recomiendo que se preparen antes de que eso suceda. */
== P_ACRULL IF ~~ THEN @97517 /* Ten en cuenta que una vez que viajen no podr�n regresar a menos que la criatura est� muerta.  */
== P_ACRULL IF ~~ THEN @97518 /* Una vez que la derroten, debes tomar alguna parte de su cuerpo para que yo pueda abrir un portal de regreso al Plano Material. */
END


I_C_T P_ACRULL 19B P_Fall_9ACRULL3_DANCT1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97576 /* ... */
END

I_C_T P_ACRULL 20B P_Fall_9ACRULL3_DANCT2
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @97581 /* Extra�amente, Acrull tiene raz�n. No parece ser una criatura maligna, no al menos en los conceptos que nosotros manejamos. Su inferencia es m�s cercana al Equilibrio de lo que me gustar�a admitir. Eso no quiere decir que debamos dejar de observarlo, s�lo por si acaso. */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @97582 /* Como el escarabajo de la corteza que ataca los �rboles ancianos, mat�ndolos, as� es la presencia de Danctian en este Plano, <CHARNAME>. Pero la muerte del �rbol se convierte en alimento de hongos, musgos y peque�os animales. Perpetuar la vida a ra�z de la muerte es una forma de mantener el Equilibrio.  */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @97582 /* Su presencia, aunque inc�moda, no distorsiona el Equilibrio, sino que, extra�amente, lo mantiene. Al menos, por ahora. �Puede el escarabajo evolucionar en una fuerza antinatural? No lo creo, pero no podr�a decir lo mismo de un demonio sombr�o. Debemos estar atentos.  */
END

I_C_T P_ACRULL 20B P_Fall_9ACRULL3_DANCT3
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @97582 /* Como el escarabajo de la corteza que ataca los �rboles ancianos, mat�ndolos, as� es la presencia de Danctian en este Plano, <CHARNAME>. Pero la muerte del �rbol se convierte en alimento de hongos, musgos y peque�os animales. Perpetuar la vida a ra�z de la muerte es una forma de mantener el Equilibrio.  */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @97582 /* Su presencia, aunque inc�moda, no distorsiona el Equilibrio, sino que, extra�amente, lo mantiene. Al menos, por ahora. �Puede el escarabajo evolucionar en una fuerza antinatural? No lo creo, pero no podr�a decir lo mismo de un demonio sombr�o. Debemos estar atentos.  */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @97581 /* Extra�amente, Acrull tiene raz�n. No parece ser una criatura maligna, no al menos en los conceptos que nosotros manejamos. Su inferencia es m�s cercana al Equilibrio de lo que me gustar�a admitir. Eso no quiere decir que debamos dejar de observarlo, s�lo por si acaso. */
END