BEGIN P_GEM

// SIN FALL
IF ~AreaCheck("P_FA16")
!InMyArea("P_FALL")
Global ("P_GemBTalk1","GLOBAL",0)
Global ("P_MorgrathAppear_PA16","GLOBAL",0)
~ THEN BEGIN 1A // from:
  SAY @9071 /* �Qui�n... qui�n anda ah�? */
  IF ~~ THEN DO ~SetGlobal ("P_GemBTalk1","GLOBAL",1) SetGlobal ("P_MorgrathAppear_PA16","GLOBAL",1)~ GOTO 2A
END

IF ~~ THEN BEGIN 2A // from:
  SAY @90743 /* ~Apenas... apenas puedo verte...~ */
    IF ~~ THEN REPLY @90744 /* Mi dama, �te encuentras bien? */  GOTO 3A
	IF ~~ THEN REPLY @90745 /* �Eres la hechicera de Evereska? Soy <CHARNAME>. He venido en busca de la Reina Ara�a. */  GOTO 3A
END

IF ~~ THEN BEGIN 3A // from:
  SAY @90746 /* No... �No! Has ca�do en su trampa... Es demasiado... tarde... */
  IF ~~ THEN DO ~ SetGlobal ("P_MorgrathAppear_PA16","GLOBAL",1) SetGlobal ("P_GemBTalk1","GLOBAL",1)~ EXIT
END

// CON FALL

IF ~~ THEN BEGIN 0 // from:
  SAY @9070 /* *voz d�bil* �Fall? No... no se supone que debas estar aqu�.  */
  IF ~~ THEN DO ~~ EXTERN ~P_FALLJ~ 87
END

IF ~AreaCheck("P_FA16")
InMyArea("P_FALL")
Global ("P_GemBTalk1","GLOBAL",0)
Global ("P_MorgrathAppear_PA16","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @9071 /* �Qui�n... qui�n anda ah�? */
  IF ~~ THEN DO ~SetGlobal ("P_GemBTalk1","GLOBAL",1) SetGlobal ("P_MorgrathAppear_PA16","GLOBAL",1)~ EXTERN ~P_FALLJ~ 86
END

IF ~AreaCheck("P_FA16")
Global("P_MorgrathSpawnPF16","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY @9072 /* Se acab�, Morgrath. <CHARNAME> te ha derrotado. Es hora de que vuelvas a donde perteneces. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",5)~ EXTERN ~P_MORGRA~ 34
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9073 /* ~No. Pero yo s�.~ */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",5)~ EXIT
END



// Fall NO est� o NO ha ca�do en batalla
IF ~Global("P_MorgrathSpawnPF16","GLOBAL",6)
Global("P_FallDiedInFinalBattle","GLOBAL",0)
CombatCounter(0)
~ THEN BEGIN 4 // from:
  SAY @9074 /* La batalla se ha acabado... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",7)~ GOTO 5
END

// Fall HA ca�do en batalla
IF ~Global("P_MorgrathSpawnPF16","GLOBAL",6)
Global("P_FallDiedInFinalBattle","GLOBAL",1)
CombatCounter(0)
~ THEN BEGIN 4B // from:
  SAY @9074 /* La batalla se ha acabado... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",7)~ GOTO 5
END


IF ~~ THEN BEGIN 5 // from:
  SAY @9075 /* ~Morgrath ha regresado a su propia capa abisal. No s� d�nde sea, pero prefiero no averiguarlo. *tos* Yo... lo lamento, no me siento con mucha energ�a.~ */
  IF ~~ THEN DO ~~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9076 /* No creo... que tenga las fuerzas para sacarnos de aqu�. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",7)~ EXIT
END

////////

IF ~AreaCheck("P_2601")
Global("P_FallGemAR2601","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY @90717 /* Lady Vidomina, �d�nde estamos? */
  IF ~~ THEN DO ~SetGlobal("P_FallGemAR2601","GLOBAL",1)~ EXTERN ~P_VIDOMI~ 110
END

IF ~~ THEN BEGIN 8 // from:
  SAY @90718 /* ~�Gerwulf, amor m�o!~ */
  IF ~~ THEN DO ~~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @90719 /* ~Te amo, hija m�a. Tu padre y yo te amamos. Nunca lo olvides. Esto no es el adi�s, sin embargo... Alg�n d�a, en el alg�n crep�sculo de oto�o, nuestros corazones volver�n a reunirse. Que Silvanus y Mystra gu�en tus pasos...~ */
  IF ~~ THEN DO ~SetGlobal("P_FallGemAR2601","GLOBAL",2)~ EXIT
END

// DUSK
/*
I_C_T P_GEM 7 P_GEMFA16_7
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9077 /* Madre... �te encuentras bien? N-no... no te ves bien. Siento que te desvaneces. */
END
*/

I_C_T P_GEM 5 P_GEMFA16_4B
== P_GEM IF ~~ THEN @90747 /* ~Fall... hija m�a... Morgrath... le ha matado...~ */
== P_GEM IF ~~ THEN @90748 /* ~He fallado... lo que he intentado con tanto esfuerzo... He fracasado.~ */
== P_GEM IF ~~ THEN @90749 /* ~Quiz�s... quiz�s t� puedas revivirle. Tu poder es inmenso. Has derrotado a Morgrath... Revivir a mi hija no deber�a ser un problema para ti.~ */
== P_GEM IF ~~ THEN @90750 /* ~Pero si no fueses capaz... supongo que la ver� m�s all� del Velo. No me queda mucho tiempo a m� tampoco.~ */
== P_GEM IF ~~ THEN @90751 /* ~*tose* Pero debo espabilar. Esc�chame.~ */
END

I_C_T P_GEM 8 P_GEMFA16_6
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90720 /* *susurro* �P-pap�? */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90721 /* �Padre! �Padre! No... esto es un sue�o... Vidomina, �estamos en un sue�o? */
== P_VIDOMI IF ~~ THEN @90722 /* No, querida. Como os he dicho, estamos en el reino divino de aquel al que ustedes llaman Padre Roble. El humano Gerwulf os ha estado esperando. */ 
== P_GEM IF ~~ THEN @90723 /* ~�C�mo es posible...?~ */
== P_VIDOMI IF ~~ THEN @90724 /* Como os he dicho... he utilizado gran parte de mi poder, casi de una manera irreparable. Sin embargo, Wee Jas a�n me permitir� llevar al resto de la compa��a de <CHARNAME> de regreso al Templo de Alendir. */ 
== P_VIDOMI IF ~~ THEN @90725 /* No disponemos de mucho tiempo... as� que os dejar� a solas unos instantes. */ 
== P_GEM IF ~~ THEN @90726 /* ~Gracias, lady Vidomina... por siempre te estar� agradecida.~ */
== P_GERWUL IF ~~ THEN @90727 /* ~Fall. Hija. �Cu�nto has crecido! Eres toda una exploradora. Veo que usas la ballesta, como os he ense�ado.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90728 /* Pap�... S�, lo he hecho lo mejor que he podido. He tratado de rendirte homenaje con cada disparo de mi ballesta. */
== P_GERWUL IF ~~ THEN @90729 /* ~Lo s�. Mi devoci�n por tu madre me ha permitido seguir sus pasos a trav�s de Faer�n e incluso el Abismo. El Padre Roble e incluso Mystra estaban conscientes del peligro que representaba Morgrath.~ */
== P_GEM IF ~~ THEN @90730 /* ~Mystra... me ha permitido estar contigo, amor m�o.~ */
== P_GERWUL IF ~~ THEN @90731 /* ~S�, Gem. Lamento... lamento todo lo que han tenido que pasar. Lamento lo de Imnescar... lamento lo de Alendir.~ */
== P_GEM IF ~~ THEN @90732 /* ~Alendir... al final de las cosas ha hecho lo correcto. Espero que Mystra pueda recibirlo en su seno.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90733 /* S� que as� ser�, madre. Padre, �qu� pasar� ahora? �Qu� haremos? */
== P_GERWUL IF ~~ THEN @90734 /* ~Tu madre y yo estaremos aqu�, mi querida hija. T� debes continuar. Est�s con <CHARNAME> y debes ayudarlo a combatir el mal que azota Suldanessellar.~ */
== P_GEM IF ~~ THEN @90735 /* ~Tienes una larga vida por delante, Fall. V�vela con dignidad sabiendo que tu madre y tu padre est�n orgullosos de ti.~ */
== P_GEM IF ~~ THEN @90736 /* ~Al final de todo... nos volveremos a reunir aqu�, en las praderas eternas de este sagrado plano.~ */
== P_GERWUL IF ~~ THEN @90737 /* ~Pero para ello falta mucho tiempo. Podr�s restaurar Imnescar y hacer que esa tierra que fue mancillada renazca.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90738 /* Lo har�, padre. */
== P_GERWUL IF ~~ THEN @90739 /* ~Y nunca olvides cu�nto te amo. Eres mi hija y mi amor por ti ser� imperecedero, ya sea en el Abismo, Faer�n o Tir na Og.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90740 /* *sollozo* Yo tambi�n te amo, padre. */
== P_GEM IF ~~ THEN @90741 /* ~Hija, d�jame imbuir tu t�nica para mejorar sus atributos. �sala con orgullo, como elfa descendiente de Cormanthy, como defensora de Imnescar.~ */ DO ~TakePartyItem ("p_frobe1") CreateItem("p_frobe2",1,1,1) GiveItem("p_frobe2", "p_fall")~
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90742 /* *sollozo* Gracias, mam�. Prometo usarla con orgullo. Te amo. */
END

I_C_T P_GEM 5 P_GEMFA16_5
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9077 /* Madre... �te encuentras bien? N-no... no te ves bien. Siento que te desvaneces. */
== P_GEM IF ~~ THEN @9078 /* ~Fall, mi ni�a. No sabes cu�nto te he extra�ado.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9079 /* *sollozo* Mam�, yo tambi�n te he extra�ado. */
== P_GEM IF ~~ THEN @90710 /* ~Lamento no haberte dicho sobre mi accionar... Nunca quise que te pusieras en peligro. *tos*~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90711 /* Madre, no te esfuerces, no es necesario que- */
== P_GEM IF ~~ THEN @90712 /* ~P-por favor, hija. Debo dec�rtelo... Cuando descubr� la sombra que atac� nuestro hogar, mi viaje era de venganza.~ */
== P_GEM IF ~~ THEN @90713 /* ~Q-quise, m�s que nada, matar al monstruo que nos arrebat� todo... Pero Morgrath... era un ente maligno, cuyo plan era invadir Faer�n luego de destruir Dreach-naga.~ */
== P_GEM IF ~~ THEN @90714 /* ~Us� todo mi poder para atarla a este Cubil abisal... y la mantendr�a as� durante siglos. Pero ella logr� atraerte a ti y a <CHARNAME>.~ */
== P_GEM IF ~~ THEN @90715 /* ~S-sin embargo... le han vencido. Estoy orgullosa de ti, hija. Tu padre tambi�n lo estar�a.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90716 /* Gracias, mam�. Ahora ya no hables, debes guardar fuerzas para salir de aqu�. */
END