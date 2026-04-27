BEGIN P_MORGRA

IF ~AreaCheck("P_F11B")
InMyArea("P_CHO")
Global ("P_MorgrathTalk1","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @10700000 /* <CHARNAME>, finalmente nos conocemos... */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk1","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @10700001 /* ~Soy Morgrath, Reina de Rachnidra. Mi influjo ha comenzado a expandirse en Dreach-naga. Esto es sólo la antesala de lo que verás en el Plano Material.~*/
    IF ~~ THEN REPLY @10700002 /* ~Morgrath... has sido una necia al aparecerte ante mí. ¡Prepárate a morir!~ */  GOTO 2
	IF ~~ THEN REPLY @10700003 /* ~Monstruo, ¿qué haces aquí? He derrotado a muchos de los tuyos. Es sólo cuestión de tiempo para que finalmente seas derrotada.~ */ GOTO 2
END


IF ~~ THEN BEGIN 2 // from:
  SAY @10700004 /* Eres como eres en mis sueños. Un ente, como yo, que ha dejado un regadero de cadáveres a su paso. No somos tan diferentes, <CHARNAME>. */
  IF ~~ THEN DO ~~ GOTO 3
END  
  
IF ~~ THEN BEGIN 3 // from:
  SAY @10700005 /* Necesitaba verte. Pocas criaturas han sido capaces de oponerse a mis sueños. Tú eres una de ellas. */
  IF ~~ THEN DO ~~ GOTO 4
END  
 
IF ~~ THEN BEGIN 4 // from:
  SAY @10700006 /* Sí, has acabado con muchos de mis hijos e hijas. ¿Qué clase de madre sería si no me preocupara por ellos? */
  IF ~~ THEN DO ~~ GOTO 5
END  

IF ~~ THEN BEGIN 5 // from:
  SAY @10700007 /* Los que han muerto por ti revivirán en mi Reino, el cual es eterno. Pero me duele ver cómo son destruidos. */
  IF ~~ THEN DO ~~ GOTO 6
END  

IF ~~ THEN BEGIN 6 // from:
  SAY @10700008 /* Tu fuerza será mi entretenimiento de ahora, <CHARNAME>. Vamos, es tiempo de que te enfrentes a mí. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk1","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END


IF ~AreaCheck("P_F11B")
!InMyArea("P_CHO")
Global ("P_MorgrathTalk1","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY @10700000 /* <CHARNAME>, finalmente nos conocemos... */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk1","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @10700001 /* ~Soy Morgrath, Reina de Rachnidra. Mi influjo ha comenzado a expandirse en Dreach-naga. Esto es sólo la antesala de lo que verás en el Plano Material.~*/
    IF ~~ THEN REPLY @10700002 /* ~Morgrath... has sido una necia al aparecerte ante mí. ¡Prepárate a morir!~ */  GOTO 9
	IF ~~ THEN REPLY @10700003 /* ~Monstruo, ¿qué haces aquí? He derrotado a muchos de los tuyos. Es sólo cuestión de tiempo para que finalmente seas derrotada.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @10700004 /* Eres como eres en mis sueños. Un ente, como yo, que ha dejado un regadero de cadáveres a su paso. No somos tan diferentes, <CHARNAME>. */
  IF ~~ THEN DO ~~ GOTO 3
END  

IF ~AreaCheck("P_F11B")
Global ("P_FallMorgrathHurt1","GLOBAL",1)~ THEN BEGIN 10 // from:
  SAY @10700034 /* Tu reputación te precede. Pero este no es mi poder completo. Notarás cómo, con cada uno de nuestros encuentros, mi fuerza incrementa. Nos veremos pronto, <CHARNAME>. Muy pronto. */
  IF ~~ THEN DO ~SetGlobal ("P_FallMorgrathHurt1","GLOBAL",0) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310056 EXIT
END

// 2nd Encounter

IF ~AreaCheck("P_F10B")
InMyArea("P_CHO")
Global ("P_MorgrathTalk2","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY @10700035 /* Tu astucia no tiene parangón, <CHARNAME>. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk2","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @10700036 /* ~¿Os gustaría ser de mi prole? Bajo mi yugo jamás moriréis.~*/
    IF ~~ THEN REPLY @10700037 /* ~¿Y qué se supone que debo hacer? ¿Permitir que me conviertas en draña? Eso nunca sucederá.~ */  GOTO 13
	IF ~~ THEN REPLY @10700038 /* ~No hago tratos con monstruos. Mucho menos con alguien tan malvado como tú.~ */ GOTO 13
	IF ~~ THEN REPLY @10700039 /* ~Creo que tienes miedo. En tu desesperación buscas un escape conmigo, porque sé que sabes que puedo interferir en tus planes.~ */ GOTO 13_1
END

IF ~~ THEN BEGIN 13_1 // from:
  SAY @10700040 /* No conozco el miedo, <CHARNAME>. Y no conozco la derrota. */
  IF ~~ THEN DO ~~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @10700041 /* Es una lástima. Tu negativa no me deja otra opción más que luchar contigo una vez más. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk2","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END

IF ~AreaCheck("P_F10B")
!InMyArea("P_CHO")
Global ("P_MorgrathTalk2","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY @10700035 /* Tu astucia no tiene parangón, <CHARNAME>. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk2","GLOBAL",1)~ GOTO 12
END

IF ~AreaCheck("P_F10B")
Global ("P_FallMorgrathHurt1","GLOBAL",1)~ THEN BEGIN 15 // from:
  SAY @10700054 /* Muy bien. Tu capacidad de combate rivaliza con mis mejores soldados. Hacía siglos que no me divertía tanto. Nos veremos pronto, <CHARNAME>. */
  IF ~~ THEN DO ~SetGlobal ("P_FallMorgrathHurt1","GLOBAL",0) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310057 EXIT
END

// 3rd Encounter

IF ~AreaCheck("P_FA8B")
InMyArea("P_CHO")
Global ("P_MorgrathTalk3","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY @10700056 /* Esto se está haciendo una costumbre ¿no lo crees, <CHARNAME>? */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk3","GLOBAL",1)~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @10700057 /* ~¿Qué opinas de la estatua que mis hijos han hecho sobre mí? Pienso que fue una buena idea para menoscabar la esperanza de los lagartos. Ha funcionado a la perfección. Creo que han errado en su tamaño. En ese aspecto, no le hace honor.~*/
    IF ~~ THEN REPLY @10700058 /* ~Pienso que es una estatua horrible. Es una pena que los hombres-lagarto no llegasen a demolerla a tiempo.~ */  GOTO 18
	IF ~~ THEN REPLY @10700059 /* ~Me da igual. Has venido otra vez a ser derrotada, ¿no es así? Vamos, es hora de sangrar, Reina.~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from:
  SAY @10700060 /* Y sin embargo será el faro de mi poderío en esta capa del Abismo. Un símbolo del principio de mi Reinado hacia los planos en los que se extenderá mi poderosa telaraña. */
  IF ~~ THEN DO ~~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @10700061 /* Basta de charla. Es hora de nuestro combate. */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk2","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END

IF ~AreaCheck("P_FA8B")
!InMyArea("P_CHO")
Global ("P_MorgrathTalk3","GLOBAL",0)~ THEN BEGIN 20 // from:
  SAY @10700056 /* Esto se está haciendo una costumbre ¿no lo crees, <CHARNAME>? */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathTalk3","GLOBAL",1)~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from:
  SAY @10700057 /* ~¿Qué opinas de la estatua que mis hijos han hecho sobre mí? Pienso que fue una buena idea para menoscabar la esperanza de los lagartos. Ha funcionado a la perfección. Creo que han errado en su tamaño. En ese aspecto, no le hace honor.~*/
    IF ~~ THEN REPLY @10700058 /* ~Pienso que es una estatua horrible. Es una pena que los hombres-lagarto no llegasen a demolerla a tiempo.~ */  GOTO 22
	IF ~~ THEN REPLY @10700059 /* ~Me da igual. Has venido otra vez a ser derrotada, ¿no es así? Vamos, es hora de sangrar, Reina.~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from:
  SAY @10700060 /* Y sin embargo será el faro de mi poderío en esta capa del Abismo. Un símbolo del principio de mi Reinado hacia los planos en los que se extenderá mi poderosa telaraña. */
  IF ~~ THEN DO ~~ GOTO 19
END

IF ~AreaCheck("P_FA8B")
Global ("P_FallMorgrathHurt1","GLOBAL",1)~ THEN BEGIN 15 // from:
  SAY @10700064 /* Una pequeña victoria para ti, <CHARNAME>. Recuerda que no es importante aquel que gane muchas batallas... sino aquel que gane la guerra. Ve al Enclave. El fin de la guerra se aproxima... */
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
  SAY @10700065 /* Finalmente... han caído a mi telaraña... */
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
  SAY @10700065 /* Finalmente... han caído a mi telaraña... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24D
END

IF ~~ THEN BEGIN 24D // from:
  SAY @10700146 /* ~<CHARNAME>. Era cuestión de tiempo para que nuestro encuentro final ocurra. Todo sale según mis planes.~*/
    IF ~~ THEN REPLY @10700067 /* ~¿Esperas que creamos que querías esto? Te he derrotado en más de una ocasión. Sé que sabes que tu fin está cerca.~ */  GOTO 25D
	IF ~~ THEN REPLY @10700068 /* ~¿Según tus planes? Explícate, Morgrath.~ */ GOTO 26D
END

IF ~~ THEN BEGIN 25D // from:
  SAY @10700069 /* ~Eres un estúpido si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprenderás mis palabras.~ ~Eres una estúpida si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprenderás mis palabras.~ */
  IF ~~ THEN DO ~~ GOTO 26D
END

IF ~~ THEN BEGIN 26D // from:
  SAY @10700070 /* Dreach-naga ya no existe y por ello mi poder ha aumentado considerablemente. Sólo la hechicera selu'taar impedía mi verdadera salida de este páramo. */
    IF ~~ THEN REPLY @10700071 /* ~¿"Verdadera salida"? ¿De qué estás hablando? Te he derrotado en Dreach-naga. No te veías, precisamente, encerrada.~ */  GOTO 27D
END

IF ~~ THEN BEGIN 27D // from:
  SAY @10700072 /* ~Pese a que la selu'taar me tenía encerrada, era capaz de proyectarme a mí misma hacia Dreach-naga. Todo gracias al asesinato de Tisiphone. Algo que no podría haber logrado sin tu participación, claro está.~ */
  IF ~~ THEN DO ~~ GOTO 28D
END

IF ~~ THEN BEGIN 28D // from:
  SAY @10700073 /* ~Ante la ausencia de mis hijos, el paso lógico era destruir Dreach-naga. Hecho que <CHARNAME> logró con poder y elegancia. Nada de esto habría sido posible sin ti.~ */
    IF ~~ THEN REPLY @10700074 /* ~No, no sabía nada de esto, monstruo. Jamás ayudaría a alguien de tu calaña.~ */  GOTO 29D
    IF ~~ THEN REPLY @10700075 /* ~No tienes que agradecérmelo, Morgrath, puesto a que en breve tu cadáver decorará tu propio Cubil.~ */  GOTO 30D
    IF ~~ THEN REPLY @10700076 /* ~Tu plan no ha servido de nada. Si mueres aquí, será el fin de todo.~ */  GOTO 31D
END

IF ~~ THEN BEGIN 29D // from:
  SAY @10700077 /* ~Pero lo has hecho. Desde el momento en que has pisado Rachnidra te has convertido en mi marioneta. Pero ya es hora de cortar las cuerdas. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32D
END

IF ~~ THEN BEGIN 30D // from:
  SAY @10700078 /* ~Tus amenazas son inconsecuentes. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32D
END

IF ~~ THEN BEGIN 31D // from:
  SAY @10700079 /* ~El fin será sólo el principio, <CHARNAME>. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32D
END

IF ~~ THEN BEGIN 32D // from:
  SAY @10700080 /* ~¿Estáis listos?~ */
  IF ~~ THEN DO ~~ GOTO 33D
END

IF ~~ THEN BEGIN 33D // from:
  SAY @10700081 /* Mi nombre es Legión... porque somos muchos... */
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
  SAY @10700065 /* Finalmente... han caído a mi telaraña... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24C
END

IF ~~ THEN BEGIN 24C // from:
  SAY @10700146 /* ~<CHARNAME>. Era cuestión de tiempo para que nuestro encuentro final ocurra. Todo sale según mis planes.~*/
    IF ~~ THEN REPLY @10700067 /* ~¿Esperas que creamos que querías esto? Te he derrotado en más de una ocasión. Sé que sabes que tu fin está cerca.~ */  GOTO 25C
	IF ~~ THEN REPLY @10700068 /* ~¿Según tus planes? Explícate, Morgrath.~ */ GOTO 26C
END

IF ~~ THEN BEGIN 25C // from:
  SAY @10700069 /* ~Eres un estúpido si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprenderás mis palabras.~ ~Eres una estúpida si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprenderás mis palabras.~ */
  IF ~~ THEN DO ~~ GOTO 26C
END

IF ~~ THEN BEGIN 26C // from:
  SAY @10700070 /* Dreach-naga ya no existe y por ello mi poder ha aumentado considerablemente. Sólo la hechicera selu'taar impedía mi verdadera salida de este páramo. */
    IF ~~ THEN REPLY @10700071 /* ~¿"Verdadera salida"? ¿De qué estás hablando? Te he derrotado en Dreach-naga. No te veías, precisamente, encerrada.~ */  GOTO 27C
END

IF ~~ THEN BEGIN 27C // from:
  SAY @10700072 /* ~Pese a que la selu'taar me tenía encerrada, era capaz de proyectarme a mí misma hacia Dreach-naga. Todo gracias al asesinato de Tisiphone. Algo que no podría haber logrado sin tu participación, claro está.~ */
  IF ~~ THEN DO ~~ GOTO 28C
END

IF ~~ THEN BEGIN 28C // from:
  SAY @10700073 /* ~Ante la ausencia de mis hijos, el paso lógico era destruir Dreach-naga. Hecho que <CHARNAME> logró con poder y elegancia. Nada de esto habría sido posible sin ti.~ */
    IF ~~ THEN REPLY @10700074 /* ~No, no sabía nada de esto, monstruo. Jamás ayudaría a alguien de tu calaña.~ */  GOTO 29C
    IF ~~ THEN REPLY @10700075 /* ~No tienes que agradecérmelo, Morgrath, puesto a que en breve tu cadáver decorará tu propio Cubil.~ */  GOTO 30C
    IF ~~ THEN REPLY @10700076 /* ~Tu plan no ha servido de nada. Si mueres aquí, será el fin de todo.~ */  GOTO 31C
END

IF ~~ THEN BEGIN 29C // from:
  SAY @10700077 /* ~Pero lo has hecho. Desde el momento en que has pisado Rachnidra te has convertido en mi marioneta. Pero ya es hora de cortar las cuerdas. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32C
END

IF ~~ THEN BEGIN 30C // from:
  SAY @10700078 /* ~Tus amenazas son inconsecuentes. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32C
END

IF ~~ THEN BEGIN 31C // from:
  SAY @10700079 /* ~El fin será sólo el principio, <CHARNAME>. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32C
END

IF ~~ THEN BEGIN 32C // from:
  SAY @10700080 /* ~¿Estáis listos?~ */
  IF ~~ THEN DO ~~ GOTO 33C
END

IF ~~ THEN BEGIN 33C // from:
  SAY @10700081 /* Mi nombre es Legión... porque somos muchos... */
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
  SAY @10700065 /* Finalmente... han caído a mi telaraña... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24B
END

IF ~~ THEN BEGIN 24B // from:
  SAY @10700146 /* ~<CHARNAME>. Era cuestión de tiempo para que nuestro encuentro final ocurra. Todo sale según mis planes.~*/
    IF ~~ THEN REPLY @10700067 /* ~¿Esperas que creamos que querías esto? Te he derrotado en más de una ocasión. Sé que sabes que tu fin está cerca.~ */  GOTO 25B
	IF ~~ THEN REPLY @10700068 /* ~¿Según tus planes? Explícate, Morgrath.~ */ GOTO 26B
END

IF ~~ THEN BEGIN 25B // from:
  SAY @10700069 /* ~Eres un estúpido si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprenderás mis palabras.~ ~Eres una estúpida si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprenderás mis palabras.~ */
  IF ~~ THEN DO ~~ GOTO 26B
END

IF ~~ THEN BEGIN 26B // from:
  SAY @10700070 /* Dreach-naga ya no existe y por ello mi poder ha aumentado considerablemente. Sólo la hechicera selu'taar impedía mi verdadera salida de este páramo. */
    IF ~~ THEN REPLY @10700071 /* ~¿"Verdadera salida"? ¿De qué estás hablando? Te he derrotado en Dreach-naga. No te veías, precisamente, encerrada.~ */  GOTO 27B
END

IF ~~ THEN BEGIN 27B // from:
  SAY @10700072 /* ~Pese a que la selu'taar me tenía encerrada, era capaz de proyectarme a mí misma hacia Dreach-naga. Todo gracias al asesinato de Tisiphone. Algo que no podría haber logrado sin tu participación, claro está.~ */
  IF ~~ THEN DO ~~ GOTO 28B
END

IF ~~ THEN BEGIN 28B // from:
  SAY @10700073 /* ~Ante la ausencia de mis hijos, el paso lógico era destruir Dreach-naga. Hecho que <CHARNAME> logró con poder y elegancia. Nada de esto habría sido posible sin ti.~ */
    IF ~~ THEN REPLY @10700074 /* ~No, no sabía nada de esto, monstruo. Jamás ayudaría a alguien de tu calaña.~ */  GOTO 29B
    IF ~~ THEN REPLY @10700075 /* ~No tienes que agradecérmelo, Morgrath, puesto a que en breve tu cadáver decorará tu propio Cubil.~ */  GOTO 30B
    IF ~~ THEN REPLY @10700076 /* ~Tu plan no ha servido de nada. Si mueres aquí, será el fin de todo.~ */  GOTO 31B
END

IF ~~ THEN BEGIN 29B // from:
  SAY @10700077 /* ~Pero lo has hecho. Desde el momento en que has pisado Rachnidra te has convertido en mi marioneta. Pero ya es hora de cortar las cuerdas. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32B
END

IF ~~ THEN BEGIN 30B // from:
  SAY @10700078 /* ~Tus amenazas son inconsecuentes. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32B
END

IF ~~ THEN BEGIN 31B // from:
  SAY @10700079 /* ~El fin será sólo el principio, <CHARNAME>. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32B
END

IF ~~ THEN BEGIN 32B // from:
  SAY @10700080 /* ~¿Estáis listos?~ */
  IF ~~ THEN DO ~~ GOTO 33B
END

IF ~~ THEN BEGIN 33B // from:
  SAY @10700081 /* Mi nombre es Legión... porque somos muchos... */
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
  SAY @10700065 /* Finalmente... han caído a mi telaraña... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24A
END

IF ~~ THEN BEGIN 24A // from:
  SAY @10700146 /* ~<CHARNAME>. Era cuestión de tiempo para que nuestro encuentro final ocurra. Todo sale según mis planes.~*/
    IF ~~ THEN REPLY @10700067 /* ~¿Esperas que creamos que querías esto? Te he derrotado en más de una ocasión. Sé que sabes que tu fin está cerca.~ */  GOTO 25
	IF ~~ THEN REPLY @10700068 /* ~¿Según tus planes? Explícate, Morgrath.~ */ GOTO 26
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
  SAY @10700065 /* Finalmente... han caído a mi telaraña... */
  IF ~~ THEN DO ~SetGlobal("P_MorgrathSpawnPF16","GLOBAL",3)~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @10700066 /* ~Fall y <CHARNAME>. Era cuestión de tiempo para que nuestro encuentro final ocurra. Todo sale según mis planes.~*/
    IF ~~ THEN REPLY @10700067 /* ~¿Esperas que creamos que querías esto? Te he derrotado en más de una ocasión. Sé que sabes que tu fin está cerca.~ */  GOTO 25
	IF ~~ THEN REPLY @10700068 /* ~¿Según tus planes? Explícate, Morgrath.~ */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from:
  SAY @10700069 /* ~Eres un estúpido si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprenderás mis palabras.~ ~Eres una estúpida si piensas que has visto la totalidad de mi poder, <CHARNAME>. Dentro de muy poco comprenderás mis palabras.~ */
  IF ~~ THEN DO ~~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from:
  SAY @10700070 /* Dreach-naga ya no existe y por ello mi poder ha aumentado considerablemente. Sólo la hechicera selu'taar impedía mi verdadera salida de este páramo. */
    IF ~~ THEN REPLY @10700071 /* ~¿"Verdadera salida"? ¿De qué estás hablando? Te he derrotado en Dreach-naga. No te veías, precisamente, encerrada.~ */  GOTO 27
END

IF ~~ THEN BEGIN 27 // from:
  SAY @10700072 /* ~Pese a que la selu'taar me tenía encerrada, era capaz de proyectarme a mí misma hacia Dreach-naga. Todo gracias al asesinato de Tisiphone. Algo que no podría haber logrado sin tu participación, claro está.~ */
  IF ~~ THEN DO ~~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from:
  SAY @10700073 /* ~Ante la ausencia de mis hijos, el paso lógico era destruir Dreach-naga. Hecho que <CHARNAME> logró con poder y elegancia. Nada de esto habría sido posible sin ti.~ */
    IF ~~ THEN REPLY @10700074 /* ~No, no sabía nada de esto, monstruo. Jamás ayudaría a alguien de tu calaña.~ */  GOTO 29
    IF ~~ THEN REPLY @10700075 /* ~No tienes que agradecérmelo, Morgrath, puesto a que en breve tu cadáver decorará tu propio Cubil.~ */  GOTO 30
    IF ~~ THEN REPLY @10700076 /* ~Tu plan no ha servido de nada. Si mueres aquí, será el fin de todo.~ */  GOTO 31
END

IF ~~ THEN BEGIN 29 // from:
  SAY @10700077 /* ~Pero lo has hecho. Desde el momento en que has pisado Rachnidra te has convertido en mi marioneta. Pero ya es hora de cortar las cuerdas. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from:
  SAY @10700078 /* ~Tus amenazas son inconsecuentes. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32
END

IF ~~ THEN BEGIN 31 // from:
  SAY @10700079 /* ~El fin será sólo el principio, <CHARNAME>. Es tiempo de ajustar las cuentas. Como dicen ustedes, los mortales: "Es momento de cocechar lo que hemos sembrado." ~ */
  IF ~~ THEN DO ~~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from:
  SAY @10700080 /* ~¿Estáis listos?~ */
  IF ~~ THEN DO ~~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @10700081 /* Mi nombre es Legión... porque somos muchos... */
  IF ~~ THEN DO ~SetGlobal ("P_MorgrathSpawnPF16","GLOBAL",3) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @10700145 /* ~No, selu'taar. No puedo ser destruida. No puedo morir. Soy eterna. <CHARNAME> no tiene la capacidad arcana para expulsarme de esta capa abisal.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_GEM~ 3
END

I_C_T P_MORGRA 32D P_MORGRAFA16_9
== P_MORGRA IF ~~ THEN @10700143 /* ~Vida o muerte, no hay más alternativas.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700144 /* Madre, no te preocupes: Yo he de salvarte. ¡Morgrath! Ha llegado el momento de tu caída. En el nombre de Imnescar y del Padre Roble. En el nombre de los exploradores caídos. ¡En el nombre de mi padre, Gerwulf! Tu malvada existencia acaba aquí. ¡A luchar! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10700153 /* ~No dejaremos que invadas Faerûn, monstruo. ¡Es hora de pelear! El enemigo no tendrá piedad... ¡Nosotros tampoco!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10700154 /* ~Las alimañas existen para ser aplastadas. Puede que el tamaño de éstas sea un poco excesivo... pero su destino será el mismo. ¡Es hora de derramar un poco de sangre!~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10700082 /* ~¡Mi hámster, <CHARNAME>, Fall y yo defendemos la Naturaleza! Monstruos malignos que amenazan con destruir todo lo que amamos no tienen lugar al perdón. ¡Tú, Reina de las Arañas, te presento a mi espada! ¡Espada, te presento a la Reina de las Arañas!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10700083 /* ~Quayle me ha enseñado mucho sobre la compasión, así como la dogma de Baervan. Pero hoy no tenemos otra opción más que luchar sin cuartel. ¡Sin piedad para los demonios que son enemigos de la vida!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10700084 /* ~<CHARNAME>, Fall... Estamos ante una de las batallas más importantes en estas extrañas tierras. ¡Por Torm que daré mi vida si es necesario con tal de erradicar este mal!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @10700085 /* ~He perdido a Patrick ante la venida de sombras malignas. ¡No permitiré que vuelva a suceder! Valentía e inteligencia serán necesarias para triunfar aquí, <CHARNAME>. ¡Vamos, amigos, es hora de luchar!~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10700086 /* ~Helm, dame fuerzas. ¡Hoy nuestro honor no será mancillado! Por todo lo que es sagrado, demonio, hoy caerás aquí.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @10700087 /* ~Los débiles no serán alimento de estas criaturas. ¡No lo permitiré! Todo aquello que esté en mi poder será utilizado para ayudar en la victoria.~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10700088 /* ~Eres una afrenta para Silvanus, Morgrath. Hoy, con el poder que la Naturaleza me confiere, moriréis. ¡Por los caídos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @10700089 /* ~Incluso en la oscuridad más profunda del Abismo la luz de una luciérnaga puede romper con la negrura. Seremos luciérnagas en la lucha que se avecina, ¡y tu oscuridad, Morgrath, será derrotada!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10700090 /* ~Has acabado con muchas estirpes, Morgrath. ¡Pues aquí tienes al último de los Corthala! ¿Quieres acabar con una estirpe más? ¡Vamos, ven por mí!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10700091 /* ~Incluso tu existencia es una afrenta para alguien tan despreciable como Lolth. Tú no eres diferente, "velkyn". Tus sombras no rivalizarán con Shar. ¡Oloth plyn!~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @10700092 /* ~Por más interesante (y repugnante) que me hayan parecido las arañas, ya es hora de despacharlas. He aprendido de ellas lo necesario y Edwin Odesseiron está listo para demostrar su poder (Sí, fuego servirá. Mucho fuego).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @10700093 /* ~¡Ya era la hora de la lucha y la sangre! Todos estos sinsentidos abisales ya me tenían la paciencia hasta los cuernos. ¡Morid!~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @10700094 /* ~Todo esto se habría solucionado si me hubieran hecho caso con respecto a mis consejos sobre los arácnidos, un invento patentado por Ma Jansen. Ya sabes, la Espectacular Trompeta Antiarañas Jansen. La misma fue imbuida por tío Gerhart y si tocabas las notas correspondentes podías hacer que las arañas huyan como ratas. ¿Por qué no la he traído te preguntarás? Bueno, Ma Jansen no presta sus cosas, no desde la vez que tomé "prestados" sus utensilios de cocina para hacer una poción de jugo a base de nabos para la disminución de los granos en los nudillos. Valió la pena pero ahora veo las consecuencias de mis actos.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @10700095 /* ~Nuestros pasos resuenan como ecos de valentía enfrentando el terror de la araña ancestral. Vamos, mi cuervo, juntos forjaremos una melodía de esperanza y luz en esta sombra abismal.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10700096 /* ~¿Piensas que Winthrop creería que estamos a punto de combatir contra un mal antiguo en un psicodélico Cubil en el Abismo? Yo tampoco lo creería, <CHARNAME>. Espero poder contarle esto algún día a nuestro querido Puffguts.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @10700097 /* ~Mi experiencia lidiando contra este tipo de enemigos no es escasa. Es hora de demostrar a esta inmundicia lo que un Guardia Negro puede hacer.~ */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @10700098 /* ~Mi puño representará la luz del sol en este lugar tan siniestro. Selûne, ¡guía mi mano!~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @10700099 /* ~¡Mi magia salvaje hará estragos aquí! *susurro* ¿Eso sonó amenazante? ¿Notas que las patas de las arañas tiemblan de miedo? Bueno, no importa. Supongo que lo descubriremos en breve.~ */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @10700100 /* ~La sangre arácnida es algo que sólo usaría para lanzar en un vertedero. Vamos, insectos, os demostraré de lo que soy capaz.~ */

// Paina crossmod
== C0PAINAJ IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN @10000002 /* ~¡No eres nada como mis preciosas, perra! Las arañas son criaturas puras que forman parte de la Naturaleza. ¡Tú eres una abominación que debe ser destruida y mis protegidas, verdaderas arañas, me ayudarán a hacerlo!~ */

// Hubelpot crossmod
== SC#HubJ IF ~InParty("Hubelpot") InMyArea("Hubelpot") !StateCheck("Hubelpot",CD_STATE_NOTVALID)~ THEN @10000193 /* ~He tratado con alimañas en mi cosecha, créeme. ¡Pero estoy hasta mi calva de esta condenada araña! Ya es hora de erradicarla y verás cómo Chauntea bendice la tierra que ha contaminado con su suciedad.~ */



== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @10700101 /* ~(GRUÑIDO) *muestra sus garras y mueve sus patas violentamente, posicionándose firmemente en el suelo, listo para embestir a sus enemigos*~ */
== P_TAMIKA IF ~~ THEN @10700111 /* ~Muy bien, hermanos. Es el momento de representar a Wee Jas en este combate.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_NIMBUS IF ~~ THEN @10700112 /* ~¿Hermanos? Vas a hacer que mi corazón vuelva a latir, querida Tamika.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_XSI IF ~~ THEN @10700113 /* ~Ya basta de cursilerías. Xsi demostrará de lo que es capaz. Enseñaremos a estos enemigos cómo se abraza la muerte de forma apropiada.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_KANKRA IF ~~ THEN @10700147 /* ~Kankra listo para demostrar a Madre su amor por ella.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_LIPHIX IF ~~ THEN @10700148 /* ~Como mi madre dijo: Vida o muerte, no hay más alternativas.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_ARTHRO IF ~~ THEN @10700114 /* ~Madre, no te decepcionaremos.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_MESO IF ~~ THEN @10700115 /* ~Desde el momento en que sus pies tocaron esta sagrada tierra, sus cuerpos y almas fueron puestas al alcance del Juicio de la Madre de la Oscuridad. Morgrath, la Legión que no se puede ver, os condena a muerte. Han sido bendecidos por un gran honor. Abrácenlo.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
END



I_C_T P_MORGRA 27D P_MORGRAFA16_8
== P_MORGRA IF ~~ THEN @10700124 /* ~Sea como fuere, estáis aquí. La selu'taar se está quedando sin energía... y la esencia del semidiós me dará el poder suficiente para romper este cautiverio y así poder tomar toda esta capa abisal.~ ~Sea como fuere, estáis aquí. La selu'taar se está quedando sin energía... y la esencia de la semidiosa me dará el poder suficiente para romper este cautiverio y así poder tomar toda esta capa abisal.~ */
== P_MORGRA IF ~InMyArea("P_TAMIKA")~ THEN @10700125 /* ~Lo primero que haré será destruir el Enclave de la Bruja. La impertinencia de la liche ha alcanzado el límite de mi paciencia. Sus huesos adornarán las ruinas de Dreach-naga mientras la sombra de my Shyntquarra se expanden por toda esta nación.~ */
== P_TAMIKA IF ~~ THEN @10700126 /* ~No te será tan fácil, Morgrath. Estamos aquí para presentar batalla en nombre de nuestra señora, Vidomina.~ */
== P_NIMBUS IF ~~ THEN @10700127 /* ~Ustedes las arañas sois tan horrendas. Acabar con su fealdad es un deber que tenemos en nombre de todo lo que es bello.~ */
== P_XSI IF ~~ THEN @10700128 /* ~Cuando llegué aquí, ustedes, los arácnidos, me hicieron huir como una rata. Ahora heme aquí como poderosos aliados. La muerte da revancha.~ */
== P_MORGRA IF ~InMyArea("P_TAMIKA")~ THEN @10700129 /* ~Así que la Bruja ha enviado a sus niños a morir. Interesante. Mis hijos se encargarán de ustedes, ya lo verán.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700130 /* No lo lograrás, Morgrath. Hemos recorrido un largo camino y no será para morir aquí. ¡Tu maldad acaba aquí y ahora! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700131 /* Pequeña, he oído ese discurso tantas veces de aventureros pomposos y déjame decirte que todos han terminado en las fauces de mis niños. */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700132 /* Morgrath... deja ir a mi hija. Esto... es entre tú y yo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700133 /* Madre, ¡no! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700134 /* Selu'taar, tu plan ha fracasado estrepitosamente. La única criatura que realmente intentabas proteger ha venido a mi telaraña. Serás testigo de cómo despedazado su cadáver, poco a poco. La tristeza que te invadirá será tan grande que la locura será un regalo bienvenido. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700135 /* ¿Plan? Madre, ¿a qué se refiere? */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700136 /* Yo... yo... */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700137 /* No puedo dañar a tu madre, niña. Ella ha conjurado un hechizo poderoso que evita que le alcance, al mismo tiempo en que me ata a ese cubil. Mientras la selu'taar siga con vida, ni ella ni yo podremos dejar este lugar, por lo que estamos atadas al Abismo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700138 /* Pero su plan tiene una falencia... y es que la selu'taar es una mortal. El paso del tiempo no haría más que debilitar su poder. Quizás destruyendo Dreach-naga podría sortear este conjuro de Cautiverio. Y de hecho, eso está sucediendo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700139 /* El Maestro de la Escarcha, el otro selu'taar, descubrió mis planes. Supongo que su intento de evitar que llegasen a Rachnidra fracasó y no hizo más que colaborar con el aumento de mi poder. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700140 /* Sabía que llegarías aquí. Era cuestión de tiempo. Mi hijo, Mesothel, me ha ido informando del progreso de <CHARNAME> a través de Faerûn. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700141 /* Fue por eso que decidí retirar a mis hijos del Abismo, ocultándolos en las sombras. Sabía que la Bruja del Enclave habría de ayudarlos, pues su anhelo de escapar del Abismo fue utilizado, también, a mi ventaja. */
== P_MORGRA IF ~!InParty("P_Fall") !InMyArea("P_Fall")~ THEN @10700150 /* El plan de esta selu'taar ha fracasado estrepitosamente. */
== P_MORGRA IF ~!InParty("P_Fall") !InMyArea("P_Fall")~ THEN @10700151 /* Ella ha conjurado un hechizo poderoso que evita que le alcance, al mismo tiempo en que me ata a ese cubil. Mientras la selu'taar siga con vida, ni ella ni yo podremos dejar este lugar, por lo que estamos atadas al Abismo. */
== P_MORGRA IF ~!InParty("P_Fall") !InMyArea("P_Fall")~ THEN @10700138 /* Pero su plan tiene una falencia... y es que la selu'taar es una mortal. El paso del tiempo no haría más que debilitar su poder. Quizás destruyendo Dreach-naga podría sortear este conjuro de Cautiverio. Y de hecho, eso está sucediendo. */
== P_MORGRA IF ~!InParty("P_Fall") !InMyArea("P_Fall")~ THEN @10700152 /* Yo sabía que llegarías aquí. Era cuestión de tiempo. Mi hijo, Mesothel, me ha ido informando del progreso de <CHARNAME> a través de Faerûn. */
== P_MORGRA IF ~!InParty("P_Fall") !InMyArea("P_Fall")~ THEN @10700141 /* Fue por eso que decidí retirar a mis hijos del Abismo, ocultándolos en las sombras. Sabía que la Bruja del Enclave habría de ayudarlos, pues su anhelo de escapar del Abismo fue utilizado, también, a mi ventaja. */
END


I_C_T P_MORGRA 32C P_MORGRAFA16_7
== P_MORGRA IF ~~ THEN @10700143 /* ~Vida o muerte, no hay más alternativas.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700144 /* Madre, no te preocupes: Yo he de salvarte. ¡Morgrath! Ha llegado el momento de tu caída. En el nombre de Imnescar y del Padre Roble. En el nombre de los exploradores caídos. ¡En el nombre de mi padre, Gerwulf! Tu malvada existencia acaba aquí. ¡A luchar! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10700153 /* ~No dejaremos que invadas Faerûn, monstruo. ¡Es hora de pelear! El enemigo no tendrá piedad... ¡Nosotros tampoco!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10700154 /* ~Las alimañas existen para ser aplastadas. Puede que el tamaño de éstas sea un poco excesivo... pero su destino será el mismo. ¡Es hora de derramar un poco de sangre!~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10700082 /* ~¡Mi hámster, <CHARNAME>, Fall y yo defendemos la Naturaleza! Monstruos malignos que amenazan con destruir todo lo que amamos no tienen lugar al perdón. ¡Tú, Reina de las Arañas, te presento a mi espada! ¡Espada, te presento a la Reina de las Arañas!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10700083 /* ~Quayle me ha enseñado mucho sobre la compasión, así como la dogma de Baervan. Pero hoy no tenemos otra opción más que luchar sin cuartel. ¡Sin piedad para los demonios que son enemigos de la vida!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10700084 /* ~<CHARNAME>, Fall... Estamos ante una de las batallas más importantes en estas extrañas tierras. ¡Por Torm que daré mi vida si es necesario con tal de erradicar este mal!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @10700085 /* ~He perdido a Patrick ante la venida de sombras malignas. ¡No permitiré que vuelva a suceder! Valentía e inteligencia serán necesarias para triunfar aquí, <CHARNAME>. ¡Vamos, amigos, es hora de luchar!~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10700086 /* ~Helm, dame fuerzas. ¡Hoy nuestro honor no será mancillado! Por todo lo que es sagrado, demonio, hoy caerás aquí.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @10700087 /* ~Los débiles no serán alimento de estas criaturas. ¡No lo permitiré! Todo aquello que esté en mi poder será utilizado para ayudar en la victoria.~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10700088 /* ~Eres una afrenta para Silvanus, Morgrath. Hoy, con el poder que la Naturaleza me confiere, moriréis. ¡Por los caídos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @10700089 /* ~Incluso en la oscuridad más profunda del Abismo la luz de una luciérnaga puede romper con la negrura. Seremos luciérnagas en la lucha que se avecina, ¡y tu oscuridad, Morgrath, será derrotada!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10700090 /* ~Has acabado con muchas estirpes, Morgrath. ¡Pues aquí tienes al último de los Corthala! ¿Quieres acabar con una estirpe más? ¡Vamos, ven por mí!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10700091 /* ~Incluso tu existencia es una afrenta para alguien tan despreciable como Lolth. Tú no eres diferente, "velkyn". Tus sombras no rivalizarán con Shar. ¡Oloth plyn!~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @10700092 /* ~Por más interesante (y repugnante) que me hayan parecido las arañas, ya es hora de despacharlas. He aprendido de ellas lo necesario y Edwin Odesseiron está listo para demostrar su poder (Sí, fuego servirá. Mucho fuego).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @10700093 /* ~¡Ya era la hora de la lucha y la sangre! Todos estos sinsentidos abisales ya me tenían la paciencia hasta los cuernos. ¡Morid!~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @10700094 /* ~Todo esto se habría solucionado si me hubieran hecho caso con respecto a mis consejos sobre los arácnidos, un invento patentado por Ma Jansen. Ya sabes, la Espectacular Trompeta Antiarañas Jansen. La misma fue imbuida por tío Gerhart y si tocabas las notas correspondentes podías hacer que las arañas huyan como ratas. ¿Por qué no la he traído te preguntarás? Bueno, Ma Jansen no presta sus cosas, no desde la vez que tomé "prestados" sus utensilios de cocina para hacer una poción de jugo a base de nabos para la disminución de los granos en los nudillos. Valió la pena pero ahora veo las consecuencias de mis actos.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @10700095 /* ~Nuestros pasos resuenan como ecos de valentía enfrentando el terror de la araña ancestral. Vamos, mi cuervo, juntos forjaremos una melodía de esperanza y luz en esta sombra abismal.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10700096 /* ~¿Piensas que Winthrop creería que estamos a punto de combatir contra un mal antiguo en un psicodélico Cubil en el Abismo? Yo tampoco lo creería, <CHARNAME>. Espero poder contarle esto algún día a nuestro querido Puffguts.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @10700097 /* ~Mi experiencia lidiando contra este tipo de enemigos no es escasa. Es hora de demostrar a esta inmundicia lo que un Guardia Negro puede hacer.~ */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @10700098 /* ~Mi puño representará la luz del sol en este lugar tan siniestro. Selûne, ¡guía mi mano!~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @10700099 /* ~¡Mi magia salvaje hará estragos aquí! *susurro* ¿Eso sonó amenazante? ¿Notas que las patas de las arañas tiemblan de miedo? Bueno, no importa. Supongo que lo descubriremos en breve.~ */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @10700100 /* ~La sangre arácnida es algo que sólo usaría para lanzar en un vertedero. Vamos, insectos, os demostraré de lo que soy capaz.~ */

// Paina crossmod
== C0PAINAJ IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN @10000002 /* ~¡No eres nada como mis preciosas, perra! Las arañas son criaturas puras que forman parte de la Naturaleza. ¡Tú eres una abominación que debe ser destruida y mis protegidas, verdaderas arañas, me ayudarán a hacerlo!~ */

// Hubelpot crossmod
== SC#HubJ IF ~InParty("Hubelpot") InMyArea("Hubelpot") !StateCheck("Hubelpot",CD_STATE_NOTVALID)~ THEN @10000193 /* ~He tratado con alimañas en mi cosecha, créeme. ¡Pero estoy hasta mi calva de esta condenada araña! Ya es hora de erradicarla y verás cómo Chauntea bendice la tierra que ha contaminado con su suciedad.~ */



== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @10700101 /* ~(GRUÑIDO) *muestra sus garras y mueve sus patas violentamente, posicionándose firmemente en el suelo, listo para embestir a sus enemigos*~ */
== P_KANKRA IF ~~ THEN @10700147 /* ~Kankra listo para demostrar a Madre su amor por ella.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_LIPHIX IF ~~ THEN @10700148 /* ~Como mi madre dijo: Vida o muerte, no hay más alternativas.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_ARTHRO IF ~~ THEN @10700114 /* ~Madre, no te decepcionaremos.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_MESO IF ~~ THEN @10700115 /* ~Desde el momento en que sus pies tocaron esta sagrada tierra, sus cuerpos y almas fueron puestas al alcance del Juicio de la Madre de la Oscuridad. Morgrath, la Legión que no se puede ver, os condena a muerte. Han sido bendecidos por un gran honor. Abrácenlo.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
END



I_C_T P_MORGRA 27C P_MORGRAFA16_6
== P_MORGRA IF ~~ THEN @10700150 /* El plan de esta selu'taar ha fracasado estrepitosamente. */
== P_MORGRA IF ~~ THEN @10700151 /* Ella ha conjurado un hechizo poderoso que evita que le alcance, al mismo tiempo en que me ata a ese cubil. Mientras la selu'taar siga con vida, ni ella ni yo podremos dejar este lugar, por lo que estamos atadas al Abismo. */
== P_MORGRA IF ~~ THEN @10700138 /* Pero su plan tiene una falencia... y es que la selu'taar es una mortal. El paso del tiempo no haría más que debilitar su poder. Quizás destruyendo Dreach-naga podría sortear este conjuro de Cautiverio. Y de hecho, eso está sucediendo. */
== P_MORGRA IF ~~ THEN @10700152 /* Yo sabía que llegarías aquí. Era cuestión de tiempo. Mi hijo, Mesothel, me ha ido informando del progreso de <CHARNAME> a través de Faerûn. */
== P_MORGRA IF ~~ THEN @10700141 /* Fue por eso que decidí retirar a mis hijos del Abismo, ocultándolos en las sombras. Sabía que la Bruja del Enclave habría de ayudarlos, pues su anhelo de escapar del Abismo fue utilizado, también, a mi ventaja. */
END


I_C_T P_MORGRA 32B P_MORGRAFA16_5
== P_MORGRA IF ~~ THEN @10700143 /* ~Vida o muerte, no hay más alternativas.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700144 /* Madre, no te preocupes: Yo he de salvarte. ¡Morgrath! Ha llegado el momento de tu caída. En el nombre de Imnescar y del Padre Roble. En el nombre de los exploradores caídos. ¡En el nombre de mi padre, Gerwulf! Tu malvada existencia acaba aquí. ¡A luchar! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10700153 /* ~No dejaremos que invadas Faerûn, monstruo. ¡Es hora de pelear! El enemigo no tendrá piedad... ¡Nosotros tampoco!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10700154 /* ~Las alimañas existen para ser aplastadas. Puede que el tamaño de éstas sea un poco excesivo... pero su destino será el mismo. ¡Es hora de derramar un poco de sangre!~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10700082 /* ~¡Mi hámster, <CHARNAME>, Fall y yo defendemos la Naturaleza! Monstruos malignos que amenazan con destruir todo lo que amamos no tienen lugar al perdón. ¡Tú, Reina de las Arañas, te presento a mi espada! ¡Espada, te presento a la Reina de las Arañas!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10700083 /* ~Quayle me ha enseñado mucho sobre la compasión, así como la dogma de Baervan. Pero hoy no tenemos otra opción más que luchar sin cuartel. ¡Sin piedad para los demonios que son enemigos de la vida!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10700084 /* ~<CHARNAME>, Fall... Estamos ante una de las batallas más importantes en estas extrañas tierras. ¡Por Torm que daré mi vida si es necesario con tal de erradicar este mal!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @10700085 /* ~He perdido a Patrick ante la venida de sombras malignas. ¡No permitiré que vuelva a suceder! Valentía e inteligencia serán necesarias para triunfar aquí, <CHARNAME>. ¡Vamos, amigos, es hora de luchar!~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10700086 /* ~Helm, dame fuerzas. ¡Hoy nuestro honor no será mancillado! Por todo lo que es sagrado, demonio, hoy caerás aquí.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @10700087 /* ~Los débiles no serán alimento de estas criaturas. ¡No lo permitiré! Todo aquello que esté en mi poder será utilizado para ayudar en la victoria.~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10700088 /* ~Eres una afrenta para Silvanus, Morgrath. Hoy, con el poder que la Naturaleza me confiere, moriréis. ¡Por los caídos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @10700089 /* ~Incluso en la oscuridad más profunda del Abismo la luz de una luciérnaga puede romper con la negrura. Seremos luciérnagas en la lucha que se avecina, ¡y tu oscuridad, Morgrath, será derrotada!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10700090 /* ~Has acabado con muchas estirpes, Morgrath. ¡Pues aquí tienes al último de los Corthala! ¿Quieres acabar con una estirpe más? ¡Vamos, ven por mí!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10700091 /* ~Incluso tu existencia es una afrenta para alguien tan despreciable como Lolth. Tú no eres diferente, "velkyn". Tus sombras no rivalizarán con Shar. ¡Oloth plyn!~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @10700092 /* ~Por más interesante (y repugnante) que me hayan parecido las arañas, ya es hora de despacharlas. He aprendido de ellas lo necesario y Edwin Odesseiron está listo para demostrar su poder (Sí, fuego servirá. Mucho fuego).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @10700093 /* ~¡Ya era la hora de la lucha y la sangre! Todos estos sinsentidos abisales ya me tenían la paciencia hasta los cuernos. ¡Morid!~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @10700094 /* ~Todo esto se habría solucionado si me hubieran hecho caso con respecto a mis consejos sobre los arácnidos, un invento patentado por Ma Jansen. Ya sabes, la Espectacular Trompeta Antiarañas Jansen. La misma fue imbuida por tío Gerhart y si tocabas las notas correspondentes podías hacer que las arañas huyan como ratas. ¿Por qué no la he traído te preguntarás? Bueno, Ma Jansen no presta sus cosas, no desde la vez que tomé "prestados" sus utensilios de cocina para hacer una poción de jugo a base de nabos para la disminución de los granos en los nudillos. Valió la pena pero ahora veo las consecuencias de mis actos.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @10700095 /* ~Nuestros pasos resuenan como ecos de valentía enfrentando el terror de la araña ancestral. Vamos, mi cuervo, juntos forjaremos una melodía de esperanza y luz en esta sombra abismal.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10700096 /* ~¿Piensas que Winthrop creería que estamos a punto de combatir contra un mal antiguo en un psicodélico Cubil en el Abismo? Yo tampoco lo creería, <CHARNAME>. Espero poder contarle esto algún día a nuestro querido Puffguts.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @10700097 /* ~Mi experiencia lidiando contra este tipo de enemigos no es escasa. Es hora de demostrar a esta inmundicia lo que un Guardia Negro puede hacer.~ */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @10700098 /* ~Mi puño representará la luz del sol en este lugar tan siniestro. Selûne, ¡guía mi mano!~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @10700099 /* ~¡Mi magia salvaje hará estragos aquí! *susurro* ¿Eso sonó amenazante? ¿Notas que las patas de las arañas tiemblan de miedo? Bueno, no importa. Supongo que lo descubriremos en breve.~ */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @10700100 /* ~La sangre arácnida es algo que sólo usaría para lanzar en un vertedero. Vamos, insectos, os demostraré de lo que soy capaz.~ */

// Paina crossmod
== C0PAINAJ IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN @10000002 /* ~¡No eres nada como mis preciosas, perra! Las arañas son criaturas puras que forman parte de la Naturaleza. ¡Tú eres una abominación que debe ser destruida y mis protegidas, verdaderas arañas, me ayudarán a hacerlo!~ */


// Hubelpot crossmod
== SC#HubJ IF ~InParty("Hubelpot") InMyArea("Hubelpot") !StateCheck("Hubelpot",CD_STATE_NOTVALID)~ THEN @10000193 /* ~He tratado con alimañas en mi cosecha, créeme. ¡Pero estoy hasta mi calva de esta condenada araña! Ya es hora de erradicarla y verás cómo Chauntea bendice la tierra que ha contaminado con su suciedad.~ */

== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @10700101 /* ~(GRUÑIDO) *muestra sus garras y mueve sus patas violentamente, posicionándose firmemente en el suelo, listo para embestir a sus enemigos*~ */
== P_KANKRA IF ~~ THEN @10700147 /* ~Kankra listo para demostrar a Madre su amor por ella.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_LIPHIX IF ~~ THEN @10700148 /* ~Como mi madre dijo: Vida o muerte, no hay más alternativas.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_ARTHRO IF ~~ THEN @10700114 /* ~Madre, no te decepcionaremos.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_MESO IF ~~ THEN @10700115 /* ~Desde el momento en que sus pies tocaron esta sagrada tierra, sus cuerpos y almas fueron puestas al alcance del Juicio de la Madre de la Oscuridad. Morgrath, la Legión que no se puede ver, os condena a muerte. Han sido bendecidos por un gran honor. Abrácenlo.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
END



I_C_T P_MORGRA 27B P_MORGRAFA16_4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700130 /* No lo lograrás, Morgrath. Hemos recorrido un largo camino y no será para morir aquí. ¡Tu maldad acaba aquí y ahora! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700131 /* Pequeña, he oído ese discurso tantas veces de aventureros pomposos y déjame decirte que todos han terminado en las fauces de mis niños. */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700132 /* Morgrath... deja ir a mi hija. Esto... es entre tú y yo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700133 /* Madre, ¡no! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700134 /* Selu'taar, tu plan ha fracasado estrepitosamente. La única criatura que realmente intentabas proteger ha venido a mi telaraña. Serás testigo de cómo despedazado su cadáver, poco a poco. La tristeza que te invadirá será tan grande que la locura será un regalo bienvenido. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700135 /* ¿Plan? Madre, ¿a qué se refiere? */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700136 /* Yo... yo... */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700137 /* No puedo dañar a tu madre, niña. Ella ha conjurado un hechizo poderoso que evita que le alcance, al mismo tiempo en que me ata a ese cubil. Mientras la selu'taar siga con vida, ni ella ni yo podremos dejar este lugar, por lo que estamos atadas al Abismo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700138 /* Pero su plan tiene una falencia... y es que la selu'taar es una mortal. El paso del tiempo no haría más que debilitar su poder. Quizás destruyendo Dreach-naga podría sortear este conjuro de Cautiverio. Y de hecho, eso está sucediendo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700139 /* El Maestro de la Escarcha, el otro selu'taar, descubrió mis planes. Supongo que su intento de evitar que llegasen a Rachnidra fracasó y no hizo más que colaborar con el aumento de mi poder. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700140 /* Sabía que llegarías aquí. Era cuestión de tiempo. Mi hijo, Mesothel, me ha ido informando del progreso de <CHARNAME> a través de Faerûn. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700141 /* Fue por eso que decidí retirar a mis hijos del Abismo, ocultándolos en las sombras. Sabía que la Bruja del Enclave habría de ayudarlos, pues su anhelo de escapar del Abismo fue utilizado, también, a mi ventaja. */
END





I_C_T P_MORGRA 32 P_MORGRAFA16_3
== P_MORGRA IF ~~ THEN @10700143 /* ~Vida o muerte, no hay más alternativas.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700144 /* Madre, no te preocupes: Yo he de salvarte. ¡Morgrath! Ha llegado el momento de tu caída. En el nombre de Imnescar y del Padre Roble. En el nombre de los exploradores caídos. ¡En el nombre de mi padre, Gerwulf! Tu malvada existencia acaba aquí. ¡A luchar! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10700153 /* ~No dejaremos que invadas Faerûn, monstruo. ¡Es hora de pelear! El enemigo no tendrá piedad... ¡Nosotros tampoco!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10700154 /* ~Las alimañas existen para ser aplastadas. Puede que el tamaño de éstas sea un poco excesivo... pero su destino será el mismo. ¡Es hora de derramar un poco de sangre!~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10700082 /* ~¡Mi hámster, <CHARNAME>, Fall y yo defendemos la Naturaleza! Monstruos malignos que amenazan con destruir todo lo que amamos no tienen lugar al perdón. ¡Tú, Reina de las Arañas, te presento a mi espada! ¡Espada, te presento a la Reina de las Arañas!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10700083 /* ~Quayle me ha enseñado mucho sobre la compasión, así como la dogma de Baervan. Pero hoy no tenemos otra opción más que luchar sin cuartel. ¡Sin piedad para los demonios que son enemigos de la vida!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10700084 /* ~<CHARNAME>, Fall... Estamos ante una de las batallas más importantes en estas extrañas tierras. ¡Por Torm que daré mi vida si es necesario con tal de erradicar este mal!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @10700085 /* ~He perdido a Patrick ante la venida de sombras malignas. ¡No permitiré que vuelva a suceder! Valentía e inteligencia serán necesarias para triunfar aquí, <CHARNAME>. ¡Vamos, amigos, es hora de luchar!~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10700086 /* ~Helm, dame fuerzas. ¡Hoy nuestro honor no será mancillado! Por todo lo que es sagrado, demonio, hoy caerás aquí.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @10700087 /* ~Los débiles no serán alimento de estas criaturas. ¡No lo permitiré! Todo aquello que esté en mi poder será utilizado para ayudar en la victoria.~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10700088 /* ~Eres una afrenta para Silvanus, Morgrath. Hoy, con el poder que la Naturaleza me confiere, moriréis. ¡Por los caídos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @10700089 /* ~Incluso en la oscuridad más profunda del Abismo la luz de una luciérnaga puede romper con la negrura. Seremos luciérnagas en la lucha que se avecina, ¡y tu oscuridad, Morgrath, será derrotada!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10700090 /* ~Has acabado con muchas estirpes, Morgrath. ¡Pues aquí tienes al último de los Corthala! ¿Quieres acabar con una estirpe más? ¡Vamos, ven por mí!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10700091 /* ~Incluso tu existencia es una afrenta para alguien tan despreciable como Lolth. Tú no eres diferente, "velkyn". Tus sombras no rivalizarán con Shar. ¡Oloth plyn!~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @10700092 /* ~Por más interesante (y repugnante) que me hayan parecido las arañas, ya es hora de despacharlas. He aprendido de ellas lo necesario y Edwin Odesseiron está listo para demostrar su poder (Sí, fuego servirá. Mucho fuego).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @10700093 /* ~¡Ya era la hora de la lucha y la sangre! Todos estos sinsentidos abisales ya me tenían la paciencia hasta los cuernos. ¡Morid!~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @10700094 /* ~Todo esto se habría solucionado si me hubieran hecho caso con respecto a mis consejos sobre los arácnidos, un invento patentado por Ma Jansen. Ya sabes, la Espectacular Trompeta Antiarañas Jansen. La misma fue imbuida por tío Gerhart y si tocabas las notas correspondentes podías hacer que las arañas huyan como ratas. ¿Por qué no la he traído te preguntarás? Bueno, Ma Jansen no presta sus cosas, no desde la vez que tomé "prestados" sus utensilios de cocina para hacer una poción de jugo a base de nabos para la disminución de los granos en los nudillos. Valió la pena pero ahora veo las consecuencias de mis actos.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @10700095 /* ~Nuestros pasos resuenan como ecos de valentía enfrentando el terror de la araña ancestral. Vamos, mi cuervo, juntos forjaremos una melodía de esperanza y luz en esta sombra abismal.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10700096 /* ~¿Piensas que Winthrop creería que estamos a punto de combatir contra un mal antiguo en un psicodélico Cubil en el Abismo? Yo tampoco lo creería, <CHARNAME>. Espero poder contarle esto algún día a nuestro querido Puffguts.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @10700097 /* ~Mi experiencia lidiando contra este tipo de enemigos no es escasa. Es hora de demostrar a esta inmundicia lo que un Guardia Negro puede hacer.~ */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @10700098 /* ~Mi puño representará la luz del sol en este lugar tan siniestro. Selûne, ¡guía mi mano!~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @10700099 /* ~¡Mi magia salvaje hará estragos aquí! *susurro* ¿Eso sonó amenazante? ¿Notas que las patas de las arañas tiemblan de miedo? Bueno, no importa. Supongo que lo descubriremos en breve.~ */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @10700100 /* ~La sangre arácnida es algo que sólo usaría para lanzar en un vertedero. Vamos, insectos, os demostraré de lo que soy capaz.~ */

// Paina crossmod
== C0PAINAJ IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN @10000002 /* ~¡No eres nada como mis preciosas, perra! Las arañas son criaturas puras que forman parte de la Naturaleza. ¡Tú eres una abominación que debe ser destruida y mis protegidas, verdaderas arañas, me ayudarán a hacerlo!~ */


// Hubelpot crossmod
== SC#HubJ IF ~InParty("Hubelpot") InMyArea("Hubelpot") !StateCheck("Hubelpot",CD_STATE_NOTVALID)~ THEN @10000193 /* ~He tratado con alimañas en mi cosecha, créeme. ¡Pero estoy hasta mi calva de esta condenada araña! Ya es hora de erradicarla y verás cómo Chauntea bendice la tierra que ha contaminado con su suciedad.~ */


== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @10700101 /* ~(GRUÑIDO) *muestra sus garras y mueve sus patas violentamente, posicionándose firmemente en el suelo, listo para embestir a sus enemigos*~ */
== P_CHO IF ~~ THEN @10700102 /* ~Comandantes, somos los últimos sobrevivientes de Dreach-naga. ¡Que la gloria de nuestra nación quede incrustada en este combate! ¡Honor y muerte!~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_GASS IF ~InMyArea("P_CHO")~ THEN @10700103 /* ~¡Honor y muerte! Por los Pantanos. Por Rask'tar Krathiss.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_VRESH IF ~InMyArea("P_CHO")~ THEN @10700104 /* ~Qyl'tar, combate con cuidado. ¡No dejes tu retaguardia descubierta!~ */
== P_QYL IF ~InMyArea("P_CHO")~ THEN @10700105 /* ~¿La pequeña Vreshnak quiere dar consejos al gran Qyl'tar? No te preocupes. Puedo cuidar mi espalda y la tuya también.~ */
== P_KANKRA IF ~InMyArea("P_CHO")~ THEN @10700106 /* ~Qyl'tar preocuparse por Kankra. Kankra saber que Qyl'tar ser lo suficientemente listo para pensar en ello.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_QYL IF ~InMyArea("P_CHO")~ THEN @10700107 /* ~Ah, buen Kankra. Quizás nuestros caminos se crucen en esta batalla. ¡Será un placer combatir con el enemigo más listo de Rachnidra!~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_LIPHIX IF ~InMyArea("P_CHO")~ THEN @10700108 /* ~¿Kankra listo? Es broma, ¿no?~ */
== P_VRESH IF ~InMyArea("P_CHO")~ THEN @10700109 /* ~Creo que hablan en serio, Liphix. De todas formas no te preocupes por ellos. Ocúpate de mí. Esta vez no escaparás de mi espada.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_LIPHIX IF ~InMyArea("P_CHO")~ THEN @10700110 /* ~Será un placer, Vreshnak. Esta vez no hay lugar para huir. Como mi madre dijo: Vida o muerte, no hay más alternativas.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_TAMIKA IF ~~ THEN @10700111 /* ~Muy bien, hermanos. Es el momento de representar a Wee Jas en este combate.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_NIMBUS IF ~~ THEN @10700112 /* ~¿Hermanos? Vas a hacer que mi corazón vuelva a latir, querida Tamika.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_XSI IF ~~ THEN @10700113 /* ~Ya basta de cursilerías. Xsi demostrará de lo que es capaz. Enseñaremos a estos enemigos cómo se abraza la muerte de forma apropiada.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10")~
== P_ARTHRO IF ~InMyArea("P_CHO")~ THEN @10700114 /* ~Madre, no te decepcionaremos.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
== P_MESO IF ~~ THEN @10700115 /* ~Desde el momento en que sus pies tocaron esta sagrada tierra, sus cuerpos y almas fueron puestas al alcance del Juicio de la Madre de la Oscuridad. Morgrath, la Legión que no se puede ver, os condena a muerte. Han sido bendecidos por un gran honor. Abrácenlo.~ */ DO ~DestroyItem("MINHP1") DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~
END



I_C_T P_MORGRA 27 P_MORGRAFA16_2
== P_CHO IF ~~ THEN @10700116 /* ~Pagarás por ello, demonio.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700117 /* ~No me hagas reír, General. Si quieres un culpable, lo tienes a tu lado.~ ~No me hagas reír, General. Si quieres una culpable, la tienes a tu lado.~ */
== P_CHO IF ~~ THEN @10700118 /* ~No caeré en tus trampas. No harás que me vuelva contra <CHARNAME>. Mis comandantes y yo estamos aquí para brindar batalla.~ */
== P_MESO IF ~InMyArea("P_CHO")~ THEN @10700119 /* ~Para morir en batalla, querrás decir.~ */
== P_GASS IF ~InMyArea("P_CHO")~ THEN @10700120 /* ~Eso está por verse, alimaña.~ */
== P_ARTHRO IF ~InMyArea("P_CHO")~ THEN @10700121 /* ~Capitán, no gastes energía en combatir con mi hermano. Si quieres luchar contra alguien, ese seré yo.~ */
== P_GASS IF ~InMyArea("P_CHO")~ THEN @10700122 /* ~Arthrom... hoy será la última vez que renazcas.~ */
== P_ARTHRO IF ~InMyArea("P_CHO")~ THEN @10700123 /* ~Las probabilidades están en tu contra. Rachnidrá prevalecerá.~ */
== P_MORGRA IF ~~ THEN @10700124 /* ~Sea como fuere, estáis aquí. La selu'taar se está quedando sin energía... y la esencia del semidiós me dará el poder suficiente para romper este cautiverio y así poder tomar toda esta capa abisal.~ ~Sea como fuere, estáis aquí. La selu'taar se está quedando sin energía... y la esencia de la semidiosa me dará el poder suficiente para romper este cautiverio y así poder tomar toda esta capa abisal.~ */
== P_MORGRA IF ~InMyArea("P_TAMIKA")~ THEN @10700125 /* ~Lo primero que haré será destruir el Enclave de la Bruja. La impertinencia de la liche ha alcanzado el límite de mi paciencia. Sus huesos adornarán las ruinas de Dreach-naga mientras la sombra de my Shyntquarra se expanden por toda esta nación.~ */
== P_TAMIKA IF ~~ THEN @10700126 /* ~No te será tan fácil, Morgrath. Estamos aquí para presentar batalla en nombre de nuestra señora, Vidomina.~ */
== P_NIMBUS IF ~~ THEN @10700127 /* ~Ustedes las arañas sois tan horrendas. Acabar con su fealdad es un deber que tenemos en nombre de todo lo que es bello.~ */
== P_XSI IF ~~ THEN @10700128 /* ~Cuando llegué aquí, ustedes, los arácnidos, me hicieron huir como una rata. Ahora heme aquí como poderosos aliados. La muerte da revancha.~ */
== P_MORGRA IF ~InMyArea("P_TAMIKA")~ THEN @10700129 /* ~Así que la Bruja ha enviado a sus niños a morir. Interesante. Mis hijos se encargarán de ustedes, ya lo verán.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700130 /* No lo lograrás, Morgrath. Hemos recorrido un largo camino y no será para morir aquí. ¡Tu maldad acaba aquí y ahora! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700131 /* Pequeña, he oído ese discurso tantas veces de aventureros pomposos y déjame decirte que todos han terminado en las fauces de mis niños. */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700132 /* Morgrath... deja ir a mi hija. Esto... es entre tú y yo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700133 /* Madre, ¡no! */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700134 /* Selu'taar, tu plan ha fracasado estrepitosamente. La única criatura que realmente intentabas proteger ha venido a mi telaraña. Serás testigo de cómo despedazado su cadáver, poco a poco. La tristeza que te invadirá será tan grande que la locura será un regalo bienvenido. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700135 /* ¿Plan? Madre, ¿a qué se refiere? */
== P_GEM IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700136 /* Yo... yo... */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700137 /* No puedo dañar a tu madre, niña. Ella ha conjurado un hechizo poderoso que evita que le alcance, al mismo tiempo en que me ata a ese cubil. Mientras la selu'taar siga con vida, ni ella ni yo podremos dejar este lugar, por lo que estamos atadas al Abismo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700138 /* Pero su plan tiene una falencia... y es que la selu'taar es una mortal. El paso del tiempo no haría más que debilitar su poder. Quizás destruyendo Dreach-naga podría sortear este conjuro de Cautiverio. Y de hecho, eso está sucediendo. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700139 /* El Maestro de la Escarcha, el otro selu'taar, descubrió mis planes. Supongo que su intento de evitar que llegasen a Rachnidra fracasó y no hizo más que colaborar con el aumento de mi poder. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700140 /* Sabía que llegarías aquí. Era cuestión de tiempo. Mi hijo, Mesothel, me ha ido informando del progreso de <CHARNAME> a través de Faerûn. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700141 /* Fue por eso que decidí retirar a mis hijos del Abismo, ocultándolos en las sombras. Sabía que la Bruja del Enclave habría de ayudarlos, pues su anhelo de escapar del Abismo fue utilizado, también, a mi ventaja. */
END


I_C_T P_MORGRA 23 P_MORGRAFA16_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700142 /* ¡Morgrath! */
END

/////////////////////////////

I_C_T P_MORGRA 18 P_MORGRAFA8B_6
== P_CHO IF ~~ THEN @10700062 /* ~Será un testamento de tu caída, Morgrath. Puede que nadie sea capaz de derrumbarla... pero no quedará nadie para adorarla. Morirás. Todos los tuyos morirán.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700063 /* ~Tú eres el testamento viviente de Dreach-naga, General Cho'Nuja. El último de tu estirpe. La prueba de una nación moribunda. Ya llegaremos a ello. Espera y verás.~ */
END

I_C_T P_MORGRA 14 P_MORGRA10B_5
== P_MORGRA IF ~~ THEN @10700042 /* ~Si tan sólo hubieras nacido como una araña...~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700043 /* ~Eso también va para ti, hija de Gemystara. ¿No considerarías ser hija mía? Puedo transformarte en una draña. Tu poder sería el de una semidiosa. Juntas, conquistaríamos planos. Nuestros enemigos serían un manjar que disfrutaríamos en las Telarañas de Rachnidra.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700044 /* Prefiero morir mil veces a tener algo que ver contigo, Morgrath. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700045 /* ~Cuidado con lo que deseas, pequeña mortal. Ocasionalmente cumplo deseos... puede que cumpla el tuyo.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700053 /* ~Pero ya es suficiente contigo, hembra. <CHARNAME> es quien me interesa.~ */
END


I_C_T P_MORGRA 11 P_MORGRA10B_4
== P_MORGRA IF ~~ THEN @10700042 /* ~Si tan sólo hubieras nacido como una araña...~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700043 /* ~Eso también va para ti, hija de Gemystara. ¿No considerarías ser hija mía? Puedo transformarte en una draña. Tu poder sería el de una semidiosa. Juntas, conquistaríamos planos. Nuestros enemigos serían un manjar que disfrutaríamos en las Telarañas de Rachnidra.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700044 /* Prefiero morir mil veces a tener algo que ver contigo, Morgrath. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700045 /* ~Cuidado con lo que deseas, pequeña mortal. Ocasionalmente cumplo deseos... puede que cumpla el tuyo.~ */

== P_CHO IF ~~ THEN @10700046 /* ~¿Intentas sumar aliados, Morgrath? Tienes miedo, ¿no es así? Sabes que <CHARNAME> puede interponerse en tu camino. Sí. Lo sabes.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700047 /* ~General, tu audacia va incrementando con cada encuentro. Si tan sólo hubieses tenido esa valentía antes, quizás Dreach-naga no habría sido destruida.~ */
== P_CHO IF ~~ THEN @10700048 /* ~Serás castigada por lo que has hecho. Tu tiempo se acerca.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700049 /* ~El tiempo de mi victoria querrás decir. ¿Y hablas de castigo? No soy tu Reina, Cho'Nuja. Yo no intento asesinar a aquellos que me sirven porque me han fallado.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700050 /* ~Soy más piadosa que Tisiphone. Y sé que lo sabes. Aunque no quieras admitirlo.~ */
== P_CHO IF ~~ THEN @10700055 /* ~¡No oses hablar de mi Reina, monstruo!~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700051 /* ~Leal incluso en la muerte. Como os dije antes, General: Inspirador.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700052 /* ~Pero ya basta. <CHARNAME> es quien me interesa.~ */
END



I_C_T P_MORGRA 7 P_MORGRA11B_3
== P_MORGRA IF ~~ THEN @10700009 /* ~*sus ojos parecen carecer de vida*~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700010 /* ~Ah, veo que tú también has arribado...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700011 /* Tú... eres Morgrath. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700012 /* ~Y tú, Fall, eres la hija de la selu'taar. Tu madre se encuentra en mis aposentos, ¿lo sabías?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700013 /* L-lo sé. ¡Entrégamela! Si lo haces, consideraré no matarte. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700014 /* ~Eres sólo un retoño. Totalmente incapaz de comprender el gran esquema. Durante eones he esperado este momento.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700015 /* ~Que tú estés aquí, Fall, es sólo porque yo lo he permitido.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700016 /* ~Tu madre lo descubrió. Luego ese Maestro de la Escarcha. Por eso es que han tratado de evitar, con tanto empeño, que no emprendieses un viaje hacia aquí.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700017 /* ~Pero su influjo no se compara con el mío. Por eso es que estás aquí. Porque han fallado y yo he logrado que mis planes marchen infalibles, como el caer de la lluvia ácida en las telarañas demoníacas del Abismo.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700018 /* ~<CHARNAME> y tú sólo son peones y sus almas penden del hilo del destino que he tejido durante milenios.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700019 /* ¡Ni <CHARNAME>, ni yo somos peones! Hemos logrado lo imposible durante más ocasiones de las que puedo recordar. Muchos seres antiguos nos han subestimado y ahora yacen destruidos, su esencia perdida en el tiempo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700020 /* ¡Tú no eres diferente! Sólo eres... un poco más grande que el resto. Un monstruo más, enemigo de la Naturaleza, que debe ser erradicado. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700021 /* ~Un discurso similar al pensamiento de ese humano que cayó hace tantos años en Imnescar, ¿no? Gerwulf, tu padre.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700022 /* ~Su espíritu yace en ti. La valentía de tu madre yace en ti. Y el tiempo en que todo eso se extinga se acerca.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700023 /* Eso está por verse. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700024 /* ~Suficiente charla contigo, semielfa.~ */
END


I_C_T P_MORGRA 2 P_MORGRA11B_2
== P_CHO IF ~~ THEN @10700033 /* ~No. Te equivocas. <CHARNAME> no es una criatura sedienta de sangre. No es una criatura sedienta de guerra. Es capaz de perdonar. Lo ha hecho conmigo.~ */
== P_CHO IF ~~ THEN @10700025 /* ~Y te equivocas respecto a mi muerte... ¡Te equivocas, Morgrath! Si caigo, no caeré rodeado de enemigos. ¡Si yo caigo, será luchando por mi hogar!~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700026 /* ~Inspirador, General. Quisiera no tener que matarte. Puede que te deje con vida y te lleve como alimento a mi campeón, Skel'Tharant. Puede que él disfrute el devorar tu carne.~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700027 /* ~En cuanto a ti, engendro de Bhaal.~ ~En cuanto a ti, engendra de Bhaal.~ */
END

I_C_T P_MORGRA 0 P_MORGRA11B_1
== P_MORGRA IF ~~ THEN @10700009 /* ~*sus ojos parecen carecer de vida*~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700010 /* ~Ah, veo que tú también has arribado...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700011 /* Tú... eres Morgrath. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700012 /* ~Y tú, Fall, eres la hija de la selu'taar. Tu madre se encuentra en mis aposentos, ¿lo sabías?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700013 /* L-lo sé. ¡Entrégamela! Si lo haces, consideraré no matarte. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700014 /* ~Eres sólo un retoño. Totalmente incapaz de comprender el gran esquema. Durante eones he esperado este momento.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700015 /* ~Que tú estés aquí, Fall, es sólo porque yo lo he permitido.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700016 /* ~Tu madre lo descubrió. Luego ese Maestro de la Escarcha. Por eso es que han tratado de evitar, con tanto empeño, que no emprendieses un viaje hacia aquí.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700017 /* ~Pero su influjo no se compara con el mío. Por eso es que estás aquí. Porque han fallado y yo he logrado que mis planes marchen infalibles, como el caer de la lluvia ácida en las telarañas demoníacas del Abismo.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700018 /* ~<CHARNAME> y tú sólo son peones y sus almas penden del hilo del destino que he tejido durante milenios.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700019 /* ¡Ni <CHARNAME>, ni yo somos peones! Hemos logrado lo imposible durante más ocasiones de las que puedo recordar. Muchos seres antiguos nos han subestimado y ahora yacen destruidos, su esencia perdida en el tiempo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700020 /* ¡Tú no eres diferente! Sólo eres... un poco más grande que el resto. Un monstruo más, enemigo de la Naturaleza, que debe ser erradicado. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700021 /* ~Un discurso similar al pensamiento de ese humano que cayó hace tantos años en Imnescar, ¿no? Gerwulf, tu padre.~ */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700022 /* ~Su espíritu yace en ti. La valentía de tu madre yace en ti. Y el tiempo en que todo eso se extinga se acerca.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700023 /* Eso está por verse. */
== P_MORGRA IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10700024 /* ~Suficiente charla contigo, semielfa.~ */


== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700028 /* ~Ah, deja que me ocupe de ti en otro momento. Ahora mi interés se posa en este hombre-lagarto. General Cho'Nuja, a diferencia de mis hijos, debo decir que no me sorprende verte combatiendo al lado de estos habitantes de Faerûn.~ */
== P_CHO IF ~~ THEN @10700029 /* ~Tú...~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700030 /* ~Querías conocerme. Ahora lo has hecho. Morirás sólo, rodeado de las criaturas que extinguieron tu hogar. Pero sé que lo sabes. Sé que una parte de ti lo siente.~ */
== P_CHO IF ~~ THEN @10700031 /* ~Yo...~ */
== P_MORGRA IF ~InMyArea("P_CHO")~ THEN @10700032 /* ~Pero ya basta. Déjame volver mi atención a <CHARNAME>.~ */
END

