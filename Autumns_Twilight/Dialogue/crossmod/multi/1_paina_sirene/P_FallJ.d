BEGIN P_FallJ

// Quest e interacciones

// Quest 1
IF ~~ THEN BEGIN 1 // from:
  SAY @10013000 /* ~Gracias, <CHARNAME>. Puede que encuentres la forma de gastar menos recursos. Aunque primero deberemos... *suspiro* reunir esas 7500 piezas de oro.~ */
IF ~~ THEN DO ~ SetGlobal ("P_FallMission1","GLOBAL",3)~ UNSOLVED_JOURNAL @310002 EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @10013001 /* ~<CHARNAME>, por favor. Esto va más allá de lo material. Me propuse liberar a esos animales. ¡Aún pretendo hacerlo!~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @10013003 /* ~¿Y bien? Con tu ayuda será más fácil. ¿Qué dices?~*/
    IF ~~ THEN REPLY @10013004 /* ~De acuerdo, de acuerdo. Reuniré la cantidad necesaria y luego hablaré con Andrew Oliva.~ */  GOTO 1
	IF ~~ THEN REPLY @10013005 /* ~No, Fall. No pienso emplear dinero en esto. Es una pérdida de tiempo.~ */  GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @10013006 /* ~¡Eres insensible! Nadie... nadie debería vivir enjaulado para el entretenimiento de los demás.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @10013007 /* ~No puedes verlo... Quizás algún día lo hagas... Pero yo no estaré para verlo.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10013008 /* ~Adiós, <CHARNAME>. Dudo que nuestros caminos vuelvan a cruzarse.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission1","GLOBAL",9) EraseJournalEntry (@310001) LeaveParty() EscapeArea()~ SOLVED_JOURNAL @310004 EXIT
 END
 
IF ~~ THEN BEGIN 7 // from:
  SAY @10013013 /* ¡Andrew! No seas descortés. Mis nuevos amigos no provocaron nada. */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @10013014 /* ~Además, estoy aquí para presentarte a <CHARNAME>. De él vendrá la solución al problema que te planteé.~ ~Además, estoy aquí para presentarte a <CHARNAME>. De ella vendrá la solución al problema que te planteé.~*/
  IF ~~ THEN EXTERN ~P_ANDREW~ 3
END

IF ~~ THEN BEGIN 9 // from:
  SAY @10013015 /* ~¡¿Qué?! E-eres un descarado, Andrew. ¡Ese no era el trato!~*/
  IF ~~ THEN EXTERN ~P_ANDREW~ 5
END

IF ~~ THEN BEGIN 10 // from:
  SAY @10013016 /* ~*carraspeo* Muy bien, Andrew. Más te vale cumplir con tu parte. No creo que quieras sufrir la ira de Alendir.~*/
  IF ~~ THEN EXTERN ~P_ANDREW~ 14
END

IF ~~ THEN BEGIN 11 // from:
  SAY @10013017 /* ~Oh, <CHARNAME>, Alendir es un amigo mío. Un poderoso elfo selu'taar que ha venido a ayudarme en mi búsqueda.~*/
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @10013021 /* ~O puedes guardarla. He oído que sirve como ingrediente para la creación de poderosos objetos mágicos.~*/
   IF ~~ THEN REPLY @10013022 /* ~Gracias, Fall. Con esto es más que suficiente.~ */ GOTO 13
   IF ~~ THEN REPLY @10013023 /* ~Esto no cubre los gastos, niña. Espero que seas capaz de compensarme de alguna manera.~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from:
  SAY @10013024 /* ~Me alegra saberlo, <CHARNAME>. Ahora, continuemos con nuestro viaje.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission1","GLOBAL",4) EraseJournalEntry (@310001) EraseJournalEntry (@310002) EraseJournalEntry (@310003) AddexperienceParty(40000) CreateItem ("MISC44",1,2,1)  GiveItem("MISC44", LastTalkedToBy)~ SOLVED_JOURNAL @310004 EXIT
 END 
 
IF ~~ THEN BEGIN 14 // from:
  SAY @10013025 /* ~¡Oye! ¿Acaso mi dulce presencia no es suficiente compensación?~*/
  IF ~~ THEN GOTO 15
END
 
IF ~~ THEN BEGIN 15 // from:
  SAY @10013028 /* ~Os lo aseguro. *Levanta su puño en señal de fortaleza*~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission1","GLOBAL",4) EraseJournalEntry (@310001) EraseJournalEntry (@310002) EraseJournalEntry (@310003) AddexperienceParty(40000) CreateItem ("MISC44",1,2,1)  GiveItem("MISC44", LastTalkedToBy)~ SOLVED_JOURNAL @310004 EXIT
 END 

IF ~Global("P_FallLeaves","GLOBAL",1)~ THEN BEGIN 16 // from:
  SAY @10013029 /* ~¡Se acabó! Esto... esto es inconcebible. ¡No puedo soportarlo más! Espero... ¡Espero que nuestros caminos no vuelvan a cruzarse!~ */
  IF ~~ THEN DO ~SetGlobal("P_FallLeaves","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
END

// Quest 2 - Alendir

IF ~~ THEN BEGIN 17 // from:
  SAY @10013030 /* ~¡¿Qué?! A-Alendir, ¿cómo lo supiste?~*/
    IF ~~ THEN REPLY @10013031 /* ~¿Cómo es posible, anciano? ¡Habla!~ */  EXTERN ~P_ALENDI~ 3
	IF ~~ THEN REPLY @10013032 /* ~No sé de qué está hablando, buen señor.~ */  EXTERN ~P_ALENDI~ 4
	IF ~~ THEN REPLY @10013033 /* ~Es verdad, Alendir. Pero me gustaría saber cómo es que lo sabes.~ */  EXTERN ~P_ALENDI~ 5
END

IF ~~ THEN BEGIN 18 // from:
  SAY @10013034 /* ~Nunca me enfrenté a un basilisco, <CHARNAME>. Espero... espero estar a la altura de la búsqueda.~ */
IF ~~ THEN DO ~ SetGlobal ("P_FallMission2","GLOBAL",3)~ UNSOLVED_JOURNAL @310006 EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY @10013035 /* ~¿Q-qué? No puedo creerlo... ¡No puedo escucharte!~*/
    IF ~~ THEN REPLY @10013036 /* ~¡Anciano! Te has excedido. Deberías disculparte con Fall.~ */  EXTERN ~P_ALENDI~ 24
	IF ~~ THEN REPLY @10013037 /* ~Fall, sólo dame las indicaciones y te daré su cabeza en una bandeja de plata.~ */  EXTERN ~P_ALENDI~ 24
	IF ~~ THEN REPLY @10013038 /* ~Alendir, creo que tus declaraciones son injustas. Aunque claramente has reaccionado. ¿Por qué?~ */  EXTERN ~P_ALENDI~ 25
END

IF ~~ THEN BEGIN 20 // from:
  SAY @10013039 /* ~Es extraño... Alendir se ha ido.~*/
  IF ~~ THEN EXTERN ~P_KITOCH~ 3
END

IF ~~ THEN BEGIN 21 // from:
  SAY @10013040 /* ~¡Kitochi! ¿Alendir se ha ido? Por favor, dime que sabes dónde está.~*/
    IF ~~ THEN REPLY @10013041 /* ~Fall, te das cuenta de que estás hablando con un gato que usa gorro ridículo, ¿verdad?~ */  EXTERN ~P_KITOCH~ 4
END

IF ~~ THEN BEGIN 21_1 // from:
  SAY @10013042 /* ~¡Kitochi!~*/
    IF ~~ THEN REPLY @10013043 /* ~Así que conoces a un gato parlante. No sé por qué no me sorprende...~ */  GOTO 22
    IF ~~ THEN REPLY @10013044 /* ~Fall, ¿te molestaría compartir cómo es que este felino apestoso sabe de mi linaje?~ */  GOTO 22
END

IF ~~ THEN BEGIN 22 // from:
  SAY @10013045 /* ~<CHARNAME>, Kitochi no es un gato común y corriente. Es un gato feérico.~*/
    IF ~~ THEN REPLY @10013046 /* ~¿Un qué? Sea lo que sea es bastante grosero.~ */  EXTERN ~P_KITOCH~ 5
    IF ~~ THEN REPLY @10013047 /* ~Es demasiado feo para ser un gato feérico.~ */  EXTERN ~P_KITOCH~ 5
    IF ~~ THEN REPLY @10013048 /* ~No sabía que los gatos feéricos apestaran a orina.~ */  EXTERN ~P_KITOCH~ 5
END

IF ~~ THEN BEGIN 23 // from:
  SAY @10013049 /* ~¡Basta los dos! Por Silvanus, no me hagan enojar.~*/
    IF ~~ THEN REPLY @10013050 /* ~Lo lamento, Fall.~ */  EXTERN ~P_KITOCH~ 6
    IF ~~ THEN REPLY @10013051 /* ~Él empezó.~ */  EXTERN ~P_KITOCH~ 7
END


IF ~~ THEN BEGIN 24 // from:
  SAY @10013052 /* ~*carraspeo* Bien. Ahora a lo nuestro. <CHARNAME>, lamento no haberte hablado antes de Kitochi.~*/
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @10013053 /* ~Lo cierto es que Kitochi estuvo todo el tiempo aquí con Alendir, aunque éste último no lo sabía.~*/
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from:
  SAY @10013054 /* ~Por lo que el hecho de que sepa de tu linaje se debe a que escuchó todas nuestras conversaciones.~*/
    IF ~~ THEN REPLY @10013055 /* ~Fall, ¿de verdad esperas que me crea eso? Recordaría ver a un gato con gorro en este lugar.~ */  EXTERN ~P_KITOCH~ 8
    IF ~~ THEN REPLY @10013056 /* ~Entonces, ¿cómo explicas que no lo hayamos visto?~ */  EXTERN ~P_KITOCH~ 8
END

IF ~~ THEN BEGIN 27 // from:
  SAY @10013057 /* ~Es verdad. Ordené a Kitochi que vigilara a Alendir por si algo extraño sucedía.~*/
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from:
  SAY @10013062 /* ~Oh, vamos, Kitochi. Él no lo ha dicho en serio.~ ~Oh, vamos, Kitochi. Ella no lo ha dicho en serio.~ */
    IF ~~ THEN REPLY @10013063 /* ~Sí, lo he dicho en serio.~ */  EXTERN ~P_KITOCH~ 10
    IF ~~ THEN REPLY @10013064 /* ~De acuerdo, de acuerdo, gato. Perdón por insultar a tu gorro.~ */  EXTERN ~P_KITOCH~ 12
END

IF ~~ THEN BEGIN 29 // from:
  SAY @10013065 /* ~Adiós, Kitochi... Gracias.~ */
IF ~~ THEN DO ~ SetGlobal ("P_FallMission3","GLOBAL",3) SetGlobal ("P_KitochiLeavesForever","GLOBAL",1)~ UNSOLVED_JOURNAL @310011 EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY @10013066 /* ~Adiós, Kitochi... Espero que nos volvamos a ver.~ */
IF ~~ THEN DO ~ SetGlobal ("P_FallMission3","GLOBAL",3) SetGlobal ("P_Fall_Kitochi_Stay","GLOBAL",1)~ UNSOLVED_JOURNAL @310012 EXIT
END

// KAKUTO

IF ~~ THEN BEGIN 31 // from:
  SAY @10013067 /* ~Por Silvanus... esta... criatura parece tapar la entrada por completo. No comprendo.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from:
  SAY @10013068 /* ~Tampoco parece dispuesto a atacarnos. Puede... puede que no esté aquí por voluntad propia.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @10013069 /* ~<CHARNAME>, será mejor que probemos usar a nuestras convocaciones. Puede que alguno de nuestros amigos del Plano Astral sepa qué hacer.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from:
  SAY @10013070 /* ~De lo contrario... creo que la única forma de seguir es... acabando con la criatura. No querría tener que llegar a ese punto.~ */
IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",4)~ UNSOLVED_JOURNAL @310013 EXIT
END


// TABITHA1

IF ~See ("BEAST")
Global("P_FallTabitha1st","GLOBAL",0)
Global("SlavingJerk","GLOBAL",0)
Global("P_FallTabitha1st_SC","GLOBAL",1)~ THEN BEGIN 35 // from:
  SAY @10013071 /* ~Presiento la vida de varias criaturas aquí.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallTabitha1st","GLOBAL",1)~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from:
  SAY @10013101 /* ~Adiós, Ivor. Adiós, Tabitha... Vamos, <CHARNAME>. Ya tenemos la llave para liberar a los gladiadores.~ */
IF ~~ THEN DO ~AddexperienceParty(15000) SetGlobal ("P_FallTabitha1st","GLOBAL",1)~ UNSOLVED_JOURNAL @310014 EXIT
END

IF ~See ("P_BEAST")
Global("P_FallTabitha2nd","GLOBAL",0)
Global("P_FallTabitha1st_SC","GLOBAL",2)~ THEN BEGIN 37 // from:
  SAY @10013102 /* ~Tú otra vez...~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallTabitha2nd","GLOBAL",1)~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from:
  SAY @10013139 /* ~Adiós... Espero estar a la altura de esta empresa. Vamos, <CHARNAME>. Continuemos.~ */
IF ~~ THEN DO ~AddexperienceParty(5000) SetGlobal ("P_FallTabitha2nd","GLOBAL",1)~ UNSOLVED_JOURNAL @310015 EXIT
END

IF ~See(Player1)
Global("P_Fall_SP3_AEGER","GLOBAL",1)~ THEN BEGIN 39 // from:
  SAY @10013140 /* ~¡Lo tenemos! <CHARNAME>, me quedaré con ella para poder examinarla. No creo que me tome mucho tiempo. Os la devolveré apenas termine mis pesquisas. Estoy segura de que esto ayudara a llevar a Tabitha al Plano Astral.~ */
  IF ~~ THEN DO ~AddexperienceParty(7500) TakePartyItem ("LEAT20") DestroyItem ("LEAT20") SetGlobal ("P_Fall_SP3_AEGER","GLOBAL",2) SetGlobal("P_Fall_Aeger_Obtained","GLOBAL",1)
~ UNSOLVED_JOURNAL @310017 EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY @10013141 /* ~¡Tranquilo, Daren! <CHARNAME>, no creo que Daren sea la respuesta. Su actitud parece agresiva con el escarabajo.~ */
IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY @10013142 /* ~Sinna, ¿te encuentras bien? <CHARNAME>, no creo que Sinna pueda (o quiera) comunicarse con la criatura. Debemos encontrar otra solución.~ */
IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY @10013143 /* ~¡Tabitha, no! *suspiro* Eso estuvo cerca. No, <CHARNAME>. Tabitha sólo quiere luchar. No creo que sea la respuesta. Mejor optemos por otra solución.~ */
IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY @10013144 /* ~¡Voragor! Por favor, dime que sabes cómo comunicarte con este escarabajo.~ */
  IF ~~ THEN EXTERN ~P_VORAG~ 23
END

IF ~~ THEN BEGIN 44 // from:
  SAY @10013146 /* ~¡Detente, <CHARNAME>! No creo que ese sea el caso.~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from:
  SAY @10013147 /* ~Nuestro 'amigo' debe haberle hecho algo.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from:
  SAY @10013153 /* ~¿Quieres decir... que para seguir debemos matarlo?~*/
    IF ~~ THEN REPLY @10013154 /* Ya oyeron, camaradas. ¡Desenvainad! Debemos acabar con el sufrimiento de esta patética criatura. */  GOTO 47
	IF ~~ THEN REPLY @10013155 /* Puede que haya alguna forma de liberarlo de sus ataduras, Fall. */  GOTO 48
END

IF ~~ THEN BEGIN 47 // from:
  SAY @10013156 /* ~N-no. No quiero tener que matarlo, <CHARNAME>.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from:
  SAY @10013157 /* ~Voragor, ¿crees que se pueda hacer algo al respecto?~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from:
  SAY @10013185 /* ~Adiós, amigo... Espero que volvamos a vernos.~ */
IF ~~ THEN DO ~SetGlobal("P_Fall_Kakuto_Rescued","GLOBAL",1) AddexperienceParty(30000) CreateItem ("p_fcur1",1,2,1) UseItem ("p_fcur1", Myself) ~ UNSOLVED_JOURNAL @310019 EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY @10013193 /* Es buena idea. Recuerda llamar a mis invocaciones e interactuar con ellas, <CHARNAME>. Si están cerca del escarabajo, puede que obtengamos una respuesta. */
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY @10013194 /* ~Kitochi, para seguir adelante debemos hacer que esta criatura se aleje del umbral.~ */
  IF ~~ THEN EXTERN ~P_KITOCH~ 21
END

IF ~~ THEN BEGIN 52 // from:
  SAY @10013195 /* ~¿Conoces alguna forma para comunicarte con ella?~ */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from:
  SAY @10013153 /* ~¿Quieres decir... que para seguir debemos matarlo?~*/
    IF ~~ THEN REPLY @10013154 /* Ya oyeron, camaradas. ¡Desenvainad! Debemos acabar con el sufrimiento de esta patética criatura. */  GOTO 54
	IF ~~ THEN REPLY @10013155 /* Puede que haya alguna forma de liberarlo de sus ataduras, Fall. */  GOTO 55
END

IF ~~ THEN BEGIN 54 // from:
  SAY @10013156 /* ~N-no. No quiero tener que matarlo, <CHARNAME>.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from:
  SAY @10013202 /* ~Kitochi, ¿crees que se pueda hacer algo al respecto?~ */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from:
  SAY @10013185 /* ~Adiós, amigo... Espero que volvamos a vernos.~ */
IF ~~ THEN DO ~SetGlobal("P_Fall_Kakuto_Rescued","GLOBAL",1) AddexperienceParty(30000) CreateItem ("p_fcur1",1,2,1) UseItem ("p_fcur1", Myself) ~ UNSOLVED_JOURNAL @310019 EXIT
END

IF ~Global("P_FallKakuto_Died","GLOBAL",1)~ THEN BEGIN 57 // from:
  SAY @10013216 /* ~No quería... no quería tener que llegar a esto, <CHARNAME>. Pero lo hecho, hecho está. Debemos continuar. Alendir debe estar cerca.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallKakuto_Died","GLOBAL",2)~ UNSOLVED_JOURNAL @310020 EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY @10013217 /* ~Alendir, ¿qué está pasando? ¡Háblanos!~ */
  IF ~~ THEN EXTERN ~P_ALENDI~ 34
END

IF ~~ THEN BEGIN 59 // from:
  SAY @10013218 /* ~¿De qué estás hablando, Alendir? Sabes... sabes dónde está mi madre, ¿no es así? ¡Dímelo! Dime dónde puedo encontrarla.~ */
  IF ~~ THEN EXTERN ~P_ALENDI~ 35
END

IF ~~ THEN BEGIN 60 // from:
  SAY @10013225 /* ~Alendir...~*/
    IF ~~ THEN REPLY @10013226 /* ¿Y ahora qué, Fall? El lugar se está llenando de esbirros del tal Icelock. */  GOTO 61
	IF ~~ THEN REPLY @10013227 /* ¡Es hora de luchar! Fall, acabemos con esto. */  GOTO 61
END

IF ~~ THEN BEGIN 61 // from:
  SAY @10013228 /* ~No tenemos otra opción...~ */
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from:
  SAY @10013255 /* ~ Icelock... Por Imnescar: ¡caerás!~ */
  IF ~~ THEN DO ~SetGlobal("P_FallM3_AlendirVsIcelock","GLOBAL",2)~ EXIT
END

//////

IF ~~ THEN BEGIN 63 // from:
  SAY @10013257 /* ~<CHARNAME> tiene razón, Alendir. Ahora debes guardar energías. Espera a que te curemos.~ */
  IF ~~ THEN EXTERN ~P_ALENDI~ 52
END

IF ~~ THEN BEGIN 64 // from:
  SAY @10013258 /* ~Ya basta, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~P_ALENDI~ 53
END

IF ~~ THEN BEGIN 65 // from:
  SAY @10013260 /* ~Alendir... debemos hacer algo con tus heridas. Resiste, por favor. No mueras~ */
  IF ~~ THEN EXTERN ~P_ALENDI~ 54
END

IF ~Global("P_FallMission3","GLOBAL",9)
Global ("P_FallAboutAlendir","GLOBAL",1)~ THEN BEGIN 66 // from:
  SAY @10013261 /* ~Alendir... Alendir ha muerto.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutAlendir","GLOBAL",2)~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from:
  SAY @10013262 /* ~Esta Rosa de Hielo... es hermosa... No sé por qué me hace llorar.~ */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from:
  SAY @10013263 /* ~Cuando se derrita... sé que significará que estaré lista para lo que se avecina.~ */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from:
  SAY @10013264 /* ~<CHARNAME>... espero contar contigo cuando llegue el momento.~ */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from:
  SAY @10013265 /* ~De momento... sólo puedo decir gracias. Gracias por estar ahí para mí. Eres una de las personas más importantes en mi vida. Espero... espero que lo sepas, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutAlendir","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY @10013275 /* ~¡Acrull! Siempre es un placer verte. Nunca habría imaginado que complotabas un plan secreto junto a un felino malhumorado.~ */
  IF ~~ THEN EXTERN ~P_ACRULL~ 3
END

IF ~Global ("P_FallAboutGormsDeath","GLOBAL",1)
AreaCheck("P_FAR4")
Dead("P_GORM")
!See("P_KITOCH")~ THEN BEGIN 72 // from:
  SAY @10013278 /* ~Estoy exhausta... <CHARNAME>, sé que no es el mejor de los lugares... pero descansemos y convoquemos a Kitochi. Luego, estimo que podremos irnos de aquí.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutGormsDeath","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY @10013279 /* ~Kitochi, ¿te encuentras bien?~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutGormsDeath_KitAlive","GLOBAL",2)~ EXTERN ~P_KITOCH~ 65
END

IF ~~ THEN BEGIN 74 // from:
  SAY @10013280 /* ~Así es, Acrull... Gorm está muerto. Kitochi ha logrado la venganza sobre Aeris. Hemos ganado.~ */
  IF ~~ THEN EXTERN ~P_ACRULL~ 9
END


// First Mesothel encounter
IF ~~ THEN BEGIN 75 // from:
  SAY @10013281 /* ~Así es, Acrull... Gorm está muerto. Kitochi ha logrado la venganza sobre Aeris. Hemos ganado.~ */
  IF ~~ THEN EXTERN ~P_MESO~ 1
END

IF ~Global("P_Fall_Final_Mission_Init","GLOBAL",1)
~ THEN BEGIN 76 // from:
  SAY @10013282 /* ¿A-Alendir? Por Evereska... Alendir, ¿eres tú? */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Final_Mission_Init","GLOBAL",2)~ EXTERN ~P_ALENGH~ 1
END

IF ~~ THEN BEGIN 77 // from:
  SAY @10013283 /* ~Entiendo, <CHARNAME>. Pero deberás comprender también que no puedo postergar más esto. Tú tienes tu misión, yo tengo la mía. Si no vas a ayudarme, no tengo otra opción que emprender este viaje sola. Adiós. Quizás, algún día nuestros caminos vuelvan a cruzarse.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Final_Mission_Init","GLOBAL",2) EraseJournalEntry (@310034) TakePartyItem ("p_ficero") DestroyItem ("p_ficero") LeaveParty() EscapeArea() ~ SOLVED_JOURNAL @310035 EXTERN ~P_ALENGH~ 12
END

IF ~Global("P_FallAboutRachnidra1","GLOBAL",1)
~ THEN BEGIN 78 // from:
  SAY @10013284 /* Ver de nuevo a Alendir se sintió extraño... <CHARNAME>, la Rosa de Hielo se ha derretido. Cuando lo consideres correcto, vayamos hacia la recámara de Icelock, el gólem de hielo. El portal hacia Rachnidra debería estar abierto. */
  IF ~~ THEN DO ~SetGlobal ("P_FallAboutRachnidra1","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY @10013285 /* ~¿Hemos llegado? Estamos en Rachnidra. Tengo ese presentimiento... de una oscuridad acechante. Un mal inminente.~ */
  IF ~~ THEN EXTERN ~P_PHILLI~ 1
END

IF ~~ THEN BEGIN 80 // from:
  SAY @10013286 /* ~Vidomina, <CHARNAME> es descendiente de Bhaal.~ */
    IF ~~ THEN REPLY @10013287 /* ¡Fall! Por Candelero, ¿por qué demonios le cuentas mi secreto a extraños? */  GOTO 81
	IF ~~ THEN REPLY @10013288 /* ¡Dilo más fuerte, Fall! Creo que ese marsupial no te ha escuchado. */  EXTERN ~P_TOBIAS~ 1
END

IF ~~ THEN BEGIN 81 // from:
  SAY @10013289 /* ~Ya no tenemos tiempo para misterios, <CHARNAME>. El camino hasta aquí ha sido largo y extenuante. Mi instinto me dice que Vidomina no es un ser maligno. Creo que no tenemos otra opción más que confiar en ella.~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 3_1
END

IF ~~ THEN BEGIN 82 // from:
  SAY @10013290 /* ~¡No harás tal cosa, <CHARNAME>! No sólo tenemos la oportunidad de evitar un combate innecesario, sino que tenemos la oportunidad de acercarnos a madre. ¡No consentiré que hagas estupideces!~ */
    IF ~~ THEN REPLY @10013291 /* Ehm... bueno, yo... */  GOTO 83
	IF ~~ THEN REPLY @10013292 /* Cielos, Fall. ¿Por qué no le cuentas mi secreto ya que estamos? */  EXTERN ~P_VIDOMI~ 2
END

IF ~~ THEN BEGIN 83 // from:
  SAY @10013293 /* ~*suspiro* Lo lamento, <CHARNAME>. No pretendía explotar así. Es sólo que creo que Vidomina puede sernos de ayuda. Si puedes hablarle de tu 'secreto', puede que ello nos ayude en nuestra búsqueda.~ */
    IF ~~ THEN REPLY @10013294 /* De acuerdo, Fall. Lo haré por ti. Vidomina, soy <CHARNAME>, descendiente de Bhaal, el Dios del Asesinato. */  EXTERN ~P_VIDOMI~ 3
	IF ~~ THEN REPLY @10013295 /* No tengo por qué hablar de mis secretos en algo que no me conscierne, Fall. */  EXTERN ~P_VIDOMI~ 2
END

IF ~~ THEN BEGIN 84 // from:
  SAY @10013296 /* ~Cho'Nuja, estamos intentando rescatar a mi madre. Ella ha intentado detener a la Reina Araña, y Tisiphone es la única que puede ayudarnos a llegar a ella.~ */
  IF ~~ THEN EXTERN ~P_CHO~ 12
END

IF ~Global("P_Fall_KakutoSummoningIA","GLOBAL",3)
~ THEN BEGIN 85 // from:
  SAY @10013297 /* ¡Vidomina! Has estado en lo cierto. Puedo... ¡puedo llamar a Kakuto! */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_KakutoSummoningIA","GLOBAL",4)~ EXTERN ~P_VIDOMI~ 59
END

IF ~AreaCheck("P_FA16")
Global("P_FallInFinalBattle_PA16","GLOBAL",3)
Global("P_MorgrathAppear_PA16","GLOBAL",0)
~ THEN BEGIN 86 // from:
  SAY @10013298 /* ¿Mamá...? ¡Madre! */
  IF ~~ THEN DO ~SetGlobal ("P_FallInFinalBattle_PA16","GLOBAL",4) 
  SetGlobal ("P_MorgrathAppear_PA16","GLOBAL",1) SetGlobal ("P_GemBTalk1","GLOBAL",1)~ EXTERN ~P_GEM~ 0
END

IF ~~ THEN BEGIN 87 // from:
  SAY @10013299 /* Madre... ¡Madre! Hemos venido en tu rescate... */
  IF ~~ THEN DO ~SetGlobal ("P_FallInFinalBattle_PA16","GLOBAL",4) 
  SetGlobal ("P_MorgrathAppear_PA16","GLOBAL",1) SetGlobal ("P_GemBTalk1","GLOBAL",1)~ EXIT
END

IF ~AreaCheck("P_2601")
Global("P_FallGemAR2601","GLOBAL",4)~ THEN BEGIN 88 // from:
  SAY @10013300 /* <CHARNAME>, Vidomina... gracias por esto. */
  IF ~~ THEN DO ~SetGlobal ("P_FallGemAR2601","GLOBAL",5)~ EXTERN ~P_VIDOMI~ 112
END

IF ~~ THEN BEGIN 89 // from:
  SAY @10013301 /* ~¿Alendir? ¿Eres... Alendir? No luces... no luces como el Alendir que recuerdo.~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 118 
END

IF ~Global ("P_FallMetBrostFriends","GLOBAL",0)
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 90 // from:
  SAY @10013313 /* ¡Hakamir!, ¡Acrull! ¿Qué hacen aquí? Creí que estaban en Brost. ¿Acaso ha sucedido algo grave? */
  IF ~~ THEN DO ~SetGlobal ("P_FallMetBrostFriends","GLOBAL",1)~ EXTERN ~P_HAKAM~ 7
END

I_C_T P_FALLJ 71 P_FallJ_Kitoch_Q_Acrull1
== P_ACRULL IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013276 /* Eso es algo que deberás hablar con él, querida Fall. Por ahora, sólo puedo darte las indicaciones sobre lo que habremos de hacer ahora. */ 
END

I_C_T P_KITOCH 49 P_FallJ_Kitoch_Char_Banth3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013272 /* Bueno, no hace falta que me eches, ya sé que no me quieres en estas conversaciones con <CHARNAME>. */
== P_KITOCH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013273 /* No, Fall. De hecho, quédate. Tú debes participar en esto también. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013274 /* ¿Ah, sí? Dime, Kitochi, ¿por qué es eso? */
END

I_C_T P_KITOCH 35 P_FallJ_Kitoch_Char_Banth2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013269 /* Ah, es verdad, ¿no lo crees? Muy bien, ¿de qué vamos a hablar? */
== P_KITOCH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013270 /* Bocona, esto es entre <CHARNAME> y yo. ¿Podrías dejarnos un poco de espacio? Gracias. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013271 /* Hmpf. Bueno. Disfruten su charla sin mí. Estoy segura de que alguien querrá escuchar de mis aventuras en Tethyr. */
END

I_C_T P_KITOCH 23 P_FallJ_Kitoch_Char_Banth1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013266 /* Yo siempre estoy dispuesta a hablar si <CHARNAME> no quiere, ¿sabes? */
== P_KITOCH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013267 /* Bocona, ya te he escuchado hablar durante semanas cuando estuvimos en la Villa de las Setas. Ya has ocupado unas 6 de mis vidas con tus anécdotas. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013268 /* Gato exagerado. De acuerdo, os dejaré a ti y a <CHARNAME> para que hablen. */
END



I_C_T P_FALLJ 61 P_FallJ_QUEST3_ALEN_61_2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013229 /* Saldremos de esta combatiendo, <CHARNAME>. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10013230 /* ~¡Sí! ¡Minsc apoya furiosamente esa moción! Gólem, sentirás la calurosa ira del roedor. ¡Vamos, Boo!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10013231 /* ~Estoy de acuerdo, Fall. Por nuestros amigos, lucharemos.~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10013232 /* ~Tu búsqueda nos ha llevado al templo impío de Cryonax, pequeña Fall. No hay duda: Torm nos ha guiado para acabar con su maldad. Mi espada es tuya.~ */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @10013233 /* ~Reconozco una trampa cuando la veo y hemos caído en una, <CHARNAME>. Sin embargo, aún no existe una trampa lo suficientemente buena como para capturar a Yoshimo. ¡Saldremos de esta a base de acero!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @10013234 /* ~Me he enfrentado al frío mal, ausente del calor de la sangre en las venas. Por Arvoreen, hoy no será nuestra sangre la que será derramada.~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10013235 /* ~Por Helm, no caeré hoy en estas frías tierras subterráneas. ¡Por la Orden: es hora de combatir!~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @10013236 /* ~Debemos salvar a Athkatla de esta fría abominación, <CHARNAME>. ¡Cueste lo que cueste!~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10013237 /* ~El frío de estas criaturas es una abominación y una afrenta al equilibrio. Ni siquiera la civilización merece este castigo. ¡Lucharemos hasta el final!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @10013238 /* ~El invierno es parte del ciclo natural de este mundo. La sugerencia de un eterno glacial va en contra de todos los designios de la naturaleza. El invierno es temporal y habremos de demostrártelo, Icelock.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @10013239 /* ~El mago no era de mis personas favoritas, pero ciertamente ha intentado parar esta locura. Haré lo posible por salvarlo, Fall.~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10013240 /* ~Lo único eterno es la oscuridad de Shar, dobluth. Tu necedad llega hasta aquí. ~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @10013241 /* El tal 'Maestro de la Escarcha' resultó ser un farsante. Sin embargo, puede que si derrotamos a ese gólem de hielo podamos extraer algo útil de él. ¡Al fin sentirán cómo el fuego de mis hechizos derrite su gélido ser! */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @10013242 /* ~Nunca me había enfrentado a un jodido gólem de hielo, <CHARNAME>. Así que déjamelo a mí y a mi hacha. Verás como lo cerceno hasta formar pequeños cubos de hielo.~*/
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @10013243 /* Bueno, parece que no tendremos otra opción más que salir a dientazos de aquí, ¿no? Esto me recuerda a la vez en que- */
== P_FallJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @10013244 /* No es el mejor momento para eso, Jan. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @10013245 /* Hmpf, de acuerdo, de acuerdo, Fallcita. Deja que cargue mi ballesta y me lleve a un par de salamandras, ¿sí? */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @10013246 /* Reconozco a una criatura de otro plano cuando la veo. Y este gigantón helado es una de ellas. Cryonax es el nombre de su señor y si llega a este plano, la gente de Faerûn estará en graves problemas. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10013247 /* Cielos, no me gusta el frío. Ya no quiero estar aquí así que si hay que luchar, será mejor hacerlo rápido, ¿no lo creen? */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @10013248 /* Un gólem de hielo... rival interesante. Déjamelo a mí, <CHARNAME>. Será una buena ofrenda para mi espada. */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @10013249 /* El sol brilla más allá de los oscuros y fríos rincones de tu templo, criatura. Mientras eso pase, tu victoria será imposible. */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @10013250 /* Es un buen momento para lanzar mis hechizos de fuego. Al menos eso espero que suceda. */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @10013251 /* No existe el candor en mi cuerpo, pero aún así no comparto los deseos de esta gélida criatura. Serás destruido en las sombras de este paraje. */
== P_DUSKJ IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0) InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10014004 /* ¡Es el momento de luchar, camaradas! Luchad por lo que más queráis. ¡Yo lucharé en el nombre de Cormyr! */
== P_DUSKJ IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1) InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10014005 /* Una criatura de los planos del Frío... No merece existir en nuestro Plano, <CHARNAME>. ¡Déjame que lo corte en cubitos de hielo con mi espada! */

// Paina Crossmod
== C0PAINAJ IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN @10000001 /* ~La criatura es un enemigo antinatural. No sólo es un peligro para los estúpidos de Athkatla, sino también para mis protegidas y todo aquello por lo que lucho. ¡Destruidle!~ */


// Sirene Crossmod
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN @10000045 /* ~Si la criatura se sale con la suya, Athkatla sufrirá las consecuencias. ¡Debemos evitarlo! Fall, estoy contigo. ¡Atacad!~ */

== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @10013252 /* ~(Bufido, lamento).~ */
== P_FallJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @10013253 /* No estoy muy segura de lo que dices, Wilson. Pero se nota que no disfrutas del frío de este lugar. Vamos, es hora de combatir, mi buen oso. */
== P_ICELOC IF ~~ THEN @10013254 /* Soy el guardián de Cryonax, el Príncipe del Cruel Glacial. Icelock hará de ustedes una buena ofrenda a mi señor. */ DO ~Enemy ()~
END


I_C_T P_FALLJ 59 P_FallJ_QUEST3_ALEN_59_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013219 /* Por favor... */
== P_ALENDI IF ~~ THEN @10013220 /* ~Gemystara no se encuentra en este plano. Ella... ella está más allá de nuestro alcance.~ */
== P_ICELOC IF ~~ THEN @10013221 /* ~Comprendo. Eres la hija de la selu'taar. ¿Por qué quieres entregar este plano a la Oscura?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013222 /* No conozco a ninguna Oscura, gólem. Sólo quiero a mi madre de vuelta. ¡He recorrido un largo camino para llegar hasta aquí! */
== P_ICELOC IF ~~ THEN @10013223 /* ~Mortales. Necios. Selu'taar Alendir, si en verdad te llamas Maestro de la Escarcha, me ayudarás a destrozar a estos intrusos.~ */
== P_ICELOC IF ~~ THEN @10013224 /* ~Su carne será la ofrenda necesaria para evitar la invasión de la Oscura a este plano.~ */
END

I_C_T P_FALLJ 55 P_FallJ_QUEST3_KIT_KAK2
== P_KITOCH IF ~~ THEN @10013203 /* ~Por supuesto. Debes llevarlo al Plano Astral, tal cual hiciste conmigo.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013204 /* No comprendo... no tengo ningún apego a esta criatura. No comprendo cómo podría lograrlo. */
== P_KITOCH IF ~~ THEN @10013205 /* ~Lo sé. A mí me conoces de años y entiendo que tengamos un vínculo que permitió llevarme al Plano Astral.~ */
== P_KITOCH IF ~~ THEN @10013206 /* ~Pero hay una forma de lograrlo con este hechizo que fue lanzado por el elfo amargado.~ */
== P_KITOCH IF ~~ THEN @10013207 /* ~El sortilegio puede quebrarse si alguien amado por el hechicero realiza un importante sacrificio.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013167 /* Por alguien... ¿amado? Me pregunto: ¿qué tipo de sacrificio? */
== P_KITOCH IF ~~ THEN @10013209 /* ~Fuerza, destreza y vitalidad, bocona.~ */
== P_KITOCH IF ~~ THEN @10013210 /* ~Un sacrificio de tal calibre romperá las cadenas de Kakuto y éste será libre.~ */
== P_KITOCH IF ~~ THEN @10013211 /* ~Y no tienes que decírmelo: Sé que un escarabajo rinoceronte del tamaño de una casa se vería extraño en las calles amnianas.~ */
== P_KITOCH IF ~~ THEN @10013212 /* ~Pero realizar dicho sacrificio te hará forjar un lazo de sangre con él.~ */
== P_KITOCH IF ~~ THEN @10013213 /* ~De manera inmediata podrás llevarlo al Plano Astral. Incluso puede que, después de un tiempo considerable, puedas traerlo de nuevo como una convocación.~ */
== P_KITOCH IF ~~ THEN @10013214 /* ~Verás, le caes bien al gigantón, bocona. Tu determinación en no querer matarlo puede que haya tenido algo que ver.~ */
== P_KITOCH IF ~~ THEN @10013215 /* ~Entonces, ¿estás dispuesta a hacerlo? Debes tener una fe acérrima en tu propio poder. ¿Crees que puedas lograrlo?~ */

== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013175 /* Mi madre... mi madre me ha enseñado bien el arte de la convocación. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013176 /* Soy la Dama de las Bestias y confío en mi poder. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013177 /* ¡Kakuto! Sacrificaré parte de mi fuerza, parte de mi destreza y parte de mi vitalidad para salvarte. */
== P_KAKUTO IF ~~ THEN @10013178 /* *El escarabajo parece comprender las palabras de Fall. Al cabo de unos segundos, agacha su cabeza, obediente y sumiso, hacia la semielfa.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013179 /* *Con delicadeza, Fall se acerca a Kakuto.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013180 /* *Posa su mano en él y le acaricia* No tengas miedo, buen Kakuto. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013181 /* En el Plano Astral estarás a salvo. Allí viven mis amigos animales y podrás estar con ellos. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013182 /* Nunca más estarás solo. */
== P_KAKUTO IF ~~ THEN @10013183 /* *Los ojos se Kakuto brillan al escuchar la voz de Fall.* */
== P_KAKUTO IF ~~ THEN @10013184 /* *Segundos más tarde, una luz dorada lo cubre para finalmente desaparecer.* */ DO ~ForceSpell (Myself, POOF_GONE)~
END


 I_C_T P_FALLJ 52 P_FallJ_QUEST3_KIT_KAK1
== P_KITOCH IF ~~ THEN @10013196 /* ~De hecho, sí. Su nombre es Kakuto. Él no está seguro de cómo es que fue arrastrado de su cueva del Valle del Viento Helado.~ */
== P_KITOCH IF ~~ THEN @10013197 /* ~Pero sin lugar a dudas, el elfo amargado estuvo relacionado a dicho suceso.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013198 /* Alendir... */
== P_KAKUTO IF ~~ THEN @10013199 /* *Al escuchar la palabra 'Alendir', el escarabajo parece retorcerse de ira.* */
== P_KITOCH IF ~~ THEN @10013200 /* ~¿Sabes cómo romper tus cadenas, Kakuto?~ */
== P_KAKUTO IF ~~ THEN @10013150 /* *La criatura emite un sutil chirrido y la caverna parece inundarse de un profundo lamento.* */
== P_KITOCH IF ~~ THEN @10013201 /* ~Ya veo. Kakuto no puede abandonar su puesto a menos que muera.~ */
END


I_C_T P_FALLJ 48 P_FallJ_QUEST3_VOR_KAK3
== P_VORAG IF ~~ THEN @10013158 /* ~Mis conocimientos no son tan vastos, niña. Sin embargo, puede que Kakuto sepa algo.~ */
== P_VORAG IF ~~ THEN @10013159 /* ~Kakuto, ¿tienes idea de cómo podemos romper tus cadenas invisibles?~ */
== P_KAKUTO IF ~~ THEN @10013160 /* *Kakuto parece quedarse inmóvil durantes unos segundos.* */
== P_KAKUTO IF ~~ THEN @10013161 /* *Sus ojos parecen posarse en Fall y emite una especie de chirrido lamentoso.* */
== P_VORAG IF ~~ THEN @10013162 /* ~Ya veo...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013163 /* Voragor, ¿qué fue lo que dijo? */
== P_VORAG IF ~~ THEN @10013164 /* ~*siseo* Sólo la muerte puede liberarlo.~ */
== P_VORAG IF ~~ THEN @10013165 /* ~Aunque hay una forma en la que podríamos liberarlo de tales cadenas.~ */
== P_VORAG IF ~~ THEN @10013166 /* ~Un sacrificio de alguien amado por el creador del sortilegio.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013167 /* Por alguien... ¿amado? Me pregunto: ¿qué tipo de sacrificio? */
== P_VORAG IF ~~ THEN @10013168 /* ~Fuerza, destreza y vitalidad, niña.~ */
== P_VORAG IF ~~ THEN @10013169 /* ~Si estás dispuesta a sacrificar algo tan importante, entonces Kakuto podría ser libre.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013170 /* Pero... ¿qué hará una vez que esté libre? */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013171 /* No creo que sea bien recibido en las calles de Athkatla. ¡Le darán caza! */
== P_VORAG IF ~~ THEN @10013172 /* ~Entonces, como a mí, envíalo al Plano Astral. ~ */

== P_VORAG IF ~~ THEN @10013173 /* ~Si vas a sacrificar algo de tu energía vital para acabar con el hechizo, entonces estarás atada a Kakuto y podrás enviarlo al Plano Astral. ~ */
== P_VORAG IF ~~ THEN @10013174 /* ~¿Confías en tu poder, Fall? ~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013175 /* Mi madre... mi madre me ha enseñado bien el arte de la convocación. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013176 /* Soy la Dama de las Bestias y confío en mi poder. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013177 /* ¡Kakuto! Sacrificaré parte de mi fuerza, parte de mi destreza y parte de mi vitalidad para salvarte. */
== P_KAKUTO IF ~~ THEN @10013178 /* *El escarabajo parece comprender las palabras de Fall. Al cabo de unos segundos, agacha su cabeza, obediente y sumiso, hacia la semielfa.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013179 /* *Con delicadeza, Fall se acerca a Kakuto.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013180 /* *Posa su mano en él y le acaricia* No tengas miedo, buen Kakuto. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013181 /* En el Plano Astral estarás a salvo. Allí viven mis amigos animales y podrás estar con ellos. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013182 /* Nunca más estarás solo. */
== P_KAKUTO IF ~~ THEN @10013183 /* *Los ojos se Kakuto brillan al escuchar la voz de Fall.* */
== P_KAKUTO IF ~~ THEN @10013184 /* *Segundos más tarde, una luz dorada lo cubre para finalmente desaparecer.* */ DO ~ForceSpell (Myself, POOF_GONE)~
END

I_C_T P_FALLJ 45 P_FallJ_QUEST3_VOR_KAK2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013148 /* Voragor, ¿puedes averiguar qué es lo que él le hizo? */
== P_VORAG IF ~~ THEN @10013149 /* ~¿Qué te ha hecho ese tal Alendir, Kakuto?~ */
== P_KAKUTO IF ~~ THEN @10013150 /* *La criatura emite un sutil chirrido y la caverna parece inundarse de un profundo lamento.* */
== P_VORAG IF ~~ THEN @10013151 /* ~Ya veo. Al parecer, el elfo le convocó y lanzó un poderoso hechizo de atadura.~ */
== P_VORAG IF ~~ THEN @10013152 /* ~Kakuto no puede abandonar su puesto a menos que muera.~ */
END

I_C_T P_FALLJ 43 P_FallJ_QUEST3_VOR_KAK1
== P_VORAG IF ~~ THEN @10013145 /* ~Por supuesto que puedo, Fall. De hecho, una de las primeras cosas que me dijo fue su nombre.~ */
END

I_C_T P_FALLJ 37 P_FallJ_QUEST3_2
== P_BEAST IF ~~ THEN @10013103 /* ~Ah, hija de Gerwulf, veo que aún me recuerdas. Soy-~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013104 /* Ivor, sí, lo recuerdo. ¿Qué ha pasado con el resto de tus animales? */
== P_BEAST IF ~~ THEN @10013105 /* ~Logré llevarlos a los bosques australes. Tuve que 'convencer' a un par de soldados amnianos para que nos dejasen salir por las puertas de la ciudad.~ */
== P_BEAST IF ~~ THEN @10013106 /* ~Pero eso no importa. He venido en tu búsqueda, Fall.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013107 /* ¿Por qué?, ¿qué es lo que buscas? No creo estar particularmente en buenos términos con un seguidor de Malar que, debo añadir, es un esclavista. */
== P_BEAST IF ~~ THEN @10013108 /* ~Hmpf. Creí que ya habíamos dejado atrás ese asunto.~ */
== P_BEAST IF ~~ THEN @10013109 /* ~Además, Lehtinan está muerto, lo sé. Puede que no me hayas visto, pero Tabitha y yo hemos aniquilado a varios de sus matones cuando abandonamos el recinto esclavista.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013110 /* ¿Y qué?, ¿buscas una recompensa por ello? */
== P_BEAST IF ~~ THEN @10013111 /* ~No, busco poner a salvo a Tabitha y sólo tú puedes hacerlo.~ */
== P_TABIT IF ~~ THEN @10013112 /* *Los penetrantes ojos del felino se clavan en los de Fall.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013113 /* ¿P-por qué? Es tu compañera animal. No veo cómo pueda separarse de ti. */
== P_BEAST IF ~~ THEN @10013114 /* ~Eso... es verdad. Pero debo hacerlo. Cuando hice el trato con Lehtinan no sabía en qué me estaba metiendo.~ */
== P_BEAST IF ~~ THEN @10013115 /* ~Puede que le hayas matado, pero el mundo de la esclavitud es vasto y hay es muy abundante aquí en Athkatla.~ */
== P_BEAST IF ~~ THEN @10013116 /* ~Sé que los bastardos han puesto un precio a mi cabeza. Si yo caigo, lo más probable es que Tabitha también... Y no quiero que eso pase.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013117 /* ¿Y por qué crees que yo puedo resolver ese inconveniente, Ivor? */
== P_BEAST IF ~~ THEN @10013118 /* ~Sé que tu madre, la selu'taar de Evereska de la que tanto hablaba tu padre, es capaz de forjar un lazo entre este plano y el Astral.~ */
== P_BEAST IF ~~ THEN @10013119 /* ~Si hablas con ella, puede que puedas llevar a Tabitha allí y así salvarla de un destino funesto por mi culpa.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013120 /* Ya... ya veo. Lamento decir que mi madre ha desaparecido. Llevo varios días buscándola... aún no tengo respuestas de su paradero. */
== P_BEAST IF ~~ THEN @10013121 /* ~Eso es... lamentable en verdad. Yo... creí que podrías ayudarme con esto.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013122 /* Y creo poder, Ivor. Mi madre me ha enseñado a llevar a cabo un ritual para lograr la conexión que tú mencionas. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013123 /* Puedo hacerlo. Puedo salvar a Tabitha. */
== P_BEAST IF ~~ THEN @10013124 /* ~¿Lo... harás? Por los colmillos de Malar... estoy profundamente agradecido... y Tabitha también.~ */
== P_TABIT IF ~~ THEN @10013125 /* *La mirada de Tabitha se desvía hacia Ivor mientras lentamente cierra sus ojos ante sus caricias.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013126 /* Sin embargo, necesito algo que me pueda conectar a ella. ¿Tienes alguna pertenencia que sea parte de ella? */
== P_BEAST IF ~~ THEN @10013127 /* ~Lo sé, lo sé. Sabía que habrías de pedirme algo así, Fall. Tengo esta estatuilla tallada por mí. La misma está un poco... salpicada con sangre de ambos.~ */ DO ~CreateItem ("P_MALAR",1,2,1)~
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013128 /* Ehm, sí. Esto será suficiente. */
== P_BEAST IF ~~ THEN @10013129 /* ~Sé cómo funciona esto, Fall. Sé que es muy probable que no vuelva a ver a mi amiga. Pero es algo con lo que puedo vivir.~ */ DO ~GiveItem("P_MALAR", "P_Fall")~
== P_BEAST IF ~~ THEN @10013130 /* ~Vivirás por siempre, Tabitha. Cazarás eternamente en los planos del más allá. Procura siempre atrapar a tu presa. Haz honor a Malar.~ */ 
== P_TABIT IF ~~ THEN @10013131 /* *Los ojos del felino gigante se clavan en los de Ivor y luego dirige su mirada a Fall.* */
== P_BEAST IF ~~ THEN @10013132 /* ~Cuando logres la conexión, Tabitha desaparecerá de este plano... eso quiere decir que serás capaz de llamarla a tu lado, ¿no es así?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013133 /* Así es, Ivor. Tendré la habilidad de llamarla cuando quiera... incluso podrá seguir mis órdenes. ¿Aún estás seguro de que quieres hacerlo? */
== P_BEAST IF ~~ THEN @10013134 /* ~¡Ja! Claro que sí, niña. Además, a Tabitha le agradas. Si logras llevar a cabo tu misión, estoy más que seguro de que nuestra amiga estará más que dispuesta de luchar a tu lado.~ */
== P_BEAST IF ~~ THEN @10013135 /* ~Procura... sólo procura ser buena con ella, ¿sí?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013136 /* Lo haré, Ivor. Lo prometo. */
== P_BEAST IF ~~ THEN @10013137 /* ~Eres digna hija de tu padre. Adiós, Fall. Vamos, Tabitha, disfrutemos nuestros últimos momentos juntos. ¡Puede que incluso podamos degollar algún que otro esclavista!~ */ DO ~EscapeArea()~
== P_TABIT IF ~~ THEN @10013138 /* *Las garras de Tabitha se alistan ante las palabras de Ivor.* */ DO ~EscapeArea()~
END


I_C_T P_FALLJ 35 P_FallJ_TABIT_B1
== BEAST IF ~~ THEN @10013072 /* ~¿Eh? No os reconozco. ¿Quién sois?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013073 /* Estas jaulas... albergan animales. ¿Por qué? */
== BEAST IF ~~ THEN @10013074 /* ~Ah, una elfa. Estos son mis animales y luchan en el foso. Lo hacen bastante bien...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013075 /* ¡Es inconcebible! ¿Cómo es posible que un elfo permita esto? Como exploradora de Imnescar- */
== BEAST IF ~~ THEN @10013076 /* ~¿Imnescar? Ya veo. Elfa, ¿conoces a Gerwulf? Era un soldado de Crimmor.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013077 /* ¿C-cómo sabes su nombre? Eres un esclavista. No veo cómo es que conoces a mi padre. */
== BEAST IF ~~ THEN @10013078 /* ~¿Eres la hija de Gerwulf? Por Malar... entonces eres una semielfa.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013079 /* ¿Malar? Ahora comprendo. Sus seguidores son crueles. Esto explica por qué haces lo que haces. */
//Dusk @40XX No estoy tan seguro de eso, Fall. En Cormyr tienen una zona dedicada para que sus adoradores le puedan rendir pleitesía.
//Sandro @50XX Ciertamente son muy permisivos en Cormyr.
== BEAST IF ~~ THEN @10013080 /* ~¡Niña! ¿Quién eres tú para juzgarme? ¡Osas insultarme, no sólo a mí sino a mi Dios!~ */
== BEAST IF ~~ THEN @10013081 /* ~Aunque... tu padre nunca estuvo muy en de acuerdo con el Dogma del Dios de la Sangre.~ */
== BEAST IF ~~ THEN @10013082 /* ~Tienes ese fuego, también característico en él.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013083 /* ¿Cómo... cómo es que le conoces? Mi padre nunca entablaría una relación con esclavistas. */
== BEAST IF ~~ THEN @10013084 /* ~¡Ya basta! Tu padre y yo éramos amigos. Aún con nuestras diferencias.~ */
== BEAST IF ~~ THEN @10013085 /* ~Su muerte fue una gran pérdida para los bosques australes. Gerwulf, Aeris, Melodia... muchos grandes exploradores cayeron el día en que las arañas atacaron.~ */
== BEAST IF ~~ THEN @10013086 /* ~¡No soy un esclavista! Soy el Señor de las Bestias de este foso.~ */
== BEAST IF ~~ THEN @10013087 /* ~Mi confianza en mis animales es suprema. No me importa que tengan que matar gladiadores.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013088 /* Pues debería importarte. Los gladiadores son esclavos que no tienen opción. ¡Y hemos venido a liberarles! */
== BEAST IF ~~ THEN @10013089 /* ~Ya veo... Has venido a buscar mi llave para abrir las celdas.~ */
== BEAST IF ~~ THEN @10013090 /* ~¿Qué te hace pensar que puedes derrotar a Lehtinan?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013091 /* Cuento con la alianza de <CHARNAME> y la fuerza de Silvanus. Mis lobos Daren y Sinna lucharán por mí. */
== BEAST IF ~~ THEN @10013092 /* ~Eres hija de tu padre... De acuerdo, niña.~ */
== BEAST IF ~~ THEN @10013093 /* ~No le debo lealtad a Lehtinan. Por mí, puedes matarlo. Te daré mi llave y me llevaré a mis animales conmigo.~ */ DO ~GiveItem("MISC4Z", "P_Fall")~
== BEAST IF ~~ THEN @10013094 /* ~¿Cómo es tu nombre, hija de Gerwulf?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013095 /* Mi nombre es Fall. */
== BEAST IF ~~ THEN @10013096 /* ~Fall... toma este arco. Espero que te ayude en tu empresa.~ */ DO ~GiveItem("BOW14", "P_Fall")~
== BEAST IF ~~ THEN @10013097 /* ~¡Ja! Nunca creí que hallaría a la hija del humano de Crimmor aquí. Cuando Lehtinan esté muerto te buscaré, Fall.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013098 /* De-de acuerdo. Espera, ¿cuál es tu nombre? */
== BEAST IF ~~ THEN @10013099 /* ~Soy Ivor. Y esta es mi amiga, Tabitha.~ */
== BEAST IF ~~ THEN @10013100 /* ~Hasta pronto, Fall. Tabitha y yo te deseamos suerte en tu cacería. ¡Que Malar te dé las fuerzas para alcanzar a tu presa!~ */
END

I_C_T P_FALLJ 27 P_FallJ_QUEST3_1
== P_KITOCH IF ~~ THEN @10013058 /* ~Y algo extraño sucedió. Hiciste bien en encomendarme esta tarea.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013059 /* ¡Ja!¿Has visto, <CHARNAME>? Soy muy lista. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013060 /* *tose* Bueno, buen Kitochi. Cuéntanos. */
== P_KITOCH IF ~~ THEN @10013061 /* ~No hasta que el tal <CHARNAME> se disculpe por haber dicho que mi gorro es ridículo.~ */
END

I_C_T P_FALLJ 14 P_FallJ_QUEST14_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013026 /* *tose* Bueno, digamos que pondré mi ballesta a tu disposición, <CHARNAME>. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013027 /* Con el tiempo, verás que mi ayuda será útil en tus búsquedas. */
END

I_C_T P_FALLJ 11 P_FallJ_QUEST11_1c
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013018 /* Cuando llegue el momento indicado, habrás de conocerlo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013019 /* Por ahora, gracias por ayudarme con los animales del circo, buen <CHARNAME>. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013020 /* Lo prometido es deuda: aquí tienes la gema. Puedes venderla, recuperarás algo del oro que empleamos aquí. */
END

I_C_T P_FALLJ 2 P_FallJ_QUEST1_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013009 /* Nadie merece estar encerrado para el entretenimiento de los demás... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10013010 /* Creo que Fall tiene razón, <CHARNAME>. Debemos honrar a la madre tierra y devolver estas bestias a la naturaleza. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10013011 /* ¡La ballestera tiene razón! Es nuestro deber hacer el bien y esta misión lo requiere. ¡Bubú piensa como yo!*/
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10014000 /* Admito que nunca me ha gustado ver esas jaulas. Estoy con Fall en esto. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10014001 /* El dinero va y viene, <CHARNAME>. Entiendo que lo necesitamos, pero siempre podemos encontrar la forma de ganar más. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @10013012/* ~No me gusta la idea de emplear tanto dinero, <CHARNAME>. Estoy seguro de que lo necesitaremos en algún momento. Hablamos de una cantidad considerable.~ */
END

I_C_T P_DUSKJ 295 P_FallJ_EVIL_DUSK_291_01
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013316 /* ¿D-dusk? No... ¿Qué has hecho? */
END

// Hacer variable en donde Dusk Neutral/Good no esté en la party
/*I_C_T TREVIL02 5 P_FallJ_KHELONQ_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013311 /* No... ¡<CHARNAME>! ¿Cómo has podido? En honor... en honor a mis principios, debo derrotarte por lo que has hecho. ¡Pagarás por lo que has hecho! */ DO ~SetGlobal("P_FallEnemy","GLOBAL",1) LeaveParty() Enemy () ~
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0)~ THEN @10013312 /* ¡¿Qué has hecho?! Nunca en mi vida había estado tan equivocado en una persona. ¡Mereces morir por lo que has hecho! */ DO ~SetGlobal ("P_DuskEnemy","GLOBAL",1) LeaveParty() Enemy ()~
END */


// Sand INTJ
/*
I_C_T P_FALLJ 2 P_FallJ_QUESTSand1_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013009 /* Nadie merece estar encerrado para el entretenimiento de los demás... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10013010 /* Creo que Fall tiene razón, <CHARNAME>. Debemos honrar a la madre tierra y devolver estas bestias a la naturaleza. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10013011 /* ¡La ballestera tiene razón! Es nuestro deber hacer el bien y esta misión lo requiere. ¡Bubú piensa como yo!*/
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @10014000 /* Admito que nunca me ha gustado ver esas jaulas. Estoy con Fall en esto. */
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @10014001 /* El dinero va y viene, <CHARNAME>. Entiendo que lo necesitamos, pero siempre podemos encontrar la forma de ganar más. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @10013012/* ~No me gusta la idea de emplear tanto dinero, <CHARNAME>. Estoy seguro de que lo necesitaremos en algún momento. Hablamos de una cantidad considerable.~ */
== P_SandJ IF ~InParty("P_SandJ") InMyArea("P_SandJ") !StateCheck("P_SandJ",CD_STATE_NOTVALID)~ THEN @10015000 /* Una movida ilegal podría atraer atención indeseada, <CHARNAME>. Sin embargo, no creo que algo de este calibre deba preocuparnos. Haz lo que debas. */
END
*/





/////////////////////////////////////////

// Gitana
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Fall",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
@10010055 /* Tu amor por tu familia es incondicional, mi joven semielfa. Pero cuidado, una misteriosa sombra, amenazante y tenebrosa, os rodea a todos. Tu amor puede ser tu perdición y está en ti decidir si arriesgar tu alma por ello. */
== P_FallJ @10010056 /* Si hay algo por lo que vale la pena morir, mi dama, es por amor. Aceptaré mi destino, sea cual sea. */ 
EXIT

// Celvan el Loco
CHAIN IF WEIGHT #-1 
~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallReactionCelvan","AR0300",0)~ THEN CELVAN c1
@10010000 /* Hubo una vez una ballestera aplicada.
Su padre cayó en la frontera de su hogar
cuando un monstruo de ocho patas atacó sin cesar.
Ella su legado tomó y sus virotes letales
vuelan como el veneno de sus rivales fatales.
Ahora debe terminar lo que sus enemigos empezaron,
y llevar a su familia a la paz que siempre buscaron.

Once there was a skilled crossbow half-elf with grace,
Whose father fell defending their home,
Against monsters with eight legs and chrome.
She took up his legacy and aims with precision,
Her bolts as deadly as poison with a fateful decision.
Now she must finish what her enemies began,
And bring her family the peace of their land. */
DO ~SetGlobal("P_FallReactionCelvan","AR0300",1)~
== P_FallJ @10010001 /* ¿C-cómo... cómo sabes eso? ¡Gnomo! Habla... */
END CELVAN 1

// Belmin
CHAIN IF WEIGHT #-1 
~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
RandomNum(4,1)
Global("P_FallBelmin","AR0700",0)~ THEN BELMIN belmin1
@10013317 /* ¡Tú! Te he visto rondando por aquí. No eres bienvenida a nuestra civilización, demonio. ¡Fuera! ¡Fuera de aquí! */
DO ~SetGlobal("P_FallBelmin","AR0700",1)~
== P_FallJ @10013318 /* *suspiro* Otra vez este tipejo. Vámonos, <CHARNAME>, simplemente ignorémosle. */
EXIT


// Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Fall",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_FallReactionMadam1
@10010002 /* Saludos, mi señora. Soy la Madame Nin, y estoy aquí para asegurar que su compañía sea placentera. ¿Estás interesada? */
== P_FallJ @10010003 /* ¿Compañía? ¿De qué habla, señora? M-mejor, aléjese de mí. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Fall",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_FallReactionMadam2
@10010004 /* Entonces... ¿deseas compañía para esta noche? */
== P_FallJ @10010005 /* ¡Ya le dije que no! */
EXIT

// Diálogo por el Árbol de la Vida
EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) Global("P_FallTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
@10010006 /* Fall, la Dama de las Bestias. Su viaje ha significado un crecimiento en su persona y yace lista a tu lado. */
DO ~SetGlobal("P_FallTreeOfLife","GLOBAL",1)~
END
++ @10010007 /* Fall, esta no es tu pelea. Puedes quedarte aquí si así lo deseas. */ EXTERN P_FallJ pl2.1
++ @10010008 /* Hemos pasado por mucho, Fall. Puedes volver a los bosques si así lo deseas. */ EXTERN P_FallJ pl2.1
++ @10010009 /* ¿Estás lista para seguirme? Te necesito a mi lado para vencer. */ EXTERN P_FallJ pl2.1

CHAIN P_FallJ pl2.1
@10010010 /* Nunca creí ver las cosas que vi durante nuestro viaje juntos, <CHARNAME>. Es el momento de recuperar tu alma. ¡A por Irenicus! */
END
COPY_TRANS PLAYER1 33 




// DUSK
I_C_T P_DUSKJ 295 P_Fall_EVIL_Dusk_Kills1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013302 /* ¡¿Dusk?! No... no entiendo... ¡¿Qué has hecho?! */
END

I_C_T P_FALON 19 P_Fall_Falon_GOOD1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013303 /* ¡Dusk! Me alegra inmensamente que decidieras ayudar a Falon y su tribu. Espero que podamos conseguirles el hogar que tanto anhelan. */
END

I_C_T P_DEMOLE 2 P_Fall_Demole001
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013304 /* ¡Pero qué perrito más lindo! */
END

I_C_T P_DEMOLE 25 P_Fall_Demole002
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013305 /* ¡Hola, Demole! ¿Cómo estás? Dime, ¿te alimenta bien ese elfo escuálido de cabello verde? */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013306 /* (Demole mueve la cola a las palabras de Fall, demostrando alegría al verla también) */
END

I_C_T P_DEMOLE 26 P_Fall_Demole003
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013305 /* ¡Hola, Demole! ¿Cómo estás? Dime, ¿te alimenta bien ese elfo escuálido de cabello verde? */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013306 /* (Demole mueve la cola a las palabras de Fall, demostrando alegría al verla también) */
END

// Demoledor aparece por 3era vez
I_C_T P_DEMOLE 19 P_Fall_Demole004
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013307 /* ¡Demoledor! ¿Cómo has estado? Se te ve bien alimentado. Hasta creo que has engordado. */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013308 /* (Demole gira sobre su propio eje, demostrando felicidad ante la presencia de Fall) */
END

// Ataque a los esclavistas en la calle de los Slums
I_C_T SLSLAVE 3 P_FallJ_SLSLAVEHELP
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0)~ THEN @10013314 /* <CHARNAME>, esto no quedará impune. ¿Tráfico de esclavos tan libremente en las calles? Es hora de hacer pagar a estos sucios esclavistas. */ DO ~Attack("SLUMSSLAVER2")~
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013315 /* No dejaré que os lleven, señor. ¡Por Imnescar que atacaré a estos esclavistas! Espero que me ayudes, <CHARNAME>. */ DO ~Attack("SLUMSSLAVER3")~
END

I_C_T SLSLAVE 3 P_FallJ_SLSLAVEHELP2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10013315 /* No... ¡<CHARNAME>! ¿Cómo has podido? En honor... en honor a mis principios, debo derrotarte por lo que has hecho. ¡Pagarás por lo que has hecho! */ DO ~Attack("SLUMSSLAVER3")~
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0)~ THEN @10013314 /* ¡¿Qué has hecho?! Nunca en mi vida había estado tan equivocado en una persona. ¡Mereces morir por lo que has hecho! */ DO ~Attack("SLUMSSLAVER2")~
END


APPEND P_FallJ

IF ~Global("P_FallTalk","GLOBAL",2)~ t1
SAY @10010129 /* Así que, <CHARNAME>, ¿qué tan relacionado estás con el incidente en el Paseo? */
= @10010130 /* No creo que haya sido casualidad que todo haya explotado y justo aparecieras como si nada. */
++ @10010131 /* De hecho, el mago responsable es mi enemigo, Fall. El maldito secuestró a mi amiga de la infancia, Imoen. */ + t1.1
++ @10010132 /* De hecho, fue pura casualidad, Fall. No tengo nada que ver con lo que pasó en el Paseo. */ + t1.2
++ @10010133 /* Fall, no es un buen momento para hablar. */ + t.0
END

IF ~~ t.0
SAY @10010134 /* ~No eres un <PRO_RACE> de muchas palabras, ¿verdad?~ ~No eres una <PRO_RACE> de muchas palabras, ¿verdad?~ */
= @10010135 /* Está bien. No os importunaré (por ahora). */
IF ~~ DO ~IncrementGlobal("P_FallTalk","GLOBAL",1)~ EXIT
END 

//RealSetGlobalTimer("P_FallTimer","GLOBAL",60)

IF ~~ t1.2
SAY @10010136 /* Hm. Dejame que lo piense... */
= @10010137 /* ~¡Ya lo pensé! Y algo me dice que no estás siendo del todo sincero conmigo, ¿eh?~ ~¡Ya lo pensé! Y algo me dice que no estás siendo del todo sincera conmigo, ¿eh?~*/
++ @10010138 /* Está bien, Fall. Os lo diré: el mago responsable es mi enemigo. Ha secuestrado a mi amiga Imoen y es por ello le doy caza. */ + t1.1
++ @10010139 /* Puede que no esté de humor para hablar, ¿no te parece? */ + t.0
END

IF ~~ t1.1
SAY @10010140 /* Tu amiga, ¿eh? Ya veo. Eso es motivo más que suficiente para darle caza. */
= @10010141 /* Ten por seguro que haré todo lo que pueda por ayudarte. */
++ @10010142 /* ¿Qué hay de ti? Estás un poco lejos de Imnescar. */ + t1.11
++ @10010143 /* Gracias, Fall. Será mejor que continuemos con nuestro viaje. */ + t.0
END

IF ~~ t1.11
SAY @10010144 /* Eso... es verdad. */
= @10010145 /* Ha pasado un tiempo prudencial y siento que puedo confiar en ti. */
= @10010146 /* Creo habértelo mencionado, pero mi madre es una poderosa hechicera. */
= @10010147 /* Es una selu'taar, una alta elfa de Evereska... aunque abandonó su hogar hace mucho tiempo. */
++ @10010148 /* ¿Evereska? ¿Quieres que crea que tus orígenes se remontan en el Reino Oculto? */ + t1.12
++ @10010149 /* Eso explicaría el origen artesanal de tu túnica. */ + t1.13
END

IF ~~ t1.12
SAY @10010150 /* Pues, todos venimos de algún lado, ¿no lo crees? */
IF ~~ DO ~~ GOTO t1.14
END 

IF ~~ t1.13
SAY @10010151 /* Sí y no. Mi madre aprendió mucho de su arte en la ciudad élfica pero confeccionó la túnica en nuestro verdadero hogar.*/
IF ~~ DO ~~ GOTO t1.14
END

IF ~~ t1.14
SAY @10010152 /* Recuerda que yo nací en Imnescar, un pequeño pueblo al suroeste de Amn. */
= @10010153 /* Somos famosos por nuestra agricultura, ¿sabes? Naranjas, manzanas, peras, limones. */
= @10010154 /* Estoy segura de que disfrutarías de una torta hecha con nuestras frutillas. */
= @10010155 /* Imnescar es hermoso... era hermoso. */
++ @10010156 /* ¿Era? ¿A qué te refieres, Fall? */ + t1.15
END

IF ~~ t1.15
SAY @10010157 /* Hace algunos años, un ejército de alimañas nos invadió. Fue una masacre. */
= @10010158 /* Arañas. Arañas gigantes, arañas espada, arañas fase. Vinieron de a docenas y docenas. Sus telas de araña cubrieron los cultivos y gran parte del bosque se perdió. */
= @10010159 /* La magia de mi madre parecía... parecía ser contrarrestada por alguna fuerza sobrenatural. */
= @10010160 /* Habríamos muerto de no ser por mi padre. */
= @10010161 /* Él era un gran guerrero de Crimmor. Se crio en los bosques siendo un ballestero explorador. Su nombre era Gerwulf. */
= @10010162 /* Cuando las arañas comenzaron a atacar, él y un grupo de exploradores nos defendieron. Pero... eventualmente... cayeron ante el veneno de los arácnidos. */
= @10010163 /* Desde entonces, mi madre y yo vagamos por Amn durante un tiempo. */
= @10010164 /* Basta con decir que... mi madre ha desaparecido, <CHARNAME>. */
= @10010165 /* Una mañana desperté y ella no estaba. No había dejado ningún rastro. */
++ @10010166 /* ¿Qué te hace pensar que desapareció? Puede que simplemente se haya cansado de ti. */ + t1.16
++ @10010167 /* Dijiste que tu madre es una poderosa hechicera. Puede que haya desaparecido a voluntad. */ + t1.17
END

IF ~~ t1.16
SAY @10010168 /* Eso no es gracioso, <CHARNAME>. */
IF ~~ DO ~~ GOTO t1.18
END 

IF ~~ t1.17
SAY @10010169 /* Sí, pero no creo que sea así, <CHARNAME>.*/
IF ~~ DO ~~ GOTO t1.18
END


IF ~~ t1.18
SAY @10010170 /* No, estoy segura de que algo malo ha pasado. */
= @10010171 /* No me detendré hasta llegar al fondo del asunto... *suspiro* Suficiente por hoy, mi <LADYLORD>. Será mejor que continuemos. */
IF ~~ DO ~IncrementGlobal("P_FallTalk","GLOBAL",1)~ EXIT
END 

// T2

// t2 - P_Fall_T2

IF ~Global("P_Fall_T2","GLOBAL",2)~ t2
SAY @10010172 /* ¡<CHARNAME>! ¿Quieres oír de mis aventuras en el Bosque de Tethyr? */
++ @10010173 /* Muy bien, Fall. Cuéntame de tus viajes por Tethyr. */ + t2.2
++ @10010174 /* ¿Sucedió luego de tu huída de Imnescar? Sí, me interesa. */ + t2.1
++ @10010175 /* ¿Es necesario? Tenemos asuntos pendientes que atender. */ + t2.3
END


IF ~~ t2.3
SAY @10010176 /* ¡Hmpf! Bien. Pero ya es hora de que conozcas a Alendir, <CHARNAME>. */
IF ~~ DO ~~ GOTO t2.4
END

IF ~~ t2.4
SAY @10010177 /* Me dijo que me reúna con él luego de unos días. Bueno, días han pasado y creo que te has ganado mi confianza como para que te presente con él. */
= @10010178 /* Como te he mencionado, mi madre ha desaparecido y él está haciendo todo lo posible para averiguar dónde está. Podremos encontrarlo en el piso superior de la posada de las Cinco Jarras, en el Distrito del Puente. */
IF ~~ DO ~SetGlobal("P_Fall_T2","GLOBAL",3)   
SetGlobal("P_FallMission2","GLOBAL",1)~ UNSOLVED_JOURNAL @310005 EXIT
END 
//AR0511 - 1076-155


IF ~~ t2.1
SAY @10010179 /* Así es, <CHARNAME>. */
IF ~~ DO ~~ GOTO t2.2
END

IF ~~ t2.2
SAY @10010180 /* Luego del ataque de las arañas, mi madre y yo huimos hacia los bosques de Tethyr. */
= @10010181 /* Sea lo que fuere que bloqueó la magia de mi madre, ya no existía. Gracias al Padre Roble por eso, ya que existen muchos peligros en la espesura. */
= @10010182 /* Kobolds, licántropos, ogros, trolls. Muchos monstruos habitan en las sombras de las hojas y a muchos hemos combatido mi madre y yo. */
= @10010183 /* *carraspeo* Bueno, lo cierto es que la mayor parte del trabajo lo ha hecho madre. No fue sino hasta algunos años más tarde que comencé mi entrenamiento con la ballesta. */
= @10010184 /* Atravesamos los bosques septentrionales hasta llegar a Brost. La Villa de las Setas, ¿sabes?  */
= @10010185 /* El nombre no es muy errado. Tienen una gran variedad de hongos y champiñones. También melocotones. Muy deliciosos.  */
++ @10010186 /* Mira la hora, Fall. *falso bostezo* Creo que es hora de descansar un poco, ¿no lo crees? */ + t2.3
++ @10010187 /* ¿Tú y tu madre fueron bien recibidas en Brost? */ + t2.5
END


IF ~~ t2.5
SAY @10010188 /* ¡Sí! En Villa de las Setas lo que más importa es el comercio. (Eso, y las setas, claro) Verás, allí conviven humanos, medianos, semielfos. */
= @10010189 /* Además, rinden pleitesía a Mielikki y a Silvanus. El druida local nos recibió muy bien. */
= @10010190 /* Acrull Escudonorteño es el líder del culto a Silvanus en esa región. Es un clérigo humano poderoso y lidera a varios druidas y exploradores. */
= @10010191 /* También conocimos a un mago humano de Calimshan llamado Hakamir ibn Alix. */
= @10010192 /* Una de las primeras cosas que hizo mi madre fue tratar el asunto de Imnescar en privado con ellos. */
= @10010193 /* Estos humanos no eran poca cosa, <CHARNAME>. Sin embargo, ni el clérigo ni el mago pudieron desentrañar el misterio del ataque a mi pueblo natal. */
= @10010194 /* El tiempo pasó y no fue hasta que Alendir apareció... Y hablando de Alendir... será mejor que él mismo te cuente el resto de la historia. */
++ @10010195 /* ¿Finalmente podré conocer a este tal Alendir, Fall? */ + t2.4
END


// T3

// t3 - P_Fall_T3

IF ~Global("P_Fall_T3","GLOBAL",2)~ t3
SAY @10010196 /* <CHARNAME>, ¿alguna vez te hablé de cómo conocí a Daren y a Sinna? */
++ @10010197 /* Creo que no, Fall. ¿Cómo los conociste? */ + t3.1
++ @10010198 /* No, Fall. Aunque no disponemos de mucho tiempo. Tenemos asuntos pendientes que atender. */ + t3.2
END

IF ~~ t3.2
SAY @10010199 /* Entiendo... Supongo que será en otra ocasión, ¿no es así? Será mejor que continuemos con esos asuntos. */
IF ~~ DO ~SetGlobal("P_Fall_T3","GLOBAL",3)~ EXIT
END 

IF ~~ t3.1
SAY @10010200 /* Los bosques de Imnescar albergan muchos animales, pero una de las razas más numerosas es la de los lobos. */
= @10010201 /* Hace ya mucho tiempo que los exploradores han logrado crear una conexión con los lupinos. */
= @10010202 /* Madre, incluso, logró crear un lazo con el plano astral en donde pudo albergar algunas almas de animales para que se resguarden por toda la eternidad. */
++ @10010203 /* ¿Te refieres a las convocaciones? Dices que algunas criaturas de nuestro mundo ahora viven en el plano Astral, ¿es así? */ + t3.3
++ @10010204 /* La verdad no te estoy siguiendo, Fall. ¿Podrías explayarte? */ + t3.4
++ @10010205 /* Es muy interesante. ¿Crees que podríamos continuar esta charla en otro momento? Tenemos asuntos que atender. */ + t3.2
END

IF ~~ t3.3
SAY @10010179 /* Así es, <CHARNAME>. */
IF ~~ DO ~~ GOTO t3.4
END


IF ~~ t3.4
SAY @10010206 /* Hay conjuros que permiten al lanzador el viajar por los planos. El Astral entre ellos. */
= @10010207 /* Por supuesto, esto es muy peligroso. ¡Si no tienes cuidado, puedes quedarte atrapado allí para siempre! */
= @10010208 /* Bueno, no quiero irme por las ramas. Te estaba hablando de Daren y Sinna. */
= @10010209 /* Cuando yo era una niña, Padre los rescató de una partida de cazadores cuando eran apenas unos cachorros. 
De más está decir que se convirtieron en mis amigos. */
= @10010210 /* Los tres crecimos en Imnescar y más pronto que tarde, los cachorros crecieron en los poderosos lobos que conoces. */
= @10010211 /* Mi madre mostró un gran interés y constantemente lanzaba sobre ellos conjuros de protección. */
= @10010212 /* ... */
++ @10010213 /* ¿Qué pasa, Fall? Te has quedado en silencio de repente. */ + t3.5
++ @10010214 /* Vaya, finalmente te quedaste sin palabras, ¿huh? */ + t3.5
END

IF ~~ t3.5
SAY @10010215 /* Lo siento, <CHARNAME>. Es sólo que... en esta parte es cuando feviene el ataque a mi pueblo. */
= @10010216 /* Las arañas... */
= @10010217 /* Daren y Sinna fueron los primeros en percatarse de la presencia de los arácnidos. */
= @10010218 /* Se lanzaron a la oscuridad del bosque alertando a los exploradores. Sin embargo, mi padre les llamó de inmediato. */
= @10010219 /* Sabía que las arañas poseen un veneno mortífero y que mis lobos caerían en cuestión de segundos. */
= @10010220 /* Yo no me preocupé en el momento porque sabía que mi madre simplemente lanzaría un hechizo de protección contra el veneno. */
= @10010221 /* Pero... como te mencioné antes... su magia no funcionaba. */
++ @10010222 /* Y entonces, ¿qué pasó con los lobos? Me refiero a que puedo ver que se encuentran bien. */ + t3.6
++ @10010223 /* Muy interesante, Fall. Pero ya es tarde. Será mejor que lo dejemos para otro día. Hay asuntos que atender. */ + t3.2
END

IF ~~ t3.6
SAY @10010224 /* Mi padre llamó a los lobos para que me protejan. Ellos obedecieron. */
= @10010225 /* Sin embargo, las arañas eran numerosas. */
= @10010226 /* Uno a uno, los exploradores cayeron. Una araña gigante se abalanzó sobre mí, pero antes de que me atacara con sus colmillos, Daren la destrozó con sus garras. */
= @10010227 /* Busqué a mi madre y emprendimos la huída. El camino estaba libre, pero de las sombras emergió una araña fase dispuesta a atacarnos. */
= @10010228 /* Sinna, como un relámpago, acabó con la araña usando su fulminante mandíbula. */
= @10010229 /* El resto de la historia... prefiero detallarla en otro momento, si así lo deseas, claro. */
= @10010230 /* Vamos... continuemos con nuestro viaje. */
IF ~~ DO ~SetGlobal("P_Fall_T3","GLOBAL",3) SetGlobal ("P_Fall_WolvesSubject","GLOBAL",1)~ EXIT
END 


// SP1 Voragor 1

// SP1 - P_Fall_SP1_1
IF ~Global("P_Fall_SP1_1","GLOBAL",2)~ sp1
SAY @10010231 /* Perdona que interrumpa nuestro viaje, <CHARNAME>, pero creo que he podido avanzar en mis estudios sobre la gema de Voragor. */
++ @10010232 /* ¿La gema de quién? */ + sp1_1
++ @10010233 /* ¿Acaso estudias? Pensé que lo único que hacías era devorar bayas y frutas. */ + sp1_2
++ @10010234 /* ¡Excelente! Cuéntame de tus avances. */ + sp1_3
END

IF ~~ sp1_1
SAY @10010235 /* ¡Voragor! ¿No lo recuerdas? El basilisco anciano que conocimos en las cuevas de Umar. */
IF ~~ DO ~~ GOTO sp1_3
END

IF ~~ sp1_2
SAY @10010236 /* ¡Oye! Puede que coma mucho... ¡pero me alimento de forma sana! */
//== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10014002 /* No sabía que las tortas de miel eran un alimento liviano. He visto cómo te devorabas varias porciones en cuestión de segundos. */
//== P_FallJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10014003 /* *susurro* ¡Silencio, Dusk! Estoy hablando con <CHARNAME> sobre mis estudios, no sobre mi dieta, ¿sabes? */
IF ~~ DO ~~ GOTO sp1_3
END

IF ~~ sp1_3
SAY @10010237 /* *carraspeo* Como decía, pude avanzar en mis investigaciones sobre la gema. */
= @10010238 /* El druida que la imbuyó tenía un gran conocimiento del plano Astral y creo que puedo ahondar un poco más en ello. */
= @10010239 /* ¿Recuerdas que te hablé de Daren y Sinna combatiendo arañas en Imnescar? Bien, pues... resulta que ambos fueron envenenados durante la lucha. */
= @10010240 /* Con mi madre nos percatamos de esto cuando estuvimos lo suficientemente alejadas de nuestro hogar. */
= @10010241 /* Llegábamos a la frontera de los Dientecillos cuando Sinna disminuyó su caminar. Pensamos que se trataba de cansancio... */
= @10010242 /* Pero al poco tiempo Daren le siguió. */
= @10010243 /* Estábamos demasiado conmovidas aún por todo lo que habíamos tenido que pasar. Tanto, que apenas nos dimos cuenta de que los lobos estaban muriendo... */
= @10010244 /* Había perdido a mi padre... había perdido mi hogar... y ahora estaba perdiendo a mis amigos. */
= @10010245 /* Abracé con desesperación a ambos mientras casi me desmayaba del llanto... cuando de repente comencé a sentir un aura poderosa. */
= @10010246 /* Madre estaba entrando en trance: en concentración absoluta estaba conjurando un gran portal. */
= @10010247 /* "Mi pequeña Caraneth" dijo, "toma mi mano mientras aún abrazas a tus hermanos del bosque." Asombrada, le hice caso. */
= @10010248 /*  En ese momento, todo se tornó gris y plateado. Sentí el aroma de la lluvia inundándome los pulmones. */
= @10010249 /* La percepción del tiempo me fue desconocida, pues sentí que pasaron meses. Cuando al abrir mis ojos y volver al árido suelo de las montañas, entendí que sólo habían pasado unos segundos. */
= @10010250 /* Entonces... me percaté que Daren y Sinna habían desaparecido. */
= @10010251 /* Madre comprendió mi preocupación y antes de que pudiera decir palabra alguna me dijo: "No debes temer, mi niña. Daren y Sinna ahora forman parte del Plano Astral." */
= @10010252 /* "Allí, el veneno que contrajeron en el Plano Primordial ya no les hará efecto. Con el paso del tiempo, incluso curarán las heridas que hayan contraído aquí." */
= @10010253 /* "No envejecerán, ni sufrirán hambre." Aún... aún recuerdo sus palabras con anhelo y consideración. */
= @10010254 /* *tose* Bueno, creo que ha sido suficiente por hoy. ¡Recuerda mi historia, <CHARNAME>! Tengo la esperanza de que la próxima vez que hablemos sobre esto, el misterio de la gema estará resuelto. */
IF ~~ DO ~SetGlobal("P_Fall_SP1_1","GLOBAL",3)~ EXIT
END 


// SP1 Voragor 2

// SP1 - P_Fall_SP1_2
IF ~Global("P_Fall_SP1_2","GLOBAL",2)~ sp2
SAY @10010255 /* ¡<CHARNAME>! Por Silvanus... ¡Lo he logrado, lo he logrado! */
++ @10010256 /* ¡Fall! ¿De qué estás hablando? */ + sp2_1
++ @10010257 /* Mujer, ¡casi me matas del susto! */ + sp2_2
END

IF ~~ sp2_2
SAY @10010258 /* Oh, lo lamento, <CHARNAME>. No pretendía gritar tan fuerte. */
IF ~~ DO ~~ GOTO sp2_1
END

IF ~~ sp2_1
SAY @10010259 /* He logrado aprender de la gema del basilisco. */
= @10010260 /* Para que comprendas a qué me refiero debo narrarte cómo es que aprendí a traer a Daren y a Sinna del Plano Astral. */
++ @10010261 /* Muy bien, te escucho. */ + sp2_4
++ @10010262 /* ¿Es necesario? No estoy de humor para historias. */ + sp2_5
END

IF ~~ sp2_5
SAY @10010263 /* ¡Hmpf! Siempre tan cordial... De acuerdo, tú te lo pierdes... */
IF ~~ DO ~SetGlobal("P_Fall_SP1_2","GLOBAL",3)~ EXIT
END 

IF ~~ sp2_4
SAY @10010264 /* Como ya te narré, Daren y Sinna se encontraban en el Plano Astral, todo gracias al poder de mi madre. */
= @10010265 /* "Tú eres mi hija. Mi sangre. Puedes aprender esto si realmente te esfuerzas. El camino no será fácil." */
= @10010266 /* Fue entonces que en los próximos meses me enseñó sobre algunos rituales arcanos. Me dijo que mi afinidad innata con la naturaleza podría darme la posibilidad de comprender y aprender este poder. */
= @10010267 /* Daren y Sinna son como mis hermanos. Son parte de mi familia y mi conexión con ellos serviría de puente de plata entre el Plano Astral y el Plano Primordial. */
= @10010268 /* Para que me comprendas, <CHARNAME>, mis habilidades innatas como Dama de las Bestias me permitieron aprender esto y es así que puedo llamar a Daren y a Sinna para que me asistan en este mundo. */
++ @10010269 /* Entiendo eso. Lo que no entiendo es la relación que tiene todo lo que me cuentas con el basilisco. */ + sp2_6
++ @10010270 /* Te estás yendo por las ramas otra vez, Fall. Ve directo al grano. */ + sp2_6
++ @10010271 /* Continúa, por favor. */ + sp2_7
END

IF ~~ sp2_6
SAY @10010272 /* Oh, es verdad. *se rasca la cabeza* No sé por qué me toma tanto tiempo explicar estas cosas... */
IF ~~ DO ~~ GOTO sp2_7
END

IF ~~ sp2_7
SAY @10010273 /* Lo que quiero decir es que puedo llamar a Voragor. */
++ @10010274 /* ¿Puedes convocar al gran basilisco? */ + sp2_8
++ @10010275 /* ¿Qué? Fall, ¿cómo puedes estar segura de que esa lagartija no intentará matarnos en el momento en que lo llames? */ + sp2_9
END

IF ~~ sp2_9
SAY @10010276 /* <CHARNAME>, no debes preocuparte por eso. Déjame explicarte. */
IF ~~ DO ~~ GOTO sp2_8
END

IF ~~ sp2_8
SAY @10010277 /* Puedo llamar y comandar a Voragor a voluntad. Todo ha sido gracias a la gema, la cual... la cual está desapareciendo mientras hablamos. */
= @10010278 /* Verás, la gema era una posesión preciada para Voragor y parte de su amuleto. Gracias a esto he podido generar una conexión mental y espiritual con él. */
= @10010279 /* Hasta hace poco, acordé llevar a Voragor al Plano Astral utilizando las enseñanzas de mi madre. */
= @10010280 /* Lo podrás ver por ti mismo, <CHARNAME>. Ahora tengo la capacidad de llamar a Voragor. */
= @10010281 /* Cuando le llame, verás que aún puede comunicarse con nosotros ya que todavía tiene en su poder el amuleto del druida. */
= @10010282 /* Estoy segura de que Voragor nos ayudará mucho en nuestras búsquedas. Ya lo verás. */
IF ~~ DO ~SetGlobal("P_Fall_SP1_2","GLOBAL",3) 
UseItem("p_basgem", Myself) DestroyItem("p_basgem")~ EXIT
END 

// T4 - Sobre Gerwulf

// t4 - P_Fall_T4

IF ~Global("P_Fall_T4","GLOBAL",2)~ t4
SAY @10010283 /* <CHARNAME>, ¿te gustaría oír sobre mi padre? */
++ @10010284 /* Sí, Fall. Me encantaría escuchar su historia. */ + t4.1
++ @10010285 /* Lo lamento, Fall. Pero no disponemos de mucho tiempo ahora. */ + t4.2
END

IF ~~ t4.2
SAY @10010286 /* Oh, ya entiendo. De acuerdo, <CHARNAME>. */
IF ~~ DO ~SetGlobal("P_Fall_T4","GLOBAL",3)~ EXIT
END 


IF ~~ t4.1
SAY @10010287 /* Mi padre es mi héroe. Era un gran guerrero de Crimmor que sirvió a su guardia cuando era muy joven. */
= @10010288 /* Al cabo de un tiempo, siguió el llamado de la naturaleza y protegió los bosques de Imnescar durante años. */
= @10010289 /* No sé si lo mencioné, pero era un humano. */
++ @10010290 /* Ya veo. Eso explicaría el origen de tu linaje. */ + t4.3
++ @10010291 /* ¿Cómo es que conoció a tu madre? Tengo entendido que ella es una elfa selu'taar de Evereska. */ + t4.4
END

IF ~~ t4.3
SAY @10010292 /* Exacto. Como verás, soy una semielfa. Heredé el color de mi cabello de él. */
IF ~~ DO ~~ GOTO t4.4
END

IF ~~ t4.4
SAY @10010293 /* Conoció a mi madre hace varios años, justamente en los bosques de Imnescar. */
= @10010294 /* Unieron fuerzas en la lucha contra los trasgos de los Dientecillos. La ballesta de mi padre y la magia de mi madre expulsaron a los monstruos hacia las profundidades de las montañas. */
= @10010295 /* El pueblo de Imnescar, que pronto se convertiría en su hogar, vitoreó sus nombres. Eran muy queridos. */
= @10010309 /* Al poco tiempo se enamoraron y formaron una familia. */
++ @10010296 /* Es una bella historia, Fall. */ + t4.5
++ @10010297 /* Interesante. ¡Vaya, mira qué tarde se ha hecho! Será mejor que continuemos con nuestro viaje, Fall. */ + t4.2
END

IF ~~ t4.5
SAY @10010298 /* En verdad. Cuando era una niña, todos esperaban que siguiera los pasos de madre. Ya sabes, en el arte de Mystra. */
= @10010299 /* Pero lo cierto es que admiraba demasiado a mi padre. Él tenía un amor sin igual por el bosque y sus animales. */
= @10010300 /* A menudo me escurría de mis deberes para seguirlo en su entrenamiento en los valles. */
= @10010301 /* Él se percataba de esto, claro. Comprendió rápidamente que no sería fácil disuadirme de mis deseos, así que comenzó a entrenarme en el combate, el sigilo y el rastreo. */
= @10010302 /* Él construyó mi primera ballesta ligera y entrenamos en la precisión de los disparos incontable cantidad de tardes. */
= @10010303 /* También me instruyó en la doctrina del Padre Roble, Silvanus. Mi madre no estaba muy convencida de esto, pero ella también amaba a mi padre así que, finalmente, cedió. */
= @10010304 /* Siempre... siempre recordaré con cariño aquellas épocas. */
++ @10010305 /* Tu padre estaría orgulloso de ti, Fall. */ + t4.6
++ @10010306 /* ¿Has terminado al fin? Por los dioses, creí que nunca te callarías. */ + t4.7
END

IF ~~ t4.6
SAY @10010307 /* Gracias por tus palabras, <CHARNAME>. Y gracias por escucharme. */
IF ~~ DO ~SetGlobal("P_Fall_T4","GLOBAL",3)~ EXIT
END 

IF ~~ t4.7
SAY @10010308 /* ¡<CHARNAME>! A veces... a veces puedes ser muy cruel... */
IF ~~ DO ~SetGlobal("P_Fall_T4","GLOBAL",3)~ EXIT
END 
//  @10010309 ya usado


// T5 - Sobre Alendir

// t5 - P_Fall_T5

IF ~Global("P_Fall_T5","GLOBAL",2)~ t5
SAY @10010310 /* <CHARNAME>, ¿tienes unos minutos para hablar? Se trata de Alendir. */
++ @10010311 /* ¿Por qué querrías malgastar tu tiempo hablando de ese viejo amargado, Fall? */ + t5.1
++ @10010312 /* ¿Alendir? Dime, Fall. ¿Hay algo que te inquiete? */ + t5.2
END

IF ~~ t5.1
SAY @10010313 /* ¿Amargado? Sí, supongo que ese es un buen calificativo para describirlo. */
IF ~~ DO ~~ GOTO t5.2
END

IF ~~ t5.2
SAY @10010314 /* Lo cierto es que hay algo sobre él que me molesta. */
= @10010315 /* ¿Has escuchado cómo ha hablado de mi padre? Y sin embargo, no posee un trato similar para con mi madre. */
= @10010316 /* Creo que tiene que ver con el hecho de que ambos provienen de Evereska. Ambos son altos elfos de Cormanthyr. Verás, <CHARNAME>, no existen muchos selu'taar hoy en día. */
= @10010317 /* Puede que esa sea la razón de su agria actitud para con todo lo que no esté relacionado con el Reino Oculto. */
++ @10010318 /* Es probable. Yo no le prestaría demasiada atención. No creo que merezca la pena. */ + t5.3
++ @10010319 /* ¿Sabes algo más de él? Algo que explique por qué es como es con los demás. */ + t5.4
END

IF ~~ t5.3
SAY @10010320 /* ~Puede que no valga la pena, mi querido amigo, pero no he podido parar de pensar en nuestro último encuentro.~ ~Puede que no valga la pena, mi querida amiga, pero no he podido parar de pensar en nuestro último encuentro.~ */
IF ~~ DO ~~ GOTO t5.4
END

IF ~~ t5.4
SAY @10010321 /* Si hay algo que puedo contarte de Alendir es lo siguiente. */
= @10010322 /* Como ya mencioné, él y mi madre provienen de Evereska. Durante muchos años mantuvieron una gran relación de amistad. */
= @10010323 /* Hace algunas décadas, Alendir se obsesionó con un conjuro arcano de características épicas. */
= @10010324 /* Algunos sabios, mi madre entre ellos, le recomendaron no seguir con el proceso ya que podría implicar resultados funestos. */
= @10010325 /* Desconozco los detalles del ritual que intentó llevar a cabo, pero lo cierto es que Alendir logró tener un éxito a medias en su búsqueda. */
++ @10010326 /* ¿Éxito a medias? ¿Qué quieres decir? */ + t5.5
END

IF ~~ t5.5
SAY @10010327 /* Pues... durante años estuvo obsesionado con el Hielo. Él estaba convencido de que podría convertirse en un Maestro de la Escarcha a través de rituales sumamente peligrosos. */
= @10010328 /* Mi madre no entró en detalles, pero me dijo que finalmente él lo había logrado. */
= @10010329 /* Pero no todo salió como él lo esperaba. */
= @10010330 /* ¿Has visto la decrepitud en Alendir? Para que lo comprendas, es más joven que mi madre. */
= @10010331 /* Pero mi madre luce igual de joven que yo... */
= @10010332 /* El ritual que convirtió a Alendir en un Maestro de la Escarcha consumió su juventud. */
++ @10010333 /* Vaya, y yo que pensé que se trataba de un elfo anciano. */ + t5.6
++ @10010334 /* Se debe tener mucho cuidado al tratar con rituales arcanos. */ + t5.7
END

IF ~~ t5.6
SAY @10010335 /* ~Alendir es un elfo anciano, <CHARNAME>. Después de todo, es un selu'taar. Sólo que ahora... realmente lo parece.~ */
IF ~~ DO ~~ GOTO t5.7
END


IF ~~ t5.7
SAY @10010336 /* Pregunté a mi madre si ésa fue la razón de su constante amargura. */
= @10010337 /* Pero me dijo que no. */
= @10010338 /* Cuando estábamos en Brost, Alendir acudió a nosotros. Yo era sólo una niña así que me dejaban afuera de tales conversaciones. */
= @10010339 /* Pero también tenía un oído agudo así que me las ingeniaba para escabullirme y llegar lo más cercano posible a sus reuniones. */
= @10010340 /* Al parecer, hubo un punto de quiebre en su amistad cuando madre abandonó Evereska. */
= @10010341 /* Y sospecho que tampoco le gustó que hubiese tenido una hija con mi padre. Como adivinarás, no tiene la mejor opinión sobre los humanos. */
= @10010342 /* *carraspeo* De todas formas, creo que me he ido por las ramas otra vez. Gracias por escucharme, <CHARNAME>. Creo que ya es hora de que vayamos a ver a Alendir. Es hora de que me diga dónde se encuentra mi madre. */
IF ~~ DO ~SetGlobal("P_Fall_T5","GLOBAL",3)~ UNSOLVED_JOURNAL @310010 EXIT
END 


// SP2 - P_Fall_SP2_1 KITOCHI

IF ~Global("P_Fall_SP2_1","GLOBAL",2)~ sp3
SAY @10010343 /* <CHARNAME>, he encontrado la forma de convocar a Kitochi. */
++ @10010344 /* ¿A quién? */ + sp3_1
++ @10010345 /* ¿Y para qué queremos invocar a ese gato apestoso? */ + sp3_2
++ @10010346 /* Ya veo, Fall. Cuéntame cómo lo has logrado. */ + sp3_3
END


IF ~~ sp3_1
SAY @10010347 /* ~¡Kitochi! El gato feérico que conociste en la posada de las Cinco Jarras.~ */
IF ~~ DO ~~ GOTO sp3_3
END

IF ~~ sp3_2
SAY @10010348 /* ~¡<CHARNAME>! No seas tan rudo con el pobre de Kitochi.~ ~¡<CHARNAME>! No seas tan ruda con el pobre de Kitochi.~ */
IF ~~ DO ~~ GOTO sp3_3
END

IF ~~ sp3_3
SAY @10010349 /* Verás, el gato feérico se encuentra ahora en el Plano Astral junto a Daren y Sinna. */
= @10010350 /* Pero no siempre fue así... */
= @10010351 /* Conocí a Kitochi en Imnescar. Formaba parte de la Guardia de Exploradores del Bosque. */
= @10010352 /* Creo que has notado lo maltrecho que se encuentra. */
++ @10010353 /* Sí, lo he notado. */ + sp3_4
++ @10010354 /* ¿Te refieres a que intenta disimular su fealdad usando un gorrito? Me he dado cuenta. */ + sp3_4
END



IF ~~ sp3_4
SAY @10010355 /* *carraspeo* Sí, bueno. Él estuvo presente durante el ataque de las arañas. Luchó valientemente junto a los exploradores. */
= @10010356 /* Pero lo cierto es que Kitochi no es bueno en el combate cuerpo a cuerpo. Aún así... combatió hasta el final. */
= @10010357 /* Incluso cuando fue envenenado. */
++ @10010358 /* ¿Cómo es que sigue con vida? Antes me has comentado de lo mortal que es el veneno de esas tenebrosas arañas. */ + sp3_5
END

IF ~~ sp3_5
SAY @10010359 /* Su explorador lo curó antes de morir. */
++ @10010360 /* ¿Kitochi era el compañero animal de un explorador? Creí que las criaturas feéricas eran demasiado orgullosas como para ser la mascota de alguien. */ + sp3_7
++ @10010361 /* *bostezo* ¿Seguimos hablando de gatos? Perdón, me estaba quedando dormido. */ + sp3_6
++ @10010368 /* ¿Compañero animal? Ya veo. Continúa, por favor. */ + sp3_7
END

IF ~~ sp3_6
SAY @10010362 /* ~*suspiro* Cielos, <CHARNAME>. A veces puedes ser un completo idiota.~ ~*suspiro* Cielos, <CHARNAME>. A veces puedes ser una completa idiota.~ */
IF ~~ DO ~~ GOTO sp3_7
END


IF ~~ sp3_7
SAY @10010363 /* Verás, su explorador era un elfo de Wéldazh llamado Aeris. No sé cómo es que conoció a nuestro gato. Lo que sí sé es que tenían una gran amistad. */
= @10010364 /* Desconozco los detalles de la muerte de Aeris, pero quizás Kitochi los comparta contigo. */
= @10010365 /* ¡Ahora tengo la capacidad de llamarlo! */
= @10010366 /* Kitochi es un gran explorador. Incluso tiene la capacidad de hacerse invisible y se poner trampas. */
= @10010367 /* No creo que sea efectivo en el combate cuerpo a cuerpo, pero es algo que puedes hablar con él si lo deseas. */
IF ~~ DO ~SetGlobal("P_Fall_SP2_1","GLOBAL",3) CreateItem ("p_catgem",1,2,1)
UseItem("p_catgem", Myself) DestroyItem("p_catgem")~ EXIT
END 

// SP3 - P_Fall_SP3_1 TABITHA

IF ~Global("P_Fall_SP3_1","GLOBAL",2)~ sp4
SAY @10010382 /* Esto... se está volviendo más complicado de lo que esperaba. */
++ @10010383 /* Fall, ¿de qué estás hablando? */ + sp4_1
END

IF ~~ sp4_1
SAY @10010384 /* Estoy intentando llevar a Tabitha al Plano Astral. La estatuilla de Malar es el objeto que Ivor me dio. */
++ @10010385 /* Lo sé, Fall. Estuve presente cuando todo eso pasó. Dime, ¿por qué te está costando? */ + sp4_4
++ @10010386 /* ¿Quién es Ivor, Tabitha, Malar? No conozco a ninguno de ellos. */ + sp4_3
++ @10010387 /* Puede que sea mucho para ti. Deberías relajarte un poco, Fall. */ + sp4_2
END

IF ~~ sp4_2
SAY @10010388 /* ~No puedo relajarme, <CHARNAME>. Hice una promesa y pretendo cumplirla.~ */
IF ~~ DO ~~ GOTO sp4_4
END

IF ~~ sp4_3
SAY @10010389 /* ~¡<CHARNAME>! Nunca prestas atención a mis cosas. Ivor es el Señor de las Bestias que traicionó a Lehtinan en la Corona de Cobre. Tabitha es su leoparda a quien estoy tratando de llevar al Plano Astral. Y Malar es el Dios de los Cazadores, una deidad de exploradores y algunos druidas, pero es cruel e implacable.~ */
IF ~~ DO ~~ GOTO sp4_4
END

IF ~~ sp4_4
SAY @10010390 /* El ritual que estoy llevando a cabo no es tan sencillo. Necesito la visión de una criatura igual de implacable que Malar. */
= @10010391 /* Madre me ha enseñado a vislumbrar los recuerdos y sentimientos de animales que han vivido y muerto en esta tierra. */
= @10010392 /* Tabitha está ligada a Ivor, quien es un explorador fiel a las creencias de Malar. */
= @10010393 /* Yo... no soy capaz de verlo. De sentirlo. Silvanus me da fuerzas y puedo congeniar con Mystra, todo ello debido a las creencias de mis padres. */
= @10010394 /* Podría incluso lograrlo con Mielikki, porque no dista mucho del Padre Roble. */
= @10010395 /* Pero Malar... Es el Dios de la Sangre. La violencia es inherente en sus seguidores. Incluso en algunas criaturas salvajes como animales del bosque. */
++ @10010396 /* Ya veo. Y, ¿a dónde va a parar este relato, Fall? */ + sp4_5
END

IF ~~ sp4_5
SAY @10010397 /* Yo... esto me cuesta pedirlo, pero creo que sé cómo salvar a Tabitha de los cazadores de recompensa. */
= @10010398 /* He oído hablar de una bestia sedienta de sangre que existió hace muchos inviernos. */
= @10010399 /* Se trataba de Aeger, un oso gigante invulnerable al fuego y al frío, incluso al ácido. */
= @10010400 /* Durante años aterrorizó a la Costa de la Espada. */
= @10010401 /* Se necesitó de unos 200 campesinos armados para acabar con él. */
= @10010402 /* Sobrevivieron muy pocos... */
= @10010403 /* La cuestión es que los campesinos hicieron de su piel algunas armaduras, las cuales, se dice, tienen esas propiedades de resistencia elemental. */
= @10010404 /* Aeger era un cazador nato y estoy segura de que Malar habrá estado muy complacido con su cacería de hombres. */
= @10010405 /* Si logramos conseguir una de esas armaduras, creo que podré comprender a uno de los más salvajes guerreros de Malar y ello será suficiente para llevar a Tabitha al Plano Astral a través de la conexión que forje con la deidad de su explorador. */
= @10010406 /* He visto una de ellas en el Mercado del Aventurero cuando frecuentaba el Paseo, en Athkatla. */
= @10010407 /* No me agrada la idea de comprar la piel de un animal, <CHARNAME>. Pero creo que es la única manera de terminar el ritual de Tabitha. */
IF ~~ DO ~SetGlobal("P_Fall_SP3_1","GLOBAL",3)~ UNSOLVED_JOURNAL @310016 EXIT
END 

// SP3 - P_Fall_SP3_2 TABITHA

IF ~Global("P_Fall_SP3_2","GLOBAL",2)~ sp5
SAY @10010369 /* He desentrañado el misterio de Malar, <CHARNAME>. Tabitha será salvada de este plano. */
++ @10010370 /* Fall, ¿quién es Malar? */ + sp5_1
++ @10010371 /* Finalmente. ¿Me vas a devolver mi armadura? Costó dinero, sabes. */ + sp5_2
++ @10010372 /* Es una buena noticia, Fall. Cuéntame más. */ + sp5_3
END

IF ~~ sp5_1
SAY @10010373 /* ~¡Ugh! <CHARNAME>, definitivamente nunca me prestas atención. Malar es el Dios de los Cazadores, la deidad de Ivor, el compañero explorador de Tabitha.~ */
IF ~~ DO ~~ GOTO sp5_3
END

IF ~~ sp5_2
SAY @10010374 /* ~(¡Qué tacaño!) *carraspeo* Sí, <CHARNAME>, te devolveré la armadura. Ahora te contaré lo que pude averiguar.~ ~(¡Qué tacaña!) *carraspeo* Sí, <CHARNAME>, te devolveré la armadura. Ahora te contaré lo que pude averiguar.~ */
IF ~~ DO ~~ GOTO sp5_3
END

IF ~~ sp5_3
SAY @10010375 /* Malar, como quizás he mencionado anteriormente, aboga por la violencia desenfrenada y la brutalidad en la naturaleza. Sus seguidores son conocidos por su crueldad y por llevar a cabo rituales violentos y sacrificios en su nombre. */
= @10010376 /* Ello explicaría a Ivor tratando con escoria como Lehtinan. Puede que vio la oportunidad de poner sus animales a prueba contra los gladiadores del foso. */
= @10010377 /* Examinar la armadura de pieles de Aeger me ha puesto en perspectiva respecto a los hechos sucedidos hace siglos cuando el oso gigante cazaba en las tierras de la Costa de la Espada. */
= @10010378 /* El oso gigante aterrorizó esas tierras, es verdad. Pero estaba en su sangre destructiva. La naturaleza puede ser brutal e implacable. */
= @10010379 /* No apoyo ese comportamiento ya que puede destruir el equilibrio que tanto busca el Padre del Bosque. Pero comprendo que a veces es a través de la violencia que sólo puede lograrse dicho objetivo. */
= @10010380 /* La relación entre Malar y Silvanus en Faerûn es compleja y marcada por el conflicto debido a sus diferencias fundamentales en cuanto a cómo debería ser tratada y vista la naturaleza. */
= @10010381 /* Pero... creo que finalmente he logrado comprender al Dios de la Sangre. La violencia, a veces, es inevitable. */
= @10010408 /* Tabitha... ahora estás a salvo. Espero que tu amo, Ivor, también lo esté. */
IF ~~ DO ~SetGlobal("P_Fall_SP3_2","GLOBAL",3) CreateItem ("LEAT20",1,2,1) EraseJournalEntry (@310014) EraseJournalEntry (@310015) EraseJournalEntry (@310016) EraseJournalEntry (@310017) UseItem("p_malar", Myself) DestroyItem("p_malar")~ SOLVED_JOURNAL @310018 EXIT
END 

END
