BEGIN P_KITOCH

IF ~!InParty("P_Fall")
!See("P_Fall")
AreaCheck("AR0511")
OR (1)
Global("P_FallMission3","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @11000000 /* ~*Ves a un curioso gato sentado, con los ojos entrecerrados. No puedes evitar observar el gorrito que lleva en su cabeza.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
!See("P_Fall")
AreaCheck("AR0511")
OR (1)
Global("P_FallMission3","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @11000000 /* ~*Ves a un curioso gato sentado, con los ojos entrecerrados. No puedes evitar observar el gorrito que lleva en su cabeza.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
AreaCheck("AR0511")
Global("P_FallMission3","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @11000001 /* *Observas con atención al gato. Parece estar durmiendo sentado.*~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission3","GLOBAL",2)~ EXTERN ~P_FALLJ~ 20
END

IF ~~ THEN BEGIN 3 // from:
  SAY @11000002 /* ~*El gato, quien parecía estar durmiendo confortablemente, se incorpora al escuchar la voz de Fall.*~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 21
END

IF ~~ THEN BEGIN 4 // from:
  SAY @11000003 /* ~¿Gorro ridículo? Pues para ser un Hijo de Bhaal te ves como un mamarracho.~ ~¿Gorro ridículo? Pues para ser una Hija de Bhaal te ves como un mamarracho.~ */
  IF ~~ THEN EXTERN ~P_FALLJ~ 21_1
END

IF ~~ THEN BEGIN 5 // from:
  SAY @11000004 /* ~¿Intentas herir mis sentimientos? Tendrás que esforzarte más, mamarracho.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 23
END

IF ~~ THEN BEGIN 6 // from:
  SAY @11000005 /* ~Sí, lo lamento, bocona.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 24
END

IF ~~ THEN BEGIN 7 // from:
  SAY @11000006 /* ~¿Que yo qué? No me hagas sacar mis garras, esperpento.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 24
END

IF ~~ THEN BEGIN 8 // from:
  SAY @11000007 /* ~Que no me hayas visto no significa que no haya estado aquí.~*/
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @11000008 /* ~Soy extremadamente sigiloso. Además puedo hacerme invisible gracias a mi condición feérica.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 27
END

IF ~~ THEN BEGIN 10 // from:
  SAY @11000009 /* ~¿Lo ves, Fall? Esta criatura es cruel. Puedes burlarte de mí, <PRO_RACE>, pero ¡jamás de mi gorro!~*/
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY @11000010 /* ~Sin embargo, te lo diré, bocona. Aunque no esperes que te acompañe después de esto.~*/
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from:
  SAY @11000011 /* ~Disculpas aceptadas, <LADY_LORD> <CHARNAME>. Y yo lamento haberte llamado mamarracho.~*/
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @11000012 /* ~Ahora podemos continuar.~*/
  IF ~~ THEN GOTO 15
END

// Kitochi Leaves Forever
IF ~~ THEN BEGIN 14 // from:
  SAY @11000013 /* ~Al elfo malhumorado le llevó un tiempo ejecutar el sortilegio con el que pretendía averiguar el paradero de tu madre.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 29
END

// Kitochi Leaves but Summon Spell Search Begin
IF ~~ THEN BEGIN 15 // from:
  SAY @11000013 /* ~Al elfo malhumorado le llevó un tiempo ejecutar el sortilegio con el que pretendía averiguar el paradero de tu madre.~*/
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @11000042 /* ~Puedes llevarme al Plano Astral si lo deseas. <CHARNAME> no parece ser tan malo después de todo. Aunque su gusto por la moda sea nulo.~ ~Puedes llevarme al Plano Astral si lo deseas. <CHARNAME> no parece ser tan mala después de todo. Aunque su gusto por la moda sea nulo.~ */
    IF ~~ THEN REPLY @11000043 /* ~Escuché eso, Kitochi.~ */  GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @11000044 /* ~Si Fall logra convocarme, hijo de Bhaal, habla conmigo. Me gustaría intercambiar historias.~ ~Si Fall logra convocarme, hija de Bhaal, habla conmigo. Me gustaría intercambiar historias.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY @11000045 /* ~Muy bien, bocona. Espero que puedas descifrar el conjuro necesario para convocarme.~ */
  IF ~~ THEN GOTO 19
END


IF ~~ THEN BEGIN 19 // from:
  SAY @11000046 /* ~Por lo pronto, me despido.~ */
  IF ~~ THEN DO ~ForceSpell(Myself,POOF_GONE)~ EXTERN ~P_FALLJ~ 30
END

IF ~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
//RandomNum(4,1)
AreaCheck("P_FAR2")
Global ("P_FallMission3","GLOBAL",4)
Global ("P_FallKitochToKakut","GLOBAL",0)~ THEN BEGIN 20 // from:
  SAY @11000047 /* ~¡Por los bigotes de mi madre! Bocona, ese escarabajo me está mirando de una forma muy extraña.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallKitochToKakut","GLOBAL",1)~ EXTERN ~P_FALLJ~ 51
END

IF ~~ THEN BEGIN 21 // from:
  SAY @11000049 /* ~Ya veo. Pues, eso será un poco complicado. Sus patas están atrapadas por unas grandes cadenas.~*/
    IF ~~ THEN REPLY @11000050 /* No vemos ninguna cadena, Kitochi. */  GOTO 22
END

IF ~~ THEN BEGIN 22 // from:
  SAY @11000051 /* ~Pues, no tienes mis ojos, buen <CHARNAME>. La criatura no se irá a ningún lado a menos que acaben con ella o encuentren alguna forma de liberarla de sus ataduras.~ */
  IF ~~ THEN EXTERN ~P_FALLJ~ 52
END


IF ~InParty("P_Fall")
See("P_Fall")
!AreaCheck("AR0511")
!AreaCheck("P_FAR1")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR3")
AreaType(DUNGEON)
Global("P_Fall_Kitoch_Charname","GLOBAL",1)~ THEN BEGIN 23 // from:
  SAY @11000052 /* *bostezo* ¡<CHARNAME>! ¿Tienes ganas de hablar? Puede que no sea el mejor lugar para una charla, pero siento que ante el peligro unas palabras entre amigos puede alivianar las cosas.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_Charname","GLOBAL",2)~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @11000053 /* ~*maullido* ¿Y bien? Vamos, quiero saber más de ti.~*/
    IF ~~ THEN REPLY @11000054 /* ~¿Y qué es lo que quieres saber, Kitochi? Ya sabes que desciendo de Bhaal. Tú mismo has escuchado las conversaciones en la taberna de las Cinco Jarras.~ */  GOTO 26
	IF ~~ THEN REPLY @11000055 /* ~No es un buen momento para hablar, gato.~ */  GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @11000056 /* ~Hmpf. De acuerdo. Creo que me he equivocado contigo.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_WontTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY @11000057 /* ~Es verdad. Me gustaría saber un poco más. Por ejemplo, ¿de dónde vienes?~ */
    IF ~~ THEN REPLY @11000058 /* ~Pues, vengo de Candelero. Viví allí durante unos veinte años hasta que Sarevok, mi hermano, asesinó a mi padre, Gorion.~ */  GOTO 28
	IF ~~ THEN REPLY @11000059 /* ~No te ofendas, felino, pero no me gusta hablar de mi pasado.~ */  GOTO 27
END

IF ~~ THEN BEGIN 27 // from:
  SAY @11000094 /* ~Entiendo. Y lo respeto. En ese caso, me gustaría que escuchases mi historia. ¿Te parece?~ */
    IF ~~ THEN REPLY @11000061 /* ~De acuerdo, Kitochi. Cuéntame.~ */  GOTO 31
	IF ~~ THEN REPLY @11000062 /* ~Tampoco me gusta oír historias ajenas, gatito. Será mejor que lo hagas en otra ocasión.~ */  GOTO 25
END

IF ~~ THEN BEGIN 28 // from:
  SAY @11000063 /* ~Ya veo. Sarevok te estaba buscando a ti. En cambio, encontró a Gorion primero.~ */
    IF ~~ THEN REPLY @11000064 /* ~En realidad, estábamos dejando Candelero cuando fuimos emboscados por Sarevok. Gorion se sacrificó para salvarme.~ */  GOTO 29
	IF ~~ THEN REPLY @11000065 /* ~No me gusta hablar de la muerte de Gorion, Kitochi. Espero que lo entiendas.~ */  GOTO 27
END

IF ~~ THEN BEGIN 29 // from:
  SAY @11000066 /* ~Entonces... ¿tu padre murió frente a tus ojos?~ */
    IF ~~ THEN REPLY @11000067 /* ~Así es. Vi cómo su pecho fue atravesado por la espada de mi hermano. Es algo que nunca olvidas.~ */  GOTO 30
	IF ~~ THEN REPLY @11000068 /* ~Así es...~ */  GOTO 30
END

IF ~~ THEN BEGIN 30 // from:
  SAY @11000069 /* ~Entiendo más de lo que te puedes imaginar, <CHARNAME>. ¿Querrías escuchar mi historia?~ */
    IF ~~ THEN REPLY @11000070 /* ~De acuerdo, Kitochi. Cuéntame.~ */  GOTO 31
	IF ~~ THEN REPLY @11000071 /* ~No estoy de humor, gato. No es el momento más indicado.~ */  GOTO 25
END

IF ~~ THEN BEGIN 31 // from:
  SAY @11000072 /* Antes de comenzar... debes saber que eres la segunda persona con la que hablo de esto. Fall es una buena niña y ha vivido experiencias similares a la nuestra. */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from:
  SAY @11000073 /* ~Tuve que hacerlo. Tuve que hacerlo.~ */
    IF ~~ THEN REPLY @11000074 /* ~Kitochi, ¿te encuentras bien?~ */  GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @11000075 /* *maullido agudo* Sí, <CHARNAME>. Gracias por preguntar. */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from:
  SAY @11000076 /* ~*maullido* Creo que ha sido suficiente por hoy, amigo <CHARNAME>. Te diré qué: La próxima vez llámame en alguna taberna de la ciudad y continuaré mi relato.~ ~*maullido* Creo que ha sido suficiente por hoy, amiga <CHARNAME>. Te diré qué: La próxima vez llámame en alguna taberna de la ciudad y continuaré mi relato.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",2)~ UNSOLVED_JOURNAL @310026 EXIT
END

IF ~InParty("P_Fall")
Global("P_Fall_Kitoch_Charname","GLOBAL",3)
See("P_Fall")
OR(9)
AreaCheck("AR0313")
AreaCheck("AR0314")
AreaCheck("AR0406")
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0509")
AreaCheck("AR0513")
AreaCheck("AR0515")
AreaCheck("AR0021")
~ THEN BEGIN 35 // from:
  SAY @11000095 /* ~Sí, este lugar es un buen lugar para hablar.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_Charname","GLOBAL",4)~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from:
  SAY @11000096 /* ~*maullido* ¿Y bien? <CHARNAME>, continuemos con la historia, ¿te parece?~*/
    IF ~~ THEN REPLY @11000097 /* ~¿Sobre tu llegada a los bosques de Imnescar? Mencionaste a un druida llamado Aeris. ~ */  GOTO 37
	IF ~~ THEN REPLY @11000098 /* ~¿No habías hablado de una misión o algo así? Si hay algo que hacer, me gustaría que me lo digas.~ */  GOTO 37
END

IF ~~ THEN BEGIN 37 // from:
  SAY @11000099 /* Ya llegaremos a eso, <CHARNAME>. Antes me gustaría saber más de tus aventuras. ¿Qué pasó con tu hermano, el tal Sarevok? */
    IF ~~ THEN REPLY @11000100 /* ~Intentó crear una guerra entre Puerta de Baldur y Amn, mientras que su padre adoptivo, Rieltar, intentó monopolizar el mercado del hierro. Fue una situación bastante caótica en el Norte. Finalmente, pude matar a Sarevok luego de desenmascarar sus ambiciosas intenciones.~ */  GOTO 37_5
	IF ~~ THEN REPLY @11000101 /* ~En resumen, Sarevok está muerto. No me gusta mucho hablar del tema, Kitochi.~ */  GOTO 37_5
END

IF ~~ THEN BEGIN 37_5 // from:
  SAY @11000102 /* Entiendo. Digamos que, finalmente, pudiste alcanzar tu venganza, ¿no es así? Tengo una pregunta: ¿cómo te hizo sentir eso? */
    IF ~~ THEN REPLY @11000103 /* ~Me hizo sentir bien. Matarlo era lo necesario, puesto a que estaba obsesionado con acabar conmigo.~ */  GOTO 38
	IF ~~ THEN REPLY @11000104 /* ~Pude vengar a Gorion, es verdad. Sin embargo, no lo hice por venganza. Lo hice porque era lo correcto, Kitochi.~ */  GOTO 39
	IF ~~ THEN REPLY @11000105 /* ~No tengo la certeza de que me haya hecho sentir bien. Descubrir que quien asesinó a mi padre adoptivo no fue otro más que mi medio-hermano no hizo que la empresa fuese más fácil.~ */  GOTO 40
END

IF ~~ THEN BEGIN 38 // from:
  SAY @11000106 /* Ya veo. Nunca he llevado a cabo una venganza. Lo que mencionaste me es interesante. */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY @11000107 /* Comprendo. Sarevok era un cruel descendiente de Bhaal y debía ser exterminado. Era lo correcto. Era justicia. */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 40 // from:
  SAY @11000108 /* No debió ser fácil para ti. Entiendo. Matar no se supone que lo haga a uno sentir bien. No al menos de una forma natural. */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from:
  SAY @11000109 /* Debo hablarte de Aeris antes de proponerte algo. */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from:
  SAY @11000110 /* ~Fue... un gran amigo.~ */
    IF ~~ THEN REPLY @11000111 /* ~¿Qué sucedió con él? Creo que mencionaste la batalla en Imnescar.~ */  GOTO 43
END

IF ~~ THEN BEGIN 43 // from:
  SAY @11000112 /* Las arañas... las criaturas oscuras atacaron nuestro hogar. */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from:
  SAY @11000113 /* Esto es lo que quiero pedirte, <CHARNAME>. Ayúdame a matar a la criatura que mató a Aeris. */
    IF ~~ THEN REPLY @11000114 /* ~No es algo muy diferente a lo que estimo que Fall desea, ¿en qué se diferencia tu deseo?~ */  GOTO 46
	IF ~~ THEN REPLY @11000115 /* ~De acuerdo, Kitochi. ¿Qué debemos hacer?~ */  GOTO 47
	IF ~~ THEN REPLY @11000116 /* ~¿Habrá alguna recompensa? Un encargo no debería ser diferente porque venga de un amigo, ¿sabes?~ */  GOTO 47
	IF ~~ THEN REPLY @11000117 /* ~No sabía que sólo buscabas mi atención para pedirme algo a cambio. No me interesan las maquinaciones felinas. ~ */  GOTO 45
END

IF ~~ THEN BEGIN 45 // from:
  SAY @11000118 /* ~Yo... de acuerdo... no creo que volvamos a hablar...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",9) EraseJournalEntry (@310026)~ SOLVED_JOURNAL @310027 EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY @11000119 /* La diferencia está en que es probable que no nos encontremos con esta criatura si seguimos el camino de Fall. No quiero que eso suceda. */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from:
  SAY @11000120 /* Antes que nada, quiero aclarar que es probable que la criatura guarde tesoros. En caso de que no, te puedo asegurar que podremos hacer algo con lo que podamos extraer de su putrefacto cuerpo. */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from:
  SAY @11000121 /* ~*maullido* Es hora de terminar esto por ahora, <CHARNAME>. Ultimaremos detalles en nuestra próxima conversación. Aún debo terminar de planear algunos asuntos en el Plano Astral. La próxima vez, convócame en un área forestal y hablaremos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",4)~ UNSOLVED_JOURNAL @310028 EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
AreaType(FOREST)
Global("P_Fall_Kitoch_Charname","GLOBAL",5)~ THEN BEGIN 49 // from:
  SAY @11000138 /* *ronroneo* Me recuerda un poco a Imnescar... <CHARNAME>, es hora de la verdad.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_Charname","GLOBAL",6)~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from:
  SAY @11000139 /* ~Voy a hablar de la criatura que mató a Aeris.~*/
    IF ~~ THEN REPLY @11000140 /* ~Ya veo. ¿Qué tipo de criatura es, Kitochi? Para acabar con un druida élfico experimentado debe haberse tratado de un monstruo poderoso. ~ */  GOTO 51
	IF ~~ THEN REPLY @11000141 /* ~¿Y debemos matar a ese bicho? Necesitamos más información sobre nuestro objetivo, gato.~ */  GOTO 51
END

IF ~~ THEN BEGIN 51 // from:
  SAY @11000142 /* Antes de darte esos detalles, déjame continuar mi historia. */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from:
  SAY @11000143 /* ~Fue entonces que lo vimos...~ */
    IF ~~ THEN REPLY @11000144 /* ~¿Qué vieron, Kitochi?~ */  GOTO 53
END

IF ~~ THEN BEGIN 53 // from:
  SAY @11000145 /* Gorm, la Plaga Verde. */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @11000146 /* ~Pero si aunamos fuerzas con <CHARNAME>, creo que podremos matarle.~ */
    IF ~~ THEN REPLY @11000147 /* ~Si un druida veterano no pudo hacerle frente, ¿qué te hace pensar que yo podré?~ */  GOTO 55
    IF ~~ THEN REPLY @11000148 /* ~Está bien, Kitochi. ¿Qué es lo que propones?~ */  GOTO 56
END

IF ~~ THEN BEGIN 55 // from:
  SAY @11000149 /* Te he visto en diferentes situaciones, <CHARNAME>. Has resuelto el asunto del basilisco, afrontado a Alendir y derrotado a Icelock. Tu poder no deja de sorprenderme. */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from:
  SAY @11000150 /* Lo que propongo es lo siguiente: iremos al hogar de esta criatura y le mataremos. */
    IF ~~ THEN REPLY @11000151 /* ~Me parece un buen plan. ¿Cómo se supone que haremos eso?~ */  GOTO 58
    IF ~~ THEN REPLY @11000152 /* ~¿Un ataque directo? Me parece una locura.~ */  GOTO 57
END

IF ~~ THEN BEGIN 57 // from:
  SAY @11000153 /* No será un ataque frontal, <CHARNAME>. Gorm no nos espera, aunque eso no signifique que no vaya a ser un combate difícil. */
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from:
  SAY @11000154 /* Lo siguiente será usar una de las escamas de Gorm para viajar a su plano abisal. */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from:
  SAY @11000155 /* Sólo yo sé cómo llamarlo. */
    IF ~~ THEN REPLY @11000156 /* ~¿Dónde podremos encontrar a Acrull?~ */  GOTO 60
END

IF ~~ THEN BEGIN 60 // from:
  SAY @11000157 /* Acrull estará en las afueras de la arboleda druídica de la región. Os estará esperando. Incluso te lo marcaré en tu mapa. */
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from:
  SAY @11000158 /* ~En resumen, <CHARNAME>. Acrull estará en la zona noroeste de la región. Recuerda que Fall debe estar contigo para que esto funcione.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("AR1900") SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",6)~ UNSOLVED_JOURNAL @310029 EXIT
END

IF ~InParty("P_Fall")
AreaCheck("P_FAR4")
Global ("P_Fall_Kitoch_Charname","GLOBAL",7)~ THEN BEGIN 62 // from:
  SAY @11000193 /* <CHARNAME>, recuerda esto: Mi muerte es intrascendente... pero debes proteger a Fall. Si ganamos esta batalla, ella será el enlace necesario para regresar a casa.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_Charname","GLOBAL",8)~ GOTO 64
END

IF ~~ THEN BEGIN 63 // from:
  SAY @11000197 /* Lo que hueles es la proximidad de tu extinción, Gorm. */
  IF ~~ THEN EXTERN ~P_GORM~ 1
END

IF ~~ THEN BEGIN 64 // from:
  SAY @11000191 /* ~*maullido gutural* ¡¡¡Gorm!!! Sal de donde quiera que te ocultes, criatura asquerosa. ¡Hemos venido a matarte!~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",8)~ UNSOLVED_JOURNAL @310031 EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY @11000200 /* Lo estaré... */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from:
  SAY @11000199 /* ~¡Aeris! Te he vengado... te hemos vengado... <CHARNAME>, Fall: Gracias... Volveré al Plano Astral... necesito estar solo al menos un momento.~ */
  IF ~~ THEN DO ~ SetGlobal ("P_FallAboutGormsDeath_KitAlive","GLOBAL",2) ForceSpell (Myself, POOF_GONE)~ EXIT
END

IF ~Global ("P_FallAboutGormsDeath_KitAlive","GLOBAL",1)
AreaCheck("P_FAR4")
Dead("P_GORM")~ THEN BEGIN 67 // from:
  SAY @11000198 /* ~Veo la cabeza de Gorm... al fin...~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutGormsDeath_KitAlive","GLOBAL",2)~ EXTERN ~P_FALLJ~ 73
END

IF
~RandomNum(5,1)~ THEN BEGIN 68 // from:
  SAY @10000013 /* ~*maullido* ¿Querías algo?~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 69 // from:
  SAY @10000014 /* ~*maullido fuerte* ¡Ahora no! ¿No ves que me estoy acicalando?~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 70 // from:
  SAY @10000015 /* ~*bostezo* Preferiría que no me molestes. Tenía pensado tomar una breve siesta.~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 71 // from:
  SAY @10000016 /* ~*ronroneo* ¿Me necesitas? Ahora estoy de buen humor, puede que cumpla tus órdenes.~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 72 // from:
  SAY @10000017 /* ~*maullido* Creo que mi gorro necesita una lavada...~ */
  IF ~~ THEN EXIT
END

// Phantom Assassin CA
IF ~InParty("P_Fall")
See("P_Fall")
Global("P_FallAboutGormsDeath_KitAlive","GLOBAL",4)~ THEN BEGIN 73 // from:
  SAY @11100162 /* *ronroneo* He estado pensando, <CHARNAME>...~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutGormsDeath_KitAlive","GLOBAL",5)~ GOTO 74
END

IF ~~ THEN BEGIN 74 // from:
  SAY @11100163 /* La muerte de Gorm ha significado mucho para mí. He logrado mi venganza contra Aeris. Pero también me ha hecho más fuerte. */
    IF ~~ THEN REPLY @11100164 /* ~Pues yo te veo igual.~ */  GOTO 75
    IF ~~ THEN REPLY @11100165 /* ~¿A qué te refieres, Kitochi?~ */  GOTO 76
END

IF ~~ THEN BEGIN 75 // from:
  SAY @11100166 /* *maullido agudo* Puede que no lo aparente, pero me siento más fuerte. */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from:
  SAY @11100167 /* He estado practicando algunos conjuros en el Plano Astral. Con tu influencia en combate, podría ponerlo en práctica. */
    IF ~~ THEN REPLY @11100168 /* ~¿Qué necesitas?~ */  GOTO 78
    IF ~~ THEN REPLY @11100169 /* ~No quiero nada raro con tus entreveros gatunos, Kitochi.~ */  GOTO 77
END

IF ~~ THEN BEGIN 77 // from:
  SAY @11100170 /* ~Hmpf. De acuerdo. Tú te lo pierdes.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutGormsDeath_KitAlive","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY @11100171 /* *maullido* La próxima vez que nos encontremos en un combate, puedo poner sobre ti un manto de invisibilidad mejorada. Es decir, podrás combatir aún estando invisible. */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from:
  SAY @11100172 /* Mientras que yo y gracias a tu influencia divina, podré conjurar algunas armas hechas de energía pura que lanzaré contra nuestros oponentes. A esta técnica la he llamado Asesino Fantasma. */
    IF ~~ THEN REPLY @11100173 /* ~Me gusta la idea, Kitochi. Cuando estemos juntos en combate, lo pondremos en práctica.~ */  GOTO 80
    IF ~~ THEN REPLY @11100174 /* ~No, gracias. No quiero arriesgarme a que lances una de esas cosas energéticas contra mí por error, gato loco.~ */  GOTO 77
END

IF ~~ THEN BEGIN 80 // from:
  SAY @11100175 /* ~*maullido* Así será, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutGormsDeath_KitAlive","GLOBAL",5) SetGlobal("P_KitochiCHARNAME_CA_001","GLOBAL",1)~ EXIT
END

//EXTEND

EXTEND_BOTTOM P_ACRULL 0
IF ~~ EXTERN P_KITOCH p_kit1
END

CHAIN P_KITOCH p_kit1
@11000189 /* Acrull tiene razón <CHARNAME>. Trae a Fall para que viajemos a la guarida de Gorm. */
EXIT

EXTEND_BOTTOM P_ACRULL 1
IF ~~ EXTERN P_KITOCH p_kit2
END

CHAIN P_KITOCH p_kit2
@11000189 /* Acrull tiene razón <CHARNAME>. Trae a Fall para que viajemos a la guarida de Gorm. */
EXIT

/*EXTEND_BOTTOM P_ACRULL 2
IF ~~ EXTERN P_KITOCH p_kit3
END

CHAIN P_KITOCH p_kit3
@11000190 /* Así es, Acrull. Fall y las fuerzas de <CHARNAME> viajarán al plano de Gorm, hacia su guarida. */
EXTERN ~P_FALLJ~ 71
*/

EXTEND_BOTTOM P_GORM 3
IF ~~ EXTERN P_KITOCH p_kit4
END

CHAIN P_KITOCH p_kit4
@11000192 /* ¡Gorm! Esto es por mi amigo... ¡Al ataque! */
EXIT




I_C_T P_KITOCH 62 P_Fall_KITOCH_62GORMQUEST
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000194 /* No seas pesimista, Kitochi. Nadie morirá. ¡Es una promesa! */
== P_KITOCH IF ~~ THEN @11000195 /* Je. A veces tu ingenuidad me conmueve, bocona. */
== P_KITOCH IF ~~ THEN @11000196 /* Ahora... a lo nuestro: */
END

I_C_T P_Kitoch 58 P_Fall_KITOCH_CHARNAME6
== P_KITOCH IF ~~ THEN @11000184 /* La misma se encuentra en poder de un viejo conocido, Fall. */
== P_KITOCH IF ~~ THEN @11000185 /* Acrull Escudonorteño. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000186 /* ¡¿Qué?! ¿Acrull supo todo el tiempo de tu plan? */
== P_KITOCH IF ~~ THEN @11000187 /* *maullido agudo* Es probable, bocona. Lo importante es que Acrull será el vínculo entre este plano y el abisal, usando la escama que le di hace un tiempo. */
== P_KITOCH IF ~~ THEN @11000188 /* <CHARNAME>, es importante que Fall esté contigo a la hora de hablar con Acrull. No es necesario que yo esté presente, aunque, eso sí, cuando lleguemos al hogar de Gorm, convócame. */
END


I_C_T P_Kitoch 53 P_Fall_KITOCH_CHARNAME5
== P_KITOCH IF ~~ THEN @11000172 /* En apariencia se asimila a la mezcla entre un gusano y un cienpiés... pero de tamaño descomunal. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000173 /* ¿Crees que esta criatura estuvo detrás del ataque a nuestro hogar? */
== P_KITOCH IF ~~ THEN @11000174 /* No, bocona. Incluso creo que conspiró con la fuerza oscura que planeó el ataque. Diría que es una especie de súbdito. */
== P_KITOCH IF ~~ THEN @11000175 /* Pero uno muy poderoso. */
== P_KITOCH IF ~~ THEN @11000176 /* Aeris... Aeris no pudo hacerle frente. */
== P_KITOCH IF ~~ THEN @11000177 /* Puede que su tamaño sea descomunal... pero sus ataques de colmillo fueron demasiado rápidos. */
== P_KITOCH IF ~~ THEN @11000178 /* Sólo bastó una herida superficial en la piel de mi amigo y fue más que suficiente para insuflarle un veneno mortal. */
== P_KITOCH IF ~~ THEN @11000179 /* No tuvimos otra opción más que huir del bosque. Pero... */
== P_KITOCH IF ~~ THEN @11000180 /* Aeris murió en las afueras de Imnescar, debido al veneno. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000181 /* Lo lamento, Kitochi. Aeris era una buena persona. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000182 /* Sin embargo, no puedo evitar preguntarme... ¿por qué no me contaste esto antes? */
== P_KITOCH IF ~~ THEN @11000183 /* Es simple, bocona. Sabía que si te lo contaba harías lo posible por ir en su busca. Y la cuestión es que Gorm es demasiado poderoso para nosotros dos solos. */
END


I_C_T P_Kitoch 51 P_Fall_KITOCH_CHARNAME4
== P_KITOCH IF ~~ THEN @11000159 /* Cuando la batalla por Imnescar comenzó, el caos rondó todo el ambiente. */
== P_KITOCH IF ~~ THEN @11000160 /* La magia arcana y divina parecía no funcionar. Tanto la hechicera Gemystara, la madre de Fall, como los druidas del bosque, Aeris incluído, tuvieron graves problemas al percatarse que sus conjuros no estaban funcionando. */
== P_KITOCH IF ~~ THEN @11000161 /* Dependimos mucho de la fuerza bruta de los exploradores como Gerwulf, Ivor o Mephala. Las bestias del bosque ayudaron mucho. */
== P_KITOCH IF ~~ THEN @11000162 /* No creo que Fall, Gem o yo hubiésemos sobrevivido de no ser por ellos. */
== P_KITOCH IF ~~ THEN @11000163 /* Sin embargo, no fueron solamente arañas las criaturas que nos atacaron. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000164 /* Es verdad... recuerdo criaturas extrañas y grotescas que surgieron de la profundidad del bosque. Parecían ser miriápodos insectoides. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000165 /* Recuerdo... recuerdo a Aeris y a ti pelear contra ellos. */
== P_KITOCH IF ~~ THEN @11000166 /* Así es. Sea cual sea la entidad que orquestó el ataque a Imnescar, lo logró aliándose con otras criaturas abisales. */
== P_KITOCH IF ~~ THEN @11000167 /* <CHARNAME>, puede que conozcas a esas criaturas como "Carroñeros reptantes". */
== P_KITOCH IF ~~ THEN @11000168 /* Pero no eran Carroñeros normales. No. */
== P_KITOCH IF ~~ THEN @11000169 /* Aeris y yo nos enfrentamos. Pudimos derrotar a muchos, pero seguían viniendo en masa. */
== P_KITOCH IF ~~ THEN @11000170 /* Aeris logró llevar a cabo un conjuro, pese a las limitaciones de aquella fuerza misteriosa, y un golpe de relámpago acabo con varias de esas alimañas. */
== P_KITOCH IF ~~ THEN @11000171 /* Estábamos dispuestos a ir a ayudar al resto, cuando sentimos una última presencia... sumamente poderosa. */
END

I_C_T P_Kitoch 41 P_Fall_KITOCH_CHARNAME3
== P_KITOCH IF ~~ THEN @11000122 /* Los exploradores y druidas lograron matar al demonio, aunque no sin dificultad. */
== P_KITOCH IF ~~ THEN @11000123 /* Las fuerzas de la naturaleza en el Plano Material son una fuerza a tener en cuenta, <CHARNAME>. */
== P_KITOCH IF ~~ THEN @11000124 /* Puede que sus vidas sean considerablemente más cortas que las de muchas criaturas abisales, pero no por ello son más débiles. */
== P_KITOCH IF ~~ THEN @11000125 /* La voluntad de vivir de estas criaturas es excepcional. Al igual que la mía. */
== P_KITOCH IF ~~ THEN @11000126 /* Eso me dijo Aeris, una vez que mis heridas fueron curadas. Sin embargo, no pudo hacer mucho por mis orejas. */
== P_KITOCH IF ~~ THEN @11000127 /* Las orejas de los gatos feéricos son diferentes a las de los gatos de este plano. Son como las plumas de los cardenales o de los petirrojos. Son el orgullo de su raza. */
== P_KITOCH IF ~~ THEN @11000128 /* Si bien se dio cuenta de que era un gato feérico, se sorprendió de que no emitiera palabra alguna durante semanas. */
== P_KITOCH IF ~~ THEN @11000129 /* Creo que Aeris se percató de mi desdicha, por lo que, al cabo de algunas tardes, me obsequió el gorro que ahora ves conmigo. */
== P_KITOCH IF ~~ THEN @11000130 /* Sé que es con el objetivo de cubrir mis orejas. Pero ciertamente funcionó. */
== P_KITOCH IF ~~ THEN @11000131 /* Muchos humanos sonreían cuando me veían y, especialmente las mujeres, buscaban acariciar mi lomo. */
== P_KITOCH IF ~~ THEN @11000132 /* Agradecí a Aeris y me convertí en su compañero animal. */
== P_KITOCH IF ~~ THEN @11000133 /* Puede que esto sea indigno para un gato feérico, pero no me importó. Aeris era muy sabio. */
== P_KITOCH IF ~~ THEN @11000134 /* Yo soy viejo para ser un gato feérico. Según mis calculos, mi edad debe rondar los 120 años. Pero Aeris lo era mucho más. */
== P_KITOCH IF ~~ THEN @11000135 /* Era un elfo de Wéldazh, seguidor de Silvanus. Me enseñó mucho sobre este mundo e hizo que le tome cariño. */
== P_KITOCH IF ~~ THEN @11000136 /* Tenía un respeto profundo por los humanos y los animales. Los bosques y las estaciones. Incluso la gente de la ciudad. */
== P_KITOCH IF ~~ THEN @11000137 /* Salvó muchas vidas durante la Plaga de la Costa. */
END

I_C_T P_Kitoch 33 P_Fall_KITOCH_CHARNAME2
== P_KITOCH IF ~~ THEN @11000080 /* Lo lamento, a veces me pierdo en mis recuerdos. */
== P_KITOCH IF ~~ THEN @11000081 /* No siempre viví en Amn, ¿sabes? Aunque no tengo recuerdos de dónde nací. */
== P_KITOCH IF ~~ THEN @11000082 /* Puedo decirte que viví muchos años en los Bosques de Cormanthor. Recuerdo su magia antigua y la infinidad de criaturas mágicas en las arboledas. */
== P_KITOCH IF ~~ THEN @11000083 /* En mi juventud exploré difentes tierras y viajé por lugares que no creerías. */
== P_KITOCH IF ~~ THEN @11000084 /* Sin embargo, como debes saberlo, viajar tiene sus riesgos, incluso para criaturas feéricas como yo. */
== P_KITOCH IF ~~ THEN @11000085 /* Hace muchas décadas, mientras navegaba por los planos, fui atacado por una entidad abisal. */
== P_KITOCH IF ~~ THEN @11000086 /* Fui herido de gravedad y caí en uno de los bosques cercanos a Crimmor. */
== P_KITOCH IF ~~ THEN @11000087 /* El demonio se abrió paso por los planos y logró encontrarme. */
== P_KITOCH IF ~~ THEN @11000088 /* Estaba indefenso, como un cachorro, y sentí que mi vida estaba llegando a su fin. */
== P_KITOCH IF ~~ THEN @11000089 /* Fue entonces que el demonio, antes de dar su golpe final, fue asediado por flechas, lanzas y piedras. */
== P_KITOCH IF ~~ THEN @11000090 /* Una partida de exploradores y druidas arribaba para expulsar al demonio de sus bosques. */
== P_KITOCH IF ~~ THEN @11000091 /* Yo me encontraba muy malherido, pero sentí cómo alguien me tomó en sus brazos. */
== P_KITOCH IF ~~ THEN @11000092 /* Con mis últimas fuerzas pude ver al elfo que me cargaba. Más tarde habría de enterarme de su nombre. */
== P_KITOCH IF ~~ THEN @11000093 /* Aeris. */
END

I_C_T P_Kitoch 31 P_Fall_KITOCH_CHARNAME1
== P_KITOCH IF ~~ THEN @11000077 /* Pero a veces siento que debo hablar con alguien más y no se me ocurre una criatura más experimentada que tú. */
== P_KITOCH IF ~~ THEN @11000078 /* Los gatos feéricos vivimos muchos años. Pero no somos inmortales. Hay mucha confusión al respecto, ¿sabes? */
== P_KITOCH IF ~~ THEN @11000079 /* Sé que no soy una criatura bella en comparación a mis congéneres. Pero puedo excusarme porque he combatido en el frente de batalla junto a los exploradores y druidas de Imnescar. */
END

I_C_T P_Kitoch 20 P_Fall_KITOCH_KAKUT1
== P_KAKUTO IF ~~ THEN @11000048 /* *La mirada del escarabajo está concentrada en Kitochi.* */
END


I_C_T P_Kitoch 15 P_Fall_KITOCHI_Q3_1_KIT_SUMMON
== P_KITOCH IF ~~ THEN @11000014 /* ~Honestamente, creí que habría de ejecutarlo en un lugar un tanto más... discreto que aquí en la taberna. Pero lo cierto es que no hay mucha concurrencia en este sector.~ */
== P_KITOCH IF ~~ THEN @11000015 /* ~El ritual fue algo... extraño. Pareció imbuir una espada con los ingredientes necesarios, incluyendo el colmillo del basilisco que ustedes le trajeron.~ */
== P_KITOCH IF ~~ THEN @11000016 /* ~De la hoja de la espada nació una llama amarillenta.~ */
== P_KITOCH IF ~~ THEN @11000017 /* ~El viejo elfo comenzó a invocar unas extrañas conjuraciones y esperó. Parecía estar hablando con las llamas, llamando, recitando...~ */
== P_KITOCH IF ~~ THEN @11000018 /* ~Sea lo que oyese, parecía que sólo era destinado para sus oídos élficos, porque yo sólo escuché las crepitaciones de las llamas.~ */
== P_KITOCH IF ~~ THEN @11000019 /* ~Eventualmente, alguien... o algo le respondió.~ */
== P_KITOCH IF ~~ THEN @11000020 /* ~Como ya debes saber, niña, el tal Alendir es de una paz inescrupulosa... Pero pude ver un miedo indescriptible en su mirada.~ */
== P_KITOCH IF ~~ THEN @11000021 /* ~Las llamas se volvieron negras como las nubes de una tormenta y Alendir dejó caer la espada.~ */
== P_KITOCH IF ~~ THEN @11000022 /* ~Con sus manos tomó su cabeza y le oí murmurar...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000023 /* ¿Qué fue lo que dijo? */
== P_KITOCH IF ~~ THEN @11000024 /* ~"No puede ser." Dijo una y otra vez.~ */
== P_KITOCH IF ~~ THEN @11000025 /* ~Al cabo de unos minutos de silencio, tomó sus cosas y se fue.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000026 /* Kitochi... ¿sabes dónde está Alendir? */
== P_KITOCH IF ~~ THEN @11000027 /* ~Por supuesto, bocona. Le seguí. Fue a los Barrios Bajos. Ingresó a una taberna y pasó hacia unas habitaciones en la parte de atrás.~ */
== P_KITOCH IF ~~ THEN @11000028 /* ~Siguió por un largo pasillo y pareció desviarse por un pasaje secreto. Dicho pasaje lleva a una especie de cloaca.~ */
== P_KITOCH IF ~~ THEN @11000029 /* ~Pero eso no es todo. Su recorrido iba más allá. Por un lugar donde los desechos corren, por el norte.~ */
== P_KITOCH IF ~~ THEN @11000030 /* ~Cabe mencionar que Alendir se había hecho invisible, pero pude seguir su rastro de igual manera.~ */
== P_KITOCH IF ~~ THEN @11000031 /* ~Menciono esto porque pasamos entre unos kóbolds que no parecían muy amigables.~ */
== P_KITOCH IF ~~ THEN @11000032 /* ~Si avanzas más allá, dicho pasillo se va encogiendo hasta que casi no se puede avanzar.~ */
== P_KITOCH IF ~~ THEN @11000033 /* ~Se puede seguir hasta que uno se choca con una pared aparentemente infranqueable. Una especie de fuerza invisible.~ */
== P_KITOCH IF ~~ THEN @11000034 /* ~Aquí es donde Alendir se detuvo y... pareció hablar a la nada.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000035 /* ¿Llegaste a escucharlo, Kitochi? */
== P_KITOCH IF ~~ THEN @11000036 /* ~*maullido* Por supuesto, bocona. El elfo dijo "en el susurro del viento helado, se encuentra el camino.".~ */
== P_KITOCH IF ~~ THEN @11000037 /* ~Luego de eso, el obstáculo pareció desaparecer. Pero... ya no le seguí. Desconozco qué es lo que hay más allá de ese lugar.~ */
== P_KITOCH IF ~~ THEN @11000038 /* ~Presentí peligro. O al menos una presencia extraña y ajena a este plano.~ */
== P_KITOCH IF ~~ THEN @11000039 /* ~Como sea, creo que he cumplido con lo que me has pedido, bocona.~ */
END


I_C_T P_Kitoch 14 P_Fall_KITOCHI_Q3_1_KIT_LEAVES
== P_KITOCH IF ~~ THEN @11000014 /* ~Honestamente, creí que habría de ejecutarlo en un lugar un tanto más... discreto que aquí en la taberna. Pero lo cierto es que no hay mucha concurrencia en este sector.~ */
== P_KITOCH IF ~~ THEN @11000015 /* ~El ritual fue algo... extraño. Pareció imbuir una espada con los ingredientes necesarios, incluyendo el colmillo del basilisco que ustedes le trajeron.~ */
== P_KITOCH IF ~~ THEN @11000016 /* ~De la hoja de la espada nació una llama amarillenta.~ */
== P_KITOCH IF ~~ THEN @11000017 /* ~El viejo elfo comenzó a invocar unas extrañas conjuraciones y esperó. Parecía estar hablando con las llamas, llamando, recitando...~ */
== P_KITOCH IF ~~ THEN @11000018 /* ~Sea lo que oyese, parecía que sólo era destinado para sus oídos élficos, porque yo sólo escuché las crepitaciones de las llamas.~ */
== P_KITOCH IF ~~ THEN @11000019 /* ~Eventualmente, alguien... o algo le respondió.~ */
== P_KITOCH IF ~~ THEN @11000020 /* ~Como ya debes saber, niña, el tal Alendir es de una paz inescrupulosa... Pero pude ver un miedo indescriptible en su mirada.~ */
== P_KITOCH IF ~~ THEN @11000021 /* ~Las llamas se volvieron negras como las nubes de una tormenta y Alendir dejó caer la espada.~ */
== P_KITOCH IF ~~ THEN @11000022 /* ~Con sus manos tomó su cabeza y le oí murmurar...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000023 /* ¿Qué fue lo que dijo? */
== P_KITOCH IF ~~ THEN @11000024 /* ~"No puede ser." Dijo una y otra vez.~ */
== P_KITOCH IF ~~ THEN @11000025 /* ~Al cabo de unos minutos de silencio, tomó sus cosas y se fue.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000026 /* Kitochi... ¿sabes dónde está Alendir? */
== P_KITOCH IF ~~ THEN @11000027 /* ~Por supuesto, bocona. Le seguí. Fue a los Barrios Bajos. Ingresó a una taberna y pasó hacia unas habitaciones en la parte de atrás.~ */
== P_KITOCH IF ~~ THEN @11000028 /* ~Siguió por un largo pasillo y pareció desviarse por un pasaje secreto. Dicho pasaje lleva a una especie de cloaca.~ */
== P_KITOCH IF ~~ THEN @11000029 /* ~Pero eso no es todo. Su recorrido iba más allá. Por un lugar donde los desechos corren, por el norte.~ */
== P_KITOCH IF ~~ THEN @11000030 /* ~Cabe mencionar que Alendir se había hecho invisible, pero pude seguir su rastro de igual manera.~ */
== P_KITOCH IF ~~ THEN @11000031 /* ~Menciono esto porque pasamos entre unos kóbolds que no parecían muy amigables.~ */
== P_KITOCH IF ~~ THEN @11000032 /* ~Si avanzas más allá, dicho pasillo se va encogiendo hasta que casi no se puede avanzar.~ */
== P_KITOCH IF ~~ THEN @11000033 /* ~Se puede seguir hasta que uno se choca con una pared aparentemente infranqueable. Una especie de fuerza invisible.~ */
== P_KITOCH IF ~~ THEN @11000034 /* ~Aquí es donde Alendir se detuvo y... pareció hablar a la nada.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11000035 /* ¿Llegaste a escucharlo, Kitochi? */
== P_KITOCH IF ~~ THEN @11000036 /* ~*maullido* Por supuesto, bocona. El elfo dijo "-------".~ */
== P_KITOCH IF ~~ THEN @11000037 /* ~Luego de eso, el obstáculo pareció desaparecer. Pero... ya no le seguí. Desconozco qué es lo que hay más allá de ese lugar.~ */
== P_KITOCH IF ~~ THEN @11000038 /* ~Presentí peligro. O al menos una presencia extraña y ajena a este plano.~ */
== P_KITOCH IF ~~ THEN @11000039 /* ~Como sea, creo que he cumplido con lo que me has pedido, bocona.~ */

////K1
== P_KITOCH IF ~~ THEN @11000040 /* ~Ah, y no te molestes en convocarme de nuevo. Tu nuevo compañero me cae mal. No puedo juntarme con alguien que me insulta.~ ~Ah, y no te molestes en convocarme de nuevo. Tu nueva compañera me cae mal. No puedo juntarme con alguien que me insulta.~ */
== P_KITOCH IF ~~ THEN  @11000041 /* ~Adiós, bocona.~ */ DO ~ForceSpell(Myself,POOF_GONE)~
END


