BEGIN P_GEM

// SIN FALL
IF ~AreaCheck("P_FA16")
!InMyArea("P_FALL")
Global ("P_GemBTalk1","GLOBAL",0)
Global ("P_MorgrathAppear_PA16","GLOBAL",0)
~ THEN BEGIN 1A // from:
  SAY @9071 /* ¿Quién... quién anda ahí? */
  IF ~~ THEN DO ~SetGlobal ("P_GemBTalk1","GLOBAL",1) SetGlobal ("P_MorgrathAppear_PA16","GLOBAL",1)~ GOTO 2A
END

IF ~~ THEN BEGIN 2A // from:
  SAY @90743 /* ~Apenas... apenas puedo verte...~ */
    IF ~~ THEN REPLY @90744 /* Mi dama, ¿te encuentras bien? */  GOTO 3A
	IF ~~ THEN REPLY @90745 /* ¿Eres la hechicera de Evereska? Soy <CHARNAME>. He venido en busca de la Reina Araña. */  GOTO 3A
END

IF ~~ THEN BEGIN 3A // from:
  SAY @90746 /* No... ¡No! Has caído en su trampa... Es demasiado... tarde... */
  IF ~~ THEN DO ~ SetGlobal ("P_MorgrathAppear_PA16","GLOBAL",1) SetGlobal ("P_GemBTalk1","GLOBAL",1)~ EXIT
END

// CON FALL

IF ~~ THEN BEGIN 0 // from:
  SAY @9070 /* *voz débil* ¿Fall? No... no se supone que debas estar aquí.  */
  IF ~~ THEN DO ~~ EXTERN ~P_FALLJ~ 87
END

IF ~AreaCheck("P_FA16")
InMyArea("P_FALL")
Global ("P_GemBTalk1","GLOBAL",0)
Global ("P_MorgrathAppear_PA16","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @9071 /* ¿Quién... quién anda ahí? */
  IF ~~ THEN DO ~SetGlobal ("P_GemBTalk1","GLOBAL",1) SetGlobal ("P_MorgrathAppear_PA16","GLOBAL",1)~ EXTERN ~P_FALLJ~ 86
END

IF ~AreaCheck("P_FA16")
Global("P_MorgrathSpawnPF16","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY @9072 /* Se acabó, Morgrath. <CHARNAME> te ha derrotado. Es hora de que vuelvas a donde perteneces. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",5)~ EXTERN ~P_MORGRA~ 34
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9073 /* ~No. Pero yo sí.~ */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",5)~ EXIT
END



// Fall NO está o NO ha caído en batalla
IF ~Global("P_MorgrathSpawnPF16","GLOBAL",6)
Global("P_FallDiedInFinalBattle","GLOBAL",0)
CombatCounter(0)
~ THEN BEGIN 4 // from:
  SAY @9074 /* La batalla se ha acabado... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",7)~ GOTO 6
END

// Fall HA caído en batalla
IF ~Global("P_MorgrathSpawnPF16","GLOBAL",6)
Global("P_FallDiedInFinalBattle","GLOBAL",1)
CombatCounter(0)
~ THEN BEGIN 4B // from:
  SAY @9074 /* La batalla se ha acabado... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",7)~ GOTO 5
END


IF ~~ THEN BEGIN 5 // from:
  SAY @9075 /* ~Morgrath ha regresado a su propia capa abisal. No sé dónde sea, pero prefiero no averiguarlo. *tos* Yo... lo lamento, no me siento con mucha energía.~ */
  IF ~~ THEN DO ~~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9076 /* No creo... que tenga las fuerzas para sacarnos de aquí. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",7)~ EXIT
END

////////

IF ~AreaCheck("P_2601")
Global("P_FallGemAR2601","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY @90717 /* Lady Vidomina, ¿dónde estamos? */
  IF ~~ THEN DO ~SetGlobal("P_FallGemAR2601","GLOBAL",1)~ EXTERN ~P_VIDOMI~ 110
END

IF ~~ THEN BEGIN 8 // from:
  SAY @90718 /* ~¡Gerwulf, amor mío!~ */
  IF ~~ THEN DO ~~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @90719 /* ~Te amo, hija mía. Tu padre y yo te amamos. Nunca lo olvides. Esto no es el adiós, sin embargo... Algún día, en el algún crepúsculo de otoño, nuestros corazones volverán a reunirse. Que Silvanus y Mystra guíen tus pasos...~ */
  IF ~~ THEN DO ~SetGlobal("P_FallGemAR2601","GLOBAL",2)~ EXIT
END

// DUSK
/*
I_C_T P_GEM 7 P_GEMFA16_7
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9077 /* Madre... ¿te encuentras bien? N-no... no te ves bien. Siento que te desvaneces. */
END
*/

I_C_T P_GEM 5 P_GEMFA16_4B
== P_GEM IF ~~ THEN @90747 /* ~Fall... hija mía... Morgrath... le ha matado...~ */
== P_GEM IF ~~ THEN @90748 /* ~He fallado... lo que he intentado con tanto esfuerzo... He fracasado.~ */
== P_GEM IF ~~ THEN @90749 /* ~Quizás... quizás tú puedas revivirle. Tu poder es inmenso. Has derrotado a Morgrath... Revivir a mi hija no debería ser un problema para ti.~ */
== P_GEM IF ~~ THEN @90750 /* ~Pero si no fueses capaz... supongo que la veré más allá del Velo. No me queda mucho tiempo a mí tampoco.~ */
== P_GEM IF ~~ THEN @90751 /* ~*tose* Pero debo espabilar. Escúchame.~ */
END

I_C_T P_GEM 8 P_GEMFA16_6
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90720 /* *susurro* ¿P-papá? */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90721 /* ¡Padre! ¡Padre! No... esto es un sueño... Vidomina, ¿estamos en un sueño? */
== P_VIDOMI IF ~~ THEN @90722 /* No, querida. Como os he dicho, estamos en el reino divino de aquel al que ustedes llaman Padre Roble. El humano Gerwulf os ha estado esperando. */ 
== P_GEM IF ~~ THEN @90723 /* ~¿Cómo es posible...?~ */
== P_VIDOMI IF ~~ THEN @90724 /* Como os he dicho... he utilizado gran parte de mi poder, casi de una manera irreparable. Sin embargo, Wee Jas aún me permitirá llevar al resto de la compañía de <CHARNAME> de regreso al Templo de Alendir. */ 
== P_VIDOMI IF ~~ THEN @90725 /* No disponemos de mucho tiempo... así que os dejaré a solas unos instantes. */ 
== P_GEM IF ~~ THEN @90726 /* ~Gracias, lady Vidomina... por siempre te estaré agradecida.~ */
== P_GERWUL IF ~~ THEN @90727 /* ~Fall. Hija. ¡Cuánto has crecido! Eres toda una exploradora. Veo que usas la ballesta, como os he enseñado.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90728 /* Papá... Sí, lo he hecho lo mejor que he podido. He tratado de rendirte homenaje con cada disparo de mi ballesta. */
== P_GERWUL IF ~~ THEN @90729 /* ~Lo sé. Mi devoción por tu madre me ha permitido seguir sus pasos a través de Faerûn e incluso el Abismo. El Padre Roble e incluso Mystra estaban conscientes del peligro que representaba Morgrath.~ */
== P_GEM IF ~~ THEN @90730 /* ~Mystra... me ha permitido estar contigo, amor mío.~ */
== P_GERWUL IF ~~ THEN @90731 /* ~Sí, Gem. Lamento... lamento todo lo que han tenido que pasar. Lamento lo de Imnescar... lamento lo de Alendir.~ */
== P_GEM IF ~~ THEN @90732 /* ~Alendir... al final de las cosas ha hecho lo correcto. Espero que Mystra pueda recibirlo en su seno.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90733 /* Sé que así será, madre. Padre, ¿qué pasará ahora? ¿Qué haremos? */
== P_GERWUL IF ~~ THEN @90734 /* ~Tu madre y yo estaremos aquí, mi querida hija. Tú debes continuar. Estás con <CHARNAME> y debes ayudarlo a combatir el mal que azota Suldanessellar.~ */
== P_GEM IF ~~ THEN @90735 /* ~Tienes una larga vida por delante, Fall. Vívela con dignidad sabiendo que tu madre y tu padre están orgullosos de ti.~ */
== P_GEM IF ~~ THEN @90736 /* ~Al final de todo... nos volveremos a reunir aquí, en las praderas eternas de este sagrado plano.~ */
== P_GERWUL IF ~~ THEN @90737 /* ~Pero para ello falta mucho tiempo. Podrás restaurar Imnescar y hacer que esa tierra que fue mancillada renazca.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90738 /* Lo haré, padre. */
== P_GERWUL IF ~~ THEN @90739 /* ~Y nunca olvides cuánto te amo. Eres mi hija y mi amor por ti será imperecedero, ya sea en el Abismo, Faerûn o Tir na Og.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90740 /* *sollozo* Yo también te amo, padre. */
== P_GEM IF ~~ THEN @90741 /* ~Hija, déjame imbuir tu túnica para mejorar sus atributos. Úsala con orgullo, como elfa descendiente de Cormanthy, como defensora de Imnescar.~ */ DO ~TakePartyItem ("p_frobe1") CreateItem("p_frobe2",1,1,1) GiveItem("p_frobe2", "p_fall")~
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90742 /* *sollozo* Gracias, mamá. Prometo usarla con orgullo. Te amo. */
END

I_C_T P_GEM 5 P_GEMFA16_5
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9077 /* Madre... ¿te encuentras bien? N-no... no te ves bien. Siento que te desvaneces. */
== P_GEM IF ~~ THEN @9078 /* ~Fall, mi niña. No sabes cuánto te he extrañado.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9079 /* *sollozo* Mamá, yo también te he extrañado. */
== P_GEM IF ~~ THEN @90710 /* ~Lamento no haberte dicho sobre mi accionar... Nunca quise que te pusieras en peligro. *tos*~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90711 /* Madre, no te esfuerces, no es necesario que- */
== P_GEM IF ~~ THEN @90712 /* ~P-por favor, hija. Debo decírtelo... Cuando descubrí la sombra que atacó nuestro hogar, mi viaje era de venganza.~ */
== P_GEM IF ~~ THEN @90713 /* ~Q-quise, más que nada, matar al monstruo que nos arrebató todo... Pero Morgrath... era un ente maligno, cuyo plan era invadir Faerûn luego de destruir Dreach-naga.~ */
== P_GEM IF ~~ THEN @90714 /* ~Usé todo mi poder para atarla a este Cubil abisal... y la mantendría así durante siglos. Pero ella logró atraerte a ti y a <CHARNAME>.~ */
== P_GEM IF ~~ THEN @90715 /* ~S-sin embargo... le han vencido. Estoy orgullosa de ti, hija. Tu padre también lo estaría.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90716 /* Gracias, mamá. Ahora ya no hables, debes guardar fuerzas para salir de aquí. */
END