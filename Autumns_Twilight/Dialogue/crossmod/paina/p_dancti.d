BEGIN p_dancti

// 1st Appearance
IF ~Global("P_DanctianAppear","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @10500000 /* ~Libre... al fin...~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",4)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @10500001 /* ~Ardusk Aldant y <CHARNAME>. Os debo mi lealtad...~ */
    IF ~~ THEN REPLY @10500002 /* ~¡¿Un demonio sombrío?! Dusk, ¡en guardia! Debemos acabar con él.~ */  GOTO 2
	IF ~~ THEN REPLY @10500003 /* ~¡Por Candelero! ¿Quién rayos eres tú?~ */  GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY @10500004 /* ~No debes temer por mí, hijo de Bhaal. No creo ser la primer criatura no hostil que conozcas. Al igual que Ardusk, mi lealtad estará contigo siempre y cuando él te acompañe.~ ~No debes temer por mí, hija de Bhaal. No creo ser la primer criatura no hostil que conozcas. Al igual que Ardusk, mi lealtad estará contigo siempre y cuando él te acompañe.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY @10500010 /* ~No hay necesidad de emplear la violencia aquí y ahora, hijo de Bhaal. No pretendo atacaros.~ ~No hay necesidad de emplear la violencia aquí y ahora, hija de Bhaal. No pretendo atacaros.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 4 // from:
  SAY @10500005 /* ~Mi nombre es Danctian Shadow. Puede que mi apellido sea redundante, pero así es, según recuerdo, como me llamo.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @10500006 /* ~Durante un breve tiempo fui utilizado como canalizador entre el Pandemonium y este plano. La Orden de Hechiceros que persigue a Dusk está interesada también en hacer contacto directo con el Plano de Energía Negativa.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10500007 /* ~Presiento que está relacionado con la nigromancia, debido a la escuela de especialización de su líder.~ */
  IF ~~ THEN REPLY @10500008 /* ~No comprendo por qué nos cuentas esto. ¿Acaso pretendes que confiemos en ti?~ */  GOTO 7
  IF ~~ THEN REPLY @10500009 /* ~Apareces de la nada y tu energía demoníaca es demasiado evidente. Dame una buena razón por la que no deba destruirte aquí y ahora.~ */  GOTO 3
END

IF ~~ THEN BEGIN 7 // from:
  SAY @10500011 /* ~Si confías en Ardusk, entonces podrás confiar en mí. Estoy atado a su voluntad, puesto a que... he tomado parte de su energía vital para poder materializarme en este plano.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @10500012 /* ~Pero basta de explicaciones... Veo que tienes una pregunta en particular, mortal, ¿no es así?~ */
  IF ~PartyHasItem("p_restos")~ THEN REPLY @10500013 /* ~¿Qué utilidad tendrás para nosotros? Al menos el leprechaun servía para forjarnos cosas.~ */ GOTO 9
  IF ~!PartyHasItem("p_restos")~ THEN REPLY @10500013 /* ~¿Qué utilidad tendrás para nosotros? Al menos el leprechaun servía para forjarnos cosas.~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from:
  SAY @10500015 /* ~He absorbido el poder de la criatura mágica. Puedo manipular su poder de creación con una considerable mejora. ¿Aún tienen su libro de recetas? Puedo forjar esos artefactos sin necesidad de oro, aunque el resto de los ingredientes siguen siendo necesarios.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from:
  SAY @10500015 /* ~He absorbido el poder de la criatura mágica. Puedo manipular su poder de creación con una considerable mejora. ¿Aún tienen su libro de recetas? Puedo forjar esos artefactos sin necesidad de oro, aunque el resto de los ingredientes siguen siendo necesarios.~ */
  IF ~~ THEN GOTO 81 // SEGUIR MAS ADELANTE
END

IF ~~ THEN BEGIN 11 // from:
  SAY @10500017 /* ~De hecho, veo que has obtenido un cargamento cormyreano de tu reciente... expedición en su batalla contra Alabarza. Nos será muy útil, ya verás.~ */
  IF ~~ THEN DO ~TakePartyItem("P_RESTOS") DestroyItem ("P_RESTOS")~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @10500018 /* ~Puedo forjar artefactos especiales para ustedes. Incluso algo más... personalizado para tus compañeros, hijo de Bhaal.~ ~Puedo forjar artefactos especiales para ustedes. Incluso algo más... personalizado para tus compañeros, hija de Bhaal.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @10500084 /* ~En cuanto a ti, hijo de Bhaal, podemos hacer una de varias cosas: Puedo recompensarte con una buena cantidad de oro y algunos tomos especiales que he sido capaz de recopilar. Cien mil piezas de oro y seis tomos mágicos para mejorar aptitudes. Esa sería una opción.~ ~En cuanto a ti, hija de Bhaal, podemos hacer una de varias cosas: Puedo recompensarte con una buena cantidad de oro y algunos tomos especiales que he sido capaz de recopilar. Cien mil piezas de oro y seis tomos mágicos para mejorar aptitudes. Esa sería una opción.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from:
  SAY @10500085 /* ~También puedes optar por varios objetos mágicos que puedo llegar a recuperar del cargamento. Entre ellos contarías con una katana, dos ninja-to, una armadura y una gema mágica. Todos esos objetos mágicos pueden ser tuyos.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @10500086 /* ~Y como última opción, una poderosa espada legendaria. Se llama Mugenjin, y es el arma perfecta para alguien destinado al Asesinato. Como aún no la he forjado, puedo hacer que elijas qué tipo de arma será: una espada larga, una katana, una cimitarra o un mandoble. Eso sí, debes tener en cuenta que el arma no podrá ser blandida por aquellos que se rijan en lo legal.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @10500087 /* ~Muy bien, ¡entonces, hijo de Bhaal! ¿Qué será?~ ~Muy bien, ¡entonces, hija de Bhaal! ¿Qué será?~ */
  IF ~~ THEN REPLY @10500088 /* ~A devir verdad, Danctian, cien mil piezas de oro y esos tomos no suenan mal. Elijo esa opción.~ */ GOTO 17
  IF ~~ THEN REPLY @10500089 /* ~Nada le gana a un buen puñado de objetos mágicos, demonio. Prefiero eso antes que cualquier cosa.~ */ GOTO 18
  IF ~~ THEN REPLY @10500090 /* ~La espada legendaria, Danctian.~ */ GOTO 19
END

// CHEQUEAR LOS ENTRIES
IF ~~ THEN BEGIN 17 // from:
  SAY @10500091 /* ~Excelente elección, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aquí y os agradezco por mi liberación. Os aseguro que no se arrepentirán de ello. Estaré aquí por si necesitan forjar algún artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscaré... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  GiveGoldForce(100000) AddexperienceParty(100000)
  CreateItem ("BOOK03",1,2,1)  GiveItem("BOOK03", LastTalkedToBy)
  CreateItem ("BOOK04",1,2,1)  GiveItem("BOOK04", LastTalkedToBy)
  CreateItem ("BOOK05",1,2,1)  GiveItem("BOOK05", LastTalkedToBy)
  CreateItem ("BOOK06",1,2,1)  GiveItem("BOOK06", LastTalkedToBy)
  CreateItem ("BOOK07",1,2,1)  GiveItem("BOOK07", LastTalkedToBy)
  CreateItem ("BOOK08",1,2,1)  GiveItem("BOOK08", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY @10500091 /* ~Excelente elección, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aquí y os agradezco por mi liberación. Os aseguro que no se arrepentirán de ello. Estaré aquí por si necesitan forjar algún artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscaré... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_CHAN99",1,2,1)  GiveItem("P_CHAN99", LastTalkedToBy)
  CreateItem ("p_sw1h01",1,2,1)  GiveItem("p_sw1h01", LastTalkedToBy)
  CreateItem ("P_SW1H02",1,2,1)  GiveItem("P_SW1H02", LastTalkedToBy)
  CreateItem ("P_SW1H05",1,2,1)  GiveItem("P_SW1H05", LastTalkedToBy)
  CreateItem ("P_NBK01",1,2,1)  GiveItem("P_NBK01", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY @10500092 /* ~¿Qué tipo de arma quieres obtener?~ */
  IF ~~ THEN REPLY @10500093 /* ~Una espada larga.~ */ GOTO 20
  IF ~~ THEN REPLY @10500094 /* ~Una katana.~ */ GOTO 21
  IF ~~ THEN REPLY @10500095 /* ~Una cimitarra.~ */ GOTO 22
  IF ~~ THEN REPLY @10500096 /* ~Un mandoble.~ */ GOTO 23
  IF ~~ THEN REPLY @10500097 /* ~Hm... he cambiado de opinión. Prefiero elegir otra cosa.~ */ GOTO 16
END

IF ~~ THEN BEGIN 20 // from:
  SAY @10500091 /* ~Excelente elección, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aquí y os agradezco por mi liberación. Os aseguro que no se arrepentirán de ello. Estaré aquí por si necesitan forjar algún artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscaré... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H13",1,2,1)  GiveItem("P_SW1H13", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY @10500091 /* ~Excelente elección, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aquí y os agradezco por mi liberación. Os aseguro que no se arrepentirán de ello. Estaré aquí por si necesitan forjar algún artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscaré... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H03",1,2,1)  GiveItem("P_SW1H03", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY @10500091 /* ~Excelente elección, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aquí y os agradezco por mi liberación. Os aseguro que no se arrepentirán de ello. Estaré aquí por si necesitan forjar algún artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscaré... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H33",1,2,1)  GiveItem("P_SW1H33", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY @10500091 /* ~Excelente elección, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aquí y os agradezco por mi liberación. Os aseguro que no se arrepentirán de ello. Estaré aquí por si necesitan forjar algún artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscaré... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H23",1,2,1)  GiveItem("P_SW1H23", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

//// FORJAR ITEMS

IF ~Global("P_DuskDanctialMISSION","GLOBAL",0) Global("P_Danctian_Forge","GLOBAL",0)Global ("P_Dusk_Dancti_Enc_MF","GLOBAL",0)~ THEN BEGIN 24 // from:
  SAY @10500098 /* ~Os saludo, mortal. ¿Has venido a forjar algún artefacto? Me aseguraré de obtener un resultado eficiente, en especial para aquellos que son allegados a Ardusk. Y recuerden... el uso de mis poderes no requiere de oro.~ */
  IF ~~ THEN REPLY @10500099 /* ~Aún no hemos logrado reunir lo necesario, Danctian.~ */ GOTO 25 //52
  
  //Espada de Disrupción
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_swr1") PartyHasItem("SCRL09") PartyHasItem("MISC40") PartyHasItem("MISC19") PartyHasItem("MISC44") PartyHasItem("BOOK89")~ THEN REPLY @10500101 /* ~Danctian, hemos conseguido lo necesario para mejorar la espada de Dusk.~ */ GOTO 26 // 53
  
  // Defensa de Cormyr
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_dchan1") PartyHasItem("p_brkshl") PartyHasItem("MISC35") PartyHasItem("MISC38")~ THEN REPLY @10500113 /* ~Danctian, hemos conseguido lo necesario para mejorar la armadura de Dusk.~ */ GOTO 34
  
  // Brazales de Defensa Pétrea	
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 0) PartyHasItem("brac01") PartyHasItem("SCRL15") PartyHasItem("misc23") ~ THEN REPLY @10500116 /* ~Danctian, hemos conseguido lo necesario para crear los Brazales de Defensa Pétrea.~ */ GOTO 40
  
  
  // Crimson Thunder
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 0) PartyHasItem("HAMM03") PartyHasItem("STAF13") PartyHasItem("SCRL1K") PartyHasItem("WAND04") PartyHasItem("AMUL13") PartyHasItem("RING19") ~ THEN REPLY @10500119 /* ~Danctian, hemos conseguido lo necesario para crear el martillo: Trueno Escarlata.~ */ GOTO 45
   
  
  // Fuego Salvaje
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 0) PartyHasItem("LEAT09") PartyHasItem("MISC16") PartyHasItem("SCRL06") PartyHasItem("AMUL24")  ~ THEN REPLY @10500121 /* ~Danctian, hemos conseguido lo necesario para crear la armadura Fuego Salvaje.~ */ GOTO 50
  
  
  // Venom Strike
  IF ~Global ("p_venom_strike", "GLOBAL", 0) PartyHasItem("BLUN17") PartyHasItem("SCRL08") PartyHasItem("SCRL1Q") PartyHasItem("POTN42") PartyHasItem("MISC31") PartyHasItem("MISC37")  ~ THEN REPLY @10500123 /* ~Danctian, hemos conseguido lo necesario para crear el mayal Golpe de Veneno.~ */ GOTO 55
  
  
  
  // Colmillo de Larloch
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 0)  PartyHasItem("POTN22") PartyHasItem("MISC26") PartyHasItem("SCRL84") PartyHasItem("HELM06") 
  OR (2)
  PartyHasItem("AX1H02")
  PartyHasItem("KORAX01")~ THEN REPLY @10500125 /* ~Danctian, hemos conseguido lo necesario para forjar el Colmillo de Larloch.~ */ GOTO 60
   
  
  // Ventisca del Averno
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 0) PartyGoldGT(12499) PartyHasItem("SW1H42") PartyHasItem("SCRL04") PartyHasItem("MISC17") PartyHasItem("MISC33") PartyHasItem("MISC42") ~ THEN REPLY @10500127 /* ~Danctian, hemos conseguido lo necesario para forjar la Ventisca del Averno.~ */ GOTO 65
  
  
  
  
  
  // Vengadora Real
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("P_WSSTP_vengadora_real", "GLOBAL", 0) PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2") OR(2) PartyHasItem("p_wsboot") PartyHasItem("p_wsboo2")~ THEN REPLY @10500129 /* ~Danctian, hemos conseguido los artefactos del Duque Benork.~ */ GOTO 70




  // Gema del Dragón Púrpura
  IF ~PartyHasItem("p_gemdr1")~ THEN REPLY @10500134 /* ~Danctian, queremos forjar algo con la Amatista del Dragón Púrpura.~ */ GOTO 74
END


IF ~~ THEN BEGIN 25 // from:
  SAY @10500100 /* ~Ya veo. Estaré aquí por si me necesitan. Los estaré esperando... en las sombras...~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY @10500102 /* ~Es una gran noticia, mortal. Entonces, ¿procedo?~ */
  IF ~~ THEN REPLY @10500103 /* ~Por supuesto.~ */ GOTO 27
  IF ~~ THEN REPLY @10500104 /* ~Aún no, Danctian. Quizás más adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 27 // from:
  SAY @10500105 /* ~De acuerdo, mortal. Verás que mi obra no tiene nada que envidiar a aquella criatura mágica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_sw1hdr_disrupcion", "GLOBAL", 1)~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from:
  SAY @10500106 /* ~Ardusk, entrégame tu espada. Usaré mis poderes para mejorarla en sobremanera.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 305
END

IF ~~ THEN BEGIN 29 // from:
  SAY @10500107 /* ~Os lo aseguro, Ardusk... estarás complacido con los resultados. Ahora... ¡A un lado!~ */
  IF ~~ THEN DO ~TakePartyItem("p_swr1") 
  TakePartyItem("SCRL09")
  TakePartyItem("MISC40")
  TakePartyItem("MISC19")
  TakePartyItem("MISC44")
  TakePartyItem("BOOK89")
  DestroyItem("p_swr1")
  DestroyItem("SCRL09")
  DestroyItem("MISC40")
  DestroyItem("MISC19")
  DestroyItem("MISC44")
  DestroyItem("BOOK89")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~Global("P_Danctian_Forge","GLOBAL",2)~ THEN BEGIN 30 // from:
  SAY @10500108 /* ~(Al parecer, el ritual ha terminado y el demonio parece estar impasible ante tal evento)~ */
 IF ~~ THEN DO ~SetGlobal("P_Danctian_Forge","GLOBAL",0)
 ~ GOTO 31
END

// Entrega de ITEMS

IF ~~ THEN BEGIN 31 // from:
  SAY @10500109 /* ~El ritual ha finalizado, mortal.~ */
  
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 1)~ THEN REPLY @10500110 /* ~¿Cómo ha salido todo, Danctian?~ */ GOTO 32
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 1)~ THEN REPLY @10500110 /* ~¿Cómo ha salido todo, Danctian?~ */ GOTO 38
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 1)~ THEN REPLY @10500110 /* ~¿Cómo ha salido todo, Danctian?~ */ GOTO 43
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 1)~ THEN REPLY @10500110 /* ~¿Cómo ha salido todo, Danctian?~ */ GOTO 48
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 1)~ THEN REPLY @10500110 /* ~¿Cómo ha salido todo, Danctian?~ */ GOTO 53
  IF ~Global ("p_venom_strike", "GLOBAL", 1)~ THEN REPLY @10500110 /* ~¿Cómo ha salido todo, Danctian?~ */ GOTO 58
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 1)~ THEN REPLY @10500110 /* ~¿Cómo ha salido todo, Danctian?~ */ GOTO 63
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 1)~ THEN REPLY @10500110 /* ~¿Cómo ha salido todo, Danctian?~ */ GOTO 68
  IF ~Global ("p_platd1_salus", "GLOBAL", 1)~ THEN REPLY @10500110 /* ~¿Cómo ha salido todo, Danctian?~ */ GOTO 76
  IF ~Global ("p_sw2hdr_rex", "GLOBAL", 1)~ THEN REPLY @10500110 /* ~¿Cómo ha salido todo, Danctian?~ */ GOTO 79

END

IF ~~ THEN BEGIN 32 // from:
  SAY @10500111 /* ~La Espada de Disrupción cormyreana ha sido forjada. Es una mejora notable, Ardusk. Estoy seguro de que sabrás apreciarla.~ */
  IF ~~ THEN DO ~CreateItem ("p_sw1hdr",1,1,0)  GiveItem("p_sw1hdr", "P_Dusk")~ EXTERN ~P_DUSKJ~ 306
END

IF ~~ THEN BEGIN 33 // from:
  SAY @10500112 /* ~He hecho lo que solicitaron. Saben dónde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw1hdr_disrupcion", "GLOBAL", 2)~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @10500102 /* ~Es una gran noticia, mortal. Entonces, ¿procedo?~ */
  IF ~~ THEN REPLY @10500103 /* ~Por supuesto.~ */ GOTO 35
  IF ~~ THEN REPLY @10500104 /* ~Aún no, Danctian. Quizás más adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 35 // from:
  SAY @10500105 /* ~De acuerdo, mortal. Verás que mi obra no tiene nada que envidiar a aquella criatura mágica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_dplat1_defensa", "GLOBAL", 1)~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from:
  SAY @10500114 /* ~Ardusk, entrégame tu armadura. Usaré mis poderes para mejorarla en sobremanera.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 307
END

IF ~~ THEN BEGIN 37 // from:
  SAY @10500107 /* ~Os lo aseguro, Ardusk... estarás complacido con los resultados. Ahora... ¡A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("p_dchan1") 
  TakePartyItem("p_brkshl")
  TakePartyItem("MISC35")
  TakePartyItem("MISC38")
  DestroyItem("p_dchan1") 
  DestroyItem("p_brkshl")
  DestroyItem("MISC35")
  DestroyItem("MISC38")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY @10500115 /* ~La Defensa de Cormyr ha sido forjada. Es una mejora notable, Ardusk. Estoy seguro de que sabrás apreciarla.~ */
  IF ~~ THEN DO ~CreateItem ("p_dplat1",1,1,0)  GiveItem("p_dplat1", "P_Dusk")~ EXTERN ~P_DUSKJ~ 308
END

IF ~~ THEN BEGIN 39 // from:
  SAY @10500112 /* ~He hecho lo que solicitaron. Saben dónde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_dplat1_defensa", "GLOBAL", 2)~ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY @10500102 /* ~Es una gran noticia, mortal. Entonces, ¿procedo?~ */
  IF ~~ THEN REPLY @10500103 /* ~Por supuesto.~ */ GOTO 41
  IF ~~ THEN REPLY @10500104 /* ~Aún no, Danctian. Quizás más adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 41 // from:
  SAY @10500105 /* ~De acuerdo, mortal. Verás que mi obra no tiene nada que envidiar a aquella criatura mágica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("P_BRAC99_brazal_petreo", "GLOBAL", 1)~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from:
  SAY @10500117 /* ~Os lo aseguro, mortal... estarás complacido con los resultados. Ahora... ¡A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("brac01") 
  TakePartyItem("SCRL15")
  TakePartyItem("misc23")
  DestroyItem("brac01") 
  DestroyItem("SCRL15")
  DestroyItem("misc23")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY @10500118 /* ~Los Brazales de Defensa Pétrea han sido forjados. Estoy seguro de que sabrás apreciarla, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("P_BRAC99",1,1,0)  GiveItem("P_BRAC99", LastTalkedToBy)~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from:
  SAY @10500112 /* ~He hecho lo que solicitaron. Saben dónde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("P_BRAC99_brazal_petreo", "GLOBAL", 2)~ EXIT
END

// CRIMSON THUNDER

IF ~~ THEN BEGIN 45 // from:
  SAY @10500102 /* ~Es una gran noticia, mortal. Entonces, ¿procedo?~ */
  IF ~~ THEN REPLY @10500103 /* ~Por supuesto.~ */ GOTO 46
  IF ~~ THEN REPLY @10500104 /* ~Aún no, Danctian. Quizás más adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 46 // from:
  SAY @10500105 /* ~De acuerdo, mortal. Verás que mi obra no tiene nada que envidiar a aquella criatura mágica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_hamm1_crimson_thunder", "GLOBAL", 1)~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from:
  SAY @10500117 /* ~Os lo aseguro, mortal... estarás complacido con los resultados. Ahora... ¡A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("HAMM03") 
  TakePartyItem("STAF13")
  TakePartyItem("SCRL1K")
  TakePartyItem("WAND04") 
  TakePartyItem("AMUL13")
  TakePartyItem("RING19")
  DestroyItem("HAMM03") 
  DestroyItem("STAF13")
  DestroyItem("SCRL1K")
  DestroyItem("WAND04") 
  DestroyItem("AMUL13")
  DestroyItem("RING19")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY @10500120 /* ~El poderoso Trueno Escarlata ha sido forjado. Estoy seguro de que sabrás apreciarlo, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("p_hamm1",1,1,0)  GiveItem("p_hamm1", LastTalkedToBy)~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from:
  SAY @10500112 /* ~He hecho lo que solicitaron. Saben dónde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_hamm1_crimson_thunder", "GLOBAL", 2)~ EXIT
END

// FUEGO SALVAJE

IF ~~ THEN BEGIN 50 // from:
  SAY @10500102 /* ~Es una gran noticia, mortal. Entonces, ¿procedo?~ */
  IF ~~ THEN REPLY @10500103 /* ~Por supuesto.~ */ GOTO 51
  IF ~~ THEN REPLY @10500104 /* ~Aún no, Danctian. Quizás más adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 51 // from:
  SAY @10500105 /* ~De acuerdo, mortal. Verás que mi obra no tiene nada que envidiar a aquella criatura mágica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_leat01_fuego_salvaje", "GLOBAL", 1)~ GOTO 52
END

IF ~~ THEN BEGIN 52 // from:
  SAY @10500117 /* ~Os lo aseguro, mortal... estarás complacido con los resultados. Ahora... ¡A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("LEAT09") 
  TakePartyItem("MISC16")
  TakePartyItem("SCRL06")
  TakePartyItem("AMUL24") 
  DestroyItem("LEAT09") 
  DestroyItem("MISC16")
  DestroyItem("SCRL06")
  DestroyItem("AMUL24") 
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY @10500122 /* ~Fuego Salvaje ha sido forjado. Estoy seguro de que sabrás apreciarla, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("p_leat01",1,1,0)  GiveItem("p_leat01", LastTalkedToBy)~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @10500112 /* ~He hecho lo que solicitaron. Saben dónde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_leat01_fuego_salvaje", "GLOBAL", 2)~ EXIT
END

// VENOM STRIKE

IF ~~ THEN BEGIN 55 // from:
  SAY @10500102 /* ~Es una gran noticia, mortal. Entonces, ¿procedo?~ */
  IF ~~ THEN REPLY @10500103 /* ~Por supuesto.~ */ GOTO 56
  IF ~~ THEN REPLY @10500104 /* ~Aún no, Danctian. Quizás más adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 56 // from:
  SAY @10500105 /* ~De acuerdo, mortal. Verás que mi obra no tiene nada que envidiar a aquella criatura mágica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_venom_strike", "GLOBAL", 1)~ GOTO 57
END

IF ~~ THEN BEGIN 57 // from:
  SAY @10500117 /* ~Os lo aseguro, mortal... estarás complacido con los resultados. Ahora... ¡A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("BLUN17") 
  TakePartyItem("SCRL08")
  TakePartyItem("SCRL1Q")
  TakePartyItem("POTN42") 
  TakePartyItem("MISC31")
  TakePartyItem("MISC37") 
  DestroyItem("BLUN17") 
  DestroyItem("SCRL08")
  DestroyItem("SCRL1Q")
  DestroyItem("POTN42") 
  DestroyItem("MISC31")
  DestroyItem("MISC37") 
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY @10500124 /* ~El mayal Golpe de Veneno ha sido forjado. Estoy seguro de que sabrás apreciarlo, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("p_venom",1,1,0)  GiveItem("p_venom", LastTalkedToBy)~ GOTO 59
END

IF ~~ THEN BEGIN 59 // from:
  SAY @10500112 /* ~He hecho lo que solicitaron. Saben dónde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_venom_strike", "GLOBAL", 2)~ EXIT
END

// Colmillo de LARLOCH

IF ~~ THEN BEGIN 60 // from:
  SAY @10500102 /* ~Es una gran noticia, mortal. Entonces, ¿procedo?~ */
  IF ~~ THEN REPLY @10500103 /* ~Por supuesto.~ */ GOTO 61
  IF ~~ THEN REPLY @10500104 /* ~Aún no, Danctian. Quizás más adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 61 // from:
  SAY @10500105 /* ~De acuerdo, mortal. Verás que mi obra no tiene nada que envidiar a aquella criatura mágica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_sw1h00_colmillo_larloch", "GLOBAL", 1)~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from:
  SAY @10500117 /* ~Os lo aseguro, mortal... estarás complacido con los resultados. Ahora... ¡A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("AX1H02")
  TakePartyItem("KORAX01")
  TakePartyItem("POTN22")
  TakePartyItem("MISC26")
  TakePartyItem("SCRL84") 
  TakePartyItem("HELM06")
  DestroyItem("AX1H02") 
  DestroyItem("KORAX01") 
  DestroyItem("POTN22")
  DestroyItem("MISC26")
  DestroyItem("SCRL84") 
  DestroyItem("HELM06")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY @10500126 /* ~El Colmillo de Larloch ha sido forjado. Estoy seguro de que sabrás apreciarlo, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("p_sw1h00",1,1,0)  GiveItem("p_sw1h00", LastTalkedToBy)~ GOTO 64
END

IF ~~ THEN BEGIN 64 // from:
  SAY @10500112 /* ~He hecho lo que solicitaron. Saben dónde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw1h00_colmillo_larloch", "GLOBAL", 2)~ EXIT
END

// Ventisca del Averno

IF ~~ THEN BEGIN 65 // from:
  SAY @10500102 /* ~Es una gran noticia, mortal. Entonces, ¿procedo?~ */
  IF ~~ THEN REPLY @10500103 /* ~Por supuesto.~ */ GOTO 66
  IF ~~ THEN REPLY @10500104 /* ~Aún no, Danctian. Quizás más adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 66 // from:
  SAY @10500105 /* ~De acuerdo, mortal. Verás que mi obra no tiene nada que envidiar a aquella criatura mágica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_sw1h06_ventisca_averno", "GLOBAL", 1)~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from:
  SAY @10500117 /* ~Os lo aseguro, mortal... estarás complacido con los resultados. Ahora... ¡A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("SW1H42") 
  TakePartyItem("SCRL04")
  TakePartyItem("MISC17")
  TakePartyItem("MISC33") 
  TakePartyItem("MISC42")
  DestroyItem("SW1H42") 
  DestroyItem("SCRL04")
  DestroyItem("MISC17")
  DestroyItem("MISC33") 
  DestroyItem("MISC42")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY @10500128 /* ~La Ventisca del Averno ha sido forjada. Estoy seguro de que sabrás apreciarla, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("p_sw1h06",1,1,0)  GiveItem("p_sw1h06", LastTalkedToBy)~ GOTO 69
END

IF ~~ THEN BEGIN 69 // from:
  SAY @10500112 /* ~He hecho lo que solicitaron. Saben dónde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw1h06_ventisca_averno", "GLOBAL", 2)~ EXIT
END

// VENGADORA REAL

IF ~~ THEN BEGIN 70 // from:
  SAY @10500130 /* ~Hmm... interesante. La criatura mágica de Shilmista tenía el último artefacto del fallecido Benork. Ahora, la Vengadora Real está en mi poder.~ */
  IF ~~ THEN DO ~SetGlobal ("P_WSSTP_vengadora_real", "GLOBAL", 1)~ 
        REPLY @10500131 /* ~No ha sido fácil conseguir todos los artefactos, Danctian. ¿Nos darás la última pieza del Conjunto del Asesino de Magos?~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from:
  SAY @10500132 /* ~Nada me daría más placer que ver el Conjuto del Asesino de Magos completo en tu poder, mi <LADYLORD>. Después de todo, tú y Ardusk han colaborado en mi liberación del Pandemonium.~ */
  IF ~~ THEN DO ~CreateItem ("P_WSSTP",1,1,0)  GiveItem("P_WSSTP", LastTalkedToBy)~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from:
  SAY @10500133 /* ~Han logrado lo impensado, mortales. Hoy, han dado un paso más cerca en su justa búsqueda por acumular poder. Como el velo de la noche cae inexorable sobre la luz, así lo hará el acero que blanden sus manos sobre el corazón del enemigo...~ */
  IF ~~ DO ~SetGlobal ("P_VENGADORA_FIN", "GLOBAL", 1)~ EXIT
END

// AMATISTA DEL DRAGON PURPURA

IF ~~ THEN BEGIN 74 // from:
  SAY @10500135 /* ~Ah, ya veo... pues bien, mortal. ¿Qué es lo que forjaremos con ella?~ */
  IF ~PartyHasItem("p_dplat1")~ THEN REPLY @10500136 /* ~Vamos a mejorar la armadura, Danctian: Defensa de Cormyr.~ */ GOTO 75
  IF ~PartyHasItem("p_sw1hdr")~ THEN REPLY @10500137 /* ~Vamos a mejorar el arma, Danctian: la Espada de Disrupción.~ */ GOTO 78
  IF ~~ THEN REPLY @10500104 /* ~Aún no, Danctian. Quizás más adelante.~ */ GOTO 25
END

// SALUS

IF ~~ THEN BEGIN 75 // from:
  SAY @10500138 /* ~De acuerdo, mortal. Obtendrás una armadura legendaria al combinarla con el poder de la Amatista. Ahora, hazte a un lado y sé testigo de ello...~ */
  IF ~~ THEN DO ~SetGlobal ("p_platd1_salus", "GLOBAL", 1)
  TakePartyItem("p_gemdr1") 
  TakePartyItem("p_dplat1")
  DestroyItem("p_gemdr1") 
  DestroyItem("p_dplat1")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY @10500139 /* ~Salus ha sido forjada. Es el epítome defensivo para un Asesino de Magos, mi <LADYLORD>. Sólo Ardusk puede usarla.~ */
  IF ~~ THEN DO ~CreateItem ("p_platd1",1,2,1)  GiveItem("p_platd1", LastTalkedToBy)SetGlobal ("p_platd1_salus", "GLOBAL", 2) ~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from:
  SAY @10500112 /* ~He hecho lo que solicitaron. Saben dónde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_platd1_salus", "GLOBAL", 2)~ EXIT
END

// REX

IF ~~ THEN BEGIN 78 // from:
  SAY @10500141 /* ~De acuerdo, mortal. Obtendrás una espada legendaria al combinarla con el poder de la Amatista. Ahora, hazte a un lado y sé testigo de ello...~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw2hdr_rex", "GLOBAL", 1)
  TakePartyItem("p_gemdr1") 
  TakePartyItem("p_sw1hdr")
  DestroyItem("p_gemdr1") 
  DestroyItem("p_sw1hdr")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY @10500142 /* ~Rex ha sido forjada. Es el epítome ofensivo para un Asesino de Magos, mi <LADYLORD>. Sólo Ardusk puede blandirla.~ */
  IF ~~ THEN DO ~CreateItem ("p_sw2hdr",1,2,1)  GiveItem("p_sw2hdr", LastTalkedToBy)SetGlobal ("p_sw2hdr_rex", "GLOBAL", 2) ~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from:
  SAY @10500112 /* ~He hecho lo que solicitaron. Saben dónde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw2hdr_rex", "GLOBAL", 2)~ EXIT
END

// MISSION 3 FINAL SIN p_restos

IF ~~ THEN BEGIN 81 // from:
  SAY @10500144 /* ~De nuevo, os felicito por lo que han logrado aquí y os agradezco por mi liberación. Os aseguro que no se arrepentirán de ello. Estaré aquí por si necesitan forjar algún artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscaré... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H23",1,2,1)  GiveItem("P_SW1H23", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~Global("P_DuskDanctialMISSION","GLOBAL",0) Global ("P_Dusk_Dancti_Enc_MF","GLOBAL",1)~ THEN BEGIN 82 // from:
  SAY @10500145 /* ~Ardusk... <CHARNAME>...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskDanctialMISSION","GLOBAL",1) SetGlobal("P_Dusk_Dancti_Enc_MF","GLOBAL",0)~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from:
  SAY @10500146 /* ~Debemos hablar... un asunto de suma importancia os atañe... a ambos...~ */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from:
  SAY @10500151 /* ~¿Y bien, <CHARNAME>? Puede que esto resulte beneficioso para todos nosotros...~ */
    IF ~~ THEN REPLY @10500152 /* ~Beneficio como de... ¿tesoros? Soy todo oídos, Danctian.~ ~Beneficio como de... ¿tesoros? Soy toda oídos, Danctian.~ */  GOTO 87
	IF ~~ THEN REPLY @10500153 /* ~No me das buena espina, demonio. Pero te oiré, por ahora...~ */  GOTO 85
	IF ~~ THEN REPLY @10500154 /* ~No me interesa lo que sea que vendas, criatura. Vuelve a las sombras de las que saliste.~ */  GOTO 86 
	IF ~~ THEN REPLY @10500155 /* ~Te escucharé, Danctian. Habla con libertad.~ */  GOTO 87
END

IF ~~ THEN BEGIN 85 // from:
  SAY @10500156 /* ~Te lo aseguro, no oculto intenciones perversas para con ustedes.~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 86 // from:
  SAY @10500157 /* ~Al menos deberías reconsiderarlo... puesto a que está relacionado directamente con la Cripta Olvidada.~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 87 // from:
  SAY @10500158 /* ~Este no es el mejor lugar para hablar... Vengan a la guarida que supo ser de los shilmistas en el Distrito del Puerto de Athkatla. Allí hablaremos... acerca de la Cripta Olvidada...~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from:
  SAY @10500160 /* ~Os diré todo cuando nos volvamos a reunir... Recuerden: Distrito del puerto, Athkatla en la casa abandonada al noroeste.~ */
  IF ~~ THEN DO ~ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210039 EXIT
END

// FORJA DE ITEMS 2.0
IF ~~ THEN BEGIN 89 // from:
  SAY @10500165 /* ~Ya veo... entonces, ¿qué he de forjar para ti?~ */
  IF ~~ THEN REPLY @10500099 /* ~Aún no hemos logrado reunir lo necesario, Danctian.~ */ GOTO 25 //52
  
  //Espada de Disrupción
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_swr1") PartyHasItem("SCRL09") PartyHasItem("MISC40") PartyHasItem("MISC19") PartyHasItem("MISC44") PartyHasItem("BOOK89")~ THEN REPLY @10500101 /* ~Danctian, hemos conseguido lo necesario para mejorar la espada de Dusk.~ */ GOTO 26 // 53
  
  // Defensa de Cormyr
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_dchan1") PartyHasItem("p_brkshl") PartyHasItem("MISC35") PartyHasItem("MISC38")~ THEN REPLY @10500113 /* ~Danctian, hemos conseguido lo necesario para mejorar la armadura de Dusk.~ */ GOTO 34
  
  // Brazales de Defensa Pétrea	
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 0) PartyHasItem("brac01") PartyHasItem("SCRL15") PartyHasItem("misc23") ~ THEN REPLY @10500116 /* ~Danctian, hemos conseguido lo necesario para crear los Brazales de Defensa Pétrea.~ */ GOTO 40
  
  
  // Crimson Thunder
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 0) PartyHasItem("HAMM03") PartyHasItem("STAF13") PartyHasItem("SCRL1K") PartyHasItem("WAND04") PartyHasItem("AMUL13") PartyHasItem("RING19") ~ THEN REPLY @10500119 /* ~Danctian, hemos conseguido lo necesario para crear el martillo: Trueno Escarlata.~ */ GOTO 45
   
  
  // Fuego Salvaje
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 0) PartyHasItem("LEAT09") PartyHasItem("MISC16") PartyHasItem("SCRL06") PartyHasItem("AMUL24")  ~ THEN REPLY @10500121 /* ~Danctian, hemos conseguido lo necesario para crear la armadura Fuego Salvaje.~ */ GOTO 50
  
  
  // Venom Strike
  IF ~Global ("p_venom_strike", "GLOBAL", 0) PartyHasItem("BLUN17") PartyHasItem("SCRL08") PartyHasItem("SCRL1Q") PartyHasItem("POTN42") PartyHasItem("MISC31") PartyHasItem("MISC37")  ~ THEN REPLY @10500123 /* ~Danctian, hemos conseguido lo necesario para crear el mayal Golpe de Veneno.~ */ GOTO 55
  
  
  
  // Colmillo de Larloch
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 0)  PartyHasItem("POTN22") PartyHasItem("MISC26") PartyHasItem("SCRL84") PartyHasItem("HELM06") 
  OR (2)
  PartyHasItem("AX1H02")
  PartyHasItem("KORAX01")~ THEN REPLY @10500125 /* ~Danctian, hemos conseguido lo necesario para forjar el Colmillo de Larloch.~ */ GOTO 60   
  
  // Ventisca del Averno
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 0) PartyGoldGT(12499) PartyHasItem("SW1H42") PartyHasItem("SCRL04") PartyHasItem("MISC17") PartyHasItem("MISC33") PartyHasItem("MISC42") ~ THEN REPLY @10500127 /* ~Danctian, hemos conseguido lo necesario para forjar la Ventisca del Averno.~ */ GOTO 65
  
  // Vengadora Real
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("P_WSSTP_vengadora_real", "GLOBAL", 0) PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2") OR(2) PartyHasItem("p_wsboot") PartyHasItem("p_wsboo2")~ THEN REPLY @10500129 /* ~Danctian, hemos conseguido los artefactos del Duque Benork.~ */ GOTO 70



  // Gema del Dragón Púrpura
  IF ~PartyHasItem("p_gemdr1")~ THEN REPLY @10500134 /* ~Danctian, queremos forjar algo con la Amatista del Dragón Púrpura.~ */ GOTO 74
END

// EVIL -> FINAL MISSION
// CON DUSK
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",1)~ THEN BEGIN 90 // from:
  SAY @10500166 /* ~Han acudido a mi llamada. Bien, bien...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskDanctialMISSION","GLOBAL",2)~ GOTO 94
END

// SIN DUSK
IF ~!InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",1)~ THEN BEGIN 91
  SAY @10500167 /* ~<CHARNAME>, no veo a Ardusk contigo. Será mejor que vuelvas con él para que hablemos sobre la Cripta Olvidada.~ */
    IF ~~ THEN REPLY @10500168 /* ~De acuerdo, Danctian. Volveré con Dusk.~ */  GOTO 93
    IF ~~ THEN REPLY @10500169 /* ~Está bien, Danctian. Aunque primero me gustaría ver si podemos forjar algo antes.~ */  GOTO 89
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",1)~ THEN BEGIN 92
  SAY @10500167 /* ~<CHARNAME>, no veo a Ardusk contigo. Será mejor que vuelvas con él para que hablemos sobre la Cripta Olvidada.~ */
    IF ~~ THEN REPLY @10500168 /* ~De acuerdo, Danctian. Volveré con Dusk.~ */  GOTO 93
    IF ~~ THEN REPLY @10500169 /* ~Está bien, Danctian. Aunque primero me gustaría ver si podemos forjar algo antes.~ */  GOTO 89
END

IF ~~ THEN BEGIN 93 // from:
  SAY @10500170 /* ~De acuerdo, <CHARNAME>. Os estaré esperando... en las sombras.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY @10500171 /* ~Ardusk, el nigromante llamado Anthagar ha contactado conmigo.~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95 // from:
  SAY @10500172 /* ~Y esta consiste, simplemente, en acudir a su llamado.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 318
END

IF ~~ THEN BEGIN 96 // from:
  SAY @10500173 /* ~Procederé a resumir lo que sucede, hijo de Bhaal.~ ~Procederé a resumir lo que sucede, hija de Bhaal.~ */
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97
  SAY @10500174 /* ~Ardusk tiene... razón. Ya sea que desees formar parte de dicha Orden o pretendas destruirla, él debe dar el consentimiento a la hora de viajar a través del orbe aciago.~ */
    // NO TIENE ESPADA CARMESÍ
	IF ~!PartyHasItem("p_swevi2")~ THEN REPLY @10500175 /* ~Muy bien, Danctian. Obtener un gran poder a través de la Orden de los Magos no suena nada mal.~ */  GOTO 98
    IF ~!PartyHasItem("p_swevi2")~ THEN REPLY @10500176 /* ~Lo que la Cripta Olvidada planea es vil y obsceno. Debemos detenerles cuanto antes.~ */  GOTO 98
	IF ~!PartyHasItem("p_swevi2")~ THEN REPLY @10500177 /* ~Debo pensar qué hacer al respecto. Aún no me decido qué hacer.~ */  GOTO 98
    IF ~!PartyHasItem("p_swevi2")~ THEN REPLY @10500178 /* ~Actuaré conforme vaya avanzando en la misión. Cuando podamos hablar con ellos, allí decidiré.~ */  GOTO 98
    // TIENE ESPADA CARMESÍ	
	IF ~PartyHasItem("p_swevi2")~ THEN REPLY @10500175 /* ~Muy bien, Danctian. Obtener un gran poder a través de la Orden de los Magos no suena nada mal.~ */  GOTO 103
    IF ~PartyHasItem("p_swevi2")~ THEN REPLY @10500176 /* ~Lo que la Cripta Olvidada planea es vil y obsceno. Debemos detenerles cuanto antes.~ */  GOTO 103
	IF ~PartyHasItem("p_swevi2")~ THEN REPLY @10500177 /* ~Debo pensar qué hacer al respecto. Aún no me decido qué hacer.~ */  GOTO 103
    IF ~PartyHasItem("p_swevi2")~ THEN REPLY @10500178 /* ~Actuaré conforme vaya avanzando en la misión. Cuando podamos hablar con ellos, allí decidiré.~ */  GOTO 103
END

IF ~~ THEN BEGIN 98 // from:
  SAY @10500179 /* ~Será como tú desees, <CHARNAME>. Cuando estén listos, sólo deben pedirme que active el orbe y habré de llevarlos a ese lugar. Hasta entonces, os estaré esperando...~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",2)
  ~ UNSOLVED_JOURNAL @210043 EXIT
END

// MISSION FINAL GLOBAL 2
// SIN DUSK
IF ~!InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",2)~ THEN BEGIN 99
  SAY @10500194 /* ~<CHARNAME>, no veo a Ardusk contigo. Será mejor que vuelvas con él si quieren que use el orbe aciago del Nigromante.~ */
    IF ~~ THEN REPLY @10500168 /* ~De acuerdo, Danctian. Volveré con Dusk.~ */  GOTO 93
    IF ~~ THEN REPLY @10500169 /* ~Está bien, Danctian. Aunque primero me gustaría ver si podemos forjar algo antes.~ */  GOTO 89
END

// SIN DUSK
IF ~InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",2)~ THEN BEGIN 100
  SAY @10500194 /* ~<CHARNAME>, no veo a Ardusk contigo. Será mejor que vuelvas con él si quieren que use el orbe aciago del Nigromante.~ */
    IF ~~ THEN REPLY @10500168 /* ~De acuerdo, Danctian. Volveré con Dusk.~ */  GOTO 93
    IF ~~ THEN REPLY @10500169 /* ~Está bien, Danctian. Aunque primero me gustaría ver si podemos forjar algo antes.~ */  GOTO 89
END


// CON DUSK
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",2)~ THEN BEGIN 101
  SAY @10500195 /* ~Bien... ¿están listos para partir? Os recomiendo estar bien preparados antes del encuentro.~ */
    IF ~~ THEN REPLY @10500196 /* ~Estamos listos, Danctian. ¡Activa el orbe!~ */  GOTO 102
    IF ~~ THEN REPLY @10500169 /* ~Está bien, Danctian. Aunque primero me gustaría ver si podemos forjar algo antes.~ */  GOTO 89
END

IF ~~ THEN BEGIN 102 // from:
  SAY @10500197 /* ~Muy bien... el Orbe aciago será activado. ¡Que la fuerza del Pandemonium os bendiga!~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",3)
  ~ UNSOLVED_JOURNAL @210044 EXIT
END

// FORJA DE LA ESPADA IRA

IF ~~ THEN BEGIN 103 // from:
  SAY @10500198 /* ~Será como tú desees, <CHARNAME>. Cuando estén listos, sólo deben pedirme que active el orbe y habré de llevarlos a ese lugar. Por cierto... Ardusk...~ */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104 // from:
  SAY @10500199 /* ~Veo que aún llevas la Espada carmesí. El corazón del demonio abisal la ha hecho más fuerte, sí.~ */
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105 // from:
  SAY @10500200 /* ~Ahora sí... os libero para que se preparen para el viaje a través del Orbe Aciago. Hablen conmigo de nuevo cuando estén listos...~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",2)
  ~ UNSOLVED_JOURNAL @210043 EXIT
END

IF ~Global("P_DuskDanctialMISSION","GLOBAL",4)~ THEN BEGIN 106 // from:
  SAY @10500213 /* ~<CHARNAME>, estamos de regreso a tu plano.~ */  
	// DUSK DEAD
	IF ~Dead("P_Dusk")
	~ THEN REPLY @10500214 /* ~Ha sido... un viaje interesante, Danctian.~ */  GOTO 107
	// DUSK ALIVE
	IF ~ !Dead("P_Dusk")
	~ THEN REPLY @10500214 /* ~Ha sido... un viaje interesante, Danctian.~ */  GOTO 109
END

//DUSK DEAD
IF ~~ THEN BEGIN 107
  SAY @10500215 /* ~Ardusk Aldant ha caído en combate. Su venganza ha sido cumplida y su alma, si no regresa a este plano, será encontrada por mí, pues está atada a mi esencia y es así mi voluntad.~ */
  IF ~~ THEN GOTO 108
END

// ACTUALIZAR JOURNAL!!!!!!
IF ~~ THEN BEGIN 108 // from:
  SAY @10500219 /* ~Mi trabajo aquí ha terminado... me reagruparé en mi plano... Os dejo esta cuantiosa cantidad de oro, <CHARNAME>. Estoy seguro de que os será útil en vuestra lucha contra Irenicus. Os deseo fortuna a los tuyos... y terror a tus enemigos. ¡Adiós, hijo de Bhaal!~ ~Mi trabajo aquí ha terminado... me reagruparé en mi plano... Os dejo esta cuantiosa cantidad de oro, <CHARNAME>. Estoy seguro de que os será útil en vuestra lucha contra Irenicus. Os deseo fortuna a los tuyos... y terror a tus enemigos. ¡Adiós, hija de Bhaal!~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",0)
  SetGlobal("P_DuskDanctialMISSIONCOMPLETE","GLOBAL",1)
  EraseJournalEntry (@210035) EraseJournalEntry (@210036) EraseJournalEntry (@210037) EraseJournalEntry (@210038) EraseJournalEntry (@210039) EraseJournalEntry (@210040) EraseJournalEntry (@210041) EraseJournalEntry (@210043) EraseJournalEntry (@210044)EraseJournalEntry (@210045)
  AddexperienceParty(100000)
  GiveGoldForce(50000)
  ForceSpell(Myself,POOF_GONE)
  ~ SOLVED_JOURNAL @210048 EXIT
END

// DUSK ALIVE
IF ~~ THEN BEGIN 109
  SAY @10500220 /* ~Tu venganza está completa, Ardusk Aldant. La Cripta Olvidada ha sido destruida.~ */
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110 // from:
  SAY @10500221 /* ~Así es, Ardusk. Prepárense, porque os llevaré a un plano distante...~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",5)
  ~ EXIT
END

//MISSION 4 - FINAL-> REWARDS (REGRESO DEL BOSQUE)
IF ~Global("P_CelineSpawn","GLOBAL",5)~ THEN BEGIN 111 // from:
  SAY @10500226 /* ~Hemos retornado a Athkatla.~ */  
  IF ~~ THEN DO ~ SetGlobal("P_CelineSpawn","GLOBAL",6)
  ~ GOTO 112
END

IF ~~ THEN BEGIN 112 // from:
  SAY @10500240 /* ~Ahora, ha llegado la hora de la recompensa, <CHARNAME>. Espero que el oro sea de tu agrado.~ */  
	// Tiene a IRA
	IF ~PartyHasItem("p_swevi3")~ THEN REPLY @10500241 /* ~El oro es siempre bienvenido, Danctian.~ */  GOTO 113
	// NO tiene a IRA
	IF ~!PartyHasItem("p_swevi3")~ THEN REPLY @10500241 /* ~El oro es siempre bienvenido, Danctian.~ */  GOTO 114
	// Tiene a IRA
	IF ~PartyHasItem("p_swevi3")~ THEN REPLY @10500242 /* ~No es necesario, Danctian. Hemos obtenido una buena tajada destruyendo a esa Cripta Olvidada.~ */  GOTO 113
	// NO tiene a IRA
	IF ~!PartyHasItem("p_swevi3")~ THEN REPLY @10500242 /* ~No es necesario, Danctian. Hemos obtenido una buena tajada destruyendo a esa Cripta Olvidada.~ */  GOTO 114
END

IF ~~ THEN BEGIN 113
  SAY @10500243 /* ~Naturalmente, estas piezas metálicas amarillentas no tienen valor para mí. Son todas tuyas, <CHARNAME>.~ */
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 114
  SAY @10500243 /* ~Naturalmente, estas piezas metálicas amarillentas no tienen valor para mí. Son todas tuyas, <CHARNAME>.~ */
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115 // from:
  SAY @10500258 /* ~El Pandemonium así lo desea y su fuerza estará con ustedes en su viaje hacia Suldanessellar. Recuerden, también, que estaré aquí si necesitan que se forje un artefacto...~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",0)
  SetGlobal("P_DuskDanctialMISSIONCOMPLETE","GLOBAL",1)
  EraseJournalEntry (@210035) EraseJournalEntry (@210036) EraseJournalEntry (@210037) EraseJournalEntry (@210038) EraseJournalEntry (@210039) EraseJournalEntry (@210040) EraseJournalEntry (@210041) EraseJournalEntry (@210043) EraseJournalEntry (@210044)EraseJournalEntry (@210045)
  AddexperienceParty(200000)
  GiveGoldForce(75000)
  ~ SOLVED_JOURNAL @210049 EXIT
END

I_C_T P_DANCTI 114 P_Dusk_FINALM9_DONT_HAVE_IRA
== P_DANCTI IF ~~ THEN @10500244 /* 75.000 piezas de oro. Espero que sea una cantidad apropiada. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500245 /* ~Es una buena cantidad, Danctian. Si no hay nada más...~ */
== P_DANCTI IF ~~ THEN @10500259 /* No hay nada más, excepto Irenicus. */
== P_DANCTI IF ~~ THEN @10500260 /* Si quieren detenerle, deben acudir a tierra élfica, pues allí llevará a cabo sus planes finales. */
== P_DANCTI IF ~~ THEN @10500261 /* Si valoran este plano, deberán usar todas sus fuerzas para detenerle. */
END

I_C_T P_DANCTI 113 P_Dusk_FINALM9_HAVE_IRA
== P_DANCTI IF ~~ THEN @10500244 /* 75.000 piezas de oro. Espero que sea una cantidad apropiada. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500245 /* ~Es una buena cantidad, Danctian. Si no hay nada más...~ */ DO ~TakePartyItem("p_swevi3")~
== P_DANCTI IF ~~ THEN @10500246 /* Hay algo más, Ardusk. Tomaré a Ira con tu permiso.*/ DO ~TakePartyItem("p_swevi3") DestroyItem ("p_swevi3")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500247 /* ~Pero, ¿qué diantes-?~ */ 
== P_DANCTI IF ~~ THEN @10500248 /* ¿Recuerdas el Símbolo de Mellifleur de Anthagar? Aquí está. */ 
== P_DANCTI IF ~~ THEN @10500249 /* *El símbolo toma un color rojizo al mismo tiempo en que los orbes escarlata de Danctian brillan de manera incesante.* */ 
== P_DANCTI IF ~~ THEN @10500250 /* *Al cabo de unos segundos, Ira, la espada de Dusk, se eleva y parece fusionarse con el símbolo de Mellifleur.* */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500251 /* ~Danctian, ¿qué has hecho?~ */ 
== P_DANCTI IF ~~ THEN @10500252 /* Ten a Ira de nuevo, Ardusk. He despertado la totalidad de su poder con los vestigios de tus enemigos. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500253 /* ~Entiendo...~ */ DO ~CreateItem ("p_swevi4",1,2,1)  GiveItem("p_swevi4", "P_Dusk")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500254 /* ~Ira Tenax. El verdadero poder del orbe escarlata.~ */
== P_DANCTI IF ~~ THEN @10500255 /* Estás en lo correcto. */
== P_DANCTI IF ~~ THEN @10500256 /* Ira Tenax es la obra cúlmine de tus viajes por Amn. No lo habrías logrado sin <CHARNAME>. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500257 /* ~Eso lo sé, Danctian. Por eso es que la blandiré... y ayudaré a <CHARNAME> a destruir a Irenicus. En el nombre de la venganza.~ */ DO ~CreateItem ("p_orbef",1,2,1)  GiveItem("p_orbef", "P_Dusk") UseItem ("p_orbef", Myself) DestroyItem ("p_orbef")~
END


I_C_T P_DANCTI 111 P_Dusk_Danc_DUSK_RETURN1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500227 /* ~Asumo que lo que hemos visto ha sido... real...~ */ 
== P_DANCTI IF ~~ THEN @10500228 /* Estás en lo correcto. No creo que le haya hecho mucha gracia a Mielikki que hayamos tomado... "prestada" una de sus almas durante un breve período. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500229 /* ~¿Por qué lo has hecho, Danctian?~ */
== P_DANCTI IF ~~ THEN @10500230 /* Creo que tú lo sabes tan bien como yo, Ardusk. */ 
== P_DANCTI IF ~~ THEN @10500231 /* Después de todo, nuestras almas están enlazadas. */
== P_DANCTI IF ~~ THEN @10500232 /* En cierto sentido, el camino que tomaste fue para llegar a este momento. */  
== P_DANCTI IF ~~ THEN @10500233 /* Ver a Celine... aunque sea una última vez. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500234 /* ~...~ */
== P_DANCTI IF ~~ THEN @10500235 /* Sea como fuere... Ella te ha dejado mucho en qué pensar. */
== P_DANCTI IF ~~ THEN @10500236 /* Aún ahora percibo sus palabras resonando en el interior de tu mente, como aquellas campanadas que te llamaban al templo de Tymora cuando eras sólo un niño. */
== P_DANCTI IF ~~ THEN @10500237 /* Percibo que seguirán resonando aún si logras culminar tu viaje con <CHARNAME>. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500238 /* ~Hmpf... ¿Siempre has sido tan hablador, Danctian? No me había dado cuenta de cuán molesto eres.~ */
== P_DANCTI IF ~~ THEN @10500239 /* Entiendo. Mis disculpas, Ardusk. */
END

I_C_T P_DANCTI 109 P_Dusk_Danc_DUSK_LIVE1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500222 /* ~Así... es...~ */ 
== P_DANCTI IF ~~ THEN @10500223 /* Anthagar disponía de un talismán de Mellifleur, un objeto imbuído por los mismos dioses en la Era de los Trastornos. */ 
== P_DANCTI IF ~~ THEN @10500224 /* Puedo canalizar parte de su poder y traerla durante unos instantes. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500225 /* ~¿Qué has dicho? ... ¿Traerla? Te refieres...~ */ 
END

I_C_T P_DANCTI 107 P_Dusk_Danc_DUSK_DEAD1
== P_DANCTI IF ~~ THEN @10500216 /* El Pandemonium se convertirá en su nuevo hogar y vivirá en las sombras durante un buen tiempo. */ 
== P_DANCTI IF ~~ THEN @10500217 /* No debes preocuparte por su... bienestar, <CHARNAME>. Aún si fueses capaz de revivirlo, os puedo asegurar que al final de su camino se hallaría en la oscuridad de mis tierras. */ 
== P_DANCTI IF ~~ THEN @10500218 /* Porque el cormyreano ha atado su sangre con la mía y estamos destinados a compartir el mismo hado. */
END


I_C_T P_DANCTI 104 P_Dusk_Danc_IRA1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500201 /* ~Así es, Danctian. ¿Por qué lo preguntas? Tus orbes brillan más de lo usual.~ */ 
== P_DANCTI IF ~~ THEN @10500202 /* Ya es hora... Si me entregas la espada carmesí, podré despertar un gran poder en ella. Será muy útil al lugar al que nos dirigimos... */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500203 /* ~Ya veo... pues, aquí tienes entonces.~ */ 
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10500204 /* ~Me sorprende la fe ciega que tienes en ese demonio, abbil. Bien podría incrustarte esa espada por la espalda...~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @10500205 /* ~¡Hmpf! ¿Entregas tu arma con tanta facilidad? Yo jamás haría tal cosa con mi hacha. Korgan Hachasangrienta tiene a su hacha como destino en sus manos y en las de nadie más. Y su filo... en el cráneo de sus enemigos.~ */
== P_DANCTI IF ~~ THEN @10500206 /* Tu fe será recompensada, Ardusk Aldant... */ DO ~TakePartyItem("p_swevi2")~
== P_DANCTI IF ~~ THEN @10500207 /* Porque de la furia carmesí de los ríos sangrientos del Pandemonium nacerá el instrumento de venganza del Asesino de Magos. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500208 /* ~Por Cormyr... el filo es aún más resplandeciente... ¿Qué significa esto?~ */ DO ~CreateItem ("p_swevi3",1,2,1)  GiveItem("p_swevi3", "P_Dusk")~
== P_DANCTI IF ~~ THEN @10500209 /* Ira... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500210 /* ~¿Ira?~ */ 
== P_DANCTI IF ~~ THEN @10500211 /* Es el nombre verdadero del arma, Ardusk. Y destinada a estar en tus manos. */
== P_DANCTI IF ~~ THEN @10500212 /* Que vuestros enemigos tiemblen... y mata en nombre de las sombras. */
END

I_C_T P_DANCTI 96 P_Dusk_Danc_MF5
== p_dancti IF ~~ THEN @10500180 /* ~La Orden de Magos que ha estado poniéndolos a prueba planea una masacre inminente en las naciones de Tethyr y Amn.~ */
== p_dancti IF ~~ THEN @10500181 /* ~La Cripta Olvidada rinde pleitesía a Velsharún, el Señor de la Muerte Viviente.~ */
== p_dancti IF ~~ THEN @10500182 /* ~El humano llamado Anthagar planea, posiblemente, obtener la inmortalidad mediante algún ritual de gran poder.~ */
== p_dancti IF ~~ THEN @10500183 /* ~Allí es donde entran en juego el emisario de Cormyr y el engendro del Asesinato.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500184 /* ~No sé si te da igual lo que planee hacer nuestro "amigo" Anthagar, <CHARNAME>.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500185 /* ~Lo cierto es que no creo que pueda realizar el ritual (al menos de momento) sin nuestro consentimiento.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500186 /* ~Si quieres aliarte con ellos o no, a mí me da igual. Pero ir allí requerirá mi presencia. Eso no es negociable.~ */
== p_dancti IF ~~ THEN @10500187 /* ~(La mirada sin vida de Danctian parece perderse unos instantes en el rostro de Dusk)~ */
== p_dancti IF ~~ THEN @10500188 /* ~(Al cabo de unos segundos, sus orbes escarlatas se centran en ti)~ */
END

I_C_T P_DANCTI 94 P_Dusk_Danc_MF4
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500189 /* ~Interesante... finalmente ha hecho contacto contigo. Cuéntamelo.~ */
== p_dancti IF ~~ THEN @10500190 /* ~Lo que esperábamos. Pretende que <CHARNAME> y tú se le unan en su plan de conquista y destrucción.~ */
== p_dancti IF ~~ THEN @10500191 /* ~Ha logrado entregarme un orbe aciago que cumple la función de teletransporte.~ */
== p_dancti IF ~~ THEN @10500192 /* ~Su Orden se encontrará en una especie de... terreno neutral.~ */
== p_dancti IF ~~ THEN @10500193 /* ~El mago no carece de perspicacia y sus dudas le hacen ponerte a prueba una última vez.~ */
END

I_C_T P_DANCTI 87 P_Dusk_Danc_MF3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500159 /* ~¿Q-qué? Danctian, ¿de qué estás hablando?~ */
END

I_C_T P_DANCTI 86 P_Dusk_Danc_MF2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500159 /* ~¿Q-qué? Danctian, ¿de qué estás hablando?~ */
END

I_C_T P_DANCTI 83 P_Dusk_Danc_MF1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500147 /* ~¡Danctian! ¿De dónde has salido? Rayos, ¿cómo nos has encontrado?~ */
== p_dancti IF ~~ THEN @10500148 /* ~Como ya te lo he mencionado antes, tú y yo tenemos una conexión debido al... sacrificio que has hecho por liberarme.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10500149 /* ~*se estremece* Eso suena tan... tenebroso...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500150 /* ~Entiendo... bueno, por mí no hay problema en que hablemos. Veremos qué tiene <CHARNAME> para decir.~ */
END



I_C_T P_DANCTI 79 P_Dusk_EVIL_REX
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500143 /* ~¡Finalmente! Observa, <CHARNAME>. Utilizaré a Rex para matar en tu nombre. Será mi instrumento de venganza... Ya verás, mi buen amigo... nuestros enemigos temblarán al vernos llegar... pero nada podrán hacer... Ni siquiera... huir...~ */
END

I_C_T P_DANCTI 76 P_Dusk_EVIL_SALUS
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500140 /* ~Por Cormyr, Danctian. Has hecho un trabajo increíble. La armadura parece más ligera, pero no por ello menos frágil que su anterior versión... Salus es una armadura exquisita...~ */
END

I_C_T P_DANCTI 72 P_Dusk_EVIL3_BENORK
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500019 /* ~Buen trabajo, Danctian. Si <CHARNAME> me lo permite, haré uso del Conjunto de Benork para obtener, al fin, mi tal preciada venganza.~ */
END

I_C_T P_DANCTI 12 P_Dusk_EVIL2
== p_dancti IF ~~ THEN @10500262 /* ~*Danctian escudriña el grupo durante unos momentos*~ */
== p_dancti IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10500495 /* ~Ah, la Dama de las Bestias. Semielfa, para ti tengo esto: un artefacto forjado por los mismos selu'taar. Espero que te sea de utilidad.~ */  DO ~ CreateItem ("P_FITM1",1,1,0)  GiveItem("P_FITM1", "P_Fall")~
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10500496 /* Gr-gracias, Danctian. Aún no sé cómo sentirme al respecto... sobre ti. Pero si Dusk y <CHARNAME> depositan tu confianza en ti, yo también lo haré. */
== p_dancti IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10500030 /* ~Para ti, hombre del Norte... he preparado esta pócima especial. Aumentará tus capacidades mentales en sobremanera. Incluso puede que seas capaz de ser un canal divino para la deidad a la que sirvas.~ */  DO ~ CreateItem ("p_POTN99",1,1,0)  GiveItem("p_POTN99", "Minsc") ~ 
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10500031 /* ~Hmm... Bubú tiene sus dudas respecto a ti, criatura. Pero si <CHARNAME> y Dusk confían en ti, entonces Minsc también lo hará.~ */
== p_dancti IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10500032 /* ~No temas, niña. Ardusk te tiene en gran estima, por lo que he hecho esto especialmente para ti.~ */  DO ~ CreateItem ("p_nbk02",1,1,0)  GiveItem("p_nbk02", "Aerie") ~ 
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10500033 /* ~¿E-es un emblema de Baervan? Hmm... g-gracias, supongo... (Dusk, ¿estás seguro de esto?)~ */
== p_dancti IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10500034 /* ~Veo que no me tienes en gran confianza, paladín. Puedo ver tu deseo de atravesarme con tu espada tan claro como el mal innato que existe en la humanidad.~ */ 
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10500035 /* ~Estás en lo cierto, monstruo. La única razón por la que no te ataco es porque, por extraño que parezca, no percibo que busques hacernos daño.~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10500036 /* ~Pero ten por seguro que te extirparé de esta tierra, en nombre de Torm, si tus intenciones son malvadas.~ */
== p_dancti IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10500037 /* ~El mal es relativo, sir Keldorn Levafuego. Podría buscar venganza contra toda tu raza por lo que me han hecho... y sin embargo, mi poder se contiene por respeto a Ardusk y <CHARNAME>.~ */
== p_dancti IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10500038 /* ~Pero basta de charla... tus compañeros te tienen en gran estima... Por lo que he preparado esto para ti. Estoy seguro de que podrás encontrarle una utilidad, incluso para tus fines personales.~ */ DO ~ CreateItem ("p_keld1",1,1,0)  GiveItem("p_keld1", "Keldorn") ~ 
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10500039 /* ~De acuerdo, criatura. Joven Dusk, espero que tomes responsabilidad por él... o ella... o sea lo que sea esta sombra demoníaca.~ */
== p_dancti IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @10500040 /* ~Tus asuntos me importan bien poco, mortal. Puedes tener la seguridad de que no me interpondré en tu camino. De hecho, pretendo que llegues a destino... lo más rápido posible. Esta katana servirá bien a tus propósitos oscuros...~ */ DO ~ CreateItem ("p_yoshit",1,1,0)  GiveItem("p_yoshit", "Yoshimo") ~ 
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @10500041 /* ~Hm... Yoshimo no suele quedarse sin palabras... pero parece que este tal Danctian lo ha logrado. Sin embargo, gracias por la katana...~ */
== p_dancti IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @10500042 /* ~No debes preocuparte por mi, valiente mediana. Os aseguro que no tengo mala intención contigo. Sé que has tenido una experiencia... desafortunada con los de mi clase.~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @10500043 /* ~Desafortunada es una palabra que se queda corta, demonio. Si fuera por mí, erradicaría a todos los de tu clase de esta tierra.~ */
== p_dancti IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @10500044 /* ~Un noble ideal, lady Fentan. Creo que esto puede ayudarte en tu empresa. Quizás, algún día, tu camino te lleve a... intentar... erradicarme. Espero que cambies de idea para ese entonces...~ */ DO ~ CreateItem ("p_nbk04",1,1,0)  GiveItem("p_nbk04", "Mazzy") ~ 
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @10500045 /* ~Lo veo difícil... Sin embargo, gracias por el objeto (ten por seguro que habré de averiguar de qué se trata antes de usarlo...).~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10500046 /* ~¡Por Helm! Ni se te ocurra acercarte a mí, criatura...~ */  
== p_dancti IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10500047 /* ~¿Por qué lo dices, heredero de Delryn? No es por miedo que no quieres que me acerque... ¿o sí?~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10500048 /* ~¡Inmundo demonio! No te temo... pero tampoco voy a destruirte. Por simple respeto a <CHARNAME> y a Dusk.~ */  
== p_dancti IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10500049 /* ~Lo sé, monje... por eso es que he traído esta espada para ti...~ */ DO ~ CreateItem ("p_swanom",1,1,0)  GiveItem("p_swanom", "Anomen") ~ 
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10500050 /* ~¿Una qué...? Por los dioses... tiene el emblema de mi familia... ¿Cómo--?~ */  
== p_dancti IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10500051 /* ~Ya os he dicho... mi poder trasciende este plano... e incluso el tiempo. Esa espada sólo puede ser blandida por alguien de sangre Delryn. Confío en que le darás un buen uso, mortal.~ */ 
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10500052 /* ~Hmpf... no necesito una espada para demostrar mi valía... Sin embargo, aceptaré tu presente, demonio.~ */  
== p_dancti IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @10500053 /* ~Tu familia ha tenido un destino funesto, mortal. Sin embargo, confío en que esta prenda pueda servir a la última heredera de De'Arnise.~ */ DO ~ CreateItem ("p_nalit",1,1,0)  GiveItem("p_nalit", "Nalia") ~ 
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @10500054 /* ~¿Q-qué? ¿De dónde has sacado esto, criatura? Tiene... tiene el emblema de mi familia... además... me resulta tan familiar... *carraspeo* G-gracias, supongo...~ */
== p_dancti IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10500055 /* ~No sueles hablar mucho de ella, pero sé que muchas noches mencionas su nombre en silencio, semielfa. Este es mi recompensa para ti, por ayudar a Dusk en su empresa.~ */ DO ~ CreateItem ("p_nbk09",1,1,0)  GiveItem("p_nbk09", "Jaheira") ~ 
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10500056 /* ~¿El símbolo de Mystra? Preguntaría cómo lo supiste... pero asumo que la respuesta sería algo... confusa. De todas formas, gracias.~ */
== p_dancti IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @10500057 /* ~Ah, sí... este Orbe es sumamente poderoso. Los conocimientos que he... adquirido recientemente, me han permitido el poder forjarlo. Mortal, tú deberías tenerlo.~ */  DO ~ CreateItem ("p_nbk11",1,1,0)  GiveItem("p_nbk11", "Cernd") ~ 
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @10500058 /* ~Percibo una calma tempestad en este orbe, como si en él se contuviera el sueño de una mariposa. Si bien tu origen antinatural me inquieta, has tenido la suficiente sabiduría para crear tan perfecta y pequeña obra. Eres extraño, Danctian. Seguiré de cerca tu desempeño en este plano y veré cómo afecta al Gran Equilibrio.~ */
== p_dancti IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @10500059 /* ~De acuerdo, druida. Ten por seguro... no es mi intención inmiscuirme en los asuntos preestablecidos de esta tierra.~ */ 
== p_dancti IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10500060 /* ~¿Qué tenemos aquí? Un mortal que reniega de su familia. Es algo extraño en alguien de descendencia noble.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10500061 /* ~¿Y qué sabes tú sobre la descendencia noble de los hombres de este plano?~ */
== p_dancti IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10500062 /* ~Te sorprendería lo que se puede aprender pudiendo observar desde la desesperación de un pozo. Si bien mis recuerdos pasados no son del todo claros, las vivencias de este plano material no son extrañas para mí.~ */
== p_dancti IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10500063 /* ~Has tenido una mala experiencia con las criaturas del Plano Negativo, a causa de la malversación arcana de tus antepasados. Te lo aseguro, el Pandemonium está muy relacionado con ello.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10500064 /* ~No me interesan tus historias, Danctian. Sabes que no te destruyo por respeto a Dusk.~ */
== p_dancti IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10500065 /* ~Lo sé, mortal, lo sé. Puede que esto aplaque las aguas entre nosotros. Y, de paso, te brinde mayor claridad sobre tu familia.~ */ DO ~ CreateItem ("p_nbk05",1,1,0)  GiveItem("p_nbk05", "Valygar") ~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10500066 /* ~Estos pergaminos... tienen el sello de mi familia. *se queda un instante dubitativo y luego carraspea* Meditaré al respecto, en si deba usarlos o no, Danctian.~ */
== p_dancti IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10500067 /* ~Sé que lo harás, joven mortal...~ */
== p_dancti IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10500068 /* ~Vaya, vaya... una acólita de Shar. Por extraño que parezca, no me sorprende tu presencia aquí, drow. Como has ayudado a Dusk en su empresa, he preparado algo especial para ti.~ */ DO ~ CreateItem ("p_nbk03",1,1,0)  GiveItem("p_nbk03", "Viconia") ~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10500069 /* ~¿Un símbolo de Shar? Percibo un extraño poder en él. Sí... esto servirá...~ */
== p_dancti IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @10500070 /* ~Creo que sabes que este tomo es para ti, mortal. ¿No lo crees?~ */ DO ~ CreateItem ("p_nbk12",1,1,0)  GiveItem("p_nbk12", "Edwin") ~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @10500071 /* ~Sí, criatura. Edwin Odesseiron merece el poder de este tomo por brindar sus grandes poderes en pos de este patético hombre del palito. (Sí, más que merecido diría yo...)~ */
== p_dancti IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @10500072 /* ~Oh, sí... veo el brillo en tus ojos, guerrero. Sabes que esto es para ti. Sé que segarás muchas vidas con ella...~ */ DO ~ CreateItem ("P_AX1H99",1,1,0)  GiveItem("P_AX1H99", "Korgan") ~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @10500073 /* ~¡Ja! Tú sí que sabes escoger los colores en un hacha, demonio. Y estás en lo cierto... Cercenaré la mayor cantidad de cabezas posible con esto, ¿me entiendes?~ */
== p_dancti IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @10500074 /* ~Estoy seguro de que tienes una historia para esto, ¿no es así, pequeño mortal? Esta pócima es para ti.~ */ DO ~ CreateItem ("p_nbk07",1,1,0)  GiveItem("p_nbk07", "Jan") ~
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @10500075 /* ~¡Oh, una poción gnómica! Esto me recuerda a la vez en que mi tía Gertrudis fue capturada por la guardia de Amn por contrabando de bebidas energéticas. Uno pensará: "¿Qué tienen de malo las bebidas energéticas?" Pues yo digo que nada. Aunque puede que hayan aprisionado a la tía por los efectos secundarios de sus bebidas. Creo que provocaban que a uno le salgan pelos en los dientes. En fin, esta pócima se ve muy bien. No puedo esperar a probarla.~ */
== p_dancti IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @10500076 /* ~Si hay alguien que comprende los viajes interplanares, ese eres tú, ¿no es así, tiefling? Confío en que darás un buen uso a esto.~ */ DO ~ CreateItem ("p_nbk06",1,1,0)  GiveItem("p_nbk07", "HaerDalis") ~
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @10500077 /* ~Vaya, estas runas me resultan familiares... ¡No sabría cómo agradecértelo, incorpóreo cuervo! ¿Hay música en tu plano? Puede que componga una o dos canciones por ti.~ */
== p_dancti IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10500161 /* ~Ah... la engendra de Bhaal, hermana de <CHARNAME>. Es un gran honor poder servirte a ti también.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10500162 /* ~Hm... no sé si pueda decir que eso me hace sentir segura, señor sombra.~ */
== p_dancti IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10500163 /* ~Descuida, no albergo malas intenciones contigo. De hecho, este tomo divino es para ti.~ */ DO ~ CreateItem ("p_nbk08",1,1,0)  GiveItem("p_nbk08", "Imoen2") ~
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10500164 /* ~¿Un tomo divino? Pues... gracias, supongo.~ */



== p_dancti IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @10500484 /* ~Ah, Guardia Negro. Tu camino de violencia y venganza es bienvenido a los principios del Pandemonium. Estimo que las Botas de la Cuchilla Nocturna te serán de utilidad.~ */ DO ~ CreateItem ("p_dornbr",1,1,0)  GiveItem("p_dornbr", "Dorn") ~
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @10500485 /* ~Tenlo por seguro, demonio.~ */

== p_dancti IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @10500486 /* ~El monje del Alma Solar... Sólo puedo imaginar el desagrado en tu mente al hacerte la idea de recibir ayuda de las Sombras. Pero Shar no es mi señor... No, sólo el Caos. Toma esta poción de luz. Será un placer deshacerme de ella.~ */ DO ~ CreateItem ("p_rasptn",1,1,0)  GiveItem("p_rasptn", "Rasaad") ~
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @10500487 /* ~No confío en ti, demonio. Pero si <CHARNAME> y Dusk lo hacen... Entonces aceptaré. Ya veremos después si decido usarla o no...~ */


== p_dancti IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @10500488 /* ~¡Qué maravilla es observar tus conjuros salvajes, semielfa! Esta poción te servirá a tus propósitos. Sigue el camino del Caos.~ */ DO ~ CreateItem ("p_neeptn",1,1,0)  GiveItem("p_neeptn", "Neera") ~
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @10500489 /* ~¿Que siga qué? Ehm... bueno, gracias supongo. Tiene un aroma muy... particular.~ */


== p_dancti IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @10500490 /* ~Alguien como tú no requiere de mucha ayuda, ¿verdad, vampiresa? Sin embargo, puede que esto pueda ser apreciado por alguien como tú. Seguiré tu camino desde las Sombras.~ */ DO ~ CreateItem ("p_hexx",1,1,0)  GiveItem("p_hexx", "Hexxat") ~
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @10500491 /* ~Haz lo que quieras, Danctian. Tomaré lo que me ofreces, ya que percibo un dulce aroma y promesa de poder en ello.~ */


== p_dancti IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @10500492 /* ~Wilson, criatura de la naturaleza salvaje. Tengo algo para ti que puede ser de tu agrado. Aliméntate y sé más poderoso que nunca.~ */ DO ~ CreateItem ("p_wils",1,1,0)  GiveItem("p_wils", "Wilson") ~
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @10500493 /* ~(Gruñido)~ */
== p_dancti IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @10500494 /* ~¿Que si tengo más? Esas... son todas las que tengo, pero te aseguro que saciarán tu hambre.~ */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @10500263 /* ~(Lamento)~ */

// Paina Crossmod
== p_dancti IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN @9079220 /* ~Ah, la Maestra de la Colmena, la semi-drow Pai'Na. Este peligroso Extracto de Escolopendra debería servirte para conectar con la poderosa criatura en el Plano Astral y traerla para que siga tus órdenes. Mataría a cualquier mortal que lo bebiese, pero no a ti, de eso estoy seguro...~ */ DO ~ CreateItem ("p_nbk13",1,1,0)  GiveItem("p_nbk13", "C0Paina") ~
== C0PAINAJ IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN @9079221 /* ~Hmpf. Confío en mi poder, demonio. No necesito que me sermonees al respecto. Sin embargo, aceptaré el Extracto si eso significa aumentar mi poder para mi cometido.~ */

== p_dancti IF ~~ THEN @10500078 /* ~Ardusk, para ti tengo ésto: la gema del Dragón Púrpura. Con ella podemos mejorar la Espada de Disrupción o la Armadura de Cormyr, depende de lo que elijas. Está claro que debes tener alguno de los dos artefactos, ¿sí?~ */ DO ~ CreateItem ("p_gemdr1",1,1,0)  GiveItem("p_gemdr1", "P_Dusk") ~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500079 /* ~Bien, Danctian. Llegado el momento, de seguro que <CHARNAME> me ayudará a elegir la opción correcta.~ */
== p_dancti IF ~PartyHasItem("p_mano")~ THEN @10500080 /* ~Ah, ya veo, Ardusk... has traído la mano de Alabarza contigo... Has hecho como te he indicado. Bien, bien...~ */
== P_DuskJ IF ~PartyHasItem("p_mano") InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500081 /* ~Así es. ¿Qué vas a hacer con ella?~ */
== p_dancti IF ~PartyHasItem("p_mano")~ THEN @10500082 /* ~En cierto sentido no es más que un trofeo de tu victoria. Puedo forjar unas pequeñas gemas poderosas que pueden serte útil en tu viaje. Posiblemente te hayas encontrado con alguna de ellas.~ */  
== p_dancti IF ~PartyHasItem("p_mano")~ THEN @10500083 /* ~Te darán una habilidad llamada Guerrero de Acero. Es muy similar a un conjuro druídico llamado Piel Férrea, pero mejor, ya que no necesitas conjurarlo. Es, en sí misma, una habilidad que ganarás. Cualquiera que sea de naturaleza guerrera puede hacer uso de ellas.~ */  DO~ TakePartyItem("p_mano") DestroyItem ("p_mano") CreateItem ("P_NBK01",1,1,0)  GiveItem("P_NBK01", "P_Dusk") CreateItem ("P_NBK01",1,1,0)  GiveItem("P_NBK01", "P_Dusk") CreateItem ("P_NBK01",1,1,0)  GiveItem("P_NBK01", "P_Dusk") ~
END


I_C_T P_DANCTI 7 P_Dusk_EVIL1
== P_HAKAM IF ~~ THEN @10500499 /* *susurro* ¿Acrull? Quizás deberíamos-- */
== P_DANCTI IF ~~ THEN @10500500 /* No debéis preocuparos por mí, calishita. Os aseguro, no soy una afrenta a la Naturaleza ni soy un peligro para ustedes. */
== P_DANCTI IF ~~ THEN @10500501 /* Pero asumo que tú, Acrull Escudonorteño, ya lo has adivinado. */
== P_ACRULL IF ~~ THEN @10500502 /* S-sí... Es verdad. Hakamir, Mathyus y sus compañeros no se encuentran... muertos... No de la manera que nosotros comprendemos. */
== P_HAKAM IF ~~ THEN @10500503 /* ¿Me lo quieres explicar? ¡Estoy viendo sus malditos cadáveres mientras hablamos! */
== P_ACRULL IF ~~ THEN @10500504 /* Sí... lo haré más tarde... Por lo pronto, dejemos que sigan hablando. */
== P_DANCTI IF ~~ THEN @10500505 /* Sabio de tu parte, druida. Como os dije, podrán seguir aquí y mantener sus negocios con <CHARNAME>. Si siguen así, su meta de salvar Brost estará cada vez más cerca. Por lo pronto, seguiré mi conversación con Ardusk y <CHARNAME>. Disculpadme. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500019 /* ~Es verdad, <CHARNAME>. El demonio sombrío es, por ahora, una extensión de mí. Sin embargo, permanecerá aquí, en Athkatla.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500020 /* ~Lo cierto es que... Danctian, se supone que debía poseerme para cumplir con la voluntad de los Magos con los que nos hemos encontrado.~ */
== P_DANCTI IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500021 /* ~No fue hasta que uno de los Magos cometió un error.~ */
== P_DANCTI IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500022 /* ~Valatar convocó a un demonio abisal, también, de mi plano.~ */
== P_DANCTI IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500023 /* ~Al enfrentarse a ustedes, el contacto de la esencia del orbe escarlata en Dusk hizo que pudiese comunicarme claramente con él.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500024 /* ~A medida que avanzábamos hacia la guarida de Alabarza, seguí mi conversación con Danctian. En mi mente.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500025 /* ~Me dijo que debía vencer a Alabarza y volver aquí, a la guarida de Mathyus y Michelson.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500026 /* ~La propuesta era ser el conducto de su poder, para que así pudiese absorber la energía vital de los shilmistas.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500027 /* ~A cambio, habría de brindarme un poder más allá de lo imaginable.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500028 /* ~Estaba consciente de una posible traición, <CHARNAME>. Pero supuse que era algo que, llegado al caso, podríamos manejar sin problemas.~ */


// FALL 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10500506 /* ¿Hiciste esto... por poder? Has sido capaz de traicionar a tus amigos... Dusk, ¿cómo has podido? */
== P_DuskJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10500507 /* ~No espero que entiendas, Fall. Eran ellos o yo. Mathyus ya había determinado acabar conmigo una vez que Alabarza hubiese dejado de existir.~ */
== P_DuskJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10500508 /* ~Yo, simplemente, me adelanté a él.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10500509 /* No creo... no creo que hayas hecho lo correcto. */
== P_DuskJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10500510 /* ~Puede que algún día lo comprendas, Fall.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10500511 /* Lo dudo, Dusk... realmente lo dudo... */


== P_DANCTI IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10500029 /* ~Hijo de Bhaal, como verás, Ardusk tiene en ti una fe inconmensurable. Está dispuesto a morir por ti, incluso. Sólo pide, a cambio, que le acompañes en su travesía hacia la venganza.~ ~Hija de Bhaal, como verás, Ardusk tiene en ti una fe inconmensurable. Está dispuesto a morir por ti, incluso. Sólo pide, a cambio, que le acompañes en su travesía hacia la venganza.~ */
END


I_C_T P_DANCTI 0 P_HAKAM_ACRULL_REACT1_DANC1
== P_HAKAM IF ~~ THEN @10500497 /* *susurro* ¿Ahora? */
== P_ACRULL IF ~~ THEN @10500498 /* *susurro* Hm... es una criatura antinatural... pero no parece del todo... antinatural... Aguardemos un instante más, mi buen amigo. */
END
