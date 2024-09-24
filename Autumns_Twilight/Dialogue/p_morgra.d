BEGIN P_MORGRA

IF ~AreaCheck("P_F11B")
InMyArea("P_CHO")
Global ("P_MorgrathTalk1","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0 /* <CHARNAME>, finalmente nos conocemos... */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk1","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~Soy Morgrath, Reina de Rachnidra. Mi influjo ha comenzado a expandirse en Dreach-naga. Esto es s�lo la antesala de lo que ver�s en el Plano Material.~*/
    IF ~~ THEN REPLY @2 /* ~Morgrath... has sido una necia al aparecerte ante m�. �Prep�rate a morir!~ */  GOTO 2
	IF ~~ THEN REPLY @3 /* ~Monstruo, �qu� haces aqu�? He derrotado a muchos de los tuyos. Es s�lo cuesti�n de tiempo para que finalmente seas derrotada.~ */ GOTO 2
END


IF ~~ THEN BEGIN 2 // from:
  SAY @4 /* Eres como eres en mis sue�os. Un ente, como yo, que ha dejado un regadero de cad�veres a su paso. No somos tan diferentes, <CHARNAME>. */
  IF ~~ THEN DO ~~ GOTO 3
END  
  
IF ~~ THEN BEGIN 3 // from:
  SAY @5 /* Necesitaba verte. Pocas criaturas han sido capaces de oponerse a mis sue�os. T� eres una de ellas. */
  IF ~~ THEN DO ~~ GOTO 4
END  
 
IF ~~ THEN BEGIN 4 // from:
  SAY @6 /* S�, has acabado con muchos de mis hijos e hijas. �Qu� clase de madre ser�a si no me preocupara por ellos? */
  IF ~~ THEN DO ~~ GOTO 5
END  

IF ~~ THEN BEGIN 5 // from:
  SAY @7 /* Los que han muerto por ti revivir�n en mi Reino, el cual es eterno. Pero me duele ver c�mo son destruidos. */
  IF ~~ THEN DO ~~ GOTO 6
END  

IF ~~ THEN BEGIN 6 // from:
  SAY @8 /* Tu fuerza ser� mi entretenimiento de ahora, <CHARNAME>. Vamos, es tiempo de que te enfrentes a m�. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk1","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END


IF ~AreaCheck("P_F11B")
!InMyArea("P_CHO")
Global ("P_MorgrathTalk1","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY @0 /* <CHARNAME>, finalmente nos conocemos... */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk1","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @1 /* ~Soy Morgrath, Reina de Rachnidra. Mi influjo ha comenzado a expandirse en Dreach-naga. Esto es s�lo la antesala de lo que ver�s en el Plano Material.~*/
    IF ~~ THEN REPLY @2 /* ~Morgrath... has sido una necia al aparecerte ante m�. �Prep�rate a morir!~ */  GOTO 9
	IF ~~ THEN REPLY @3 /* ~Monstruo, �qu� haces aqu�? He derrotado a muchos de los tuyos. Es s�lo cuesti�n de tiempo para que finalmente seas derrotada.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @4 /* Eres como eres en mis sue�os. Un ente, como yo, que ha dejado un regadero de cad�veres a su paso. No somos tan diferentes, <CHARNAME>. */
  IF ~~ THEN DO ~~ GOTO 3
END  

IF ~AreaCheck("P_F11B")
Global ("P_FallMorgrathHurt1","GLOBAL",1)~ THEN BEGIN 10 // from:
  SAY @34 /* Tu reputaci�n te precede. Pero este no es mi poder completo. Notar�s c�mo, con cada uno de nuestros encuentros, mi fuerza incrementa. Nos veremos pronto, <CHARNAME>. Muy pronto. */
  IF ~~ THEN DO ~SetGlobal ("P_FallMorgrathHurt1","GLOBAL",0) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310056 EXIT
END

// 2nd Encounter

IF ~AreaCheck("P_F10B")
InMyArea("P_CHO")
Global ("P_MorgrathTalk2","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY @35 /* Tu astucia no tiene parang�n, <CHARNAME>. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk2","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @36 /* ~�Os gustar�a ser de mi prole? Bajo mi yugo jam�s morir�is.~*/
    IF ~~ THEN REPLY @37 /* ~�Y qu� se supone que debo hacer? �Permitir que me conviertas en dra�a? Eso nunca suceder�.~ */  GOTO 13
	IF ~~ THEN REPLY @38 /* ~No hago tratos con monstruos. Mucho menos con alguien tan malvado como t�.~ */ GOTO 13
	IF ~~ THEN REPLY @39 /* ~Creo que tienes miedo. En tu desesperaci�n buscas un escape conmigo, porque s� que sabes que puedo interferir en tus planes.~ */ GOTO 13_1
END

IF ~~ THEN BEGIN 13_1 // from:
  SAY @40 /* No conozco el miedo, <CHARNAME>. Y no conozco la derrota. */
  IF ~~ THEN DO ~~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @41 /* Es una l�stima. Tu negativa no me deja otra opci�n m�s que luchar contigo una vez m�s. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk2","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END

IF ~AreaCheck("P_F10B")
!InMyArea("P_CHO")
Global ("P_MorgrathTalk2","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY @35 /* Tu astucia no tiene parang�n, <CHARNAME>. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk2","GLOBAL",1)~ GOTO 12
END

IF ~AreaCheck("P_F10B")
Global ("P_FallMorgrathHurt1","GLOBAL",1)~ THEN BEGIN 15 // from:
  SAY @54 /* Muy bien. Tu capacidad de combate rivaliza con mis mejores soldados. Hac�a siglos que no me divert�a tanto. Nos veremos pronto, <CHARNAME>. */
  IF ~~ THEN DO ~SetGlobal ("P_FallMorgrathHurt1","GLOBAL",0) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310057 EXIT
END

// 3rd Encounter

IF ~AreaCheck("P_FA8B")
InMyArea("P_CHO")
Global ("P_MorgrathTalk3","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY @56 /* Esto se est� haciendo una costumbre �no lo crees, <CHARNAME>? */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk3","GLOBAL",1)~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @57 /* ~�Qu� opinas de la estatua que mis hijos han hecho sobre m�? Pienso que fue una buena idea para menoscabar la esperanza de los lagartos. Ha funcionado a la perfecci�n. Creo que han errado en su tama�o. En ese aspecto, no le hace honor.~*/
    IF ~~ THEN REPLY @58 /* ~Pienso que es una estatua horrible. Es una pena que los hombres-lagarto no llegasen a demolerla a tiempo.~ */  GOTO 18
	IF ~~ THEN REPLY @59 /* ~Me da igual. Has venido otra vez a ser derrotada, �no es as�? Vamos, es hora de sangrar, Reina.~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from:
  SAY @60 /* Y sin embargo ser� el faro de mi poder�o en esta capa del Abismo. Un s�mbolo del principio de mi Reinado hacia los planos en los que se extender� mi poderosa telara�a. */
  IF ~~ THEN DO ~~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @61 /* Basta de charla. Es hora de nuestro combate. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk2","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END

IF ~AreaCheck("P_FA8B")
!InMyArea("P_CHO")
Global ("P_MorgrathTalk3","GLOBAL",0)~ THEN BEGIN 20 // from:
  SAY @56 /* Esto se est� haciendo una costumbre �no lo crees, <CHARNAME>? */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk3","GLOBAL",1)~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from:
  SAY @57 /* ~�Qu� opinas de la estatua que mis hijos han hecho sobre m�? Pienso que fue una buena idea para menoscabar la esperanza de los lagartos. Ha funcionado a la perfecci�n. Creo que han errado en su tama�o. En ese aspecto, no le hace honor.~*/
    IF ~~ THEN REPLY @58 /* ~Pienso que es una estatua horrible. Es una pena que los hombres-lagarto no llegasen a demolerla a tiempo.~ */  GOTO 22
	IF ~~ THEN REPLY @59 /* ~Me da igual. Has venido otra vez a ser derrotada, �no es as�? Vamos, es hora de sangrar, Reina.~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from:
  SAY @60 /* Y sin embargo ser� el faro de mi poder�o en esta capa del Abismo. Un s�mbolo del principio de mi Reinado hacia los planos en los que se extender� mi poderosa telara�a. */
  IF ~~ THEN DO ~~ GOTO 19
END

IF ~AreaCheck("P_FA8B")
Global ("P_FallMorgrathHurt1","GLOBAL",1)~ THEN BEGIN 15 // from:
  SAY @64 /* Una peque�a victoria para ti, <CHARNAME>. Recuerda que no es importante aquel que gane muchas batallas... sino aquel que gane la guerra. Ve al Enclave. El fin de la guerra se aproxima... */
  IF ~~ THEN DO ~SetGlobal ("P_FallMorgrathHurt1","GLOBAL",0) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310058 EXIT
END

// POSIBILIDAD 6 -> SIN CHO/SIN FALL/CON VID

IF ~Global("P_MorgrathSpawnPF16","GLOBAL",2)
// Sin Cho
Global("P_ChoCommandersSpawnPFA16","GLOBAL",0)
// Sin Fall
!InParty ("P_FALL")
// Con Vid
Global("P_VidominasArmy","GLOBAL",1)
~ THEN BEGIN 23E // from:
  SAY @65 /* Finalmente... han ca�do a mi telara�a... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24D
END

// POSIBILIDAD 5 -> SIN CHO/CON FALL/CON VID

IF ~Global("P_MorgrathSpawnPF16","GLOBAL",2)
// Sin Cho
Global("P_ChoCommandersSpawnPFA16","GLOBAL",0)
// Sin Fall
InParty ("P_FALL")
// Con Vid
Global("P_VidominasArmy","GLOBAL",1)
~ THEN BEGIN 23D // from:
  SAY @65 /* Finalmente... han ca�do a mi telara�a... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24D
END

IF ~~ THEN BEGIN 24D // from:
  SAY @146 /* ~<CHARNAME>. Era cuesti�n de tiempo para que nuestro encuentro final ocurra. Todo sale seg�n mis planes.~*/
    IF ~~ THEN REPLY @67 /* ~�Esperas que creamos que quer�as esto? Te he derrotado en m�s de una ocasi�n. S� que sabes que tu fin est� cerca.~ */  GOTO 25D
	IF ~~ THEN REPLY @68 /* ~�Seg�n tus planes? Expl�cate, Morgrath.~ */ GOTO 26D
END

IF ~~ THEN BEGIN 25D // from:
  SAY @69 /* ~Eres un est�pido si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprender�s mis palabras.~ ~Eres una est�pida si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprender�s mis palabras.~ */
  IF ~~ THEN DO ~~ GOTO 26D
END

IF ~~ THEN BEGIN 26D // from:
  SAY @70 /* Dreach-naga ya no existe y por ello mi poder ha aumentado considerablemente. S�lo la hechicera selu'taar imped�a mi verdadera salida de este p�ramo. */
    IF ~~ THEN REPLY @71 /* ~�"Verdadera salida"? �De qu� est�s hablando? Te he derrotado en Dreach-naga. No te ve�as, precisamente, encerrada.~ */  GOTO 27D
END

IF ~~ THEN BEGIN 27D // from:
  SAY @72 /* ~Pese a que la selu'taar me ten�a encerrada, era capaz de proyectarme a m� misma hacia Dreach-naga. Todo gracias al asesinato de Tisiphone. Algo que no podr�a haber logrado sin tu participaci�n, claro est�.~ */
  IF ~~ THEN DO ~~ GOTO 28D
END

IF ~~ THEN BEGIN 28D // from:
  SAY @73 /* ~Ante la ausencia de mis hijos, el paso l�gico era destruir Dreach-naga. Hecho que <CHARNAME> logr� con poder y elegancia. Nada de esto habr�a sido posible sin ti.~ */
    IF ~~ THEN REPLY @74 /* ~No, no sab�a nada de esto, monstruo. Jam�s ayudar�a a alguien de tu cala�a.~ */  GOTO 29D
    IF ~~ THEN REPLY @75 /* ~No tienes que agradec�rmelo, Morgrath, puesto a que en breve tu cad�ver decorar� tu propio Cubil.~ */  GOTO 30D
    IF ~~ THEN REPLY @76 /* ~Tu plan no ha servido de nada. Si mueres aqu�, ser� el fin de todo.~ */  GOTO 31D
END

IF ~~ THEN BEGIN 29D // from:
  SAY @77 /* ~Pero lo has hecho. Desde el momento en que has pisado Rachnidra te has convertido en mi marioneta. Pero ya es hora de cortar las cuerdas. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32D
END

IF ~~ THEN BEGIN 30D // from:
  SAY @78 /* ~Tus amenazas son inconsecuentes. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32D
END

IF ~~ THEN BEGIN 31D // from:
  SAY @79 /* ~El fin ser� s�lo el principio, <CHARNAME>. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32D
END

IF ~~ THEN BEGIN 32D // from:
  SAY @80 /* ~�Est�is listos?~ */
  IF ~~ THEN DO ~~ GOTO 33D
END

IF ~~ THEN BEGIN 33D // from:
  SAY @81 /* Mi nombre es Legi�n... porque somos muchos... */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",3) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END




// POSIBILIDAD 3 -> SIN CHO/SIN FALL/SIN VID

IF ~Global("P_MorgrathSpawnPF16","GLOBAL",2)
// Sin Cho
Global("P_ChoCommandersSpawnPFA16","GLOBAL",0)
// Sin Fall
!InParty ("P_FALL")
// Con Vid
Global("P_VidominasArmy","GLOBAL",0)
~ THEN BEGIN 23C // from:
  SAY @65 /* Finalmente... han ca�do a mi telara�a... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24C
END

IF ~~ THEN BEGIN 24C // from:
  SAY @146 /* ~<CHARNAME>. Era cuesti�n de tiempo para que nuestro encuentro final ocurra. Todo sale seg�n mis planes.~*/
    IF ~~ THEN REPLY @67 /* ~�Esperas que creamos que quer�as esto? Te he derrotado en m�s de una ocasi�n. S� que sabes que tu fin est� cerca.~ */  GOTO 25C
	IF ~~ THEN REPLY @68 /* ~�Seg�n tus planes? Expl�cate, Morgrath.~ */ GOTO 26C
END

IF ~~ THEN BEGIN 25C // from:
  SAY @69 /* ~Eres un est�pido si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprender�s mis palabras.~ ~Eres una est�pida si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprender�s mis palabras.~ */
  IF ~~ THEN DO ~~ GOTO 26C
END

IF ~~ THEN BEGIN 26C // from:
  SAY @70 /* Dreach-naga ya no existe y por ello mi poder ha aumentado considerablemente. S�lo la hechicera selu'taar imped�a mi verdadera salida de este p�ramo. */
    IF ~~ THEN REPLY @71 /* ~�"Verdadera salida"? �De qu� est�s hablando? Te he derrotado en Dreach-naga. No te ve�as, precisamente, encerrada.~ */  GOTO 27C
END

IF ~~ THEN BEGIN 27C // from:
  SAY @72 /* ~Pese a que la selu'taar me ten�a encerrada, era capaz de proyectarme a m� misma hacia Dreach-naga. Todo gracias al asesinato de Tisiphone. Algo que no podr�a haber logrado sin tu participaci�n, claro est�.~ */
  IF ~~ THEN DO ~~ GOTO 28C
END

IF ~~ THEN BEGIN 28C // from:
  SAY @73 /* ~Ante la ausencia de mis hijos, el paso l�gico era destruir Dreach-naga. Hecho que <CHARNAME> logr� con poder y elegancia. Nada de esto habr�a sido posible sin ti.~ */
    IF ~~ THEN REPLY @74 /* ~No, no sab�a nada de esto, monstruo. Jam�s ayudar�a a alguien de tu cala�a.~ */  GOTO 29C
    IF ~~ THEN REPLY @75 /* ~No tienes que agradec�rmelo, Morgrath, puesto a que en breve tu cad�ver decorar� tu propio Cubil.~ */  GOTO 30C
    IF ~~ THEN REPLY @76 /* ~Tu plan no ha servido de nada. Si mueres aqu�, ser� el fin de todo.~ */  GOTO 31C
END

IF ~~ THEN BEGIN 29C // from:
  SAY @77 /* ~Pero lo has hecho. Desde el momento en que has pisado Rachnidra te has convertido en mi marioneta. Pero ya es hora de cortar las cuerdas. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32C
END

IF ~~ THEN BEGIN 30C // from:
  SAY @78 /* ~Tus amenazas son inconsecuentes. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32C
END

IF ~~ THEN BEGIN 31C // from:
  SAY @79 /* ~El fin ser� s�lo el principio, <CHARNAME>. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32C
END

IF ~~ THEN BEGIN 32C // from:
  SAY @80 /* ~�Est�is listos?~ */
  IF ~~ THEN DO ~~ GOTO 33C
END

IF ~~ THEN BEGIN 33C // from:
  SAY @81 /* Mi nombre es Legi�n... porque somos muchos... */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",3) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END


// POSIBILIDAD 2 -> SIN CHO/CON FALL/SIN VID

IF ~Global("P_MorgrathSpawnPF16","GLOBAL",2)
// Sin Cho
Global("P_ChoCommandersSpawnPFA16","GLOBAL",0)
// Sin Fall
InParty ("P_FALL")
// Con Vid
Global("P_VidominasArmy","GLOBAL",0)
~ THEN BEGIN 23B // from:
  SAY @65 /* Finalmente... han ca�do a mi telara�a... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24B
END

IF ~~ THEN BEGIN 24B // from:
  SAY @146 /* ~<CHARNAME>. Era cuesti�n de tiempo para que nuestro encuentro final ocurra. Todo sale seg�n mis planes.~*/
    IF ~~ THEN REPLY @67 /* ~�Esperas que creamos que quer�as esto? Te he derrotado en m�s de una ocasi�n. S� que sabes que tu fin est� cerca.~ */  GOTO 25B
	IF ~~ THEN REPLY @68 /* ~�Seg�n tus planes? Expl�cate, Morgrath.~ */ GOTO 26B
END

IF ~~ THEN BEGIN 25B // from:
  SAY @69 /* ~Eres un est�pido si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprender�s mis palabras.~ ~Eres una est�pida si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprender�s mis palabras.~ */
  IF ~~ THEN DO ~~ GOTO 26B
END

IF ~~ THEN BEGIN 26B // from:
  SAY @70 /* Dreach-naga ya no existe y por ello mi poder ha aumentado considerablemente. S�lo la hechicera selu'taar imped�a mi verdadera salida de este p�ramo. */
    IF ~~ THEN REPLY @71 /* ~�"Verdadera salida"? �De qu� est�s hablando? Te he derrotado en Dreach-naga. No te ve�as, precisamente, encerrada.~ */  GOTO 27B
END

IF ~~ THEN BEGIN 27B // from:
  SAY @72 /* ~Pese a que la selu'taar me ten�a encerrada, era capaz de proyectarme a m� misma hacia Dreach-naga. Todo gracias al asesinato de Tisiphone. Algo que no podr�a haber logrado sin tu participaci�n, claro est�.~ */
  IF ~~ THEN DO ~~ GOTO 28B
END

IF ~~ THEN BEGIN 28B // from:
  SAY @73 /* ~Ante la ausencia de mis hijos, el paso l�gico era destruir Dreach-naga. Hecho que <CHARNAME> logr� con poder y elegancia. Nada de esto habr�a sido posible sin ti.~ */
    IF ~~ THEN REPLY @74 /* ~No, no sab�a nada de esto, monstruo. Jam�s ayudar�a a alguien de tu cala�a.~ */  GOTO 29B
    IF ~~ THEN REPLY @75 /* ~No tienes que agradec�rmelo, Morgrath, puesto a que en breve tu cad�ver decorar� tu propio Cubil.~ */  GOTO 30B
    IF ~~ THEN REPLY @76 /* ~Tu plan no ha servido de nada. Si mueres aqu�, ser� el fin de todo.~ */  GOTO 31B
END

IF ~~ THEN BEGIN 29B // from:
  SAY @77 /* ~Pero lo has hecho. Desde el momento en que has pisado Rachnidra te has convertido en mi marioneta. Pero ya es hora de cortar las cuerdas. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32B
END

IF ~~ THEN BEGIN 30B // from:
  SAY @78 /* ~Tus amenazas son inconsecuentes. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32B
END

IF ~~ THEN BEGIN 31B // from:
  SAY @79 /* ~El fin ser� s�lo el principio, <CHARNAME>. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32B
END

IF ~~ THEN BEGIN 32B // from:
  SAY @80 /* ~�Est�is listos?~ */
  IF ~~ THEN DO ~~ GOTO 33B
END

IF ~~ THEN BEGIN 33B // from:
  SAY @81 /* Mi nombre es Legi�n... porque somos muchos... */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",3) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END



// POSIBILIDAD 4 -> CHO/SIN FALL/VID

IF ~Global("P_MorgrathSpawnPF16","GLOBAL",2)
// Con Cho
Global("P_ChoCommandersSpawnPFA16","GLOBAL",1)
// Sin Fall
!InParty ("P_FALL")
// Con Vid
Global("P_VidominasArmy","GLOBAL",1)
~ THEN BEGIN 23A // from:
  SAY @65 /* Finalmente... han ca�do a mi telara�a... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24A
END

IF ~~ THEN BEGIN 24A // from:
  SAY @146 /* ~<CHARNAME>. Era cuesti�n de tiempo para que nuestro encuentro final ocurra. Todo sale seg�n mis planes.~*/
    IF ~~ THEN REPLY @67 /* ~�Esperas que creamos que quer�as esto? Te he derrotado en m�s de una ocasi�n. S� que sabes que tu fin est� cerca.~ */  GOTO 25
	IF ~~ THEN REPLY @68 /* ~�Seg�n tus planes? Expl�cate, Morgrath.~ */ GOTO 26
END

// POSIBILIDAD 1 -> CHO/FALL/VID

IF ~Global("P_MorgrathSpawnPF16","GLOBAL",2)
// Con Cho
Global("P_ChoCommandersSpawnPFA16","GLOBAL",1)
// Con Fall
InParty ("P_FALL")
// Con Vid
Global("P_VidominasArmy","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY @65 /* Finalmente... han ca�do a mi telara�a... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @66 /* ~Fall y <CHARNAME>. Era cuesti�n de tiempo para que nuestro encuentro final ocurra. Todo sale seg�n mis planes.~*/
    IF ~~ THEN REPLY @67 /* ~�Esperas que creamos que quer�as esto? Te he derrotado en m�s de una ocasi�n. S� que sabes que tu fin est� cerca.~ */  GOTO 25
	IF ~~ THEN REPLY @68 /* ~�Seg�n tus planes? Expl�cate, Morgrath.~ */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from:
  SAY @69 /* ~Eres un est�pido si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprender�s mis palabras.~ ~Eres una est�pida si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprender�s mis palabras.~ */
  IF ~~ THEN DO ~~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from:
  SAY @70 /* Dreach-naga ya no existe y por ello mi poder ha aumentado considerablemente. S�lo la hechicera selu'taar imped�a mi verdadera salida de este p�ramo. */
    IF ~~ THEN REPLY @71 /* ~�"Verdadera salida"? �De qu� est�s hablando? Te he derrotado en Dreach-naga. No te ve�as, precisamente, encerrada.~ */  GOTO 27
END

IF ~~ THEN BEGIN 27 // from:
  SAY @72 /* ~Pese a que la selu'taar me ten�a encerrada, era capaz de proyectarme a m� misma hacia Dreach-naga. Todo gracias al asesinato de Tisiphone. Algo que no podr�a haber logrado sin tu participaci�n, claro est�.~ */
  IF ~~ THEN DO ~~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from:
  SAY @73 /* ~Ante la ausencia de mis hijos, el paso l�gico era destruir Dreach-naga. Hecho que <CHARNAME> logr� con poder y elegancia. Nada de esto habr�a sido posible sin ti.~ */
    IF ~~ THEN REPLY @74 /* ~No, no sab�a nada de esto, monstruo. Jam�s ayudar�a a alguien de tu cala�a.~ */  GOTO 29
    IF ~~ THEN REPLY @75 /* ~No tienes que agradec�rmelo, Morgrath, puesto a que en breve tu cad�ver decorar� tu propio Cubil.~ */  GOTO 30
    IF ~~ THEN REPLY @76 /* ~Tu plan no ha servido de nada. Si mueres aqu�, ser� el fin de todo.~ */  GOTO 31
END

IF ~~ THEN BEGIN 29 // from:
  SAY @77 /* ~Pero lo has hecho. Desde el momento en que has pisado Rachnidra te has convertido en mi marioneta. Pero ya es hora de cortar las cuerdas. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from:
  SAY @78 /* ~Tus amenazas son inconsecuentes. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32
END

IF ~~ THEN BEGIN 31 // from:
  SAY @79 /* ~El fin ser� s�lo el principio, <CHARNAME>. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from:
  SAY @80 /* ~�Est�is listos?~ */
  IF ~~ THEN DO ~~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @81 /* Mi nombre es Legi�n... porque somos muchos... */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",3) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @145 /* ~No, selu'taar. No puedo ser destruida. No puedo morir. Soy eterna. <CHARNAME> no tiene la capacidad arcana para expulsarme de esta capa abisal.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_GEM~ 3
END

I_C_T P_MORGRA 32D P_MORGRAFA16_9
== P_MORGRA IF ~~ THEN @143 /* ~Vida o muerte, no hay m�s alternativas.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @144 /* Madre, no te preocupes: Yo he de salvarte. �Morgrath! Ha llegado el momento de tu ca�da. En el nombre de Imnescar y del Padre Roble. En el nombre de los exploradores ca�dos. �En el nombre de mi padre, Gerwulf! Tu malvada existencia acaba aqu�. �A luchar! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @153 /* ~No dejaremos que invadas Faer�n, monstruo. �Es hora de pelear! El enemigo no tendr� piedad... �Nosotros tampoco!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @154 /* ~Las alima�as existen para ser aplastadas. Puede que el tama�o de �stas sea un poco excesivo... pero su destino ser� el mismo. �Es hora de derramar un poco de sangre!~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @82 /* ~�Mi h�mster, <CHARNAME>, Fall y yo defendemos la Naturaleza! Monstruos malignos que amenazan con destruir todo lo que amamos no tienen lugar al perd�n. �T�, Reina de las Ara�as, te presento a mi espada! �Espada, te presento a la Reina de las Ara�as!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @83 /* ~Quayle me ha ense�ado mucho sobre la compasi�n, as� como la dogma de Baervan. Pero hoy no tenemos otra opci�n m�s que luchar sin cuartel. �Sin piedad para los demonios que son enemigos de la vida!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @84 /* ~<CHARNAME>, Fall... Estamos ante una de las batallas m�s importantes en estas extra�as tierras. �Por Torm que dar� mi vida si es necesario con tal de erradicar este mal!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @85 /* ~He perdido a Patrick ante la venida de sombras malignas. �No permitir� que vuelva a suceder! Valent�a e inteligencia ser�n necesarias para triunfar aqu�, <CHARNAME>. �Vamos, amigos, es hora de luchar!~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @86 /* ~Helm, dame fuerzas. �Hoy nuestro honor no ser� mancillado! Por todo lo que es sagrado, demonio, hoy caer�s aqu�.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @87 /* ~Los d�biles no ser�n alimento de estas criaturas. �No lo permitir�! Todo aquello que est� en mi poder ser� utilizado para ayudar en la victoria.~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @88 /* ~Eres una afrenta para Silvanus, Morgrath. Hoy, con el poder que la Naturaleza me confiere, morir�is. �Por los ca�dos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @89 /* ~Incluso en la oscuridad m�s profunda del Abismo la luz de una luci�rnaga puede romper con la negrura. Seremos luci�rnagas en la lucha que se avecina, �y tu oscuridad, Morgrath, ser� derrotada!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @90 /* ~Has acabado con muchas estirpes, Morgrath. �Pues aqu� tienes al �ltimo de los Corthala! �Quieres acabar con una estirpe m�s? �Vamos, ven por m�!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @91 /* ~Incluso tu existencia es una afrenta para alguien tan despreciable como Lolth. T� no eres diferente, "velkyn". Tus sombras no rivalizar�n con Shar. �Oloth plyn!~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @92 /* ~Por m�s interesante (y repugnante) que me hayan parecido las ara�as, ya es hora de despacharlas. He aprendido de ellas lo necesario y Edwin Odesseiron est� listo para demostrar su poder (S�, fuego servir�. Mucho fuego).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @93 /* ~�Ya era la hora de la lucha y la sangre! Todos estos sinsentidos abisales ya me ten�an la paciencia hasta los cuernos. �Morid!~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @94 /* ~Todo esto se habr�a solucionado si me hubieran hecho caso con respecto a mis consejos sobre los ar�cnidos, un invento patentado por Ma Jansen. Ya sabes, la Espectacular Trompeta Antiara�as Jansen. La misma fue imbuida por t�o Gerhart y si tocabas las notas correspondentes pod�as hacer que las ara�as huyan como ratas. �Por qu� no la he tra�do te preguntar�s? Bueno, Ma Jansen no presta sus cosas, no desde la vez que tom� "prestados" sus utensilios de cocina para hacer una poci�n de jugo a base de nabos para la disminuci�n de los granos en los nudillos. Vali� la pena pero ahora veo las consecuencias de mis actos.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @95 /* ~Nuestros pasos resuenan como ecos de valent�a enfrentando el terror de la ara�a ancestral. Vamos, mi cuervo, juntos forjaremos una melod�a de esperanza y luz en esta sombra abismal.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @96 /* ~�Piensas que Winthrop creer�a que estamos a punto de combatir contra un mal antiguo en un psicod�lico Cubil en el Abismo? Yo tampoco lo creer�a, <CHARNAME>. Espero poder contarle esto alg�n d�a a nuestro querido Puffguts.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @97 /* ~Mi experiencia lidiando contra este tipo de enemigos no es escasa. Es hora de demostrar a esta inmundicia lo que un Guardia Negro puede hacer.~ */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @98 /* ~Mi pu�o representar� la luz del sol en este lugar tan siniestro. Sel�ne, �gu�a mi mano!~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @99 /* ~�Mi magia salvaje har� estragos aqu�! *susurro* �Eso son� amenazante? �Notas que las patas de las ara�as tiemblan de miedo? Bueno, no importa. Supongo que lo descubriremos en breve.~ */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @100 /* ~La sangre ar�cnida es algo que s�lo usar�a para lanzar en un vertedero. Vamos, insectos, os demostrar� de lo que soy capaz.~ */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @101 /* ~(GRU�IDO) *muestra sus garras y mueve sus patas violentamente, posicion�ndose firmemente en el suelo, listo para embestir a sus enemigos*~ */
== P_TAMIKA IF ~~ THEN @111 /* ~Muy bien, hermanos. Es el momento de representar a Wee Jas en este combate.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_NIMBUS IF ~~ THEN @112 /* ~�Hermanos? Vas a hacer que mi coraz�n vuelva a latir, querida Tamika.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_XSI IF ~~ THEN @113 /* ~Ya basta de cursiler�as. Xsi demostrar� de lo que es capaz. Ense�aremos a estos enemigos c�mo se abraza la muerte de forma apropiada.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_KANKRA IF ~~ THEN @147 /* ~Kankra listo para demostrar a Madre su amor por ella.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_LIPHIX IF ~~ THEN @148 /* ~Como mi madre dijo: Vida o muerte, no hay m�s alternativas.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_ARTHRO IF ~~ THEN @114 /* ~Madre, no te decepcionaremos.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_MESO IF ~~ THEN @115 /* ~Desde el momento en que sus pies tocaron esta sagrada tierra, sus cuerpos y almas fueron puestas al alcance del Juicio de la Madre de la Oscuridad. Morgrath, la Legi�n que no se puede ver, os condena a muerte. Han sido bendecidos por un gran honor. Abr�cenlo.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
END



I_C_T P_MORGRA 27D P_MORGRAFA16_8
== P_MORGRA IF ~~ THEN @124 /* ~Sea como fuere, est�is aqu�. La selu'taar se est� quedando sin energ�a... y la esencia del semidi�s me dar� el poder suficiente para romper este cautiverio y as� poder tomar toda esta capa abisal.~ ~Sea como fuere, est�is aqu�. La selu'taar se est� quedando sin energ�a... y la esencia de la semidiosa me dar� el poder suficiente para romper este cautiverio y as� poder tomar toda esta capa abisal.~ */
== P_MORGRA IF ~InMyArea("P_TAMIKA")~ THEN @125 /* ~Lo primero que har� ser� destruir el Enclave de la Bruja. La impertinencia de la liche ha alcanzado el l�mite de mi paciencia. Sus huesos adornar�n las ruinas de Dreach-naga mientras la sombra de my Shyntquarra se expanden por toda esta naci�n.~ */
== P_TAMIKA IF ~~ THEN @126 /* ~No te ser� tan f�cil, Morgrath. Estamos aqu� para presentar batalla en nombre de nuestra se�ora, Vidomina.~ */
== P_NIMBUS IF ~~ THEN @127 /* ~Ustedes las ara�as sois tan horrendas. Acabar con su fealdad es un deber que tenemos en nombre de todo lo que es bello.~ */
== P_XSI IF ~~ THEN @128 /* ~Cuando llegu� aqu�, ustedes, los ar�cnidos, me hicieron huir como una rata. Ahora heme aqu� como poderosos aliados. La muerte da revancha.~ */
== P_MORGRA IF ~InMyArea("P_TAMIKA")~ THEN @129 /* ~As� que la Bruja ha enviado a sus ni�os a morir. Interesante. Mis hijos se encargar�n de ustedes, ya lo ver�n.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @130 /* No lo lograr�s, Morgrath. Hemos recorrido un largo camino y no ser� para morir aqu�. �Tu maldad acaba aqu� y ahora! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @131 /* Peque�a, he o�do ese discurso tantas veces de aventureros pomposos y d�jame decirte que todos han terminado en las fauces de mis ni�os. */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @132 /* Morgrath... deja ir a mi hija. Esto... es entre t� y yo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @133 /* Madre, �no! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @134 /* Selu'taar, tu plan ha fracasado estrepitosamente. La �nica criatura que realmente intentabas proteger ha venido a mi telara�a. Ser�s testigo de c�mo despedazado su cad�ver, poco a poco. La tristeza que te invadir� ser� tan grande que la locura ser� un regalo bienvenido. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @135 /* �Plan? Madre, �a qu� se refiere? */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @136 /* Yo... yo... */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @137 /* No puedo da�ar a tu madre, ni�a. Ella ha conjurado un hechizo poderoso que evita que le alcance, al mismo tiempo en que me ata a ese cubil. Mientras la selu'taar siga con vida, ni ella ni yo podremos dejar este lugar, por lo que estamos atadas al Abismo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @138 /* Pero su plan tiene una falencia... y es que la selu'taar es una mortal. El paso del tiempo no har�a m�s que debilitar su poder. Quiz�s destruyendo Dreach-naga podr�a sortear este conjuro de Cautiverio. Y de hecho, eso est� sucediendo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @139 /* El Maestro de la Escarcha, el otro selu'taar, descubri� mis planes. Supongo que su intento de evitar que llegasen a Rachnidra fracas� y no hizo m�s que colaborar con el aumento de mi poder. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @140 /* Sab�a que llegar�as aqu�. Era cuesti�n de tiempo. Mi hijo, Mesothel, me ha ido informando del progreso de <CHARNAME> a trav�s de Faer�n. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @141 /* Fue por eso que decid� retirar a mis hijos del Abismo, ocult�ndolos en las sombras. Sab�a que la Bruja del Enclave habr�a de ayudarlos, pues su anhelo de escapar del Abismo fue utilizado, tambi�n, a mi ventaja. */
== P_MORGRA IF ~!InParty("P_Fall") !InMyArea("P_Fall")~ THEN @150 /* El plan de esta selu'taar ha fracasado estrepitosamente. */
== P_MORGRA IF ~!InParty("P_Fall") !InMyArea("P_Fall")~ THEN @151 /* Ella ha conjurado un hechizo poderoso que evita que le alcance, al mismo tiempo en que me ata a ese cubil. Mientras la selu'taar siga con vida, ni ella ni yo podremos dejar este lugar, por lo que estamos atadas al Abismo. */
== P_MORGRA IF ~!InParty("P_Fall") !InMyArea("P_Fall")~ THEN @138 /* Pero su plan tiene una falencia... y es que la selu'taar es una mortal. El paso del tiempo no har�a m�s que debilitar su poder. Quiz�s destruyendo Dreach-naga podr�a sortear este conjuro de Cautiverio. Y de hecho, eso est� sucediendo. */
== P_MORGRA IF ~!InParty("P_Fall") !InMyArea("P_Fall")~ THEN @152 /* Yo sab�a que llegar�as aqu�. Era cuesti�n de tiempo. Mi hijo, Mesothel, me ha ido informando del progreso de <CHARNAME> a trav�s de Faer�n. */
== P_MORGRA IF ~!InParty("P_Fall") !InMyArea("P_Fall")~ THEN @141 /* Fue por eso que decid� retirar a mis hijos del Abismo, ocult�ndolos en las sombras. Sab�a que la Bruja del Enclave habr�a de ayudarlos, pues su anhelo de escapar del Abismo fue utilizado, tambi�n, a mi ventaja. */
END


I_C_T P_MORGRA 32C P_MORGRAFA16_7
== P_MORGRA IF ~~ THEN @143 /* ~Vida o muerte, no hay m�s alternativas.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @144 /* Madre, no te preocupes: Yo he de salvarte. �Morgrath! Ha llegado el momento de tu ca�da. En el nombre de Imnescar y del Padre Roble. En el nombre de los exploradores ca�dos. �En el nombre de mi padre, Gerwulf! Tu malvada existencia acaba aqu�. �A luchar! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @153 /* ~No dejaremos que invadas Faer�n, monstruo. �Es hora de pelear! El enemigo no tendr� piedad... �Nosotros tampoco!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @154 /* ~Las alima�as existen para ser aplastadas. Puede que el tama�o de �stas sea un poco excesivo... pero su destino ser� el mismo. �Es hora de derramar un poco de sangre!~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @82 /* ~�Mi h�mster, <CHARNAME>, Fall y yo defendemos la Naturaleza! Monstruos malignos que amenazan con destruir todo lo que amamos no tienen lugar al perd�n. �T�, Reina de las Ara�as, te presento a mi espada! �Espada, te presento a la Reina de las Ara�as!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @83 /* ~Quayle me ha ense�ado mucho sobre la compasi�n, as� como la dogma de Baervan. Pero hoy no tenemos otra opci�n m�s que luchar sin cuartel. �Sin piedad para los demonios que son enemigos de la vida!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @84 /* ~<CHARNAME>, Fall... Estamos ante una de las batallas m�s importantes en estas extra�as tierras. �Por Torm que dar� mi vida si es necesario con tal de erradicar este mal!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @85 /* ~He perdido a Patrick ante la venida de sombras malignas. �No permitir� que vuelva a suceder! Valent�a e inteligencia ser�n necesarias para triunfar aqu�, <CHARNAME>. �Vamos, amigos, es hora de luchar!~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @86 /* ~Helm, dame fuerzas. �Hoy nuestro honor no ser� mancillado! Por todo lo que es sagrado, demonio, hoy caer�s aqu�.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @87 /* ~Los d�biles no ser�n alimento de estas criaturas. �No lo permitir�! Todo aquello que est� en mi poder ser� utilizado para ayudar en la victoria.~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @88 /* ~Eres una afrenta para Silvanus, Morgrath. Hoy, con el poder que la Naturaleza me confiere, morir�is. �Por los ca�dos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @89 /* ~Incluso en la oscuridad m�s profunda del Abismo la luz de una luci�rnaga puede romper con la negrura. Seremos luci�rnagas en la lucha que se avecina, �y tu oscuridad, Morgrath, ser� derrotada!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @90 /* ~Has acabado con muchas estirpes, Morgrath. �Pues aqu� tienes al �ltimo de los Corthala! �Quieres acabar con una estirpe m�s? �Vamos, ven por m�!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @91 /* ~Incluso tu existencia es una afrenta para alguien tan despreciable como Lolth. T� no eres diferente, "velkyn". Tus sombras no rivalizar�n con Shar. �Oloth plyn!~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @92 /* ~Por m�s interesante (y repugnante) que me hayan parecido las ara�as, ya es hora de despacharlas. He aprendido de ellas lo necesario y Edwin Odesseiron est� listo para demostrar su poder (S�, fuego servir�. Mucho fuego).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @93 /* ~�Ya era la hora de la lucha y la sangre! Todos estos sinsentidos abisales ya me ten�an la paciencia hasta los cuernos. �Morid!~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @94 /* ~Todo esto se habr�a solucionado si me hubieran hecho caso con respecto a mis consejos sobre los ar�cnidos, un invento patentado por Ma Jansen. Ya sabes, la Espectacular Trompeta Antiara�as Jansen. La misma fue imbuida por t�o Gerhart y si tocabas las notas correspondentes pod�as hacer que las ara�as huyan como ratas. �Por qu� no la he tra�do te preguntar�s? Bueno, Ma Jansen no presta sus cosas, no desde la vez que tom� "prestados" sus utensilios de cocina para hacer una poci�n de jugo a base de nabos para la disminuci�n de los granos en los nudillos. Vali� la pena pero ahora veo las consecuencias de mis actos.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @95 /* ~Nuestros pasos resuenan como ecos de valent�a enfrentando el terror de la ara�a ancestral. Vamos, mi cuervo, juntos forjaremos una melod�a de esperanza y luz en esta sombra abismal.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @96 /* ~�Piensas que Winthrop creer�a que estamos a punto de combatir contra un mal antiguo en un psicod�lico Cubil en el Abismo? Yo tampoco lo creer�a, <CHARNAME>. Espero poder contarle esto alg�n d�a a nuestro querido Puffguts.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @97 /* ~Mi experiencia lidiando contra este tipo de enemigos no es escasa. Es hora de demostrar a esta inmundicia lo que un Guardia Negro puede hacer.~ */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @98 /* ~Mi pu�o representar� la luz del sol en este lugar tan siniestro. Sel�ne, �gu�a mi mano!~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @99 /* ~�Mi magia salvaje har� estragos aqu�! *susurro* �Eso son� amenazante? �Notas que las patas de las ara�as tiemblan de miedo? Bueno, no importa. Supongo que lo descubriremos en breve.~ */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @100 /* ~La sangre ar�cnida es algo que s�lo usar�a para lanzar en un vertedero. Vamos, insectos, os demostrar� de lo que soy capaz.~ */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @101 /* ~(GRU�IDO) *muestra sus garras y mueve sus patas violentamente, posicion�ndose firmemente en el suelo, listo para embestir a sus enemigos*~ */
== P_KANKRA IF ~~ THEN @147 /* ~Kankra listo para demostrar a Madre su amor por ella.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_LIPHIX IF ~~ THEN @148 /* ~Como mi madre dijo: Vida o muerte, no hay m�s alternativas.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_ARTHRO IF ~~ THEN @114 /* ~Madre, no te decepcionaremos.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_MESO IF ~~ THEN @115 /* ~Desde el momento en que sus pies tocaron esta sagrada tierra, sus cuerpos y almas fueron puestas al alcance del Juicio de la Madre de la Oscuridad. Morgrath, la Legi�n que no se puede ver, os condena a muerte. Han sido bendecidos por un gran honor. Abr�cenlo.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
END



I_C_T P_MORGRA 27C P_MORGRAFA16_6
== P_MORGRA IF ~~ THEN @150 /* El plan de esta selu'taar ha fracasado estrepitosamente. */
== P_MORGRA IF ~~ THEN @151 /* Ella ha conjurado un hechizo poderoso que evita que le alcance, al mismo tiempo en que me ata a ese cubil. Mientras la selu'taar siga con vida, ni ella ni yo podremos dejar este lugar, por lo que estamos atadas al Abismo. */
== P_MORGRA IF ~~ THEN @138 /* Pero su plan tiene una falencia... y es que la selu'taar es una mortal. El paso del tiempo no har�a m�s que debilitar su poder. Quiz�s destruyendo Dreach-naga podr�a sortear este conjuro de Cautiverio. Y de hecho, eso est� sucediendo. */
== P_MORGRA IF ~~ THEN @152 /* Yo sab�a que llegar�as aqu�. Era cuesti�n de tiempo. Mi hijo, Mesothel, me ha ido informando del progreso de <CHARNAME> a trav�s de Faer�n. */
== P_MORGRA IF ~~ THEN @141 /* Fue por eso que decid� retirar a mis hijos del Abismo, ocult�ndolos en las sombras. Sab�a que la Bruja del Enclave habr�a de ayudarlos, pues su anhelo de escapar del Abismo fue utilizado, tambi�n, a mi ventaja. */
END


I_C_T P_MORGRA 32B P_MORGRAFA16_5
== P_MORGRA IF ~~ THEN @143 /* ~Vida o muerte, no hay m�s alternativas.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @144 /* Madre, no te preocupes: Yo he de salvarte. �Morgrath! Ha llegado el momento de tu ca�da. En el nombre de Imnescar y del Padre Roble. En el nombre de los exploradores ca�dos. �En el nombre de mi padre, Gerwulf! Tu malvada existencia acaba aqu�. �A luchar! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @153 /* ~No dejaremos que invadas Faer�n, monstruo. �Es hora de pelear! El enemigo no tendr� piedad... �Nosotros tampoco!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @154 /* ~Las alima�as existen para ser aplastadas. Puede que el tama�o de �stas sea un poco excesivo... pero su destino ser� el mismo. �Es hora de derramar un poco de sangre!~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @82 /* ~�Mi h�mster, <CHARNAME>, Fall y yo defendemos la Naturaleza! Monstruos malignos que amenazan con destruir todo lo que amamos no tienen lugar al perd�n. �T�, Reina de las Ara�as, te presento a mi espada! �Espada, te presento a la Reina de las Ara�as!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @83 /* ~Quayle me ha ense�ado mucho sobre la compasi�n, as� como la dogma de Baervan. Pero hoy no tenemos otra opci�n m�s que luchar sin cuartel. �Sin piedad para los demonios que son enemigos de la vida!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @84 /* ~<CHARNAME>, Fall... Estamos ante una de las batallas m�s importantes en estas extra�as tierras. �Por Torm que dar� mi vida si es necesario con tal de erradicar este mal!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @85 /* ~He perdido a Patrick ante la venida de sombras malignas. �No permitir� que vuelva a suceder! Valent�a e inteligencia ser�n necesarias para triunfar aqu�, <CHARNAME>. �Vamos, amigos, es hora de luchar!~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @86 /* ~Helm, dame fuerzas. �Hoy nuestro honor no ser� mancillado! Por todo lo que es sagrado, demonio, hoy caer�s aqu�.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @87 /* ~Los d�biles no ser�n alimento de estas criaturas. �No lo permitir�! Todo aquello que est� en mi poder ser� utilizado para ayudar en la victoria.~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @88 /* ~Eres una afrenta para Silvanus, Morgrath. Hoy, con el poder que la Naturaleza me confiere, morir�is. �Por los ca�dos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @89 /* ~Incluso en la oscuridad m�s profunda del Abismo la luz de una luci�rnaga puede romper con la negrura. Seremos luci�rnagas en la lucha que se avecina, �y tu oscuridad, Morgrath, ser� derrotada!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @90 /* ~Has acabado con muchas estirpes, Morgrath. �Pues aqu� tienes al �ltimo de los Corthala! �Quieres acabar con una estirpe m�s? �Vamos, ven por m�!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @91 /* ~Incluso tu existencia es una afrenta para alguien tan despreciable como Lolth. T� no eres diferente, "velkyn". Tus sombras no rivalizar�n con Shar. �Oloth plyn!~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @92 /* ~Por m�s interesante (y repugnante) que me hayan parecido las ara�as, ya es hora de despacharlas. He aprendido de ellas lo necesario y Edwin Odesseiron est� listo para demostrar su poder (S�, fuego servir�. Mucho fuego).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @93 /* ~�Ya era la hora de la lucha y la sangre! Todos estos sinsentidos abisales ya me ten�an la paciencia hasta los cuernos. �Morid!~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @94 /* ~Todo esto se habr�a solucionado si me hubieran hecho caso con respecto a mis consejos sobre los ar�cnidos, un invento patentado por Ma Jansen. Ya sabes, la Espectacular Trompeta Antiara�as Jansen. La misma fue imbuida por t�o Gerhart y si tocabas las notas correspondentes pod�as hacer que las ara�as huyan como ratas. �Por qu� no la he tra�do te preguntar�s? Bueno, Ma Jansen no presta sus cosas, no desde la vez que tom� "prestados" sus utensilios de cocina para hacer una poci�n de jugo a base de nabos para la disminuci�n de los granos en los nudillos. Vali� la pena pero ahora veo las consecuencias de mis actos.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @95 /* ~Nuestros pasos resuenan como ecos de valent�a enfrentando el terror de la ara�a ancestral. Vamos, mi cuervo, juntos forjaremos una melod�a de esperanza y luz en esta sombra abismal.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @96 /* ~�Piensas que Winthrop creer�a que estamos a punto de combatir contra un mal antiguo en un psicod�lico Cubil en el Abismo? Yo tampoco lo creer�a, <CHARNAME>. Espero poder contarle esto alg�n d�a a nuestro querido Puffguts.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @97 /* ~Mi experiencia lidiando contra este tipo de enemigos no es escasa. Es hora de demostrar a esta inmundicia lo que un Guardia Negro puede hacer.~ */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @98 /* ~Mi pu�o representar� la luz del sol en este lugar tan siniestro. Sel�ne, �gu�a mi mano!~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @99 /* ~�Mi magia salvaje har� estragos aqu�! *susurro* �Eso son� amenazante? �Notas que las patas de las ara�as tiemblan de miedo? Bueno, no importa. Supongo que lo descubriremos en breve.~ */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @100 /* ~La sangre ar�cnida es algo que s�lo usar�a para lanzar en un vertedero. Vamos, insectos, os demostrar� de lo que soy capaz.~ */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @101 /* ~(GRU�IDO) *muestra sus garras y mueve sus patas violentamente, posicion�ndose firmemente en el suelo, listo para embestir a sus enemigos*~ */
== P_KANKRA IF ~~ THEN @147 /* ~Kankra listo para demostrar a Madre su amor por ella.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_LIPHIX IF ~~ THEN @148 /* ~Como mi madre dijo: Vida o muerte, no hay m�s alternativas.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_ARTHRO IF ~~ THEN @114 /* ~Madre, no te decepcionaremos.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_MESO IF ~~ THEN @115 /* ~Desde el momento en que sus pies tocaron esta sagrada tierra, sus cuerpos y almas fueron puestas al alcance del Juicio de la Madre de la Oscuridad. Morgrath, la Legi�n que no se puede ver, os condena a muerte. Han sido bendecidos por un gran honor. Abr�cenlo.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
END



I_C_T P_MORGRA 27B P_MORGRAFA16_4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @130 /* No lo lograr�s, Morgrath. Hemos recorrido un largo camino y no ser� para morir aqu�. �Tu maldad acaba aqu� y ahora! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @131 /* Peque�a, he o�do ese discurso tantas veces de aventureros pomposos y d�jame decirte que todos han terminado en las fauces de mis ni�os. */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @132 /* Morgrath... deja ir a mi hija. Esto... es entre t� y yo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @133 /* Madre, �no! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @134 /* Selu'taar, tu plan ha fracasado estrepitosamente. La �nica criatura que realmente intentabas proteger ha venido a mi telara�a. Ser�s testigo de c�mo despedazado su cad�ver, poco a poco. La tristeza que te invadir� ser� tan grande que la locura ser� un regalo bienvenido. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @135 /* �Plan? Madre, �a qu� se refiere? */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @136 /* Yo... yo... */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @137 /* No puedo da�ar a tu madre, ni�a. Ella ha conjurado un hechizo poderoso que evita que le alcance, al mismo tiempo en que me ata a ese cubil. Mientras la selu'taar siga con vida, ni ella ni yo podremos dejar este lugar, por lo que estamos atadas al Abismo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @138 /* Pero su plan tiene una falencia... y es que la selu'taar es una mortal. El paso del tiempo no har�a m�s que debilitar su poder. Quiz�s destruyendo Dreach-naga podr�a sortear este conjuro de Cautiverio. Y de hecho, eso est� sucediendo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @139 /* El Maestro de la Escarcha, el otro selu'taar, descubri� mis planes. Supongo que su intento de evitar que llegasen a Rachnidra fracas� y no hizo m�s que colaborar con el aumento de mi poder. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @140 /* Sab�a que llegar�as aqu�. Era cuesti�n de tiempo. Mi hijo, Mesothel, me ha ido informando del progreso de <CHARNAME> a trav�s de Faer�n. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @141 /* Fue por eso que decid� retirar a mis hijos del Abismo, ocult�ndolos en las sombras. Sab�a que la Bruja del Enclave habr�a de ayudarlos, pues su anhelo de escapar del Abismo fue utilizado, tambi�n, a mi ventaja. */
END





I_C_T P_MORGRA 32 P_MORGRAFA16_3
== P_MORGRA IF ~~ THEN @143 /* ~Vida o muerte, no hay m�s alternativas.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @144 /* Madre, no te preocupes: Yo he de salvarte. �Morgrath! Ha llegado el momento de tu ca�da. En el nombre de Imnescar y del Padre Roble. En el nombre de los exploradores ca�dos. �En el nombre de mi padre, Gerwulf! Tu malvada existencia acaba aqu�. �A luchar! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @153 /* ~No dejaremos que invadas Faer�n, monstruo. �Es hora de pelear! El enemigo no tendr� piedad... �Nosotros tampoco!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @154 /* ~Las alima�as existen para ser aplastadas. Puede que el tama�o de �stas sea un poco excesivo... pero su destino ser� el mismo. �Es hora de derramar un poco de sangre!~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @82 /* ~�Mi h�mster, <CHARNAME>, Fall y yo defendemos la Naturaleza! Monstruos malignos que amenazan con destruir todo lo que amamos no tienen lugar al perd�n. �T�, Reina de las Ara�as, te presento a mi espada! �Espada, te presento a la Reina de las Ara�as!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @83 /* ~Quayle me ha ense�ado mucho sobre la compasi�n, as� como la dogma de Baervan. Pero hoy no tenemos otra opci�n m�s que luchar sin cuartel. �Sin piedad para los demonios que son enemigos de la vida!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @84 /* ~<CHARNAME>, Fall... Estamos ante una de las batallas m�s importantes en estas extra�as tierras. �Por Torm que dar� mi vida si es necesario con tal de erradicar este mal!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @85 /* ~He perdido a Patrick ante la venida de sombras malignas. �No permitir� que vuelva a suceder! Valent�a e inteligencia ser�n necesarias para triunfar aqu�, <CHARNAME>. �Vamos, amigos, es hora de luchar!~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @86 /* ~Helm, dame fuerzas. �Hoy nuestro honor no ser� mancillado! Por todo lo que es sagrado, demonio, hoy caer�s aqu�.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @87 /* ~Los d�biles no ser�n alimento de estas criaturas. �No lo permitir�! Todo aquello que est� en mi poder ser� utilizado para ayudar en la victoria.~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @88 /* ~Eres una afrenta para Silvanus, Morgrath. Hoy, con el poder que la Naturaleza me confiere, morir�is. �Por los ca�dos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @89 /* ~Incluso en la oscuridad m�s profunda del Abismo la luz de una luci�rnaga puede romper con la negrura. Seremos luci�rnagas en la lucha que se avecina, �y tu oscuridad, Morgrath, ser� derrotada!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @90 /* ~Has acabado con muchas estirpes, Morgrath. �Pues aqu� tienes al �ltimo de los Corthala! �Quieres acabar con una estirpe m�s? �Vamos, ven por m�!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @91 /* ~Incluso tu existencia es una afrenta para alguien tan despreciable como Lolth. T� no eres diferente, "velkyn". Tus sombras no rivalizar�n con Shar. �Oloth plyn!~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @92 /* ~Por m�s interesante (y repugnante) que me hayan parecido las ara�as, ya es hora de despacharlas. He aprendido de ellas lo necesario y Edwin Odesseiron est� listo para demostrar su poder (S�, fuego servir�. Mucho fuego).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @93 /* ~�Ya era la hora de la lucha y la sangre! Todos estos sinsentidos abisales ya me ten�an la paciencia hasta los cuernos. �Morid!~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @94 /* ~Todo esto se habr�a solucionado si me hubieran hecho caso con respecto a mis consejos sobre los ar�cnidos, un invento patentado por Ma Jansen. Ya sabes, la Espectacular Trompeta Antiara�as Jansen. La misma fue imbuida por t�o Gerhart y si tocabas las notas correspondentes pod�as hacer que las ara�as huyan como ratas. �Por qu� no la he tra�do te preguntar�s? Bueno, Ma Jansen no presta sus cosas, no desde la vez que tom� "prestados" sus utensilios de cocina para hacer una poci�n de jugo a base de nabos para la disminuci�n de los granos en los nudillos. Vali� la pena pero ahora veo las consecuencias de mis actos.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @95 /* ~Nuestros pasos resuenan como ecos de valent�a enfrentando el terror de la ara�a ancestral. Vamos, mi cuervo, juntos forjaremos una melod�a de esperanza y luz en esta sombra abismal.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @96 /* ~�Piensas que Winthrop creer�a que estamos a punto de combatir contra un mal antiguo en un psicod�lico Cubil en el Abismo? Yo tampoco lo creer�a, <CHARNAME>. Espero poder contarle esto alg�n d�a a nuestro querido Puffguts.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @97 /* ~Mi experiencia lidiando contra este tipo de enemigos no es escasa. Es hora de demostrar a esta inmundicia lo que un Guardia Negro puede hacer.~ */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @98 /* ~Mi pu�o representar� la luz del sol en este lugar tan siniestro. Sel�ne, �gu�a mi mano!~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @99 /* ~�Mi magia salvaje har� estragos aqu�! *susurro* �Eso son� amenazante? �Notas que las patas de las ara�as tiemblan de miedo? Bueno, no importa. Supongo que lo descubriremos en breve.~ */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @100 /* ~La sangre ar�cnida es algo que s�lo usar�a para lanzar en un vertedero. Vamos, insectos, os demostrar� de lo que soy capaz.~ */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @101 /* ~(GRU�IDO) *muestra sus garras y mueve sus patas violentamente, posicion�ndose firmemente en el suelo, listo para embestir a sus enemigos*~ */
== P_CHO IF ~~ THEN @102 /* ~Comandantes, somos los �ltimos sobrevivientes de Dreach-naga. �Que la gloria de nuestra naci�n quede incrustada en este combate! �Honor y muerte!~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_GASS IF ~InMyArea("P_CHO")~ THEN @103 /* ~�Honor y muerte! Por los Pantanos. Por Rask'tar Krathiss.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_VRESH IF ~InMyArea("P_CHO")~ THEN @104 /* ~Qyl'tar, combate con cuidado. �No dejes tu retaguardia descubierta!~ */
== P_QYL IF ~InMyArea("P_CHO")~ THEN @105 /* ~�La peque�a Vreshnak quiere dar consejos al gran Qyl'tar? No te preocupes. Puedo cuidar mi espalda y la tuya tambi�n.~ */
== P_KANKRA IF ~InMyArea("P_CHO")~ THEN @106 /* ~Qyl'tar preocuparse por Kankra. Kankra saber que Qyl'tar ser lo suficientemente listo para pensar en ello.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_QYL IF ~InMyArea("P_CHO")~ THEN @107 /* ~Ah, buen Kankra. Quiz�s nuestros caminos se crucen en esta batalla. �Ser� un placer combatir con el enemigo m�s listo de Rachnidra!~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_LIPHIX IF ~InMyArea("P_CHO")~ THEN @108 /* ~�Kankra listo? Es broma, �no?~ */
== P_VRESH IF ~InMyArea("P_CHO")~ THEN @109 /* ~Creo que hablan en serio, Liphix. De todas formas no te preocupes por ellos. Oc�pate de m�. Esta vez no escapar�s de mi espada.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_LIPHIX IF ~InMyArea("P_CHO")~ THEN @110 /* ~Ser� un placer, Vreshnak. Esta vez no hay lugar para huir. Como mi madre dijo: Vida o muerte, no hay m�s alternativas.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_TAMIKA IF ~~ THEN @111 /* ~Muy bien, hermanos. Es el momento de representar a Wee Jas en este combate.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_NIMBUS IF ~~ THEN @112 /* ~�Hermanos? Vas a hacer que mi coraz�n vuelva a latir, querida Tamika.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_XSI IF ~~ THEN @113 /* ~Ya basta de cursiler�as. Xsi demostrar� de lo que es capaz. Ense�aremos a estos enemigos c�mo se abraza la muerte de forma apropiada.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_ARTHRO IF ~InMyArea("P_CHO")~ THEN @114 /* ~Madre, no te decepcionaremos.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_MESO IF ~~ THEN @115 /* ~Desde el momento en que sus pies tocaron esta sagrada tierra, sus cuerpos y almas fueron puestas al alcance del Juicio de la Madre de la Oscuridad. Morgrath, la Legi�n que no se puede ver, os condena a muerte. Han sido bendecidos por un gran honor. Abr�cenlo.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
END



I_C_T P_MORGRA 27 P_MORGRAFA16_2
== P_CHO IF ~~ THEN @116 /* ~Pagar�s por ello, demonio.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @117 /* ~No me hagas re�r, General. Si quieres un culpable, lo tienes a tu lado.~ ~No me hagas re�r, General. Si quieres una culpable, la tienes a tu lado.~ */
== P_CHO IF ~~ THEN @118 /* ~No caer� en tus trampas. No har�s que me vuelva contra <CHARNAME>. Mis comandantes y yo estamos aqu� para brindar batalla.~ */
== P_MESO IF ~InMyArea("P_CHO")~ THEN @119 /* ~Para morir en batalla, querr�s decir.~ */
== P_GASS IF ~InMyArea("P_CHO")~ THEN @120 /* ~Eso est� por verse, alima�a.~ */
== P_ARTHRO IF ~InMyArea("P_CHO")~ THEN @121 /* ~Capit�n, no gastes energ�a en combatir con mi hermano. Si quieres luchar contra alguien, ese ser� yo.~ */
== P_GASS IF ~InMyArea("P_CHO")~ THEN @122 /* ~Arthrom... hoy ser� la �ltima vez que renazcas.~ */
== P_ARTHRO IF ~InMyArea("P_CHO")~ THEN @123 /* ~Las probabilidades est�n en tu contra. Rachnidr� prevalecer�.~ */
== P_MORGRA IF ~~ THEN @124 /* ~Sea como fuere, est�is aqu�. La selu'taar se est� quedando sin energ�a... y la esencia del semidi�s me dar� el poder suficiente para romper este cautiverio y as� poder tomar toda esta capa abisal.~ ~Sea como fuere, est�is aqu�. La selu'taar se est� quedando sin energ�a... y la esencia de la semidiosa me dar� el poder suficiente para romper este cautiverio y as� poder tomar toda esta capa abisal.~ */
== P_MORGRA IF ~InMyArea("P_TAMIKA")~ THEN @125 /* ~Lo primero que har� ser� destruir el Enclave de la Bruja. La impertinencia de la liche ha alcanzado el l�mite de mi paciencia. Sus huesos adornar�n las ruinas de Dreach-naga mientras la sombra de my Shyntquarra se expanden por toda esta naci�n.~ */
== P_TAMIKA IF ~~ THEN @126 /* ~No te ser� tan f�cil, Morgrath. Estamos aqu� para presentar batalla en nombre de nuestra se�ora, Vidomina.~ */
== P_NIMBUS IF ~~ THEN @127 /* ~Ustedes las ara�as sois tan horrendas. Acabar con su fealdad es un deber que tenemos en nombre de todo lo que es bello.~ */
== P_XSI IF ~~ THEN @128 /* ~Cuando llegu� aqu�, ustedes, los ar�cnidos, me hicieron huir como una rata. Ahora heme aqu� como poderosos aliados. La muerte da revancha.~ */
== P_MORGRA IF ~InMyArea("P_TAMIKA")~ THEN @129 /* ~As� que la Bruja ha enviado a sus ni�os a morir. Interesante. Mis hijos se encargar�n de ustedes, ya lo ver�n.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @130 /* No lo lograr�s, Morgrath. Hemos recorrido un largo camino y no ser� para morir aqu�. �Tu maldad acaba aqu� y ahora! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @131 /* Peque�a, he o�do ese discurso tantas veces de aventureros pomposos y d�jame decirte que todos han terminado en las fauces de mis ni�os. */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @132 /* Morgrath... deja ir a mi hija. Esto... es entre t� y yo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @133 /* Madre, �no! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @134 /* Selu'taar, tu plan ha fracasado estrepitosamente. La �nica criatura que realmente intentabas proteger ha venido a mi telara�a. Ser�s testigo de c�mo despedazado su cad�ver, poco a poco. La tristeza que te invadir� ser� tan grande que la locura ser� un regalo bienvenido. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @135 /* �Plan? Madre, �a qu� se refiere? */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @136 /* Yo... yo... */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @137 /* No puedo da�ar a tu madre, ni�a. Ella ha conjurado un hechizo poderoso que evita que le alcance, al mismo tiempo en que me ata a ese cubil. Mientras la selu'taar siga con vida, ni ella ni yo podremos dejar este lugar, por lo que estamos atadas al Abismo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @138 /* Pero su plan tiene una falencia... y es que la selu'taar es una mortal. El paso del tiempo no har�a m�s que debilitar su poder. Quiz�s destruyendo Dreach-naga podr�a sortear este conjuro de Cautiverio. Y de hecho, eso est� sucediendo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @139 /* El Maestro de la Escarcha, el otro selu'taar, descubri� mis planes. Supongo que su intento de evitar que llegasen a Rachnidra fracas� y no hizo m�s que colaborar con el aumento de mi poder. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @140 /* Sab�a que llegar�as aqu�. Era cuesti�n de tiempo. Mi hijo, Mesothel, me ha ido informando del progreso de <CHARNAME> a trav�s de Faer�n. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @141 /* Fue por eso que decid� retirar a mis hijos del Abismo, ocult�ndolos en las sombras. Sab�a que la Bruja del Enclave habr�a de ayudarlos, pues su anhelo de escapar del Abismo fue utilizado, tambi�n, a mi ventaja. */
END


I_C_T P_MORGRA 23 P_MORGRAFA16_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @142 /* �Morgrath! */
END

/////////////////////////////

I_C_T P_MORGRA 18 P_MORGRAFA8B_6
== P_CHO IF ~~ THEN @62 /* ~Ser� un testamento de tu ca�da, Morgrath. Puede que nadie sea capaz de derrumbarla... pero no quedar� nadie para adorarla. Morir�s. Todos los tuyos morir�n.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @63 /* ~T� eres el testamento viviente de Dreach-naga, General Cho'Nuja. El �ltimo de tu estirpe. La prueba de una naci�n moribunda. Ya llegaremos a ello. Espera y ver�s.~ */
END

I_C_T P_MORGRA 14 P_MORGRA10B_5
== P_MORGRA IF ~~ THEN @42 /* ~Si tan s�lo hubieras nacido como una ara�a...~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @43 /* ~Eso tambi�n va para ti, hija de Gemystara. �No considerar�as ser hija m�a? Puedo transformarte en una dra�a. Tu poder ser�a el de una semidiosa. Juntas, conquistar�amos planos. Nuestros enemigos ser�an un manjar que disfrutar�amos en las Telara�as de Rachnidra.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @44 /* Prefiero morir mil veces a tener algo que ver contigo, Morgrath. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @45 /* ~Cuidado con lo que deseas, peque�a mortal. Ocasionalmente cumplo deseos... puede que cumpla el tuyo.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @53 /* ~Pero ya es suficiente contigo, hembra. <CHARNAME> es quien me interesa.~ */
END


I_C_T P_MORGRA 11 P_MORGRA10B_4
== P_MORGRA IF ~~ THEN @42 /* ~Si tan s�lo hubieras nacido como una ara�a...~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @43 /* ~Eso tambi�n va para ti, hija de Gemystara. �No considerar�as ser hija m�a? Puedo transformarte en una dra�a. Tu poder ser�a el de una semidiosa. Juntas, conquistar�amos planos. Nuestros enemigos ser�an un manjar que disfrutar�amos en las Telara�as de Rachnidra.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @44 /* Prefiero morir mil veces a tener algo que ver contigo, Morgrath. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @45 /* ~Cuidado con lo que deseas, peque�a mortal. Ocasionalmente cumplo deseos... puede que cumpla el tuyo.~ */

== P_CHO IF ~~ THEN @46 /* ~�Intentas sumar aliados, Morgrath? Tienes miedo, �no es as�? Sabes que <CHARNAME> puede interponerse en tu camino. S�. Lo sabes.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @47 /* ~General, tu audacia va incrementando con cada encuentro. Si tan s�lo hubieses tenido esa valent�a antes, quiz�s Dreach-naga no habr�a sido destruida.~ */
== P_CHO IF ~~ THEN @48 /* ~Ser�s castigada por lo que has hecho. Tu tiempo se acerca.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @49 /* ~El tiempo de mi victoria querr�s decir. �Y hablas de castigo? No soy tu Reina, Cho'Nuja. Yo no intento asesinar a aquellos que me sirven porque me han fallado.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @50 /* ~Soy m�s piadosa que Tisiphone. Y s� que lo sabes. Aunque no quieras admitirlo.~ */
== P_CHO IF ~~ THEN @55 /* ~�No oses hablar de mi Reina, monstruo!~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @51 /* ~Leal incluso en la muerte. Como os dije antes, General: Inspirador.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @52 /* ~Pero ya basta. <CHARNAME> es quien me interesa.~ */
END



I_C_T P_MORGRA 7 P_MORGRA11B_3
== P_MORGRA IF ~~ THEN @9 /* ~*sus ojos parecen carecer de vida*~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10 /* ~Ah, veo que t� tambi�n has arribado...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11 /* T�... eres Morgrath. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @12 /* ~Y t�, Fall, eres la hija de la selu'taar. Tu madre se encuentra en mis aposentos, �lo sab�as?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @13 /* L-lo s�. �Entr�gamela! Si lo haces, considerar� no matarte. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @14 /* ~Eres s�lo un reto�o. Totalmente incapaz de comprender el gran esquema. Durante eones he esperado este momento.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @15 /* ~Que t� est�s aqu�, Fall, es s�lo porque yo lo he permitido.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @16 /* ~Tu madre lo descubri�. Luego ese Maestro de la Escarcha. Por eso es que han tratado de evitar, con tanto empe�o, que no emprendieses un viaje hacia aqu�.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @17 /* ~Pero su influjo no se compara con el m�o. Por eso es que est�s aqu�. Porque han fallado y yo he logrado que mis planes marchen infalibles, como el caer de la lluvia �cida en las telara�as demon�acas del Abismo.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @18 /* ~<CHARNAME> y t� s�lo son peones y sus almas penden del hilo del destino que he tejido durante milenios.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @19 /* �Ni <CHARNAME>, ni yo somos peones! Hemos logrado lo imposible durante m�s ocasiones de las que puedo recordar. Muchos seres antiguos nos han subestimado y ahora yacen destruidos, su esencia perdida en el tiempo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @20 /* �T� no eres diferente! S�lo eres... un poco m�s grande que el resto. Un monstruo m�s, enemigo de la Naturaleza, que debe ser erradicado. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @21 /* ~Un discurso similar al pensamiento de ese humano que cay� hace tantos a�os en Imnescar, �no? Gerwulf, tu padre.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @22 /* ~Su esp�ritu yace en ti. La valent�a de tu madre yace en ti. Y el tiempo en que todo eso se extinga se acerca.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @23 /* Eso est� por verse. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @24 /* ~Suficiente charla contigo, semielfa.~ */
END


I_C_T P_MORGRA 2 P_MORGRA11B_2
== P_CHO IF ~~ THEN @33 /* ~No. Te equivocas. <CHARNAME> no es una criatura sedienta de sangre. No es una criatura sedienta de guerra. Es capaz de perdonar. Lo ha hecho conmigo.~ */
== P_CHO IF ~~ THEN @25 /* ~Y te equivocas respecto a mi muerte... �Te equivocas, Morgrath! Si caigo, no caer� rodeado de enemigos. �Si yo caigo, ser� luchando por mi hogar!~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @26 /* ~Inspirador, General. Quisiera no tener que matarte. Puede que te deje con vida y te lleve como alimento a mi campe�n, Skel'Tharant. Puede que �l disfrute el devorar tu carne.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @27 /* ~En cuanto a ti, engendro de Bhaal.~ ~En cuanto a ti, engendra de Bhaal.~ */
END

I_C_T P_MORGRA 0 P_MORGRA11B_1
== P_MORGRA IF ~~ THEN @9 /* ~*sus ojos parecen carecer de vida*~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10 /* ~Ah, veo que t� tambi�n has arribado...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11 /* T�... eres Morgrath. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @12 /* ~Y t�, Fall, eres la hija de la selu'taar. Tu madre se encuentra en mis aposentos, �lo sab�as?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @13 /* L-lo s�. �Entr�gamela! Si lo haces, considerar� no matarte. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @14 /* ~Eres s�lo un reto�o. Totalmente incapaz de comprender el gran esquema. Durante eones he esperado este momento.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @15 /* ~Que t� est�s aqu�, Fall, es s�lo porque yo lo he permitido.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @16 /* ~Tu madre lo descubri�. Luego ese Maestro de la Escarcha. Por eso es que han tratado de evitar, con tanto empe�o, que no emprendieses un viaje hacia aqu�.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @17 /* ~Pero su influjo no se compara con el m�o. Por eso es que est�s aqu�. Porque han fallado y yo he logrado que mis planes marchen infalibles, como el caer de la lluvia �cida en las telara�as demon�acas del Abismo.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @18 /* ~<CHARNAME> y t� s�lo son peones y sus almas penden del hilo del destino que he tejido durante milenios.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @19 /* �Ni <CHARNAME>, ni yo somos peones! Hemos logrado lo imposible durante m�s ocasiones de las que puedo recordar. Muchos seres antiguos nos han subestimado y ahora yacen destruidos, su esencia perdida en el tiempo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @20 /* �T� no eres diferente! S�lo eres... un poco m�s grande que el resto. Un monstruo m�s, enemigo de la Naturaleza, que debe ser erradicado. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @21 /* ~Un discurso similar al pensamiento de ese humano que cay� hace tantos a�os en Imnescar, �no? Gerwulf, tu padre.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @22 /* ~Su esp�ritu yace en ti. La valent�a de tu madre yace en ti. Y el tiempo en que todo eso se extinga se acerca.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @23 /* Eso est� por verse. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @24 /* ~Suficiente charla contigo, semielfa.~ */


== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @28 /* ~Ah, deja que me ocupe de ti en otro momento. Ahora mi inter�s se posa en este hombre-lagarto. General Cho'Nuja, a diferencia de mis hijos, debo decir que no me sorprende verte combatiendo al lado de estos habitantes de Faer�n.~ */
== P_CHO IF ~~ THEN @29 /* ~T�...~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @30 /* ~Quer�as conocerme. Ahora lo has hecho. Morir�s s�lo, rodeado de las criaturas que extinguieron tu hogar. Pero s� que lo sabes. S� que una parte de ti lo siente.~ */
== P_CHO IF ~~ THEN @31 /* ~Yo...~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @32 /* ~Pero ya basta. D�jame volver mi atenci�n a <CHARNAME>.~ */
END

