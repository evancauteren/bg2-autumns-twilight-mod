BEGIN P_KITOCH

IF ~!InParty("P_Fall")
!See("P_Fall")
AreaCheck("AR0511")
OR (1)
Global("P_FallMission3","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0 /* ~*Ves a un curioso gato sentado, con los ojos entrecerrados. No puedes evitar observar el gorrito que lleva en su cabeza.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
!See("P_Fall")
AreaCheck("AR0511")
OR (1)
Global("P_FallMission3","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @0 /* ~*Ves a un curioso gato sentado, con los ojos entrecerrados. No puedes evitar observar el gorrito que lleva en su cabeza.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
AreaCheck("AR0511")
Global("P_FallMission3","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @1 /* *Observas con atenci�n al gato. Parece estar durmiendo sentado.*~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission3","GLOBAL",2)~ EXTERN ~P_FALLJ~ 20
END

IF ~~ THEN BEGIN 3 // from:
  SAY @2 /* ~*El gato, quien parec�a estar durmiendo confortablemente, se incorpora al escuchar la voz de Fall.*~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 21
END

IF ~~ THEN BEGIN 4 // from:
  SAY @3 /* ~�Gorro rid�culo? Pues para ser un Hijo de Bhaal te ves como un mamarracho.~ ~�Gorro rid�culo? Pues para ser una Hija de Bhaal te ves como un mamarracho.~ */
  IF ~~ THEN EXTERN ~P_FALLJ~ 21_1
END

IF ~~ THEN BEGIN 5 // from:
  SAY @4 /* ~�Intentas herir mis sentimientos? Tendr�s que esforzarte m�s, mamarracho.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 23
END

IF ~~ THEN BEGIN 6 // from:
  SAY @5 /* ~S�, lo lamento, bocona.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 24
END

IF ~~ THEN BEGIN 7 // from:
  SAY @6 /* ~�Que yo qu�? No me hagas sacar mis garras, esperpento.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 24
END

IF ~~ THEN BEGIN 8 // from:
  SAY @7 /* ~Que no me hayas visto no significa que no haya estado aqu�.~*/
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @8 /* ~Soy extremadamente sigiloso. Adem�s puedo hacerme invisible gracias a mi condici�n fe�rica.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 27
END

IF ~~ THEN BEGIN 10 // from:
  SAY @9 /* ~�Lo ves, Fall? Esta criatura es cruel. Puedes burlarte de m�, <PRO_RACE>, pero �jam�s de mi gorro!~*/
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY @10 /* ~Sin embargo, te lo dir�, bocona. Aunque no esperes que te acompa�e despu�s de esto.~*/
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from:
  SAY @11 /* ~Disculpas aceptadas, <LADY_LORD> <CHARNAME>. Y yo lamento haberte llamado mamarracho.~*/
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @12 /* ~Ahora podemos continuar.~*/
  IF ~~ THEN GOTO 15
END

// Kitochi Leaves Forever
IF ~~ THEN BEGIN 14 // from:
  SAY @13 /* ~Al elfo malhumorado le llev� un tiempo ejecutar el sortilegio con el que pretend�a averiguar el paradero de tu madre.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 29
END

// Kitochi Leaves but Summon Spell Search Begin
IF ~~ THEN BEGIN 15 // from:
  SAY @13 /* ~Al elfo malhumorado le llev� un tiempo ejecutar el sortilegio con el que pretend�a averiguar el paradero de tu madre.~*/
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @42 /* ~Puedes llevarme al Plano Astral si lo deseas. <CHARNAME> no parece ser tan malo despu�s de todo. Aunque su gusto por la moda sea nulo.~ ~Puedes llevarme al Plano Astral si lo deseas. <CHARNAME> no parece ser tan mala despu�s de todo. Aunque su gusto por la moda sea nulo.~ */
    IF ~~ THEN REPLY @43 /* ~Escuch� eso, Kitochi.~ */  GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @44 /* ~Si Fall logra convocarme, hijo de Bhaal, habla conmigo. Me gustar�a intercambiar historias.~ ~Si Fall logra convocarme, hija de Bhaal, habla conmigo. Me gustar�a intercambiar historias.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY @45 /* ~Muy bien, bocona. Espero que puedas descifrar el conjuro necesario para convocarme.~ */
  IF ~~ THEN GOTO 19
END


IF ~~ THEN BEGIN 19 // from:
  SAY @46 /* ~Por lo pronto, me despido.~ */
  IF ~~ THEN DO ~ForceSpell(Myself,POOF_GONE)~ EXTERN ~P_FALLJ~ 30
END

IF ~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
//RandomNum(4,1)
AreaCheck("P_FAR2")
Global ("P_FallMission3","GLOBAL",4)
Global ("P_FallKitochToKakut","GLOBAL",0)~ THEN BEGIN 20 // from:
  SAY @47 /* ~�Por los bigotes de mi madre! Bocona, ese escarabajo me est� mirando de una forma muy extra�a.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallKitochToKakut","GLOBAL",1)~ EXTERN ~P_FALLJ~ 51
END

IF ~~ THEN BEGIN 21 // from:
  SAY @49 /* ~Ya veo. Pues, eso ser� un poco complicado. Sus patas est�n atrapadas por unas grandes cadenas.~*/
    IF ~~ THEN REPLY @50 /* No vemos ninguna cadena, Kitochi. */  GOTO 22
END

IF ~~ THEN BEGIN 22 // from:
  SAY @51 /* ~Pues, no tienes mis ojos, buen <CHARNAME>. La criatura no se ir� a ning�n lado a menos que acaben con ella o encuentren alguna forma de liberarla de sus ataduras.~ */
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
  SAY @52 /* *bostezo* �<CHARNAME>! �Tienes ganas de hablar? Puede que no sea el mejor lugar para una charla, pero siento que ante el peligro unas palabras entre amigos puede alivianar las cosas.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_Charname","GLOBAL",2)~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @53 /* ~*maullido* �Y bien? Vamos, quiero saber m�s de ti.~*/
    IF ~~ THEN REPLY @54 /* ~�Y qu� es lo que quieres saber, Kitochi? Ya sabes que desciendo de Bhaal. T� mismo has escuchado las conversaciones en la taberna de las Cinco Jarras.~ */  GOTO 26
	IF ~~ THEN REPLY @55 /* ~No es un buen momento para hablar, gato.~ */  GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @56 /* ~Hmpf. De acuerdo. Creo que me he equivocado contigo.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_WontTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY @57 /* ~Es verdad. Me gustar�a saber un poco m�s. Por ejemplo, �de d�nde vienes?~ */
    IF ~~ THEN REPLY @58 /* ~Pues, vengo de Candelero. Viv� all� durante unos veinte a�os hasta que Sarevok, mi hermano, asesin� a mi padre, Gorion.~ */  GOTO 28
	IF ~~ THEN REPLY @59 /* ~No te ofendas, felino, pero no me gusta hablar de mi pasado.~ */  GOTO 27
END

IF ~~ THEN BEGIN 27 // from:
  SAY @94 /* ~Entiendo. Y lo respeto. En ese caso, me gustar�a que escuchases mi historia. �Te parece?~ */
    IF ~~ THEN REPLY @61 /* ~De acuerdo, Kitochi. Cu�ntame.~ */  GOTO 31
	IF ~~ THEN REPLY @62 /* ~Tampoco me gusta o�r historias ajenas, gatito. Ser� mejor que lo hagas en otra ocasi�n.~ */  GOTO 25
END

IF ~~ THEN BEGIN 28 // from:
  SAY @63 /* ~Ya veo. Sarevok te estaba buscando a ti. En cambio, encontr� a Gorion primero.~ */
    IF ~~ THEN REPLY @64 /* ~En realidad, est�bamos dejando Candelero cuando fuimos emboscados por Sarevok. Gorion se sacrific� para salvarme.~ */  GOTO 29
	IF ~~ THEN REPLY @65 /* ~No me gusta hablar de la muerte de Gorion, Kitochi. Espero que lo entiendas.~ */  GOTO 27
END

IF ~~ THEN BEGIN 29 // from:
  SAY @66 /* ~Entonces... �tu padre muri� frente a tus ojos?~ */
    IF ~~ THEN REPLY @67 /* ~As� es. Vi c�mo su pecho fue atravesado por la espada de mi hermano. Es algo que nunca olvidas.~ */  GOTO 30
	IF ~~ THEN REPLY @68 /* ~As� es...~ */  GOTO 30
END

IF ~~ THEN BEGIN 30 // from:
  SAY @69 /* ~Entiendo m�s de lo que te puedes imaginar, <CHARNAME>. �Querr�as escuchar mi historia?~ */
    IF ~~ THEN REPLY @70 /* ~De acuerdo, Kitochi. Cu�ntame.~ */  GOTO 31
	IF ~~ THEN REPLY @71 /* ~No estoy de humor, gato. No es el momento m�s indicado.~ */  GOTO 25
END

IF ~~ THEN BEGIN 31 // from:
  SAY @72 /* Antes de comenzar... debes saber que eres la segunda persona con la que hablo de esto. Fall es una buena ni�a y ha vivido experiencias similares a la nuestra. */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from:
  SAY @73 /* ~Tuve que hacerlo. Tuve que hacerlo.~ */
    IF ~~ THEN REPLY @74 /* ~Kitochi, �te encuentras bien?~ */  GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @75 /* *maullido agudo* S�, <CHARNAME>. Gracias por preguntar. */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from:
  SAY @76 /* ~*maullido* Creo que ha sido suficiente por hoy, amigo <CHARNAME>. Te dir� qu�: La pr�xima vez ll�mame en alguna taberna de la ciudad y continuar� mi relato.~ ~*maullido* Creo que ha sido suficiente por hoy, amiga <CHARNAME>. Te dir� qu�: La pr�xima vez ll�mame en alguna taberna de la ciudad y continuar� mi relato.~ */
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
  SAY @95 /* ~S�, este lugar es un buen lugar para hablar.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_Charname","GLOBAL",4)~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from:
  SAY @96 /* ~*maullido* �Y bien? <CHARNAME>, continuemos con la historia, �te parece?~*/
    IF ~~ THEN REPLY @97 /* ~�Sobre tu llegada a los bosques de Imnescar? Mencionaste a un druida llamado Aeris. ~ */  GOTO 37
	IF ~~ THEN REPLY @98 /* ~�No hab�as hablado de una misi�n o algo as�? Si hay algo que hacer, me gustar�a que me lo digas.~ */  GOTO 37
END

IF ~~ THEN BEGIN 37 // from:
  SAY @99 /* Ya llegaremos a eso, <CHARNAME>. Antes me gustar�a saber m�s de tus aventuras. �Qu� pas� con tu hermano, el tal Sarevok? */
    IF ~~ THEN REPLY @100 /* ~Intent� crear una guerra entre Puerta de Baldur y Amn, mientras que su padre adoptivo, Rieltar, intent� monopolizar el mercado del hierro. Fue una situaci�n bastante ca�tica en el Norte. Finalmente, pude matar a Sarevok luego de desenmascarar sus ambiciosas intenciones.~ */  GOTO 37_5
	IF ~~ THEN REPLY @101 /* ~En resumen, Sarevok est� muerto. No me gusta mucho hablar del tema, Kitochi.~ */  GOTO 37_5
END

IF ~~ THEN BEGIN 37_5 // from:
  SAY @102 /* Entiendo. Digamos que, finalmente, pudiste alcanzar tu venganza, �no es as�? Tengo una pregunta: �c�mo te hizo sentir eso? */
    IF ~~ THEN REPLY @103 /* ~Me hizo sentir bien. Matarlo era lo necesario, puesto a que estaba obsesionado con acabar conmigo.~ */  GOTO 38
	IF ~~ THEN REPLY @104 /* ~Pude vengar a Gorion, es verdad. Sin embargo, no lo hice por venganza. Lo hice porque era lo correcto, Kitochi.~ */  GOTO 39
	IF ~~ THEN REPLY @105 /* ~No tengo la certeza de que me haya hecho sentir bien. Descubrir que quien asesin� a mi padre adoptivo no fue otro m�s que mi medio-hermano no hizo que la empresa fuese m�s f�cil.~ */  GOTO 40
END

IF ~~ THEN BEGIN 38 // from:
  SAY @106 /* Ya veo. Nunca he llevado a cabo una venganza. Lo que mencionaste me es interesante. */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY @107 /* Comprendo. Sarevok era un cruel descendiente de Bhaal y deb�a ser exterminado. Era lo correcto. Era justicia. */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 40 // from:
  SAY @108 /* No debi� ser f�cil para ti. Entiendo. Matar no se supone que lo haga a uno sentir bien. No al menos de una forma natural. */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from:
  SAY @109 /* Debo hablarte de Aeris antes de proponerte algo. */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from:
  SAY @110 /* ~Fue... un gran amigo.~ */
    IF ~~ THEN REPLY @111 /* ~�Qu� sucedi� con �l? Creo que mencionaste la batalla en Imnescar.~ */  GOTO 43
END

IF ~~ THEN BEGIN 43 // from:
  SAY @112 /* Las ara�as... las criaturas oscuras atacaron nuestro hogar. */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from:
  SAY @113 /* Esto es lo que quiero pedirte, <CHARNAME>. Ay�dame a matar a la criatura que mat� a Aeris. */
    IF ~~ THEN REPLY @114 /* ~No es algo muy diferente a lo que estimo que Fall desea, �en qu� se diferencia tu deseo?~ */  GOTO 46
	IF ~~ THEN REPLY @115 /* ~De acuerdo, Kitochi. �Qu� debemos hacer?~ */  GOTO 47
	IF ~~ THEN REPLY @116 /* ~�Habr� alguna recompensa? Un encargo no deber�a ser diferente porque venga de un amigo, �sabes?~ */  GOTO 47
	IF ~~ THEN REPLY @117 /* ~No sab�a que s�lo buscabas mi atenci�n para pedirme algo a cambio. No me interesan las maquinaciones felinas. ~ */  GOTO 45
END

IF ~~ THEN BEGIN 45 // from:
  SAY @118 /* ~Yo... de acuerdo... no creo que volvamos a hablar...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",9) EraseJournalEntry (@310026)~ SOLVED_JOURNAL @310027 EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY @119 /* La diferencia est� en que es probable que no nos encontremos con esta criatura si seguimos el camino de Fall. No quiero que eso suceda. */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from:
  SAY @120 /* Antes que nada, quiero aclarar que es probable que la criatura guarde tesoros. En caso de que no, te puedo asegurar que podremos hacer algo con lo que podamos extraer de su putrefacto cuerpo. */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from:
  SAY @121 /* ~*maullido* Es hora de terminar esto por ahora, <CHARNAME>. Ultimaremos detalles en nuestra pr�xima conversaci�n. A�n debo terminar de planear algunos asuntos en el Plano Astral. La pr�xima vez, conv�came en un �rea forestal y hablaremos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",4)~ UNSOLVED_JOURNAL @310028 EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
AreaType(FOREST)
Global("P_Fall_Kitoch_Charname","GLOBAL",5)~ THEN BEGIN 49 // from:
  SAY @138 /* *ronroneo* Me recuerda un poco a Imnescar... <CHARNAME>, es hora de la verdad.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_Charname","GLOBAL",6)~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from:
  SAY @139 /* ~Voy a hablar de la criatura que mat� a Aeris.~*/
    IF ~~ THEN REPLY @140 /* ~Ya veo. �Qu� tipo de criatura es, Kitochi? Para acabar con un druida �lfico experimentado debe haberse tratado de un monstruo poderoso. ~ */  GOTO 51
	IF ~~ THEN REPLY @141 /* ~�Y debemos matar a ese bicho? Necesitamos m�s informaci�n sobre nuestro objetivo, gato.~ */  GOTO 51
END

IF ~~ THEN BEGIN 51 // from:
  SAY @142 /* Antes de darte esos detalles, d�jame continuar mi historia. */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from:
  SAY @143 /* ~Fue entonces que lo vimos...~ */
    IF ~~ THEN REPLY @144 /* ~�Qu� vieron, Kitochi?~ */  GOTO 53
END

IF ~~ THEN BEGIN 53 // from:
  SAY @145 /* Gorm, la Plaga Verde. */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @146 /* ~Pero si aunamos fuerzas con <CHARNAME>, creo que podremos matarle.~ */
    IF ~~ THEN REPLY @147 /* ~Si un druida veterano no pudo hacerle frente, �qu� te hace pensar que yo podr�?~ */  GOTO 55
    IF ~~ THEN REPLY @148 /* ~Est� bien, Kitochi. �Qu� es lo que propones?~ */  GOTO 56
END

IF ~~ THEN BEGIN 55 // from:
  SAY @149 /* Te he visto en diferentes situaciones, <CHARNAME>. Has resuelto el asunto del basilisco, afrontado a Alendir y derrotado a Icelock. Tu poder no deja de sorprenderme. */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from:
  SAY @150 /* Lo que propongo es lo siguiente: iremos al hogar de esta criatura y le mataremos. */
    IF ~~ THEN REPLY @151 /* ~Me parece un buen plan. �C�mo se supone que haremos eso?~ */  GOTO 58
    IF ~~ THEN REPLY @152 /* ~�Un ataque directo? Me parece una locura.~ */  GOTO 57
END

IF ~~ THEN BEGIN 57 // from:
  SAY @153 /* No ser� un ataque frontal, <CHARNAME>. Gorm no nos espera, aunque eso no signifique que no vaya a ser un combate dif�cil. */
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from:
  SAY @154 /* Lo siguiente ser� usar una de las escamas de Gorm para viajar a su plano abisal. */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from:
  SAY @155 /* S�lo yo s� c�mo llamarlo. */
    IF ~~ THEN REPLY @156 /* ~�D�nde podremos encontrar a Acrull?~ */  GOTO 60
END

IF ~~ THEN BEGIN 60 // from:
  SAY @157 /* Acrull estar� en las afueras de la arboleda dru�dica de la regi�n. Os estar� esperando. Incluso te lo marcar� en tu mapa. */
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from:
  SAY @158 /* ~En resumen, <CHARNAME>. Acrull estar� en la zona noroeste de la regi�n. Recuerda que Fall debe estar contigo para que esto funcione.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("AR1900") SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",6)~ UNSOLVED_JOURNAL @310029 EXIT
END

IF ~InParty("P_Fall")
AreaCheck("P_FAR4")
Global ("P_Fall_Kitoch_Charname","GLOBAL",7)~ THEN BEGIN 62 // from:
  SAY @193 /* <CHARNAME>, recuerda esto: Mi muerte es intrascendente... pero debes proteger a Fall. Si ganamos esta batalla, ella ser� el enlace necesario para regresar a casa.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Kitoch_Charname","GLOBAL",8)~ GOTO 64
END

IF ~~ THEN BEGIN 63 // from:
  SAY @197 /* Lo que hueles es la proximidad de tu extinci�n, Gorm. */
  IF ~~ THEN EXTERN ~P_GORM~ 1
END

IF ~~ THEN BEGIN 64 // from:
  SAY @191 /* ~*maullido gutural* ���Gorm!!! Sal de donde quiera que te ocultes, criatura asquerosa. �Hemos venido a matarte!~ */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",8)~ UNSOLVED_JOURNAL @310031 EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY @200 /* Lo estar�... */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from:
  SAY @199 /* ~�Aeris! Te he vengado... te hemos vengado... <CHARNAME>, Fall: Gracias... Volver� al Plano Astral... necesito estar solo al menos un momento.~ */
  IF ~~ THEN DO ~ SetGlobal ("P_FallAboutGormsDeath_KitAlive","GLOBAL",2) ForceSpell (Myself, POOF_GONE)~ EXIT
END

IF ~Global ("P_FallAboutGormsDeath_KitAlive","GLOBAL",1)
AreaCheck("P_FAR4")
Dead("P_GORM")~ THEN BEGIN 67 // from:
  SAY @198 /* ~Veo la cabeza de Gorm... al fin...~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutGormsDeath_KitAlive","GLOBAL",2)~ EXTERN ~P_FALLJ~ 73
END

//BOTTOM

EXTEND_BOTTOM P_ACRULL 0
IF ~~ EXTERN P_KITOCH p_kit1
END

CHAIN P_KITOCH p_kit1
@189 /* Acrull tiene raz�n <CHARNAME>. Trae a Fall para que viajemos a la guarida de Gorm. */
EXIT

EXTEND_BOTTOM P_ACRULL 1
IF ~~ EXTERN P_KITOCH p_kit2
END

CHAIN P_KITOCH p_kit2
@189 /* Acrull tiene raz�n <CHARNAME>. Trae a Fall para que viajemos a la guarida de Gorm. */
EXIT

/*EXTEND_BOTTOM P_ACRULL 2
IF ~~ EXTERN P_KITOCH p_kit3
END

CHAIN P_KITOCH p_kit3
@190 /* As� es, Acrull. Fall y las fuerzas de <CHARNAME> viajar�n al plano de Gorm, hacia su guarida. */
EXTERN ~P_FALLJ~ 71
*/

EXTEND_BOTTOM P_GORM 3
IF ~~ EXTERN P_KITOCH p_kit4
END

CHAIN P_KITOCH p_kit4
@192 /* �Gorm! Esto es por mi amigo... �Al ataque! */
EXIT


I_C_T P_KITOCH 62 P_Fall_KITOCH_62GORMQUEST
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @194 /* No seas pesimista, Kitochi. Nadie morir�. �Es una promesa! */
== P_KITOCH IF ~~ THEN @195 /* Je. A veces tu ingenuidad me conmueve, bocona. */
== P_KITOCH IF ~~ THEN @196 /* Ahora... a lo nuestro: */
END

I_C_T P_Kitoch 58 P_Fall_KITOCH_CHARNAME6
== P_KITOCH IF ~~ THEN @184 /* La misma se encuentra en poder de un viejo conocido, Fall. */
== P_KITOCH IF ~~ THEN @185 /* Acrull Escudonorte�o. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @186 /* ��Qu�?! �Acrull supo todo el tiempo de tu plan? */
== P_KITOCH IF ~~ THEN @187 /* *maullido agudo* Es probable, bocona. Lo importante es que Acrull ser� el v�nculo entre este plano y el abisal, usando la escama que le di hace un tiempo. */
== P_KITOCH IF ~~ THEN @188 /* <CHARNAME>, es importante que Fall est� contigo a la hora de hablar con Acrull. No es necesario que yo est� presente, aunque, eso s�, cuando lleguemos al hogar de Gorm, conv�came. */
END


I_C_T P_Kitoch 53 P_Fall_KITOCH_CHARNAME5
== P_KITOCH IF ~~ THEN @172 /* En apariencia se asimila a la mezcla entre un gusano y un cienpi�s... pero de tama�o descomunal. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @173 /* �Crees que esta criatura estuvo detr�s del ataque a nuestro hogar? */
== P_KITOCH IF ~~ THEN @174 /* No, bocona. Incluso creo que conspir� con la fuerza oscura que plane� el ataque. Dir�a que es una especie de s�bdito. */
== P_KITOCH IF ~~ THEN @175 /* Pero uno muy poderoso. */
== P_KITOCH IF ~~ THEN @176 /* Aeris... Aeris no pudo hacerle frente. */
== P_KITOCH IF ~~ THEN @177 /* Puede que su tama�o sea descomunal... pero sus ataques de colmillo fueron demasiado r�pidos. */
== P_KITOCH IF ~~ THEN @178 /* S�lo bast� una herida superficial en la piel de mi amigo y fue m�s que suficiente para insuflarle un veneno mortal. */
== P_KITOCH IF ~~ THEN @179 /* No tuvimos otra opci�n m�s que huir del bosque. Pero... */
== P_KITOCH IF ~~ THEN @180 /* Aeris muri� en las afueras de Imnescar, debido al veneno. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @181 /* Lo lamento, Kitochi. Aeris era una buena persona. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @182 /* Sin embargo, no puedo evitar preguntarme... �por qu� no me contaste esto antes? */
== P_KITOCH IF ~~ THEN @183 /* Es simple, bocona. Sab�a que si te lo contaba har�as lo posible por ir en su busca. Y la cuesti�n es que Gorm es demasiado poderoso para nosotros dos solos. */
END


I_C_T P_Kitoch 51 P_Fall_KITOCH_CHARNAME4
== P_KITOCH IF ~~ THEN @159 /* Cuando la batalla por Imnescar comenz�, el caos rond� todo el ambiente. */
== P_KITOCH IF ~~ THEN @160 /* La magia arcana y divina parec�a no funcionar. Tanto la hechicera Gemystara, la madre de Fall, como los druidas del bosque, Aeris inclu�do, tuvieron graves problemas al percatarse que sus conjuros no estaban funcionando. */
== P_KITOCH IF ~~ THEN @161 /* Dependimos mucho de la fuerza bruta de los exploradores como Gerwulf, Ivor o Mephala. Las bestias del bosque ayudaron mucho. */
== P_KITOCH IF ~~ THEN @162 /* No creo que Fall, Gem o yo hubi�semos sobrevivido de no ser por ellos. */
== P_KITOCH IF ~~ THEN @163 /* Sin embargo, no fueron solamente ara�as las criaturas que nos atacaron. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @164 /* Es verdad... recuerdo criaturas extra�as y grotescas que surgieron de la profundidad del bosque. Parec�an ser miri�podos insectoides. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @165 /* Recuerdo... recuerdo a Aeris y a ti pelear contra ellos. */
== P_KITOCH IF ~~ THEN @166 /* As� es. Sea cual sea la entidad que orquest� el ataque a Imnescar, lo logr� ali�ndose con otras criaturas abisales. */
== P_KITOCH IF ~~ THEN @167 /* <CHARNAME>, puede que conozcas a esas criaturas como "Carro�eros reptantes". */
== P_KITOCH IF ~~ THEN @168 /* Pero no eran Carro�eros normales. No. */
== P_KITOCH IF ~~ THEN @169 /* Aeris y yo nos enfrentamos. Pudimos derrotar a muchos, pero segu�an viniendo en masa. */
== P_KITOCH IF ~~ THEN @170 /* Aeris logr� llevar a cabo un conjuro, pese a las limitaciones de aquella fuerza misteriosa, y un golpe de rel�mpago acabo con varias de esas alima�as. */
== P_KITOCH IF ~~ THEN @171 /* Est�bamos dispuestos a ir a ayudar al resto, cuando sentimos una �ltima presencia... sumamente poderosa. */
END

I_C_T P_Kitoch 41 P_Fall_KITOCH_CHARNAME3
== P_KITOCH IF ~~ THEN @122 /* Los exploradores y druidas lograron matar al demonio, aunque no sin dificultad. */
== P_KITOCH IF ~~ THEN @123 /* Las fuerzas de la naturaleza en el Plano Material son una fuerza a tener en cuenta, <CHARNAME>. */
== P_KITOCH IF ~~ THEN @124 /* Puede que sus vidas sean considerablemente m�s cortas que las de muchas criaturas abisales, pero no por ello son m�s d�biles. */
== P_KITOCH IF ~~ THEN @125 /* La voluntad de vivir de estas criaturas es excepcional. Al igual que la m�a. */
== P_KITOCH IF ~~ THEN @126 /* Eso me dijo Aeris, una vez que mis heridas fueron curadas. Sin embargo, no pudo hacer mucho por mis orejas. */
== P_KITOCH IF ~~ THEN @127 /* Las orejas de los gatos fe�ricos son diferentes a las de los gatos de este plano. Son como las plumas de los cardenales o de los petirrojos. Son el orgullo de su raza. */
== P_KITOCH IF ~~ THEN @128 /* Si bien se dio cuenta de que era un gato fe�rico, se sorprendi� de que no emitiera palabra alguna durante semanas. */
== P_KITOCH IF ~~ THEN @129 /* Creo que Aeris se percat� de mi desdicha, por lo que, al cabo de algunas tardes, me obsequi� el gorro que ahora ves conmigo. */
== P_KITOCH IF ~~ THEN @130 /* S� que es con el objetivo de cubrir mis orejas. Pero ciertamente funcion�. */
== P_KITOCH IF ~~ THEN @131 /* Muchos humanos sonre�an cuando me ve�an y, especialmente las mujeres, buscaban acariciar mi lomo. */
== P_KITOCH IF ~~ THEN @132 /* Agradec� a Aeris y me convert� en su compa�ero animal. */
== P_KITOCH IF ~~ THEN @133 /* Puede que esto sea indigno para un gato fe�rico, pero no me import�. Aeris era muy sabio. */
== P_KITOCH IF ~~ THEN @134 /* Yo soy viejo para ser un gato fe�rico. Seg�n mis calculos, mi edad debe rondar los 120 a�os. Pero Aeris lo era mucho m�s. */
== P_KITOCH IF ~~ THEN @135 /* Era un elfo de W�ldazh, seguidor de Silvanus. Me ense�� mucho sobre este mundo e hizo que le tome cari�o. */
== P_KITOCH IF ~~ THEN @136 /* Ten�a un respeto profundo por los humanos y los animales. Los bosques y las estaciones. Incluso la gente de la ciudad. */
== P_KITOCH IF ~~ THEN @137 /* Salv� muchas vidas durante la Plaga de la Costa. */
END

I_C_T P_Kitoch 33 P_Fall_KITOCH_CHARNAME2
== P_KITOCH IF ~~ THEN @80 /* Lo lamento, a veces me pierdo en mis recuerdos. */
== P_KITOCH IF ~~ THEN @81 /* No siempre viv� en Amn, �sabes? Aunque no tengo recuerdos de d�nde nac�. */
== P_KITOCH IF ~~ THEN @82 /* Puedo decirte que viv� muchos a�os en los Bosques de Cormanthor. Recuerdo su magia antigua y la infinidad de criaturas m�gicas en las arboledas. */
== P_KITOCH IF ~~ THEN @83 /* En mi juventud explor� difentes tierras y viaj� por lugares que no creer�as. */
== P_KITOCH IF ~~ THEN @84 /* Sin embargo, como debes saberlo, viajar tiene sus riesgos, incluso para criaturas fe�ricas como yo. */
== P_KITOCH IF ~~ THEN @85 /* Hace muchas d�cadas, mientras navegaba por los planos, fui atacado por una entidad abisal. */
== P_KITOCH IF ~~ THEN @86 /* Fui herido de gravedad y ca� en uno de los bosques cercanos a Crimmor. */
== P_KITOCH IF ~~ THEN @87 /* El demonio se abri� paso por los planos y logr� encontrarme. */
== P_KITOCH IF ~~ THEN @88 /* Estaba indefenso, como un cachorro, y sent� que mi vida estaba llegando a su fin. */
== P_KITOCH IF ~~ THEN @89 /* Fue entonces que el demonio, antes de dar su golpe final, fue asediado por flechas, lanzas y piedras. */
== P_KITOCH IF ~~ THEN @90 /* Una partida de exploradores y druidas arribaba para expulsar al demonio de sus bosques. */
== P_KITOCH IF ~~ THEN @91 /* Yo me encontraba muy malherido, pero sent� c�mo alguien me tom� en sus brazos. */
== P_KITOCH IF ~~ THEN @92 /* Con mis �ltimas fuerzas pude ver al elfo que me cargaba. M�s tarde habr�a de enterarme de su nombre. */
== P_KITOCH IF ~~ THEN @93 /* Aeris. */
END

I_C_T P_Kitoch 31 P_Fall_KITOCH_CHARNAME1
== P_KITOCH IF ~~ THEN @77 /* Pero a veces siento que debo hablar con alguien m�s y no se me ocurre una criatura m�s experimentada que t�. */
== P_KITOCH IF ~~ THEN @78 /* Los gatos fe�ricos vivimos muchos a�os. Pero no somos inmortales. Hay mucha confusi�n al respecto, �sabes? */
== P_KITOCH IF ~~ THEN @79 /* S� que no soy una criatura bella en comparaci�n a mis cong�neres. Pero puedo excusarme porque he combatido en el frente de batalla junto a los exploradores y druidas de Imnescar. */
END

I_C_T P_Kitoch 20 P_Fall_KITOCH_KAKUT1
== P_KAKUTO IF ~~ THEN @48 /* *La mirada del escarabajo est� concentrada en Kitochi.* */
END


I_C_T P_Kitoch 15 P_Fall_KITOCHI_Q3_1_KIT_SUMMON
== P_KITOCH IF ~~ THEN @14 /* ~Honestamente, cre� que habr�a de ejecutarlo en un lugar un tanto m�s... discreto que aqu� en la taberna. Pero lo cierto es que no hay mucha concurrencia en este sector.~ */
== P_KITOCH IF ~~ THEN @15 /* ~El ritual fue algo... extra�o. Pareci� imbuir una espada con los ingredientes necesarios, incluyendo el colmillo del basilisco que ustedes le trajeron.~ */
== P_KITOCH IF ~~ THEN @16 /* ~De la hoja de la espada naci� una llama amarillenta.~ */
== P_KITOCH IF ~~ THEN @17 /* ~El viejo elfo comenz� a invocar unas extra�as conjuraciones y esper�. Parec�a estar hablando con las llamas, llamando, recitando...~ */
== P_KITOCH IF ~~ THEN @18 /* ~Sea lo que oyese, parec�a que s�lo era destinado para sus o�dos �lficos, porque yo s�lo escuch� las crepitaciones de las llamas.~ */
== P_KITOCH IF ~~ THEN @19 /* ~Eventualmente, alguien... o algo le respondi�.~ */
== P_KITOCH IF ~~ THEN @20 /* ~Como ya debes saber, ni�a, el tal Alendir es de una paz inescrupulosa... Pero pude ver un miedo indescriptible en su mirada.~ */
== P_KITOCH IF ~~ THEN @21 /* ~Las llamas se volvieron negras como las nubes de una tormenta y Alendir dej� caer la espada.~ */
== P_KITOCH IF ~~ THEN @22 /* ~Con sus manos tom� su cabeza y le o� murmurar...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @23 /* �Qu� fue lo que dijo? */
== P_KITOCH IF ~~ THEN @24 /* ~"No puede ser." Dijo una y otra vez.~ */
== P_KITOCH IF ~~ THEN @25 /* ~Al cabo de unos minutos de silencio, tom� sus cosas y se fue.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @26 /* Kitochi... �sabes d�nde est� Alendir? */
== P_KITOCH IF ~~ THEN @27 /* ~Por supuesto, bocona. Le segu�. Fue a los Barrios Bajos. Ingres� a una taberna y pas� hacia unas habitaciones en la parte de atr�s.~ */
== P_KITOCH IF ~~ THEN @28 /* ~Sigui� por un largo pasillo y pareci� desviarse por un pasaje secreto. Dicho pasaje lleva a una especie de cloaca.~ */
== P_KITOCH IF ~~ THEN @29 /* ~Pero eso no es todo. Su recorrido iba m�s all�. Por un lugar donde los desechos corren, por el norte.~ */
== P_KITOCH IF ~~ THEN @30 /* ~Cabe mencionar que Alendir se hab�a hecho invisible, pero pude seguir su rastro de igual manera.~ */
== P_KITOCH IF ~~ THEN @31 /* ~Menciono esto porque pasamos entre unos k�bolds que no parec�an muy amigables.~ */
== P_KITOCH IF ~~ THEN @32 /* ~Si avanzas m�s all�, dicho pasillo se va encogiendo hasta que casi no se puede avanzar.~ */
== P_KITOCH IF ~~ THEN @33 /* ~Se puede seguir hasta que uno se choca con una pared aparentemente infranqueable. Una especie de fuerza invisible.~ */
== P_KITOCH IF ~~ THEN @34 /* ~Aqu� es donde Alendir se detuvo y... pareci� hablar a la nada.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @35 /* �Llegaste a escucharlo, Kitochi? */
== P_KITOCH IF ~~ THEN @36 /* ~*maullido* Por supuesto, bocona. El elfo dijo "en el susurro del viento helado, se encuentra el camino.".~ */
== P_KITOCH IF ~~ THEN @37 /* ~Luego de eso, el obst�culo pareci� desaparecer. Pero... ya no le segu�. Desconozco qu� es lo que hay m�s all� de ese lugar.~ */
== P_KITOCH IF ~~ THEN @38 /* ~Present� peligro. O al menos una presencia extra�a y ajena a este plano.~ */
== P_KITOCH IF ~~ THEN @39 /* ~Como sea, creo que he cumplido con lo que me has pedido, bocona.~ */
END


I_C_T P_Kitoch 14 P_Fall_KITOCHI_Q3_1_KIT_LEAVES
== P_KITOCH IF ~~ THEN @14 /* ~Honestamente, cre� que habr�a de ejecutarlo en un lugar un tanto m�s... discreto que aqu� en la taberna. Pero lo cierto es que no hay mucha concurrencia en este sector.~ */
== P_KITOCH IF ~~ THEN @15 /* ~El ritual fue algo... extra�o. Pareci� imbuir una espada con los ingredientes necesarios, incluyendo el colmillo del basilisco que ustedes le trajeron.~ */
== P_KITOCH IF ~~ THEN @16 /* ~De la hoja de la espada naci� una llama amarillenta.~ */
== P_KITOCH IF ~~ THEN @17 /* ~El viejo elfo comenz� a invocar unas extra�as conjuraciones y esper�. Parec�a estar hablando con las llamas, llamando, recitando...~ */
== P_KITOCH IF ~~ THEN @18 /* ~Sea lo que oyese, parec�a que s�lo era destinado para sus o�dos �lficos, porque yo s�lo escuch� las crepitaciones de las llamas.~ */
== P_KITOCH IF ~~ THEN @19 /* ~Eventualmente, alguien... o algo le respondi�.~ */
== P_KITOCH IF ~~ THEN @20 /* ~Como ya debes saber, ni�a, el tal Alendir es de una paz inescrupulosa... Pero pude ver un miedo indescriptible en su mirada.~ */
== P_KITOCH IF ~~ THEN @21 /* ~Las llamas se volvieron negras como las nubes de una tormenta y Alendir dej� caer la espada.~ */
== P_KITOCH IF ~~ THEN @22 /* ~Con sus manos tom� su cabeza y le o� murmurar...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @23 /* �Qu� fue lo que dijo? */
== P_KITOCH IF ~~ THEN @24 /* ~"No puede ser." Dijo una y otra vez.~ */
== P_KITOCH IF ~~ THEN @25 /* ~Al cabo de unos minutos de silencio, tom� sus cosas y se fue.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @26 /* Kitochi... �sabes d�nde est� Alendir? */
== P_KITOCH IF ~~ THEN @27 /* ~Por supuesto, bocona. Le segu�. Fue a los Barrios Bajos. Ingres� a una taberna y pas� hacia unas habitaciones en la parte de atr�s.~ */
== P_KITOCH IF ~~ THEN @28 /* ~Sigui� por un largo pasillo y pareci� desviarse por un pasaje secreto. Dicho pasaje lleva a una especie de cloaca.~ */
== P_KITOCH IF ~~ THEN @29 /* ~Pero eso no es todo. Su recorrido iba m�s all�. Por un lugar donde los desechos corren, por el norte.~ */
== P_KITOCH IF ~~ THEN @30 /* ~Cabe mencionar que Alendir se hab�a hecho invisible, pero pude seguir su rastro de igual manera.~ */
== P_KITOCH IF ~~ THEN @31 /* ~Menciono esto porque pasamos entre unos k�bolds que no parec�an muy amigables.~ */
== P_KITOCH IF ~~ THEN @32 /* ~Si avanzas m�s all�, dicho pasillo se va encogiendo hasta que casi no se puede avanzar.~ */
== P_KITOCH IF ~~ THEN @33 /* ~Se puede seguir hasta que uno se choca con una pared aparentemente infranqueable. Una especie de fuerza invisible.~ */
== P_KITOCH IF ~~ THEN @34 /* ~Aqu� es donde Alendir se detuvo y... pareci� hablar a la nada.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @35 /* �Llegaste a escucharlo, Kitochi? */
== P_KITOCH IF ~~ THEN @36 /* ~*maullido* Por supuesto, bocona. El elfo dijo "-------".~ */
== P_KITOCH IF ~~ THEN @37 /* ~Luego de eso, el obst�culo pareci� desaparecer. Pero... ya no le segu�. Desconozco qu� es lo que hay m�s all� de ese lugar.~ */
== P_KITOCH IF ~~ THEN @38 /* ~Present� peligro. O al menos una presencia extra�a y ajena a este plano.~ */
== P_KITOCH IF ~~ THEN @39 /* ~Como sea, creo que he cumplido con lo que me has pedido, bocona.~ */

////K1
== P_KITOCH IF ~~ THEN @40 /* ~Ah, y no te molestes en convocarme de nuevo. Tu nuevo compa�ero me cae mal. No puedo juntarme con alguien que me insulta.~ ~Ah, y no te molestes en convocarme de nuevo. Tu nueva compa�era me cae mal. No puedo juntarme con alguien que me insulta.~ */
== P_KITOCH IF ~~ THEN  @41 /* ~Adi�s, bocona.~ */ DO ~ForceSpell(Myself,POOF_GONE)~
END


