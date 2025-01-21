BEGIN P_FallJ

// Quest e interacciones

// Quest 1
IF ~~ THEN BEGIN 1 // from:
  SAY @3000 /* ~Gracias, <CHARNAME>. Puede que encuentres la forma de gastar menos recursos. Aunque primero deberemos... *suspiro* reunir esas 7500 piezas de oro.~ */
IF ~~ THEN DO ~ SetGlobal ("P_FallMission1","GLOBAL",3)~ UNSOLVED_JOURNAL @310002 EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3001 /* ~<CHARNAME>, por favor. Esto va m�s all� de lo material. Me propuse liberar a esos animales. �A�n pretendo hacerlo!~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @3003 /* ~�Y bien? Con tu ayuda ser� m�s f�cil. �Qu� dices?~*/
    IF ~~ THEN REPLY @3004 /* ~De acuerdo, de acuerdo. Reunir� la cantidad necesaria y luego hablar� con Andrew Oliva.~ */  GOTO 1
	IF ~~ THEN REPLY @3005 /* ~No, Fall. No pienso emplear dinero en esto. Es una p�rdida de tiempo.~ */  GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @3006 /* ~�Eres insensible! Nadie... nadie deber�a vivir enjaulado para el entretenimiento de los dem�s.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @3007 /* ~No puedes verlo... Quiz�s alg�n d�a lo hagas... Pero yo no estar� para verlo.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @3008 /* ~Adi�s, <CHARNAME>. Dudo que nuestros caminos vuelvan a cruzarse.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission1","GLOBAL",9) EraseJournalEntry (@310001) LeaveParty() EscapeArea()~ SOLVED_JOURNAL @310004 EXIT
 END
 
IF ~~ THEN BEGIN 7 // from:
  SAY @3013 /* �Andrew! No seas descort�s. Mis nuevos amigos no provocaron nada. */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @3014 /* ~Adem�s, estoy aqu� para presentarte a <CHARNAME>. De �l vendr� la soluci�n al problema que te plante�.~ ~Adem�s, estoy aqu� para presentarte a <CHARNAME>. De ella vendr� la soluci�n al problema que te plante�.~*/
  IF ~~ THEN EXTERN ~P_ANDREW~ 3
END

IF ~~ THEN BEGIN 9 // from:
  SAY @3015 /* ~��Qu�?! E-eres un descarado, Andrew. �Ese no era el trato!~*/
  IF ~~ THEN EXTERN ~P_ANDREW~ 5
END

IF ~~ THEN BEGIN 10 // from:
  SAY @3016 /* ~*carraspeo* Muy bien, Andrew. M�s te vale cumplir con tu parte. No creo que quieras sufrir la ira de Alendir.~*/
  IF ~~ THEN EXTERN ~P_ANDREW~ 14
END

IF ~~ THEN BEGIN 11 // from:
  SAY @3017 /* ~Oh, <CHARNAME>, Alendir es un amigo m�o. Un poderoso elfo selu'taar que ha venido a ayudarme en mi b�squeda.~*/
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @3021 /* ~O puedes guardarla. He o�do que sirve como ingrediente para la creaci�n de poderosos objetos m�gicos.~*/
   IF ~~ THEN REPLY @3022 /* ~Gracias, Fall. Con esto es m�s que suficiente.~ */ GOTO 13
   IF ~~ THEN REPLY @3023 /* ~Esto no cubre los gastos, ni�a. Espero que seas capaz de compensarme de alguna manera.~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from:
  SAY @3024 /* ~Me alegra saberlo, <CHARNAME>. Ahora, continuemos con nuestro viaje.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission1","GLOBAL",4) EraseJournalEntry (@310001) EraseJournalEntry (@310002) EraseJournalEntry (@310003) AddexperienceParty(40000) CreateItem ("MISC44",1,2,1)  GiveItem("MISC44", LastTalkedToBy)~ SOLVED_JOURNAL @310004 EXIT
 END 
 
IF ~~ THEN BEGIN 14 // from:
  SAY @3025 /* ~�Oye! �Acaso mi dulce presencia no es suficiente compensaci�n?~*/
  IF ~~ THEN GOTO 15
END
 
IF ~~ THEN BEGIN 15 // from:
  SAY @3028 /* ~Os lo aseguro. *Levanta su pu�o en se�al de fortaleza*~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission1","GLOBAL",4) EraseJournalEntry (@310001) EraseJournalEntry (@310002) EraseJournalEntry (@310003) AddexperienceParty(40000) CreateItem ("MISC44",1,2,1)  GiveItem("MISC44", LastTalkedToBy)~ SOLVED_JOURNAL @310004 EXIT
 END 

IF ~Global("P_FallLeaves","GLOBAL",1)~ THEN BEGIN 16 // from:
  SAY @3029 /* ~�Se acab�! Esto... esto es inconcebible. �No puedo soportarlo m�s! Espero... �Espero que nuestros caminos no vuelvan a cruzarse!~ */
  IF ~~ THEN DO ~SetGlobal("P_FallLeaves","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
END

// Quest 2 - Alendir

IF ~~ THEN BEGIN 17 // from:
  SAY @3030 /* ~��Qu�?! A-Alendir, �c�mo lo supiste?~*/
    IF ~~ THEN REPLY @3031 /* ~�C�mo es posible, anciano? �Habla!~ */  EXTERN ~P_ALENDI~ 3
	IF ~~ THEN REPLY @3032 /* ~No s� de qu� est� hablando, buen se�or.~ */  EXTERN ~P_ALENDI~ 4
	IF ~~ THEN REPLY @3033 /* ~Es verdad, Alendir. Pero me gustar�a saber c�mo es que lo sabes.~ */  EXTERN ~P_ALENDI~ 5
END

IF ~~ THEN BEGIN 18 // from:
  SAY @3034 /* ~Nunca me enfrent� a un basilisco, <CHARNAME>. Espero... espero estar a la altura de la b�squeda.~ */
IF ~~ THEN DO ~ SetGlobal ("P_FallMission2","GLOBAL",3)~ UNSOLVED_JOURNAL @310006 EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY @3035 /* ~�Q-qu�? No puedo creerlo... �No puedo escucharte!~*/
    IF ~~ THEN REPLY @3036 /* ~�Anciano! Te has excedido. Deber�as disculparte con Fall.~ */  EXTERN ~P_ALENDI~ 24
	IF ~~ THEN REPLY @3037 /* ~Fall, s�lo dame las indicaciones y te dar� su cabeza en una bandeja de plata.~ */  EXTERN ~P_ALENDI~ 24
	IF ~~ THEN REPLY @3038 /* ~Alendir, creo que tus declaraciones son injustas. Aunque claramente has reaccionado. �Por qu�?~ */  EXTERN ~P_ALENDI~ 25
END

IF ~~ THEN BEGIN 20 // from:
  SAY @3039 /* ~Es extra�o... Alendir se ha ido.~*/
  IF ~~ THEN EXTERN ~P_KITOCH~ 3
END

IF ~~ THEN BEGIN 21 // from:
  SAY @3040 /* ~�Kitochi! �Alendir se ha ido? Por favor, dime que sabes d�nde est�.~*/
    IF ~~ THEN REPLY @3041 /* ~Fall, te das cuenta de que est�s hablando con un gato que usa gorro rid�culo, �verdad?~ */  EXTERN ~P_KITOCH~ 4
END

IF ~~ THEN BEGIN 21_1 // from:
  SAY @3042 /* ~�Kitochi!~*/
    IF ~~ THEN REPLY @3043 /* ~As� que conoces a un gato parlante. No s� por qu� no me sorprende...~ */  GOTO 22
    IF ~~ THEN REPLY @3044 /* ~Fall, �te molestar�a compartir c�mo es que este felino apestoso sabe de mi linaje?~ */  GOTO 22
END

IF ~~ THEN BEGIN 22 // from:
  SAY @3045 /* ~<CHARNAME>, Kitochi no es un gato com�n y corriente. Es un gato fe�rico.~*/
    IF ~~ THEN REPLY @3046 /* ~�Un qu�? Sea lo que sea es bastante grosero.~ */  EXTERN ~P_KITOCH~ 5
    IF ~~ THEN REPLY @3047 /* ~Es demasiado feo para ser un gato fe�rico.~ */  EXTERN ~P_KITOCH~ 5
    IF ~~ THEN REPLY @3048 /* ~No sab�a que los gatos fe�ricos apestaran a orina.~ */  EXTERN ~P_KITOCH~ 5
END

IF ~~ THEN BEGIN 23 // from:
  SAY @3049 /* ~�Basta los dos! Por Silvanus, no me hagan enojar.~*/
    IF ~~ THEN REPLY @3050 /* ~Lo lamento, Fall.~ */  EXTERN ~P_KITOCH~ 6
    IF ~~ THEN REPLY @3051 /* ~�l empez�.~ */  EXTERN ~P_KITOCH~ 7
END


IF ~~ THEN BEGIN 24 // from:
  SAY @3052 /* ~*carraspeo* Bien. Ahora a lo nuestro. <CHARNAME>, lamento no haberte hablado antes de Kitochi.~*/
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @3053 /* ~Lo cierto es que Kitochi estuvo todo el tiempo aqu� con Alendir, aunque �ste �ltimo no lo sab�a.~*/
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from:
  SAY @3054 /* ~Por lo que el hecho de que sepa de tu linaje se debe a que escuch� todas nuestras conversaciones.~*/
    IF ~~ THEN REPLY @3055 /* ~Fall, �de verdad esperas que me crea eso? Recordar�a ver a un gato con gorro en este lugar.~ */  EXTERN ~P_KITOCH~ 8
    IF ~~ THEN REPLY @3056 /* ~Entonces, �c�mo explicas que no lo hayamos visto?~ */  EXTERN ~P_KITOCH~ 8
END

IF ~~ THEN BEGIN 27 // from:
  SAY @3057 /* ~Es verdad. Orden� a Kitochi que vigilara a Alendir por si algo extra�o suced�a.~*/
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from:
  SAY @3062 /* ~Oh, vamos, Kitochi. �l no lo ha dicho en serio.~ ~Oh, vamos, Kitochi. Ella no lo ha dicho en serio.~ */
    IF ~~ THEN REPLY @3063 /* ~S�, lo he dicho en serio.~ */  EXTERN ~P_KITOCH~ 10
    IF ~~ THEN REPLY @3064 /* ~De acuerdo, de acuerdo, gato. Perd�n por insultar a tu gorro.~ */  EXTERN ~P_KITOCH~ 12
END

IF ~~ THEN BEGIN 29 // from:
  SAY @3065 /* ~Adi�s, Kitochi... Gracias.~ */
IF ~~ THEN DO ~ SetGlobal ("P_FallMission3","GLOBAL",3) SetGlobal ("P_KitochiLeavesForever","GLOBAL",1)~ UNSOLVED_JOURNAL @310011 EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY @3066 /* ~Adi�s, Kitochi... Espero que nos volvamos a ver.~ */
IF ~~ THEN DO ~ SetGlobal ("P_FallMission3","GLOBAL",3) SetGlobal ("P_Fall_Kitochi_Stay","GLOBAL",1)~ UNSOLVED_JOURNAL @310012 EXIT
END

// KAKUTO

IF ~~ THEN BEGIN 31 // from:
  SAY @3067 /* ~Por Silvanus... esta... criatura parece tapar la entrada por completo. No comprendo.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from:
  SAY @3068 /* ~Tampoco parece dispuesto a atacarnos. Puede... puede que no est� aqu� por voluntad propia.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @3069 /* ~<CHARNAME>, ser� mejor que probemos usar a nuestras convocaciones. Puede que alguno de nuestros amigos del Plano Astral sepa qu� hacer.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from:
  SAY @3070 /* ~De lo contrario... creo que la �nica forma de seguir es... acabando con la criatura. No querr�a tener que llegar a ese punto.~ */
IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",4)~ UNSOLVED_JOURNAL @310013 EXIT
END


// TABITHA1

IF ~See ("BEAST")
Global("P_FallTabitha1st","GLOBAL",0)
Global("SlavingJerk","GLOBAL",0)
Global("P_FallTabitha1st_SC","GLOBAL",1)~ THEN BEGIN 35 // from:
  SAY @3071 /* ~Presiento la vida de varias criaturas aqu�.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallTabitha1st","GLOBAL",1)~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from:
  SAY @3101 /* ~Adi�s, Ivor. Adi�s, Tabitha... Vamos, <CHARNAME>. Ya tenemos la llave para liberar a los gladiadores.~ */
IF ~~ THEN DO ~AddexperienceParty(15000) SetGlobal ("P_FallTabitha1st","GLOBAL",1)~ UNSOLVED_JOURNAL @310014 EXIT
END

IF ~See ("P_BEAST")
Global("P_FallTabitha2nd","GLOBAL",0)
Global("P_FallTabitha1st_SC","GLOBAL",2)~ THEN BEGIN 37 // from:
  SAY @3102 /* ~T� otra vez...~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallTabitha2nd","GLOBAL",1)~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from:
  SAY @3139 /* ~Adi�s... Espero estar a la altura de esta empresa. Vamos, <CHARNAME>. Continuemos.~ */
IF ~~ THEN DO ~AddexperienceParty(5000) SetGlobal ("P_FallTabitha2nd","GLOBAL",1)~ UNSOLVED_JOURNAL @310015 EXIT
END

IF ~See(Player1)
Global("P_Fall_SP3_AEGER","GLOBAL",1)~ THEN BEGIN 39 // from:
  SAY @3140 /* ~�Lo tenemos! <CHARNAME>, me quedar� con ella para poder examinarla. No creo que me tome mucho tiempo. Os la devolver� apenas termine mis pesquisas. Estoy segura de que esto ayudara a llevar a Tabitha al Plano Astral.~ */
  IF ~~ THEN DO ~AddexperienceParty(7500) TakePartyItem ("LEAT20") DestroyItem ("LEAT20") SetGlobal ("P_Fall_SP3_AEGER","GLOBAL",2) SetGlobal("P_Fall_Aeger_Obtained","GLOBAL",1)
~ UNSOLVED_JOURNAL @310017 EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY @3141 /* ~�Tranquilo, Daren! <CHARNAME>, no creo que Daren sea la respuesta. Su actitud parece agresiva con el escarabajo.~ */
IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY @3142 /* ~Sinna, �te encuentras bien? <CHARNAME>, no creo que Sinna pueda (o quiera) comunicarse con la criatura. Debemos encontrar otra soluci�n.~ */
IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY @3143 /* ~�Tabitha, no! *suspiro* Eso estuvo cerca. No, <CHARNAME>. Tabitha s�lo quiere luchar. No creo que sea la respuesta. Mejor optemos por otra soluci�n.~ */
IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY @3144 /* ~�Voragor! Por favor, dime que sabes c�mo comunicarte con este escarabajo.~ */
  IF ~~ THEN EXTERN ~P_VORAG~ 23
END

IF ~~ THEN BEGIN 44 // from:
  SAY @3146 /* ~�Detente, <CHARNAME>! No creo que ese sea el caso.~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from:
  SAY @3147 /* ~Nuestro 'amigo' debe haberle hecho algo.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from:
  SAY @3153 /* ~�Quieres decir... que para seguir debemos matarlo?~*/
    IF ~~ THEN REPLY @3154 /* Ya oyeron, camaradas. �Desenvainad! Debemos acabar con el sufrimiento de esta pat�tica criatura. */  GOTO 47
	IF ~~ THEN REPLY @3155 /* Puede que haya alguna forma de liberarlo de sus ataduras, Fall. */  GOTO 48
END

IF ~~ THEN BEGIN 47 // from:
  SAY @3156 /* ~N-no. No quiero tener que matarlo, <CHARNAME>.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from:
  SAY @3157 /* ~Voragor, �crees que se pueda hacer algo al respecto?~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from:
  SAY @3185 /* ~Adi�s, amigo... Espero que volvamos a vernos.~ */
IF ~~ THEN DO ~SetGlobal("P_Fall_Kakuto_Rescued","GLOBAL",1) AddexperienceParty(30000) CreateItem ("p_fcur1",1,2,1) UseItem ("p_fcur1", Myself) ~ UNSOLVED_JOURNAL @310019 EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY @3193 /* Es buena idea. Recuerda llamar a mis invocaciones e interactuar con ellas, <CHARNAME>. Si est�n cerca del escarabajo, puede que obtengamos una respuesta. */
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY @3194 /* ~Kitochi, para seguir adelante debemos hacer que esta criatura se aleje del umbral.~ */
  IF ~~ THEN EXTERN ~P_KITOCH~ 21
END

IF ~~ THEN BEGIN 52 // from:
  SAY @3195 /* ~�Conoces alguna forma para comunicarte con ella?~ */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from:
  SAY @3153 /* ~�Quieres decir... que para seguir debemos matarlo?~*/
    IF ~~ THEN REPLY @3154 /* Ya oyeron, camaradas. �Desenvainad! Debemos acabar con el sufrimiento de esta pat�tica criatura. */  GOTO 54
	IF ~~ THEN REPLY @3155 /* Puede que haya alguna forma de liberarlo de sus ataduras, Fall. */  GOTO 55
END

IF ~~ THEN BEGIN 54 // from:
  SAY @3156 /* ~N-no. No quiero tener que matarlo, <CHARNAME>.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from:
  SAY @3202 /* ~Kitochi, �crees que se pueda hacer algo al respecto?~ */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from:
  SAY @3185 /* ~Adi�s, amigo... Espero que volvamos a vernos.~ */
IF ~~ THEN DO ~SetGlobal("P_Fall_Kakuto_Rescued","GLOBAL",1) AddexperienceParty(30000) CreateItem ("p_fcur1",1,2,1) UseItem ("p_fcur1", Myself) ~ UNSOLVED_JOURNAL @310019 EXIT
END

IF ~Global("P_FallKakuto_Died","GLOBAL",1)~ THEN BEGIN 57 // from:
  SAY @3216 /* ~No quer�a... no quer�a tener que llegar a esto, <CHARNAME>. Pero lo hecho, hecho est�. Debemos continuar. Alendir debe estar cerca.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallKakuto_Died","GLOBAL",2)~ UNSOLVED_JOURNAL @310020 EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY @3217 /* ~Alendir, �qu� est� pasando? �H�blanos!~ */
  IF ~~ THEN EXTERN ~P_ALENDI~ 34
END

IF ~~ THEN BEGIN 59 // from:
  SAY @3218 /* ~�De qu� est�s hablando, Alendir? Sabes... sabes d�nde est� mi madre, �no es as�? �D�melo! Dime d�nde puedo encontrarla.~ */
  IF ~~ THEN EXTERN ~P_ALENDI~ 35
END

IF ~~ THEN BEGIN 60 // from:
  SAY @3225 /* ~Alendir...~*/
    IF ~~ THEN REPLY @3226 /* �Y ahora qu�, Fall? El lugar se est� llenando de esbirros del tal Icelock. */  GOTO 61
	IF ~~ THEN REPLY @3227 /* �Es hora de luchar! Fall, acabemos con esto. */  GOTO 61
END

IF ~~ THEN BEGIN 61 // from:
  SAY @3228 /* ~No tenemos otra opci�n...~ */
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from:
  SAY @3255 /* ~ Icelock... Por Imnescar: �caer�s!~ */
  IF ~~ THEN DO ~SetGlobal("P_FallM3_AlendirVsIcelock","GLOBAL",2)~ EXIT
END

//////

IF ~~ THEN BEGIN 63 // from:
  SAY @3257 /* ~<CHARNAME> tiene raz�n, Alendir. Ahora debes guardar energ�as. Espera a que te curemos.~ */
  IF ~~ THEN EXTERN ~P_ALENDI~ 52
END

IF ~~ THEN BEGIN 64 // from:
  SAY @3258 /* ~Ya basta, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~P_ALENDI~ 53
END

IF ~~ THEN BEGIN 65 // from:
  SAY @3260 /* ~Alendir... debemos hacer algo con tus heridas. Resiste, por favor. No mueras~ */
  IF ~~ THEN EXTERN ~P_ALENDI~ 54
END

IF ~Global("P_FallMission3","GLOBAL",9)
Global ("P_FallAboutAlendir","GLOBAL",1)~ THEN BEGIN 66 // from:
  SAY @3261 /* ~Alendir... Alendir ha muerto.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutAlendir","GLOBAL",2)~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from:
  SAY @3262 /* ~Esta Rosa de Hielo... es hermosa... No s� por qu� me hace llorar.~ */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from:
  SAY @3263 /* ~Cuando se derrita... s� que significar� que estar� lista para lo que se avecina.~ */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from:
  SAY @3264 /* ~<CHARNAME>... espero contar contigo cuando llegue el momento.~ */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from:
  SAY @3265 /* ~De momento... s�lo puedo decir gracias. Gracias por estar ah� para m�. Eres una de las personas m�s importantes en mi vida. Espero... espero que lo sepas, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutAlendir","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY @3275 /* ~�Acrull! Siempre es un placer verte. Nunca habr�a imaginado que complotabas un plan secreto junto a un felino malhumorado.~ */
  IF ~~ THEN EXTERN ~P_ACRULL~ 3
END

IF ~Global ("P_FallAboutGormsDeath","GLOBAL",1)
AreaCheck("P_FAR4")
Dead("P_GORM")
!See("P_KITOCH")~ THEN BEGIN 72 // from:
  SAY @3278 /* ~Estoy exhausta... <CHARNAME>, s� que no es el mejor de los lugares... pero descansemos y convoquemos a Kitochi. Luego, estimo que podremos irnos de aqu�.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutGormsDeath","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY @3279 /* ~Kitochi, �te encuentras bien?~ */
  IF ~~ THEN DO ~SetGlobal("P_FallAboutGormsDeath_KitAlive","GLOBAL",2)~ EXTERN ~P_KITOCH~ 65
END

IF ~~ THEN BEGIN 74 // from:
  SAY @3280 /* ~As� es, Acrull... Gorm est� muerto. Kitochi ha logrado la venganza sobre Aeris. Hemos ganado.~ */
  IF ~~ THEN EXTERN ~P_ACRULL~ 9
END


// First Mesothel encounter
IF ~~ THEN BEGIN 75 // from:
  SAY @3281 /* ~As� es, Acrull... Gorm est� muerto. Kitochi ha logrado la venganza sobre Aeris. Hemos ganado.~ */
  IF ~~ THEN EXTERN ~P_MESO~ 1
END

IF ~Global("P_Fall_Final_Mission_Init","GLOBAL",1)
~ THEN BEGIN 76 // from:
  SAY @3282 /* �A-Alendir? Por Evereska... Alendir, �eres t�? */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Final_Mission_Init","GLOBAL",2)~ EXTERN ~P_ALENGH~ 1
END

IF ~~ THEN BEGIN 77 // from:
  SAY @3283 /* ~Entiendo, <CHARNAME>. Pero deber�s comprender tambi�n que no puedo postergar m�s esto. T� tienes tu misi�n, yo tengo la m�a. Si no vas a ayudarme, no tengo otra opci�n que emprender este viaje sola. Adi�s. Quiz�s, alg�n d�a nuestros caminos vuelvan a cruzarse.~ */
  IF ~~ THEN DO ~SetGlobal("P_Fall_Final_Mission_Init","GLOBAL",2) EraseJournalEntry (@310034) TakePartyItem ("p_ficero") DestroyItem ("p_ficero") LeaveParty() EscapeArea() ~ SOLVED_JOURNAL @310035 EXTERN ~P_ALENGH~ 12
END

IF ~Global("P_FallAboutRachnidra1","GLOBAL",1)
~ THEN BEGIN 78 // from:
  SAY @3284 /* Ver de nuevo a Alendir se sinti� extra�o... <CHARNAME>, la Rosa de Hielo se ha derretido. Cuando lo consideres correcto, vayamos hacia la rec�mara de Icelock, el g�lem de hielo. El portal hacia Rachnidra deber�a estar abierto. */
  IF ~~ THEN DO ~SetGlobal ("P_FallAboutRachnidra1","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY @3285 /* ~�Hemos llegado? Estamos en Rachnidra. Tengo ese presentimiento... de una oscuridad acechante. Un mal inminente.~ */
  IF ~~ THEN EXTERN ~P_PHILLI~ 1
END

IF ~~ THEN BEGIN 80 // from:
  SAY @3286 /* ~Vidomina, <CHARNAME> es descendiente de Bhaal.~ */
    IF ~~ THEN REPLY @3287 /* �Fall! Por Candelero, �por qu� demonios le cuentas mi secreto a extra�os? */  GOTO 81
	IF ~~ THEN REPLY @3288 /* �Dilo m�s fuerte, Fall! Creo que ese marsupial no te ha escuchado. */  EXTERN ~P_TOBIAS~ 1
END

IF ~~ THEN BEGIN 81 // from:
  SAY @3289 /* ~Ya no tenemos tiempo para misterios, <CHARNAME>. El camino hasta aqu� ha sido largo y extenuante. Mi instinto me dice que Vidomina no es un ser maligno. Creo que no tenemos otra opci�n m�s que confiar en ella.~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 3_1
END

IF ~~ THEN BEGIN 82 // from:
  SAY @3290 /* ~�No har�s tal cosa, <CHARNAME>! No s�lo tenemos la oportunidad de evitar un combate innecesario, sino que tenemos la oportunidad de acercarnos a madre. �No consentir� que hagas estupideces!~ */
    IF ~~ THEN REPLY @3291 /* Ehm... bueno, yo... */  GOTO 83
	IF ~~ THEN REPLY @3292 /* Cielos, Fall. �Por qu� no le cuentas mi secreto ya que estamos? */  EXTERN ~P_VIDOMI~ 2
END

IF ~~ THEN BEGIN 83 // from:
  SAY @3293 /* ~*suspiro* Lo lamento, <CHARNAME>. No pretend�a explotar as�. Es s�lo que creo que Vidomina puede sernos de ayuda. Si puedes hablarle de tu 'secreto', puede que ello nos ayude en nuestra b�squeda.~ */
    IF ~~ THEN REPLY @3294 /* De acuerdo, Fall. Lo har� por ti. Vidomina, soy <CHARNAME>, descendiente de Bhaal, el Dios del Asesinato. */  EXTERN ~P_VIDOMI~ 3
	IF ~~ THEN REPLY @3295 /* No tengo por qu� hablar de mis secretos en algo que no me conscierne, Fall. */  EXTERN ~P_VIDOMI~ 2
END

IF ~~ THEN BEGIN 84 // from:
  SAY @3296 /* ~Cho'Nuja, estamos intentando rescatar a mi madre. Ella ha intentado detener a la Reina Ara�a, y Tisiphone es la �nica que puede ayudarnos a llegar a ella.~ */
  IF ~~ THEN EXTERN ~P_CHO~ 12
END

IF ~Global("P_Fall_KakutoSummoningIA","GLOBAL",3)
~ THEN BEGIN 85 // from:
  SAY @3297 /* �Vidomina! Has estado en lo cierto. Puedo... �puedo llamar a Kakuto! */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_KakutoSummoningIA","GLOBAL",4)~ EXTERN ~P_VIDOMI~ 59
END

IF ~AreaCheck("P_FA16")
Global("P_FallInFinalBattle_PA16","GLOBAL",3)
Global("P_MorgrathAppear_PA16","GLOBAL",0)
~ THEN BEGIN 86 // from:
  SAY @3298 /* �Mam�...? �Madre! */
  IF ~~ THEN DO ~SetGlobal ("P_FallInFinalBattle_PA16","GLOBAL",4) 
  SetGlobal ("P_MorgrathAppear_PA16","GLOBAL",1) SetGlobal ("P_GemBTalk1","GLOBAL",1)~ EXTERN ~P_GEM~ 0
END

IF ~~ THEN BEGIN 87 // from:
  SAY @3299 /* Madre... �Madre! Hemos venido en tu rescate... */
  IF ~~ THEN DO ~SetGlobal ("P_FallInFinalBattle_PA16","GLOBAL",4) 
  SetGlobal ("P_MorgrathAppear_PA16","GLOBAL",1) SetGlobal ("P_GemBTalk1","GLOBAL",1)~ EXIT
END

IF ~AreaCheck("P_2601")
Global("P_FallGemAR2601","GLOBAL",4)~ THEN BEGIN 88 // from:
  SAY @3300 /* <CHARNAME>, Vidomina... gracias por esto. */
  IF ~~ THEN DO ~SetGlobal ("P_FallGemAR2601","GLOBAL",5)~ EXTERN ~P_VIDOMI~ 112
END

IF ~~ THEN BEGIN 89 // from:
  SAY @3301 /* ~�Alendir? �Eres... Alendir? No luces... no luces como el Alendir que recuerdo.~ */
  IF ~~ THEN EXTERN ~P_VIDOMI~ 118 
END

IF ~Global ("P_FallMetBrostFriends","GLOBAL",0)
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 90 // from:
  SAY @3313 /* �Hakamir!, �Acrull! �Qu� hacen aqu�? Cre� que estaban en Brost. �Acaso ha sucedido algo grave? */
  IF ~~ THEN DO ~SetGlobal ("P_FallMetBrostFriends","GLOBAL",1)~ EXTERN ~P_HAKAM~ 7
END



I_C_T P_FALLJ 71 P_FallJ_Kitoch_Q_Acrull1
== P_ACRULL IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3276 /* Eso es algo que deber�s hablar con �l, querida Fall. Por ahora, s�lo puedo darte las indicaciones sobre lo que habremos de hacer ahora. */ 
END

I_C_T P_KITOCH 49 P_FallJ_Kitoch_Char_Banth3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3272 /* Bueno, no hace falta que me eches, ya s� que no me quieres en estas conversaciones con <CHARNAME>. */
== P_KITOCH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3273 /* No, Fall. De hecho, qu�date. T� debes participar en esto tambi�n. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3274 /* �Ah, s�? Dime, Kitochi, �por qu� es eso? */
END

I_C_T P_KITOCH 35 P_FallJ_Kitoch_Char_Banth2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3269 /* Ah, es verdad, �no lo crees? Muy bien, �de qu� vamos a hablar? */
== P_KITOCH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3270 /* Bocona, esto es entre <CHARNAME> y yo. �Podr�as dejarnos un poco de espacio? Gracias. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3271 /* Hmpf. Bueno. Disfruten su charla sin m�. Estoy segura de que alguien querr� escuchar de mis aventuras en Tethyr. */
END

I_C_T P_KITOCH 23 P_FallJ_Kitoch_Char_Banth1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3266 /* Yo siempre estoy dispuesta a hablar si <CHARNAME> no quiere, �sabes? */
== P_KITOCH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3267 /* Bocona, ya te he escuchado hablar durante semanas cuando estuvimos en la Villa de las Setas. Ya has ocupado unas 6 de mis vidas con tus an�cdotas. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3268 /* Gato exagerado. De acuerdo, os dejar� a ti y a <CHARNAME> para que hablen. */
END



I_C_T P_FALLJ 61 P_FallJ_QUEST3_ALEN_61_2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3229 /* Saldremos de esta combatiendo, <CHARNAME>. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3230 /* ~�S�! �Minsc apoya furiosamente esa moci�n! G�lem, sentir�s la calurosa ira del roedor. �Vamos, Boo!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3231 /* ~Estoy de acuerdo, Fall. Por nuestros amigos, lucharemos.~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3232 /* ~Tu b�squeda nos ha llevado al templo imp�o de Cryonax, peque�a Fall. No hay duda: Torm nos ha guiado para acabar con su maldad. Mi espada es tuya.~ */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3233 /* ~Reconozco una trampa cuando la veo y hemos ca�do en una, <CHARNAME>. Sin embargo, a�n no existe una trampa lo suficientemente buena como para capturar a Yoshimo. �Saldremos de esta a base de acero!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3234 /* ~Me he enfrentado al fr�o mal, ausente del calor de la sangre en las venas. Por Arvoreen, hoy no ser� nuestra sangre la que ser� derramada.~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3235 /* ~Por Helm, no caer� hoy en estas fr�as tierras subterr�neas. �Por la Orden: es hora de combatir!~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3236 /* ~Debemos salvar a Athkatla de esta fr�a abominaci�n, <CHARNAME>. �Cueste lo que cueste!~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3237 /* ~El fr�o de estas criaturas es una abominaci�n y una afrenta al equilibrio. Ni siquiera la civilizaci�n merece este castigo. �Lucharemos hasta el final!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3238 /* ~El invierno es parte del ciclo natural de este mundo. La sugerencia de un eterno glacial va en contra de todos los designios de la naturaleza. El invierno es temporal y habremos de demostr�rtelo, Icelock.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3239 /* ~El mago no era de mis personas favoritas, pero ciertamente ha intentado parar esta locura. Har� lo posible por salvarlo, Fall.~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3240 /* ~Lo �nico eterno es la oscuridad de Shar, dobluth. Tu necedad llega hasta aqu�. ~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3241 /* El tal 'Maestro de la Escarcha' result� ser un farsante. Sin embargo, puede que si derrotamos a ese g�lem de hielo podamos extraer algo �til de �l. �Al fin sentir�n c�mo el fuego de mis hechizos derrite su g�lido ser! */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3242 /* ~Nunca me hab�a enfrentado a un jodido g�lem de hielo, <CHARNAME>. As� que d�jamelo a m� y a mi hacha. Ver�s como lo cerceno hasta formar peque�os cubos de hielo.~*/
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3243 /* Bueno, parece que no tendremos otra opci�n m�s que salir a dientazos de aqu�, �no? Esto me recuerda a la vez en que- */
== P_FallJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3244 /* No es el mejor momento para eso, Jan. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3245 /* Hmpf, de acuerdo, de acuerdo, Fallcita. Deja que cargue mi ballesta y me lleve a un par de salamandras, �s�? */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3246 /* Reconozco a una criatura de otro plano cuando la veo. Y este gigant�n helado es una de ellas. Cryonax es el nombre de su se�or y si llega a este plano, la gente de Faer�n estar� en graves problemas. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @3247 /* Cielos, no me gusta el fr�o. Ya no quiero estar aqu� as� que si hay que luchar, ser� mejor hacerlo r�pido, �no lo creen? */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @3248 /* Un g�lem de hielo... rival interesante. D�jamelo a m�, <CHARNAME>. Ser� una buena ofrenda para mi espada. */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @3249 /* El sol brilla m�s all� de los oscuros y fr�os rincones de tu templo, criatura. Mientras eso pase, tu victoria ser� imposible. */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @3250 /* Es un buen momento para lanzar mis hechizos de fuego. Al menos eso espero que suceda. */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @3251 /* No existe el candor en mi cuerpo, pero a�n as� no comparto los deseos de esta g�lida criatura. Ser�s destruido en las sombras de este paraje. */
== P_DUSKJ IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0) InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4004 /* �Es el momento de luchar, camaradas! Luchad por lo que m�s quer�is. �Yo luchar� en el nombre de Cormyr! */
== P_DUSKJ IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1) InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4005 /* Una criatura de los planos del Fr�o... No merece existir en nuestro Plano, <CHARNAME>. �D�jame que lo corte en cubitos de hielo con mi espada! */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3252 /* ~(Bufido, lamento).~ */
== P_FallJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3253 /* No estoy muy segura de lo que dices, Wilson. Pero se nota que no disfrutas del fr�o de este lugar. Vamos, es hora de combatir, mi buen oso. */
== P_ICELOC IF ~~ THEN @3254 /* Soy el guardi�n de Cryonax, el Pr�ncipe del Cruel Glacial. Icelock har� de ustedes una buena ofrenda a mi se�or. */ DO ~Enemy ()~
END


I_C_T P_FALLJ 59 P_FallJ_QUEST3_ALEN_59_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3219 /* Por favor... */
== P_ALENDI IF ~~ THEN @3220 /* ~Gemystara no se encuentra en este plano. Ella... ella est� m�s all� de nuestro alcance.~ */
== P_ICELOC IF ~~ THEN @3221 /* ~Comprendo. Eres la hija de la selu'taar. �Por qu� quieres entregar este plano a la Oscura?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3222 /* No conozco a ninguna Oscura, g�lem. S�lo quiero a mi madre de vuelta. �He recorrido un largo camino para llegar hasta aqu�! */
== P_ICELOC IF ~~ THEN @3223 /* ~Mortales. Necios. Selu'taar Alendir, si en verdad te llamas Maestro de la Escarcha, me ayudar�s a destrozar a estos intrusos.~ */
== P_ICELOC IF ~~ THEN @3224 /* ~Su carne ser� la ofrenda necesaria para evitar la invasi�n de la Oscura a este plano.~ */
END

I_C_T P_FALLJ 55 P_FallJ_QUEST3_KIT_KAK2
== P_KITOCH IF ~~ THEN @3203 /* ~Por supuesto. Debes llevarlo al Plano Astral, tal cual hiciste conmigo.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3204 /* No comprendo... no tengo ning�n apego a esta criatura. No comprendo c�mo podr�a lograrlo. */
== P_KITOCH IF ~~ THEN @3205 /* ~Lo s�. A m� me conoces de a�os y entiendo que tengamos un v�nculo que permiti� llevarme al Plano Astral.~ */
== P_KITOCH IF ~~ THEN @3206 /* ~Pero hay una forma de lograrlo con este hechizo que fue lanzado por el elfo amargado.~ */
== P_KITOCH IF ~~ THEN @3207 /* ~El sortilegio puede quebrarse si alguien amado por el hechicero realiza un importante sacrificio.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3167 /* Por alguien... �amado? Me pregunto: �qu� tipo de sacrificio? */
== P_KITOCH IF ~~ THEN @3209 /* ~Fuerza, destreza y vitalidad, bocona.~ */
== P_KITOCH IF ~~ THEN @3210 /* ~Un sacrificio de tal calibre romper� las cadenas de Kakuto y �ste ser� libre.~ */
== P_KITOCH IF ~~ THEN @3211 /* ~Y no tienes que dec�rmelo: S� que un escarabajo rinoceronte del tama�o de una casa se ver�a extra�o en las calles amnianas.~ */
== P_KITOCH IF ~~ THEN @3212 /* ~Pero realizar dicho sacrificio te har� forjar un lazo de sangre con �l.~ */
== P_KITOCH IF ~~ THEN @3213 /* ~De manera inmediata podr�s llevarlo al Plano Astral. Incluso puede que, despu�s de un tiempo considerable, puedas traerlo de nuevo como una convocaci�n.~ */
== P_KITOCH IF ~~ THEN @3214 /* ~Ver�s, le caes bien al gigant�n, bocona. Tu determinaci�n en no querer matarlo puede que haya tenido algo que ver.~ */
== P_KITOCH IF ~~ THEN @3215 /* ~Entonces, �est�s dispuesta a hacerlo? Debes tener una fe ac�rrima en tu propio poder. �Crees que puedas lograrlo?~ */

== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3175 /* Mi madre... mi madre me ha ense�ado bien el arte de la convocaci�n. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3176 /* Soy la Dama de las Bestias y conf�o en mi poder. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3177 /* �Kakuto! Sacrificar� parte de mi fuerza, parte de mi destreza y parte de mi vitalidad para salvarte. */
== P_KAKUTO IF ~~ THEN @3178 /* *El escarabajo parece comprender las palabras de Fall. Al cabo de unos segundos, agacha su cabeza, obediente y sumiso, hacia la semielfa.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3179 /* *Con delicadeza, Fall se acerca a Kakuto.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3180 /* *Posa su mano en �l y le acaricia* No tengas miedo, buen Kakuto. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3181 /* En el Plano Astral estar�s a salvo. All� viven mis amigos animales y podr�s estar con ellos. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3182 /* Nunca m�s estar�s solo. */
== P_KAKUTO IF ~~ THEN @3183 /* *Los ojos se Kakuto brillan al escuchar la voz de Fall.* */
== P_KAKUTO IF ~~ THEN @3184 /* *Segundos m�s tarde, una luz dorada lo cubre para finalmente desaparecer.* */ DO ~ForceSpell (Myself, POOF_GONE)~
END


 I_C_T P_FALLJ 52 P_FallJ_QUEST3_KIT_KAK1
== P_KITOCH IF ~~ THEN @3196 /* ~De hecho, s�. Su nombre es Kakuto. �l no est� seguro de c�mo es que fue arrastrado de su cueva del Valle del Viento Helado.~ */
== P_KITOCH IF ~~ THEN @3197 /* ~Pero sin lugar a dudas, el elfo amargado estuvo relacionado a dicho suceso.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3198 /* Alendir... */
== P_KAKUTO IF ~~ THEN @3199 /* *Al escuchar la palabra 'Alendir', el escarabajo parece retorcerse de ira.* */
== P_KITOCH IF ~~ THEN @3200 /* ~�Sabes c�mo romper tus cadenas, Kakuto?~ */
== P_KAKUTO IF ~~ THEN @3150 /* *La criatura emite un sutil chirrido y la caverna parece inundarse de un profundo lamento.* */
== P_KITOCH IF ~~ THEN @3201 /* ~Ya veo. Kakuto no puede abandonar su puesto a menos que muera.~ */
END


I_C_T P_FALLJ 48 P_FallJ_QUEST3_VOR_KAK3
== P_VORAG IF ~~ THEN @3158 /* ~Mis conocimientos no son tan vastos, ni�a. Sin embargo, puede que Kakuto sepa algo.~ */
== P_VORAG IF ~~ THEN @3159 /* ~Kakuto, �tienes idea de c�mo podemos romper tus cadenas invisibles?~ */
== P_KAKUTO IF ~~ THEN @3160 /* *Kakuto parece quedarse inm�vil durantes unos segundos.* */
== P_KAKUTO IF ~~ THEN @3161 /* *Sus ojos parecen posarse en Fall y emite una especie de chirrido lamentoso.* */
== P_VORAG IF ~~ THEN @3162 /* ~Ya veo...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3163 /* Voragor, �qu� fue lo que dijo? */
== P_VORAG IF ~~ THEN @3164 /* ~*siseo* S�lo la muerte puede liberarlo.~ */
== P_VORAG IF ~~ THEN @3165 /* ~Aunque hay una forma en la que podr�amos liberarlo de tales cadenas.~ */
== P_VORAG IF ~~ THEN @3166 /* ~Un sacrificio de alguien amado por el creador del sortilegio.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3167 /* Por alguien... �amado? Me pregunto: �qu� tipo de sacrificio? */
== P_VORAG IF ~~ THEN @3168 /* ~Fuerza, destreza y vitalidad, ni�a.~ */
== P_VORAG IF ~~ THEN @3169 /* ~Si est�s dispuesta a sacrificar algo tan importante, entonces Kakuto podr�a ser libre.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3170 /* Pero... �qu� har� una vez que est� libre? */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3171 /* No creo que sea bien recibido en las calles de Athkatla. �Le dar�n caza! */
== P_VORAG IF ~~ THEN @3172 /* ~Entonces, como a m�, env�alo al Plano Astral. ~ */

== P_VORAG IF ~~ THEN @3173 /* ~Si vas a sacrificar algo de tu energ�a vital para acabar con el hechizo, entonces estar�s atada a Kakuto y podr�s enviarlo al Plano Astral. ~ */
== P_VORAG IF ~~ THEN @3174 /* ~�Conf�as en tu poder, Fall? ~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3175 /* Mi madre... mi madre me ha ense�ado bien el arte de la convocaci�n. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3176 /* Soy la Dama de las Bestias y conf�o en mi poder. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3177 /* �Kakuto! Sacrificar� parte de mi fuerza, parte de mi destreza y parte de mi vitalidad para salvarte. */
== P_KAKUTO IF ~~ THEN @3178 /* *El escarabajo parece comprender las palabras de Fall. Al cabo de unos segundos, agacha su cabeza, obediente y sumiso, hacia la semielfa.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3179 /* *Con delicadeza, Fall se acerca a Kakuto.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3180 /* *Posa su mano en �l y le acaricia* No tengas miedo, buen Kakuto. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3181 /* En el Plano Astral estar�s a salvo. All� viven mis amigos animales y podr�s estar con ellos. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3182 /* Nunca m�s estar�s solo. */
== P_KAKUTO IF ~~ THEN @3183 /* *Los ojos se Kakuto brillan al escuchar la voz de Fall.* */
== P_KAKUTO IF ~~ THEN @3184 /* *Segundos m�s tarde, una luz dorada lo cubre para finalmente desaparecer.* */ DO ~ForceSpell (Myself, POOF_GONE)~
END

I_C_T P_FALLJ 45 P_FallJ_QUEST3_VOR_KAK2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3148 /* Voragor, �puedes averiguar qu� es lo que �l le hizo? */
== P_VORAG IF ~~ THEN @3149 /* ~�Qu� te ha hecho ese tal Alendir, Kakuto?~ */
== P_KAKUTO IF ~~ THEN @3150 /* *La criatura emite un sutil chirrido y la caverna parece inundarse de un profundo lamento.* */
== P_VORAG IF ~~ THEN @3151 /* ~Ya veo. Al parecer, el elfo le convoc� y lanz� un poderoso hechizo de atadura.~ */
== P_VORAG IF ~~ THEN @3152 /* ~Kakuto no puede abandonar su puesto a menos que muera.~ */
END

I_C_T P_FALLJ 43 P_FallJ_QUEST3_VOR_KAK1
== P_VORAG IF ~~ THEN @3145 /* ~Por supuesto que puedo, Fall. De hecho, una de las primeras cosas que me dijo fue su nombre.~ */
END

I_C_T P_FALLJ 37 P_FallJ_QUEST3_2
== P_BEAST IF ~~ THEN @3103 /* ~Ah, hija de Gerwulf, veo que a�n me recuerdas. Soy-~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3104 /* Ivor, s�, lo recuerdo. �Qu� ha pasado con el resto de tus animales? */
== P_BEAST IF ~~ THEN @3105 /* ~Logr� llevarlos a los bosques australes. Tuve que 'convencer' a un par de soldados amnianos para que nos dejasen salir por las puertas de la ciudad.~ */
== P_BEAST IF ~~ THEN @3106 /* ~Pero eso no importa. He venido en tu b�squeda, Fall.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3107 /* �Por qu�?, �qu� es lo que buscas? No creo estar particularmente en buenos t�rminos con un seguidor de Malar que, debo a�adir, es un esclavista. */
== P_BEAST IF ~~ THEN @3108 /* ~Hmpf. Cre� que ya hab�amos dejado atr�s ese asunto.~ */
== P_BEAST IF ~~ THEN @3109 /* ~Adem�s, Lehtinan est� muerto, lo s�. Puede que no me hayas visto, pero Tabitha y yo hemos aniquilado a varios de sus matones cuando abandonamos el recinto esclavista.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3110 /* �Y qu�?, �buscas una recompensa por ello? */
== P_BEAST IF ~~ THEN @3111 /* ~No, busco poner a salvo a Tabitha y s�lo t� puedes hacerlo.~ */
== P_TABIT IF ~~ THEN @3112 /* *Los penetrantes ojos del felino se clavan en los de Fall.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3113 /* �P-por qu�? Es tu compa�era animal. No veo c�mo pueda separarse de ti. */
== P_BEAST IF ~~ THEN @3114 /* ~Eso... es verdad. Pero debo hacerlo. Cuando hice el trato con Lehtinan no sab�a en qu� me estaba metiendo.~ */
== P_BEAST IF ~~ THEN @3115 /* ~Puede que le hayas matado, pero el mundo de la esclavitud es vasto y hay es muy abundante aqu� en Athkatla.~ */
== P_BEAST IF ~~ THEN @3116 /* ~S� que los bastardos han puesto un precio a mi cabeza. Si yo caigo, lo m�s probable es que Tabitha tambi�n... Y no quiero que eso pase.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3117 /* �Y por qu� crees que yo puedo resolver ese inconveniente, Ivor? */
== P_BEAST IF ~~ THEN @3118 /* ~S� que tu madre, la selu'taar de Evereska de la que tanto hablaba tu padre, es capaz de forjar un lazo entre este plano y el Astral.~ */
== P_BEAST IF ~~ THEN @3119 /* ~Si hablas con ella, puede que puedas llevar a Tabitha all� y as� salvarla de un destino funesto por mi culpa.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3120 /* Ya... ya veo. Lamento decir que mi madre ha desaparecido. Llevo varios d�as busc�ndola... a�n no tengo respuestas de su paradero. */
== P_BEAST IF ~~ THEN @3121 /* ~Eso es... lamentable en verdad. Yo... cre� que podr�as ayudarme con esto.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3122 /* Y creo poder, Ivor. Mi madre me ha ense�ado a llevar a cabo un ritual para lograr la conexi�n que t� mencionas. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3123 /* Puedo hacerlo. Puedo salvar a Tabitha. */
== P_BEAST IF ~~ THEN @3124 /* ~�Lo... har�s? Por los colmillos de Malar... estoy profundamente agradecido... y Tabitha tambi�n.~ */
== P_TABIT IF ~~ THEN @3125 /* *La mirada de Tabitha se desv�a hacia Ivor mientras lentamente cierra sus ojos ante sus caricias.* */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3126 /* Sin embargo, necesito algo que me pueda conectar a ella. �Tienes alguna pertenencia que sea parte de ella? */
== P_BEAST IF ~~ THEN @3127 /* ~Lo s�, lo s�. Sab�a que habr�as de pedirme algo as�, Fall. Tengo esta estatuilla tallada por m�. La misma est� un poco... salpicada con sangre de ambos.~ */ DO ~CreateItem ("P_MALAR",1,2,1)~
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3128 /* Ehm, s�. Esto ser� suficiente. */
== P_BEAST IF ~~ THEN @3129 /* ~S� c�mo funciona esto, Fall. S� que es muy probable que no vuelva a ver a mi amiga. Pero es algo con lo que puedo vivir.~ */ DO ~GiveItem("P_MALAR", "P_Fall")~
== P_BEAST IF ~~ THEN @3130 /* ~Vivir�s por siempre, Tabitha. Cazar�s eternamente en los planos del m�s all�. Procura siempre atrapar a tu presa. Haz honor a Malar.~ */ 
== P_TABIT IF ~~ THEN @3131 /* *Los ojos del felino gigante se clavan en los de Ivor y luego dirige su mirada a Fall.* */
== P_BEAST IF ~~ THEN @3132 /* ~Cuando logres la conexi�n, Tabitha desaparecer� de este plano... eso quiere decir que ser�s capaz de llamarla a tu lado, �no es as�?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3133 /* As� es, Ivor. Tendr� la habilidad de llamarla cuando quiera... incluso podr� seguir mis �rdenes. �A�n est�s seguro de que quieres hacerlo? */
== P_BEAST IF ~~ THEN @3134 /* ~�Ja! Claro que s�, ni�a. Adem�s, a Tabitha le agradas. Si logras llevar a cabo tu misi�n, estoy m�s que seguro de que nuestra amiga estar� m�s que dispuesta de luchar a tu lado.~ */
== P_BEAST IF ~~ THEN @3135 /* ~Procura... s�lo procura ser buena con ella, �s�?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3136 /* Lo har�, Ivor. Lo prometo. */
== P_BEAST IF ~~ THEN @3137 /* ~Eres digna hija de tu padre. Adi�s, Fall. Vamos, Tabitha, disfrutemos nuestros �ltimos momentos juntos. �Puede que incluso podamos degollar alg�n que otro esclavista!~ */ DO ~EscapeArea()~
== P_TABIT IF ~~ THEN @3138 /* *Las garras de Tabitha se alistan ante las palabras de Ivor.* */ DO ~EscapeArea()~
END


I_C_T P_FALLJ 35 P_FallJ_TABIT_B1
== BEAST IF ~~ THEN @3072 /* ~�Eh? No os reconozco. �Qui�n sois?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3073 /* Estas jaulas... albergan animales. �Por qu�? */
== BEAST IF ~~ THEN @3074 /* ~Ah, una elfa. Estos son mis animales y luchan en el foso. Lo hacen bastante bien...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3075 /* �Es inconcebible! �C�mo es posible que un elfo permita esto? Como exploradora de Imnescar- */
== BEAST IF ~~ THEN @3076 /* ~�Imnescar? Ya veo. Elfa, �conoces a Gerwulf? Era un soldado de Crimmor.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3077 /* �C-c�mo sabes su nombre? Eres un esclavista. No veo c�mo es que conoces a mi padre. */
== BEAST IF ~~ THEN @3078 /* ~�Eres la hija de Gerwulf? Por Malar... entonces eres una semielfa.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3079 /* �Malar? Ahora comprendo. Sus seguidores son crueles. Esto explica por qu� haces lo que haces. */
//Dusk @40XX No estoy tan seguro de eso, Fall. En Cormyr tienen una zona dedicada para que sus adoradores le puedan rendir pleites�a.
//Sandro @50XX Ciertamente son muy permisivos en Cormyr.
== BEAST IF ~~ THEN @3080 /* ~�Ni�a! �Qui�n eres t� para juzgarme? �Osas insultarme, no s�lo a m� sino a mi Dios!~ */
== BEAST IF ~~ THEN @3081 /* ~Aunque... tu padre nunca estuvo muy en de acuerdo con el Dogma del Dios de la Sangre.~ */
== BEAST IF ~~ THEN @3082 /* ~Tienes ese fuego, tambi�n caracter�stico en �l.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3083 /* �C�mo... c�mo es que le conoces? Mi padre nunca entablar�a una relaci�n con esclavistas. */
== BEAST IF ~~ THEN @3084 /* ~�Ya basta! Tu padre y yo �ramos amigos. A�n con nuestras diferencias.~ */
== BEAST IF ~~ THEN @3085 /* ~Su muerte fue una gran p�rdida para los bosques australes. Gerwulf, Aeris, Melodia... muchos grandes exploradores cayeron el d�a en que las ara�as atacaron.~ */
== BEAST IF ~~ THEN @3086 /* ~�No soy un esclavista! Soy el Se�or de las Bestias de este foso.~ */
== BEAST IF ~~ THEN @3087 /* ~Mi confianza en mis animales es suprema. No me importa que tengan que matar gladiadores.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3088 /* Pues deber�a importarte. Los gladiadores son esclavos que no tienen opci�n. �Y hemos venido a liberarles! */
== BEAST IF ~~ THEN @3089 /* ~Ya veo... Has venido a buscar mi llave para abrir las celdas.~ */
== BEAST IF ~~ THEN @3090 /* ~�Qu� te hace pensar que puedes derrotar a Lehtinan?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3091 /* Cuento con la alianza de <CHARNAME> y la fuerza de Silvanus. Mis lobos Daren y Sinna luchar�n por m�. */
== BEAST IF ~~ THEN @3092 /* ~Eres hija de tu padre... De acuerdo, ni�a.~ */
== BEAST IF ~~ THEN @3093 /* ~No le debo lealtad a Lehtinan. Por m�, puedes matarlo. Te dar� mi llave y me llevar� a mis animales conmigo.~ */ DO ~GiveItem("MISC4Z", "P_Fall")~
== BEAST IF ~~ THEN @3094 /* ~�C�mo es tu nombre, hija de Gerwulf?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3095 /* Mi nombre es Fall. */
== BEAST IF ~~ THEN @3096 /* ~Fall... toma este arco. Espero que te ayude en tu empresa.~ */ DO ~GiveItem("BOW14", "P_Fall")~
== BEAST IF ~~ THEN @3097 /* ~�Ja! Nunca cre� que hallar�a a la hija del humano de Crimmor aqu�. Cuando Lehtinan est� muerto te buscar�, Fall.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3098 /* De-de acuerdo. Espera, �cu�l es tu nombre? */
== BEAST IF ~~ THEN @3099 /* ~Soy Ivor. Y esta es mi amiga, Tabitha.~ */
== BEAST IF ~~ THEN @3100 /* ~Hasta pronto, Fall. Tabitha y yo te deseamos suerte en tu cacer�a. �Que Malar te d� las fuerzas para alcanzar a tu presa!~ */
END

I_C_T P_FALLJ 27 P_FallJ_QUEST3_1
== P_KITOCH IF ~~ THEN @3058 /* ~Y algo extra�o sucedi�. Hiciste bien en encomendarme esta tarea.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3059 /* �Ja!�Has visto, <CHARNAME>? Soy muy lista. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3060 /* *tose* Bueno, buen Kitochi. Cu�ntanos. */
== P_KITOCH IF ~~ THEN @3061 /* ~No hasta que el tal <CHARNAME> se disculpe por haber dicho que mi gorro es rid�culo.~ */
END

I_C_T P_FALLJ 14 P_FallJ_QUEST14_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3026 /* *tose* Bueno, digamos que pondr� mi ballesta a tu disposici�n, <CHARNAME>. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3027 /* Con el tiempo, ver�s que mi ayuda ser� �til en tus b�squedas. */
END

I_C_T P_FALLJ 11 P_FallJ_QUEST11_1c
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3018 /* Cuando llegue el momento indicado, habr�s de conocerlo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3019 /* Por ahora, gracias por ayudarme con los animales del circo, buen <CHARNAME>. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3020 /* Lo prometido es deuda: aqu� tienes la gema. Puedes venderla, recuperar�s algo del oro que empleamos aqu�. */
END

I_C_T P_FALLJ 2 P_FallJ_QUEST1_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3009 /* Nadie merece estar encerrado para el entretenimiento de los dem�s... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3010 /* Creo que Fall tiene raz�n, <CHARNAME>. Debemos honrar a la madre tierra y devolver estas bestias a la naturaleza. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3011 /* �La ballestera tiene raz�n! Es nuestro deber hacer el bien y esta misi�n lo requiere. �Bub� piensa como yo!*/
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4000 /* Admito que nunca me ha gustado ver esas jaulas. Estoy con Fall en esto. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4001 /* El dinero va y viene, <CHARNAME>. Entiendo que lo necesitamos, pero siempre podemos encontrar la forma de ganar m�s. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3012/* ~No me gusta la idea de emplear tanto dinero, <CHARNAME>. Estoy seguro de que lo necesitaremos en alg�n momento. Hablamos de una cantidad considerable.~ */
END

I_C_T P_DUSKJ 295 P_FallJ_EVIL_DUSK_291_01
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3316 /* �D-dusk? No... �Qu� has hecho? */
END

// Hacer variable en donde Dusk Neutral/Good no est� en la party
/*I_C_T TREVIL02 5 P_FallJ_KHELONQ_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3311 /* No... �<CHARNAME>! �C�mo has podido? En honor... en honor a mis principios, debo derrotarte por lo que has hecho. �Pagar�s por lo que has hecho! */ DO ~SetGlobal("P_FallEnemy","GLOBAL",1) LeaveParty() Enemy () ~
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0)~ THEN @3312 /* ��Qu� has hecho?! Nunca en mi vida hab�a estado tan equivocado en una persona. �Mereces morir por lo que has hecho! */ DO ~SetGlobal ("P_DuskEnemy","GLOBAL",1) LeaveParty() Enemy ()~
END */


// Sand INTJ
/*
I_C_T P_FALLJ 2 P_FallJ_QUESTSand1_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3009 /* Nadie merece estar encerrado para el entretenimiento de los dem�s... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3010 /* Creo que Fall tiene raz�n, <CHARNAME>. Debemos honrar a la madre tierra y devolver estas bestias a la naturaleza. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3011 /* �La ballestera tiene raz�n! Es nuestro deber hacer el bien y esta misi�n lo requiere. �Bub� piensa como yo!*/
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @4000 /* Admito que nunca me ha gustado ver esas jaulas. Estoy con Fall en esto. */
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @4001 /* El dinero va y viene, <CHARNAME>. Entiendo que lo necesitamos, pero siempre podemos encontrar la forma de ganar m�s. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3012/* ~No me gusta la idea de emplear tanto dinero, <CHARNAME>. Estoy seguro de que lo necesitaremos en alg�n momento. Hablamos de una cantidad considerable.~ */
== P_SandJ IF ~InParty("P_SandJ") InMyArea("P_SandJ") !StateCheck("P_SandJ",CD_STATE_NOTVALID)~ THEN @5000 /* Una movida ilegal podr�a atraer atenci�n indeseada, <CHARNAME>. Sin embargo, no creo que algo de este calibre deba preocuparnos. Haz lo que debas. */
END
*/





/////////////////////////////////////////

// Gitana
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Fall",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
@55 /* Tu amor por tu familia es incondicional, mi joven semielfa. Pero cuidado, una misteriosa sombra, amenazante y tenebrosa, os rodea a todos. Tu amor puede ser tu perdici�n y est� en ti decidir si arriesgar tu alma por ello. */
== P_FallJ @56 /* Si hay algo por lo que vale la pena morir, mi dama, es por amor. Aceptar� mi destino, sea cual sea. */ 
EXIT

// Celvan el Loco
CHAIN IF WEIGHT #-1 
~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallReactionCelvan","AR0300",0)~ THEN CELVAN c1
@0 /* Hubo una vez una ballestera aplicada.
Su padre cay� en la frontera de su hogar
cuando un monstruo de ocho patas atac� sin cesar.
Ella su legado tom� y sus virotes letales
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
== P_FallJ @1 /* �C-c�mo... c�mo sabes eso? �Gnomo! Habla... */
END CELVAN 1

// Belmin
CHAIN IF WEIGHT #-1 
~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
RandomNum(4,1)
Global("P_FallBelmin","AR0700",0)~ THEN BELMIN belmin1
@3317 /* �T�! Te he visto rondando por aqu�. No eres bienvenida a nuestra civilizaci�n, demonio. �Fuera! �Fuera de aqu�! */
DO ~SetGlobal("P_FallBelmin","AR0700",1)~
== P_FallJ @3318 /* *suspiro* Otra vez este tipejo. V�monos, <CHARNAME>, simplemente ignor�mosle. */
EXIT


// Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Fall",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_FallReactionMadam1
@2 /* Saludos, mi se�ora. Soy la Madame Nin, y estoy aqu� para asegurar que su compa��a sea placentera. �Est�s interesada? */
== P_FallJ @3 /* �Compa��a? �De qu� habla, se�ora? M-mejor, al�jese de m�. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Fall",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_FallReactionMadam2
@4 /* Entonces... �deseas compa��a para esta noche? */
== P_FallJ @5 /* �Ya le dije que no! */
EXIT





// Di�logo por el �rbol de la Vida
EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) Global("P_FallTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
@6 /* Fall, la Dama de las Bestias. Su viaje ha significado un crecimiento en su persona y yace lista a tu lado. */
DO ~SetGlobal("P_FallTreeOfLife","GLOBAL",1)~
END
++ @7 /* Fall, esta no es tu pelea. Puedes quedarte aqu� si as� lo deseas. */ EXTERN P_FallJ pl2.1
++ @8 /* Hemos pasado por mucho, Fall. Puedes volver a los bosques si as� lo deseas. */ EXTERN P_FallJ pl2.1
++ @9 /* �Est�s lista para seguirme? Te necesito a mi lado para vencer. */ EXTERN P_FallJ pl2.1

CHAIN P_FallJ pl2.1
@10 /* Nunca cre� ver las cosas que vi durante nuestro viaje juntos, <CHARNAME>. Es el momento de recuperar tu alma. �A por Irenicus! */
END
COPY_TRANS PLAYER1 33 


// GAELAN BAYLE
//I_C_T GAELAN 12 P_DuskGAELAN1
//== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11 /* Debemos ser cuidadosos. Estos son los Barrios Bajos, por lo que confiar en un extra�o es algo potencialmente peligroso. A�n as�, conf�o en mi fuerza. Si este pelmazo intenta algo raro, mi bast�n le har� ver las estrellas. */
//END

// Kalah muere (se descubre que no era un ogro mago, sino un gnomo ilusionista)
I_C_T KALAH2 4 P_FallJ_KALAH2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @12 /* Siento... un poco de pena por el gnomo. Las burlas que recibi� desencadenaron toda esta locura... Pero... su accionar no lo justifica. */
END

// Nalia se ofrece a unirse al grupo para la misi�n de De'Arnise
I_C_T NALIA 56 P_FallP_Nalia56
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @13 /* Tiene un esp�ritu combativo. Eso me gusta. Creo que ser�a una buena camarada. */
END

// Hendak pide que liberen a los gladiadores/esclavos
I_C_T HENDAK 2 P_FallHendakInt2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @14 /* �Debemos hacer algo al respecto, <CHARNAME>! Lo que sucede aqu� es inconcebible */
END

// Hendak pide que se liberen a los esclavos del barco en los Slums
I_C_T HENDAK 41 P_FallHendakInt41
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) ~ THEN @15 /* Tenemos m�s trabajo por hacer. Nunca cre� que tendr�a la oportunidad de hacer el bien de esta manera cuando llegu� a Athkatla, <CHARNAME>. Ser� un honor pelear a tu lado. */
END

// Hendak indica se ha cumplido la misi�n de liberaci�n de esclavos
I_C_T HENDAK 43 P_FallHendakInt43
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @16 /* Bueno, espero que Hendak se encargue de que algo as� no vuelva a surgir. */
END

// Se descubre a Rejiek como el asesino
I_C_T TANNER 8 P_FallTanner8
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @17 /* �Bastardo! Asesinar a los desamparados... por un... �cruel experimento? */
END

// Viconia, antes de ser quemada
I_C_T vicg1 2 P_FallVICONI13
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @18 /* Es injusto, <CHARNAME>. �Debemos hacer algo! */
END

// Xzar est� a punto de ser asesinado
//I_C_T LYROS 5 P_FallLYROS5
//== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @19 /* (susurro) <CHARNAME>, claramente fuimos nosotros los que irrumpimos en su casa y matamos a esas viles criaturas. No es que me est� quejando, pero creo que aqu� hay gato encerrado... Debemos estar atentos. */
//END

// Renal Cabellorojo Intro
I_C_T RENAL 5 P_FallRENAL5
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @20 /* Sonr�e demasiado como para que ello inspire confianza. */
END

// Maevar intro
I_C_T MAEVAR 24 P_FallMAEVAR24
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @21 /* ~Definitivamente este es el m�s desagradable de los ladrones que he conocido.~ */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @23 /* Pues, corr�jame si me equivoco, lady Fall, pero no me parece que haya conocido a muchos. */
== P_FallJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @24 /* Hm... buen punto, Yoshimo. A�n as�, mantengo mi postura. */
END

// Edwin pide asesinar a Rayic Gethras
//I_C_T EDWIN 3 P_FallEDWIN3
//== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @22 /* Claramente, esta es una Cofrad�a de Zopencos, <CHARNAME>. �Asesinar por este... este tipejo de rojo? (suspiro) Creo que puedo encargarme de ello, si es necesario. */
//END

// Maevar pide asesinar a un 'traidor'
I_C_T MAEVAR 29 P_FallMAEVAR29
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @25 /* ~�Tenemos que seguir asesinando gente, encima por este man�atico? <CHARNAME>, esto se torna cada vez peor.~ */
END

// Renal pide asesinar a Maevar
I_C_T RENAL 41 P_FallRENAL41
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @26 /* Esto sonar� extra�o, pero no oir�s quejas de mi parte en tener que matar a ese mentecato. */
END

// Tolgerias te pide aceptar el trabajo sin conocer los detalles
I_C_T TOLGER 75 P_FallTOLGER75
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @27 /* Nunca hab�a o�do de aceptar algo sin saber de qu� se trata. Imag�nate que yo te hubiera dicho algo as� cuando nos conocimos, <CHARNAME>. */
END

// Bodhi ofrece un trato por 15 mil po
I_C_T BODHI 6 P_FallBODHI10
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @28 /* Todo su ser emana la m�s impura antinaturalidad. No me f�o de ella. Aunque si optas por seguirla, yo tambi�n lo har�. */
END

// GAELAN indica que conoceremos a Aran Linvail
I_C_T GAELAN 87 P_FallGAELAN2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @29 /* �Conoceremos a uno de los mandam�s de Athkatla? Vaya, nunca me imagin� llegar a esto cuando arrib� a la ciudad... */
END

// Faldorn (Jaheira)
I_C_T CERNDJ 69 P_FallCEFALDOR9
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @30 /* �Faldorn debe caer! Estoy segura de que t� puedes con ella, Cernd. */
END

// Faldorn (Cernd)
I_C_T JAHEIRAJ 94 P_FallCEFALDOR10
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @31 /* �Faldorn debe caer! Estoy segura de que t� puedes con ella, Jaheira. */
END


// El Ojo Ciego: Gaal dice que los disc�pulos deben deshacerse de todo lo que limita y es ofensivo
I_C_T GAAL 1 P_FallGAAL1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @32 /* �A qu� se refiere con eso? No me digas que es una directiva para... �quitarse los ojos? */
END

// El Ojo Ciego: Combate contra Gaal
I_C_T GAAL 22 P_FallGAAL22
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @33 /* �Abominaci�n! Finalemente la justicia te ha alcanzado. �Caer�s por tus cr�menes! */
END

// El Ojo Ciego: CHARNAME regresa con el artefacto
I_C_T RIFTM01 28 P_FallRIFTM0128
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @34 /* ~He conocido a elfos testarudos... y ellos viven por siglos. �Pero nunca vi a una criatura tan testaruda como t�!~ */
END

// Tiris: Rejiek es encontrado en Caravasar
I_C_T TRSKIN02 16 P_FallTRSKIN021
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @35 /* �Rejiek! Aqu� en Caravasar... Es nuestra oportunidad de acabar lo que no pudimos en Athkatla. */
END

// Valle de Imnes: El mago ogro dice que es inocente
I_C_T UHOGRE01 5 P_FallUHOGRE01
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @36 /* Es verdad que mi voz no es de la experiencia, <CHARNAME>. Pero no creo que estos ogros sean los responsables de lo que sucede aqu�. */
END

// Firkraag: Se posterga el combate
I_C_T FIRKRA02 21 P_FallFIRKRA21
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @37 /* Nunca... nunca cre� que me sentir�a tan feliz de huir de una batalla. No es que sea cobarde, <CHARNAME>. Es s�lo que no estamos listos para este... enfrentamiento. */
END

// Firfraag: combate
I_C_T FIRKRA02 25 P_FallFIRKRA25
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @38 /* �Tus cr�menes acaban aqu�, malvado drag�n! Como representante de Imnescar, dar� lo mejor de m� en la batalla. */
END

// Aran dice que el encargo del rescate se atrasar�
I_C_T ARAN 49 P_FallARAN49
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @39 /* Para ser un l�der ladr�n, tiene mucho de pol�tico. Dif�cilmente le cuesta mantener una promesa. */
END

// Aran encarga enfrentamiento contra Bodhi
//I_C_T ARAN 12 P_FallARAN12
//== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @40 /* Todo apunta a un enfrentamiento definitivo con la criatura, �verdad? No veo las horas de armar un alboroto entre los muertos. */
//END

// Bodhi 1er combate en las catacumbas
I_C_T BODHI2 4 P_FallBODHI24
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @41 /* Est�s acorralada y te atreves a insultarnos. �Est�s a un paso de ser destruida, vampiresa!  */
END

// Traici�n de Yoshimo
I_C_T YOSHJ 113 P_FallYOSHJ113
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @42 /* �Q-qu�? �Yo-yoshimo? No puede ser cierto... No... */
END

// Cap�tulo 4: Bodhi anuncia que cazar� a CHARNAME
I_C_T PPBODHI4 14 P_FallPPBODHI414
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @43 /* Si Bodhi har� esto, es porque tiene un sinf�n de trampas plantadas para nosotros. �Podr�a dispararle desde aqu�! Pero... no s� si eso funcionar�a... */
END

// Lonk ha muerto. Momentos antes del enfrentamiento contra Irenicus
I_C_T PLAYER1 15 P_FallLonkIsDead1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @44 /* Contar con la alianza de los hechiceros torturados ha sido la decisi�n correcta, <CHARNAME>. As�, tendremos una oportunidad de derrotar a Irenicus. */
END

// Saemon aparece para ofrecer un trato
I_C_T PPSAEM3 2 P_FallPPSAEM32
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @45 /* �Otra vez intentas enga�arnos? D�jame enviar a Daren para que muerda su trasero, <CHARNAME>, por favor. */
END

// Ciudad Sahuagin: Rey Loco demuestra ser obtuso
I_C_T SAHKNG01 33 P_FallSAHKNG0133
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @46 /* �Es sabio confiar en la palabra de este rey loco? �Es muy probable que se olvide de que nos conoce e intente comernos! */
END

// Svirneblin en la entrada de la ciudad svirneblin
//I_C_T UDSVIR01 3 P_FallUDSVIR013
//== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @47 /* He le�do sobre los svirfneblin. En general, son criaturas ben�volas. Si necesitan de nuestra ayuda, no deber�amos dudarlo, <CHARNAME>. Puede que incluso en este lugar podamos hacer algo de bien. */
//END

// CHARNAME decide traicionar a los svirneblin
I_C_T UDSVIR03 27 P_Fall_SVIRN1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @48 /* �Por los vi�edos de Imnescar! <CHARNAME>, tal traici�n es imperdonable... No... no puedo concebirlo... �Nuestros caminos llegan hasta aqu�! Espero no verte nunca m�s... */
DO ~SetGlobal("P_Fall_IS_GONE","GLOBAL",1) LeaveParty() EscapeArea()~
END

// Adalon, la Dragona de Plata
I_C_T UDSILVER 9 P_FallUDSILVER122
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @49 /* *traga saliva* �Existen criaturas tan bellas en la Infraoscuridad? Espl�ndido... */
END

// Fall se convierte en drow
I_C_T UDSILVER 35 P_FallUDSILVER35
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @50 /* *refunfu�eo* Estaba m�s que bien con mi aspecto. Pero bueno, entiendo que debemos soportar esto por un bien mayor. */
END

// Elfos de la superficie reciben con frialdad al grupo
I_C_T C6ELHAN2 8 P_FallC6ELHAN28
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) ~ THEN @51 /* *suspiro* Esta tortura parece no tener fin... */
END

// Bodhi: Enfrentamiento final
I_C_T C6BODHI 0 P_FallC6BODHI15_GOOD
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @52 /* Estamos cada vez m�s cerca de acabar con esa demonio de una vez por todas, <CHARNAME>. Avancemos con cautela. */
END

// �rbol de la vida. Irenicus es derrotado.
I_C_T PLAYER1 16 P_FallIrenicusIsDead1
== P_FallJ IF ~InParty("P_Fall") Range("P_Fall",15) !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @47 /* �Ja! Has sido superado en n�mero y en... �Q-qu�? */
END

// Infierno
I_C_T PLAYER1 25 P_FallEnteringHell1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @53 /* Esto es perfecto... �he muerto y he ido al infierno? �Tan mal hice las cosas en vida? Oh, espera... esto me suena a que es obra tuya, <CHARNAME>. */
END

// Combatiendo contra Irenicus en el Infierno (Son 4 ICT)
I_C_T HELLJON 7 P_FallThirdBattleWithIrenicus1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @54 /* La batalla final ha llegado, Irenicus. Hemos viajado incansablemente para llegar a este momento. �Y habr�s de devolver aquello que has arrebatado a <CHARNAME>! Prep�rete. �Por Imnescar! */
END

I_C_T HELLJON 8 P_FallThirdBattleWithIrenicus2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @54 /* La batalla final ha llegado, Irenicus. Hemos viajado por incontables lugares para llegar a este momento. �Y habr�s de devolver aquello que has arrebatado a <CHARNAME>! Prep�rete. �Por Imnescar! */
END

I_C_T HELLJON 9 P_FallThirdBattleWithIrenicus3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @54 /* La batalla final ha llegado, Irenicus. Hemos viajado por incontables lugares para llegar a este momento. �Y habr�s de devolver aquello que has arrebatado a <CHARNAME>! Prep�rete. �Por Imnescar! */
END

I_C_T HELLJON 10 P_FallThirdBattleWithIrenicus4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @54 /* La batalla final ha llegado, Irenicus. Hemos viajado por incontables lugares para llegar a este momento. �Y habr�s de devolver aquello que has arrebatado a <CHARNAME>! Prep�rete. �Por Imnescar! */
END

// DUSK
I_C_T P_DUSKJ 295 P_Fall_EVIL_Dusk_Kills1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3302 /* ��Dusk?! No... no entiendo... ��Qu� has hecho?! */
END

I_C_T P_FALON 19 P_Fall_Falon_GOOD1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3303 /* �Dusk! Me alegra inmensamente que decidieras ayudar a Falon y su tribu. Espero que podamos conseguirles el hogar que tanto anhelan. */
END

I_C_T P_DEMOLE 2 P_Fall_Demole001
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3304 /* �Pero qu� perrito m�s lindo! */
END

I_C_T P_DEMOLE 25 P_Fall_Demole002
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3305 /* �Hola, Demole! �C�mo est�s? Dime, �te alimenta bien ese elfo escu�lido de cabello verde? */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3306 /* (Demole mueve la cola a las palabras de Fall, demostrando alegr�a al verla tambi�n) */
END

I_C_T P_DEMOLE 26 P_Fall_Demole003
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3305 /* �Hola, Demole! �C�mo est�s? Dime, �te alimenta bien ese elfo escu�lido de cabello verde? */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3306 /* (Demole mueve la cola a las palabras de Fall, demostrando alegr�a al verla tambi�n) */
END

// Demoledor aparece por 3era vez
I_C_T P_DEMOLE 19 P_Fall_Demole004
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3307 /* �Demoledor! �C�mo has estado? Se te ve bien alimentado. Hasta creo que has engordado. */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3308 /* (Demole gira sobre su propio eje, demostrando felicidad ante la presencia de Fall) */
END

// Ataque a los esclavistas en la calle de los Slums
I_C_T SLSLAVE 3 P_FallJ_SLSLAVEHELP
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0)~ THEN @3314 /* <CHARNAME>, esto no quedar� impune. �Tr�fico de esclavos tan libremente en las calles? Es hora de hacer pagar a estos sucios esclavistas. */ DO ~Attack("SLUMSSLAVER2")~
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3315 /* No dejar� que os lleven, se�or. �Por Imnescar que atacar� a estos esclavistas! Espero que me ayudes, <CHARNAME>. */ DO ~Attack("SLUMSSLAVER3")~
END

I_C_T SLSLAVE 3 P_FallJ_SLSLAVEHELP2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3315 /* No... �<CHARNAME>! �C�mo has podido? En honor... en honor a mis principios, debo derrotarte por lo que has hecho. �Pagar�s por lo que has hecho! */ DO ~Attack("SLUMSSLAVER3")~
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0)~ THEN @3314 /* ��Qu� has hecho?! Nunca en mi vida hab�a estado tan equivocado en una persona. �Mereces morir por lo que has hecho! */ DO ~Attack("SLUMSSLAVER2")~
END


APPEND P_FallJ

IF ~Global("P_FallTalk","GLOBAL",2)~ t1
SAY @129 /* As� que, <CHARNAME>, �qu� tan relacionado est�s con el incidente en el Paseo? */
= @130 /* No creo que haya sido casualidad que todo haya explotado y justo aparecieras como si nada. */
++ @131 /* De hecho, el mago responsable es mi enemigo, Fall. El maldito secuestr� a mi amiga de la infancia, Imoen. */ + t1.1
++ @132 /* De hecho, fue pura casualidad, Fall. No tengo nada que ver con lo que pas� en el Paseo. */ + t1.2
++ @133 /* Fall, no es un buen momento para hablar. */ + t.0
END

IF ~~ t.0
SAY @134 /* ~No eres un <PRO_RACE> de muchas palabras, �verdad?~ ~No eres una <PRO_RACE> de muchas palabras, �verdad?~ */
= @135 /* Est� bien. No os importunar� (por ahora). */
IF ~~ DO ~IncrementGlobal("P_FallTalk","GLOBAL",1)~ EXIT
END 

//RealSetGlobalTimer("P_FallTimer","GLOBAL",60)

IF ~~ t1.2
SAY @136 /* Hm. Dejame que lo piense... */
= @137 /* ~�Ya lo pens�! Y algo me dice que no est�s siendo del todo sincero conmigo, �eh?~ ~�Ya lo pens�! Y algo me dice que no est�s siendo del todo sincera conmigo, �eh?~*/
++ @138 /* Est� bien, Fall. Os lo dir�: el mago responsable es mi enemigo. Ha secuestrado a mi amiga Imoen y es por ello le doy caza. */ + t1.1
++ @139 /* Puede que no est� de humor para hablar, �no te parece? */ + t.0
END

IF ~~ t1.1
SAY @140 /* Tu amiga, �eh? Ya veo. Eso es motivo m�s que suficiente para darle caza. */
= @141 /* Ten por seguro que har� todo lo que pueda por ayudarte. */
++ @142 /* �Qu� hay de ti? Est�s un poco lejos de Imnescar. */ + t1.11
++ @143 /* Gracias, Fall. Ser� mejor que continuemos con nuestro viaje. */ + t.0
END

IF ~~ t1.11
SAY @144 /* Eso... es verdad. */
= @145 /* Ha pasado un tiempo prudencial y siento que puedo confiar en ti. */
= @146 /* Creo hab�rtelo mencionado, pero mi madre es una poderosa hechicera. */
= @147 /* Es una selu'taar, una alta elfa de Evereska... aunque abandon� su hogar hace mucho tiempo. */
++ @148 /* �Evereska? �Quieres que crea que tus or�genes se remontan en el Reino Oculto? */ + t1.12
++ @149 /* Eso explicar�a el origen artesanal de tu t�nica. */ + t1.13
END

IF ~~ t1.12
SAY @150 /* Pues, todos venimos de alg�n lado, �no lo crees? */
IF ~~ DO ~~ GOTO t1.14
END 

IF ~~ t1.13
SAY @151 /* S� y no. Mi madre aprendi� mucho de su arte en la ciudad �lfica pero confeccion� la t�nica en nuestro verdadero hogar.*/
IF ~~ DO ~~ GOTO t1.14
END

IF ~~ t1.14
SAY @152 /* Recuerda que yo nac� en Imnescar, un peque�o pueblo al suroeste de Amn. */
= @153 /* Somos famosos por nuestra agricultura, �sabes? Naranjas, manzanas, peras, limones. */
= @154 /* Estoy segura de que disfrutar�as de una torta hecha con nuestras frutillas. */
= @155 /* Imnescar es hermoso... era hermoso. */
++ @156 /* �Era? �A qu� te refieres, Fall? */ + t1.15
END

IF ~~ t1.15
SAY @157 /* Hace algunos a�os, un ej�rcito de alima�as nos invadi�. Fue una masacre. */
= @158 /* Ara�as. Ara�as gigantes, ara�as espada, ara�as fase. Vinieron de a docenas y docenas. Sus telas de ara�a cubrieron los cultivos y gran parte del bosque se perdi�. */
= @159 /* La magia de mi madre parec�a... parec�a ser contrarrestada por alguna fuerza sobrenatural. */
= @160 /* Habr�amos muerto de no ser por mi padre. */
= @161 /* �l era un gran guerrero de Crimmor. Se crio en los bosques siendo un ballestero explorador. Su nombre era Gerwulf. */
= @162 /* Cuando las ara�as comenzaron a atacar, �l y un grupo de exploradores nos defendieron. Pero... eventualmente... cayeron ante el veneno de los ar�cnidos. */
= @163 /* Desde entonces, mi madre y yo vagamos por Amn durante un tiempo. */
= @164 /* Basta con decir que... mi madre ha desaparecido, <CHARNAME>. */
= @165 /* Una ma�ana despert� y ella no estaba. No hab�a dejado ning�n rastro. */
++ @166 /* �Qu� te hace pensar que desapareci�? Puede que simplemente se haya cansado de ti. */ + t1.16
++ @167 /* Dijiste que tu madre es una poderosa hechicera. Puede que haya desaparecido a voluntad. */ + t1.17
END

IF ~~ t1.16
SAY @168 /* Eso no es gracioso, <CHARNAME>. */
IF ~~ DO ~~ GOTO t1.18
END 

IF ~~ t1.17
SAY @169 /* S�, pero no creo que sea as�, <CHARNAME>.*/
IF ~~ DO ~~ GOTO t1.18
END


IF ~~ t1.18
SAY @170 /* No, estoy segura de que algo malo ha pasado. */
= @171 /* No me detendr� hasta llegar al fondo del asunto... *suspiro* Suficiente por hoy, mi <LADYLORD>. Ser� mejor que continuemos. */
IF ~~ DO ~IncrementGlobal("P_FallTalk","GLOBAL",1)~ EXIT
END 

// T2

// t2 - P_Fall_T2

IF ~Global("P_Fall_T2","GLOBAL",2)~ t2
SAY @172 /* �<CHARNAME>! �Quieres o�r de mis aventuras en el Bosque de Tethyr? */
++ @173 /* Muy bien, Fall. Cu�ntame de tus viajes por Tethyr. */ + t2.2
++ @174 /* �Sucedi� luego de tu hu�da de Imnescar? S�, me interesa. */ + t2.1
++ @175 /* �Es necesario? Tenemos asuntos pendientes que atender. */ + t2.3
END


IF ~~ t2.3
SAY @176 /* �Hmpf! Bien. Pero ya es hora de que conozcas a Alendir, <CHARNAME>. */
IF ~~ DO ~~ GOTO t2.4
END

IF ~~ t2.4
SAY @177 /* Me dijo que me re�na con �l luego de unos d�as. Bueno, d�as han pasado y creo que te has ganado mi confianza como para que te presente con �l. */
= @178 /* Como te he mencionado, mi madre ha desaparecido y �l est� haciendo todo lo posible para averiguar d�nde est�. Podremos encontrarlo en el piso superior de la posada de las Cinco Jarras, en el Distrito del Puente. */
IF ~~ DO ~SetGlobal("P_Fall_T2","GLOBAL",3)   
SetGlobal("P_FallMission2","GLOBAL",1)~ UNSOLVED_JOURNAL @310005 EXIT
END 
//AR0511 - 1076-155


IF ~~ t2.1
SAY @179 /* As� es, <CHARNAME>. */
IF ~~ DO ~~ GOTO t2.2
END

IF ~~ t2.2
SAY @180 /* Luego del ataque de las ara�as, mi madre y yo huimos hacia los bosques de Tethyr. */
= @181 /* Sea lo que fuere que bloque� la magia de mi madre, ya no exist�a. Gracias al Padre Roble por eso, ya que existen muchos peligros en la espesura. */
= @182 /* Kobolds, lic�ntropos, ogros, trolls. Muchos monstruos habitan en las sombras de las hojas y a muchos hemos combatido mi madre y yo. */
= @183 /* *carraspeo* Bueno, lo cierto es que la mayor parte del trabajo lo ha hecho madre. No fue sino hasta algunos a�os m�s tarde que comenc� mi entrenamiento con la ballesta. */
= @184 /* Atravesamos los bosques septentrionales hasta llegar a Brost. La Villa de las Setas, �sabes?  */
= @185 /* El nombre no es muy errado. Tienen una gran variedad de hongos y champi�ones. Tambi�n melocotones. Muy deliciosos.  */
++ @186 /* Mira la hora, Fall. *falso bostezo* Creo que es hora de descansar un poco, �no lo crees? */ + t2.3
++ @187 /* �T� y tu madre fueron bien recibidas en Brost? */ + t2.5
END


IF ~~ t2.5
SAY @188 /* �S�! En Villa de las Setas lo que m�s importa es el comercio. (Eso, y las setas, claro) Ver�s, all� conviven humanos, medianos, semielfos. */
= @189 /* Adem�s, rinden pleites�a a Mielikki y a Silvanus. El druida local nos recibi� muy bien. */
= @190 /* Acrull Escudonorte�o es el l�der del culto a Silvanus en esa regi�n. Es un cl�rigo humano poderoso y lidera a varios druidas y exploradores. */
= @191 /* Tambi�n conocimos a un mago humano de Calimshan llamado Hakamir ibn Alix. */
= @192 /* Una de las primeras cosas que hizo mi madre fue tratar el asunto de Imnescar en privado con ellos. */
= @193 /* Estos humanos no eran poca cosa, <CHARNAME>. Sin embargo, ni el cl�rigo ni el mago pudieron desentra�ar el misterio del ataque a mi pueblo natal. */
= @194 /* El tiempo pas� y no fue hasta que Alendir apareci�... Y hablando de Alendir... ser� mejor que �l mismo te cuente el resto de la historia. */
++ @195 /* �Finalmente podr� conocer a este tal Alendir, Fall? */ + t2.4
END


// T3

// t3 - P_Fall_T3

IF ~Global("P_Fall_T3","GLOBAL",2)~ t3
SAY @196 /* <CHARNAME>, �alguna vez te habl� de c�mo conoc� a Daren y a Sinna? */
++ @197 /* Creo que no, Fall. �C�mo los conociste? */ + t3.1
++ @198 /* No, Fall. Aunque no disponemos de mucho tiempo. Tenemos asuntos pendientes que atender. */ + t3.2
END

IF ~~ t3.2
SAY @199 /* Entiendo... Supongo que ser� en otra ocasi�n, �no es as�? Ser� mejor que continuemos con esos asuntos. */
IF ~~ DO ~SetGlobal("P_Fall_T3","GLOBAL",3)~ EXIT
END 

IF ~~ t3.1
SAY @200 /* Los bosques de Imnescar albergan muchos animales, pero una de las razas m�s numerosas es la de los lobos. */
= @201 /* Hace ya mucho tiempo que los exploradores han logrado crear una conexi�n con los lupinos. */
= @202 /* Madre, incluso, logr� crear un lazo con el plano astral en donde pudo albergar algunas almas de animales para que se resguarden por toda la eternidad. */
++ @203 /* �Te refieres a las convocaciones? Dices que algunas criaturas de nuestro mundo ahora viven en el plano Astral, �es as�? */ + t3.3
++ @204 /* La verdad no te estoy siguiendo, Fall. �Podr�as explayarte? */ + t3.4
++ @205 /* Es muy interesante. �Crees que podr�amos continuar esta charla en otro momento? Tenemos asuntos que atender. */ + t3.2
END

IF ~~ t3.3
SAY @179 /* As� es, <CHARNAME>. */
IF ~~ DO ~~ GOTO t3.4
END


IF ~~ t3.4
SAY @206 /* Hay conjuros que permiten al lanzador el viajar por los planos. El Astral entre ellos. */
= @207 /* Por supuesto, esto es muy peligroso. �Si no tienes cuidado, puedes quedarte atrapado all� para siempre! */
= @208 /* Bueno, no quiero irme por las ramas. Te estaba hablando de Daren y Sinna. */
= @209 /* Cuando yo era una ni�a, Padre los rescat� de una partida de cazadores cuando eran apenas unos cachorros. 
De m�s est� decir que se convirtieron en mis amigos. */
= @210 /* Los tres crecimos en Imnescar y m�s pronto que tarde, los cachorros crecieron en los poderosos lobos que conoces. */
= @211 /* Mi madre mostr� un gran inter�s y constantemente lanzaba sobre ellos conjuros de protecci�n. */
= @212 /* ... */
++ @213 /* �Qu� pasa, Fall? Te has quedado en silencio de repente. */ + t3.5
++ @214 /* Vaya, finalmente te quedaste sin palabras, �huh? */ + t3.5
END

IF ~~ t3.5
SAY @215 /* Lo siento, <CHARNAME>. Es s�lo que... en esta parte es cuando feviene el ataque a mi pueblo. */
= @216 /* Las ara�as... */
= @217 /* Daren y Sinna fueron los primeros en percatarse de la presencia de los ar�cnidos. */
= @218 /* Se lanzaron a la oscuridad del bosque alertando a los exploradores. Sin embargo, mi padre les llam� de inmediato. */
= @219 /* Sab�a que las ara�as poseen un veneno mort�fero y que mis lobos caer�an en cuesti�n de segundos. */
= @220 /* Yo no me preocup� en el momento porque sab�a que mi madre simplemente lanzar�a un hechizo de protecci�n contra el veneno. */
= @221 /* Pero... como te mencion� antes... su magia no funcionaba. */
++ @222 /* Y entonces, �qu� pas� con los lobos? Me refiero a que puedo ver que se encuentran bien. */ + t3.6
++ @223 /* Muy interesante, Fall. Pero ya es tarde. Ser� mejor que lo dejemos para otro d�a. Hay asuntos que atender. */ + t3.2
END

IF ~~ t3.6
SAY @224 /* Mi padre llam� a los lobos para que me protejan. Ellos obedecieron. */
= @225 /* Sin embargo, las ara�as eran numerosas. */
= @226 /* Uno a uno, los exploradores cayeron. Una ara�a gigante se abalanz� sobre m�, pero antes de que me atacara con sus colmillos, Daren la destroz� con sus garras. */
= @227 /* Busqu� a mi madre y emprendimos la hu�da. El camino estaba libre, pero de las sombras emergi� una ara�a fase dispuesta a atacarnos. */
= @228 /* Sinna, como un rel�mpago, acab� con la ara�a usando su fulminante mand�bula. */
= @229 /* El resto de la historia... prefiero detallarla en otro momento, si as� lo deseas, claro. */
= @230 /* Vamos... continuemos con nuestro viaje. */
IF ~~ DO ~SetGlobal("P_Fall_T3","GLOBAL",3) SetGlobal ("P_Fall_WolvesSubject","GLOBAL",1)~ EXIT
END 


// SP1 Voragor 1

// SP1 - P_Fall_SP1_1
IF ~Global("P_Fall_SP1_1","GLOBAL",2)~ sp1
SAY @231 /* Perdona que interrumpa nuestro viaje, <CHARNAME>, pero creo que he podido avanzar en mis estudios sobre la gema de Voragor. */
++ @232 /* �La gema de qui�n? */ + sp1_1
++ @233 /* �Acaso estudias? Pens� que lo �nico que hac�as era devorar bayas y frutas. */ + sp1_2
++ @234 /* �Excelente! Cu�ntame de tus avances. */ + sp1_3
END

IF ~~ sp1_1
SAY @235 /* �Voragor! �No lo recuerdas? El basilisco anciano que conocimos en las cuevas de Umar. */
IF ~~ DO ~~ GOTO sp1_3
END

IF ~~ sp1_2
SAY @236 /* �Oye! Puede que coma mucho... �pero me alimento de forma sana! */
//== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4002 /* No sab�a que las tortas de miel eran un alimento liviano. He visto c�mo te devorabas varias porciones en cuesti�n de segundos. */
//== P_FallJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4003 /* *susurro* �Silencio, Dusk! Estoy hablando con <CHARNAME> sobre mis estudios, no sobre mi dieta, �sabes? */
IF ~~ DO ~~ GOTO sp1_3
END

IF ~~ sp1_3
SAY @237 /* *carraspeo* Como dec�a, pude avanzar en mis investigaciones sobre la gema. */
= @238 /* El druida que la imbuy� ten�a un gran conocimiento del plano Astral y creo que puedo ahondar un poco m�s en ello. */
= @239 /* �Recuerdas que te habl� de Daren y Sinna combatiendo ara�as en Imnescar? Bien, pues... resulta que ambos fueron envenenados durante la lucha. */
= @240 /* Con mi madre nos percatamos de esto cuando estuvimos lo suficientemente alejadas de nuestro hogar. */
= @241 /* Lleg�bamos a la frontera de los Dientecillos cuando Sinna disminuy� su caminar. Pensamos que se trataba de cansancio... */
= @242 /* Pero al poco tiempo Daren le sigui�. */
= @243 /* Est�bamos demasiado conmovidas a�n por todo lo que hab�amos tenido que pasar. Tanto, que apenas nos dimos cuenta de que los lobos estaban muriendo... */
= @244 /* Hab�a perdido a mi padre... hab�a perdido mi hogar... y ahora estaba perdiendo a mis amigos. */
= @245 /* Abrac� con desesperaci�n a ambos mientras casi me desmayaba del llanto... cuando de repente comenc� a sentir un aura poderosa. */
= @246 /* Madre estaba entrando en trance: en concentraci�n absoluta estaba conjurando un gran portal. */
= @247 /* "Mi peque�a Caraneth" dijo, "toma mi mano mientras a�n abrazas a tus hermanos del bosque." Asombrada, le hice caso. */
= @248 /*  En ese momento, todo se torn� gris y plateado. Sent� el aroma de la lluvia inund�ndome los pulmones. */
= @249 /* La percepci�n del tiempo me fue desconocida, pues sent� que pasaron meses. Cuando al abrir mis ojos y volver al �rido suelo de las monta�as, entend� que s�lo hab�an pasado unos segundos. */
= @250 /* Entonces... me percat� que Daren y Sinna hab�an desaparecido. */
= @251 /* Madre comprendi� mi preocupaci�n y antes de que pudiera decir palabra alguna me dijo: "No debes temer, mi ni�a. Daren y Sinna ahora forman parte del Plano Astral." */
= @252 /* "All�, el veneno que contrajeron en el Plano Primordial ya no les har� efecto. Con el paso del tiempo, incluso curar�n las heridas que hayan contra�do aqu�." */
= @253 /* "No envejecer�n, ni sufrir�n hambre." A�n... a�n recuerdo sus palabras con anhelo y consideraci�n. */
= @254 /* *tose* Bueno, creo que ha sido suficiente por hoy. �Recuerda mi historia, <CHARNAME>! Tengo la esperanza de que la pr�xima vez que hablemos sobre esto, el misterio de la gema estar� resuelto. */
IF ~~ DO ~SetGlobal("P_Fall_SP1_1","GLOBAL",3)~ EXIT
END 


// SP1 Voragor 2

// SP1 - P_Fall_SP1_2
IF ~Global("P_Fall_SP1_2","GLOBAL",2)~ sp2
SAY @255 /* �<CHARNAME>! Por Silvanus... �Lo he logrado, lo he logrado! */
++ @256 /* �Fall! �De qu� est�s hablando? */ + sp2_1
++ @257 /* Mujer, �casi me matas del susto! */ + sp2_2
END

IF ~~ sp2_2
SAY @258 /* Oh, lo lamento, <CHARNAME>. No pretend�a gritar tan fuerte. */
IF ~~ DO ~~ GOTO sp2_1
END

IF ~~ sp2_1
SAY @259 /* He logrado aprender de la gema del basilisco. */
= @260 /* Para que comprendas a qu� me refiero debo narrarte c�mo es que aprend� a traer a Daren y a Sinna del Plano Astral. */
++ @261 /* Muy bien, te escucho. */ + sp2_4
++ @262 /* �Es necesario? No estoy de humor para historias. */ + sp2_5
END

IF ~~ sp2_5
SAY @263 /* �Hmpf! Siempre tan cordial... De acuerdo, t� te lo pierdes... */
IF ~~ DO ~SetGlobal("P_Fall_SP1_2","GLOBAL",3)~ EXIT
END 

IF ~~ sp2_4
SAY @264 /* Como ya te narr�, Daren y Sinna se encontraban en el Plano Astral, todo gracias al poder de mi madre. */
= @265 /* "T� eres mi hija. Mi sangre. Puedes aprender esto si realmente te esfuerzas. El camino no ser� f�cil." */
= @266 /* Fue entonces que en los pr�ximos meses me ense�� sobre algunos rituales arcanos. Me dijo que mi afinidad innata con la naturaleza podr�a darme la posibilidad de comprender y aprender este poder. */
= @267 /* Daren y Sinna son como mis hermanos. Son parte de mi familia y mi conexi�n con ellos servir�a de puente de plata entre el Plano Astral y el Plano Primordial. */
= @268 /* Para que me comprendas, <CHARNAME>, mis habilidades innatas como Dama de las Bestias me permitieron aprender esto y es as� que puedo llamar a Daren y a Sinna para que me asistan en este mundo. */
++ @269 /* Entiendo eso. Lo que no entiendo es la relaci�n que tiene todo lo que me cuentas con el basilisco. */ + sp2_6
++ @270 /* Te est�s yendo por las ramas otra vez, Fall. Ve directo al grano. */ + sp2_6
++ @271 /* Contin�a, por favor. */ + sp2_7
END

IF ~~ sp2_6
SAY @272 /* Oh, es verdad. *se rasca la cabeza* No s� por qu� me toma tanto tiempo explicar estas cosas... */
IF ~~ DO ~~ GOTO sp2_7
END

IF ~~ sp2_7
SAY @273 /* Lo que quiero decir es que puedo llamar a Voragor. */
++ @274 /* �Puedes convocar al gran basilisco? */ + sp2_8
++ @275 /* �Qu�? Fall, �c�mo puedes estar segura de que esa lagartija no intentar� matarnos en el momento en que lo llames? */ + sp2_9
END

IF ~~ sp2_9
SAY @276 /* <CHARNAME>, no debes preocuparte por eso. D�jame explicarte. */
IF ~~ DO ~~ GOTO sp2_8
END

IF ~~ sp2_8
SAY @277 /* Puedo llamar y comandar a Voragor a voluntad. Todo ha sido gracias a la gema, la cual... la cual est� desapareciendo mientras hablamos. */
= @278 /* Ver�s, la gema era una posesi�n preciada para Voragor y parte de su amuleto. Gracias a esto he podido generar una conexi�n mental y espiritual con �l. */
= @279 /* Hasta hace poco, acord� llevar a Voragor al Plano Astral utilizando las ense�anzas de mi madre. */
= @280 /* Lo podr�s ver por ti mismo, <CHARNAME>. Ahora tengo la capacidad de llamar a Voragor. */
= @281 /* Cuando le llame, ver�s que a�n puede comunicarse con nosotros ya que todav�a tiene en su poder el amuleto del druida. */
= @282 /* Estoy segura de que Voragor nos ayudar� mucho en nuestras b�squedas. Ya lo ver�s. */
IF ~~ DO ~SetGlobal("P_Fall_SP1_2","GLOBAL",3) 
UseItem("p_basgem", Myself) DestroyItem("p_basgem")~ EXIT
END 

// T4 - Sobre Gerwulf

// t4 - P_Fall_T4

IF ~Global("P_Fall_T4","GLOBAL",2)~ t4
SAY @283 /* <CHARNAME>, �te gustar�a o�r sobre mi padre? */
++ @284 /* S�, Fall. Me encantar�a escuchar su historia. */ + t4.1
++ @285 /* Lo lamento, Fall. Pero no disponemos de mucho tiempo ahora. */ + t4.2
END

IF ~~ t4.2
SAY @286 /* Oh, ya entiendo. De acuerdo, <CHARNAME>. */
IF ~~ DO ~SetGlobal("P_Fall_T4","GLOBAL",3)~ EXIT
END 


IF ~~ t4.1
SAY @287 /* Mi padre es mi h�roe. Era un gran guerrero de Crimmor que sirvi� a su guardia cuando era muy joven. */
= @288 /* Al cabo de un tiempo, sigui� el llamado de la naturaleza y protegi� los bosques de Imnescar durante a�os. */
= @289 /* No s� si lo mencion�, pero era un humano. */
++ @290 /* Ya veo. Eso explicar�a el origen de tu linaje. */ + t4.3
++ @291 /* �C�mo es que conoci� a tu madre? Tengo entendido que ella es una elfa selu'taar de Evereska. */ + t4.4
END

IF ~~ t4.3
SAY @292 /* Exacto. Como ver�s, soy una semielfa. Hered� el color de mi cabello de �l. */
IF ~~ DO ~~ GOTO t4.4
END

IF ~~ t4.4
SAY @293 /* Conoci� a mi madre hace varios a�os, justamente en los bosques de Imnescar. */
= @294 /* Unieron fuerzas en la lucha contra los trasgos de los Dientecillos. La ballesta de mi padre y la magia de mi madre expulsaron a los monstruos hacia las profundidades de las monta�as. */
= @295 /* El pueblo de Imnescar, que pronto se convertir�a en su hogar, vitore� sus nombres. Eran muy queridos. */
= @309 /* Al poco tiempo se enamoraron y formaron una familia. */
++ @296 /* Es una bella historia, Fall. */ + t4.5
++ @297 /* Interesante. �Vaya, mira qu� tarde se ha hecho! Ser� mejor que continuemos con nuestro viaje, Fall. */ + t4.2
END

IF ~~ t4.5
SAY @298 /* En verdad. Cuando era una ni�a, todos esperaban que siguiera los pasos de madre. Ya sabes, en el arte de Mystra. */
= @299 /* Pero lo cierto es que admiraba demasiado a mi padre. �l ten�a un amor sin igual por el bosque y sus animales. */
= @300 /* A menudo me escurr�a de mis deberes para seguirlo en su entrenamiento en los valles. */
= @301 /* �l se percataba de esto, claro. Comprendi� r�pidamente que no ser�a f�cil disuadirme de mis deseos, as� que comenz� a entrenarme en el combate, el sigilo y el rastreo. */
= @302 /* �l construy� mi primera ballesta ligera y entrenamos en la precisi�n de los disparos incontable cantidad de tardes. */
= @303 /* Tambi�n me instruy� en la doctrina del Padre Roble, Silvanus. Mi madre no estaba muy convencida de esto, pero ella tambi�n amaba a mi padre as� que, finalmente, cedi�. */
= @304 /* Siempre... siempre recordar� con cari�o aquellas �pocas. */
++ @305 /* Tu padre estar�a orgulloso de ti, Fall. */ + t4.6
++ @306 /* �Has terminado al fin? Por los dioses, cre� que nunca te callar�as. */ + t4.7
END

IF ~~ t4.6
SAY @307 /* Gracias por tus palabras, <CHARNAME>. Y gracias por escucharme. */
IF ~~ DO ~SetGlobal("P_Fall_T4","GLOBAL",3)~ EXIT
END 

IF ~~ t4.7
SAY @308 /* �<CHARNAME>! A veces... a veces puedes ser muy cruel... */
IF ~~ DO ~SetGlobal("P_Fall_T4","GLOBAL",3)~ EXIT
END 
//  @309 ya usado


// T5 - Sobre Alendir

// t5 - P_Fall_T5

IF ~Global("P_Fall_T5","GLOBAL",2)~ t5
SAY @310 /* <CHARNAME>, �tienes unos minutos para hablar? Se trata de Alendir. */
++ @311 /* �Por qu� querr�as malgastar tu tiempo hablando de ese viejo amargado, Fall? */ + t5.1
++ @312 /* �Alendir? Dime, Fall. �Hay algo que te inquiete? */ + t5.2
END

IF ~~ t5.1
SAY @313 /* �Amargado? S�, supongo que ese es un buen calificativo para describirlo. */
IF ~~ DO ~~ GOTO t5.2
END

IF ~~ t5.2
SAY @314 /* Lo cierto es que hay algo sobre �l que me molesta. */
= @315 /* �Has escuchado c�mo ha hablado de mi padre? Y sin embargo, no posee un trato similar para con mi madre. */
= @316 /* Creo que tiene que ver con el hecho de que ambos provienen de Evereska. Ambos son altos elfos de Cormanthyr. Ver�s, <CHARNAME>, no existen muchos selu'taar hoy en d�a. */
= @317 /* Puede que esa sea la raz�n de su agria actitud para con todo lo que no est� relacionado con el Reino Oculto. */
++ @318 /* Es probable. Yo no le prestar�a demasiada atenci�n. No creo que merezca la pena. */ + t5.3
++ @319 /* �Sabes algo m�s de �l? Algo que explique por qu� es como es con los dem�s. */ + t5.4
END

IF ~~ t5.3
SAY @320 /* ~Puede que no valga la pena, mi querido amigo, pero no he podido parar de pensar en nuestro �ltimo encuentro.~ ~Puede que no valga la pena, mi querida amiga, pero no he podido parar de pensar en nuestro �ltimo encuentro.~ */
IF ~~ DO ~~ GOTO t5.4
END

IF ~~ t5.4
SAY @321 /* Si hay algo que puedo contarte de Alendir es lo siguiente. */
= @322 /* Como ya mencion�, �l y mi madre provienen de Evereska. Durante muchos a�os mantuvieron una gran relaci�n de amistad. */
= @323 /* Hace algunas d�cadas, Alendir se obsesion� con un conjuro arcano de caracter�sticas �picas. */
= @324 /* Algunos sabios, mi madre entre ellos, le recomendaron no seguir con el proceso ya que podr�a implicar resultados funestos. */
= @325 /* Desconozco los detalles del ritual que intent� llevar a cabo, pero lo cierto es que Alendir logr� tener un �xito a medias en su b�squeda. */
++ @326 /* ��xito a medias? �Qu� quieres decir? */ + t5.5
END

IF ~~ t5.5
SAY @327 /* Pues... durante a�os estuvo obsesionado con el Hielo. �l estaba convencido de que podr�a convertirse en un Maestro de la Escarcha a trav�s de rituales sumamente peligrosos. */
= @328 /* Mi madre no entr� en detalles, pero me dijo que finalmente �l lo hab�a logrado. */
= @329 /* Pero no todo sali� como �l lo esperaba. */
= @330 /* �Has visto la decrepitud en Alendir? Para que lo comprendas, es m�s joven que mi madre. */
= @331 /* Pero mi madre luce igual de joven que yo... */
= @332 /* El ritual que convirti� a Alendir en un Maestro de la Escarcha consumi� su juventud. */
++ @333 /* Vaya, y yo que pens� que se trataba de un elfo anciano. */ + t5.6
++ @334 /* Se debe tener mucho cuidado al tratar con rituales arcanos. */ + t5.7
END

IF ~~ t5.6
SAY @335 /* ~Alendir es un elfo anciano, <CHARNAME>. Despu�s de todo, es un selu'taar. S�lo que ahora... realmente lo parece.~ */
IF ~~ DO ~~ GOTO t5.7
END


IF ~~ t5.7
SAY @336 /* Pregunt� a mi madre si �sa fue la raz�n de su constante amargura. */
= @337 /* Pero me dijo que no. */
= @338 /* Cuando est�bamos en Brost, Alendir acudi� a nosotros. Yo era s�lo una ni�a as� que me dejaban afuera de tales conversaciones. */
= @339 /* Pero tambi�n ten�a un o�do agudo as� que me las ingeniaba para escabullirme y llegar lo m�s cercano posible a sus reuniones. */
= @340 /* Al parecer, hubo un punto de quiebre en su amistad cuando madre abandon� Evereska. */
= @341 /* Y sospecho que tampoco le gust� que hubiese tenido una hija con mi padre. Como adivinar�s, no tiene la mejor opini�n sobre los humanos. */
= @342 /* *carraspeo* De todas formas, creo que me he ido por las ramas otra vez. Gracias por escucharme, <CHARNAME>. Creo que ya es hora de que vayamos a ver a Alendir. Es hora de que me diga d�nde se encuentra mi madre. */
IF ~~ DO ~SetGlobal("P_Fall_T5","GLOBAL",3)~ UNSOLVED_JOURNAL @310010 EXIT
END 


// SP2 - P_Fall_SP2_1 KITOCHI

IF ~Global("P_Fall_SP2_1","GLOBAL",2)~ sp3
SAY @343 /* <CHARNAME>, he encontrado la forma de convocar a Kitochi. */
++ @344 /* �A qui�n? */ + sp3_1
++ @345 /* �Y para qu� queremos invocar a ese gato apestoso? */ + sp3_2
++ @346 /* Ya veo, Fall. Cu�ntame c�mo lo has logrado. */ + sp3_3
END


IF ~~ sp3_1
SAY @347 /* ~�Kitochi! El gato fe�rico que conociste en la posada de las Cinco Jarras.~ */
IF ~~ DO ~~ GOTO sp3_3
END

IF ~~ sp3_2
SAY @348 /* ~�<CHARNAME>! No seas tan rudo con el pobre de Kitochi.~ ~�<CHARNAME>! No seas tan ruda con el pobre de Kitochi.~ */
IF ~~ DO ~~ GOTO sp3_3
END

IF ~~ sp3_3
SAY @349 /* Ver�s, el gato fe�rico se encuentra ahora en el Plano Astral junto a Daren y Sinna. */
= @350 /* Pero no siempre fue as�... */
= @351 /* Conoc� a Kitochi en Imnescar. Formaba parte de la Guardia de Exploradores del Bosque. */
= @352 /* Creo que has notado lo maltrecho que se encuentra. */
++ @353 /* S�, lo he notado. */ + sp3_4
++ @354 /* �Te refieres a que intenta disimular su fealdad usando un gorrito? Me he dado cuenta. */ + sp3_4
END



IF ~~ sp3_4
SAY @355 /* *carraspeo* S�, bueno. �l estuvo presente durante el ataque de las ara�as. Luch� valientemente junto a los exploradores. */
= @356 /* Pero lo cierto es que Kitochi no es bueno en el combate cuerpo a cuerpo. A�n as�... combati� hasta el final. */
= @357 /* Incluso cuando fue envenenado. */
++ @358 /* �C�mo es que sigue con vida? Antes me has comentado de lo mortal que es el veneno de esas tenebrosas ara�as. */ + sp3_5
END

IF ~~ sp3_5
SAY @359 /* Su explorador lo cur� antes de morir. */
++ @360 /* �Kitochi era el compa�ero animal de un explorador? Cre� que las criaturas fe�ricas eran demasiado orgullosas como para ser la mascota de alguien. */ + sp3_7
++ @361 /* *bostezo* �Seguimos hablando de gatos? Perd�n, me estaba quedando dormido. */ + sp3_6
++ @368 /* �Compa�ero animal? Ya veo. Contin�a, por favor. */ + sp3_7
END

IF ~~ sp3_6
SAY @362 /* ~*suspiro* Cielos, <CHARNAME>. A veces puedes ser un completo idiota.~ ~*suspiro* Cielos, <CHARNAME>. A veces puedes ser una completa idiota.~ */
IF ~~ DO ~~ GOTO sp3_7
END


IF ~~ sp3_7
SAY @363 /* Ver�s, su explorador era un elfo de W�ldazh llamado Aeris. No s� c�mo es que conoci� a nuestro gato. Lo que s� s� es que ten�an una gran amistad. */
= @364 /* Desconozco los detalles de la muerte de Aeris, pero quiz�s Kitochi los comparta contigo. */
= @365 /* �Ahora tengo la capacidad de llamarlo! */
= @366 /* Kitochi es un gran explorador. Incluso tiene la capacidad de hacerse invisible y se poner trampas. */
= @367 /* No creo que sea efectivo en el combate cuerpo a cuerpo, pero es algo que puedes hablar con �l si lo deseas. */
IF ~~ DO ~SetGlobal("P_Fall_SP2_1","GLOBAL",3) CreateItem ("p_catgem",1,2,1)
UseItem("p_catgem", Myself) DestroyItem("p_catgem")~ EXIT
END 

// SP3 - P_Fall_SP3_1 TABITHA

IF ~Global("P_Fall_SP3_1","GLOBAL",2)~ sp4
SAY @382 /* Esto... se est� volviendo m�s complicado de lo que esperaba. */
++ @383 /* Fall, �de qu� est�s hablando? */ + sp4_1
END

IF ~~ sp4_1
SAY @384 /* Estoy intentando llevar a Tabitha al Plano Astral. La estatuilla de Malar es el objeto que Ivor me dio. */
++ @385 /* Lo s�, Fall. Estuve presente cuando todo eso pas�. Dime, �por qu� te est� costando? */ + sp4_4
++ @386 /* �Qui�n es Ivor, Tabitha, Malar? No conozco a ninguno de ellos. */ + sp4_3
++ @387 /* Puede que sea mucho para ti. Deber�as relajarte un poco, Fall. */ + sp4_2
END

IF ~~ sp4_2
SAY @388 /* ~No puedo relajarme, <CHARNAME>. Hice una promesa y pretendo cumplirla.~ */
IF ~~ DO ~~ GOTO sp4_4
END

IF ~~ sp4_3
SAY @389 /* ~�<CHARNAME>! Nunca prestas atenci�n a mis cosas. Ivor es el Se�or de las Bestias que traicion� a Lehtinan en la Corona de Cobre. Tabitha es su leoparda a quien estoy tratando de llevar al Plano Astral. Y Malar es el Dios de los Cazadores, una deidad de exploradores y algunos druidas, pero es cruel e implacable.~ */
IF ~~ DO ~~ GOTO sp4_4
END

IF ~~ sp4_4
SAY @390 /* El ritual que estoy llevando a cabo no es tan sencillo. Necesito la visi�n de una criatura igual de implacable que Malar. */
= @391 /* Madre me ha ense�ado a vislumbrar los recuerdos y sentimientos de animales que han vivido y muerto en esta tierra. */
= @392 /* Tabitha est� ligada a Ivor, quien es un explorador fiel a las creencias de Malar. */
= @393 /* Yo... no soy capaz de verlo. De sentirlo. Silvanus me da fuerzas y puedo congeniar con Mystra, todo ello debido a las creencias de mis padres. */
= @394 /* Podr�a incluso lograrlo con Mielikki, porque no dista mucho del Padre Roble. */
= @395 /* Pero Malar... Es el Dios de la Sangre. La violencia es inherente en sus seguidores. Incluso en algunas criaturas salvajes como animales del bosque. */
++ @396 /* Ya veo. Y, �a d�nde va a parar este relato, Fall? */ + sp4_5
END

IF ~~ sp4_5
SAY @397 /* Yo... esto me cuesta pedirlo, pero creo que s� c�mo salvar a Tabitha de los cazadores de recompensa. */
= @398 /* He o�do hablar de una bestia sedienta de sangre que existi� hace muchos inviernos. */
= @399 /* Se trataba de Aeger, un oso gigante invulnerable al fuego y al fr�o, incluso al �cido. */
= @400 /* Durante a�os aterroriz� a la Costa de la Espada. */
= @401 /* Se necesit� de unos 200 campesinos armados para acabar con �l. */
= @402 /* Sobrevivieron muy pocos... */
= @403 /* La cuesti�n es que los campesinos hicieron de su piel algunas armaduras, las cuales, se dice, tienen esas propiedades de resistencia elemental. */
= @404 /* Aeger era un cazador nato y estoy segura de que Malar habr� estado muy complacido con su cacer�a de hombres. */
= @405 /* Si logramos conseguir una de esas armaduras, creo que podr� comprender a uno de los m�s salvajes guerreros de Malar y ello ser� suficiente para llevar a Tabitha al Plano Astral a trav�s de la conexi�n que forje con la deidad de su explorador. */
= @406 /* He visto una de ellas en el Mercado del Aventurero cuando frecuentaba el Paseo, en Athkatla. */
= @407 /* No me agrada la idea de comprar la piel de un animal, <CHARNAME>. Pero creo que es la �nica manera de terminar el ritual de Tabitha. */
IF ~~ DO ~SetGlobal("P_Fall_SP3_1","GLOBAL",3)~ UNSOLVED_JOURNAL @310016 EXIT
END 

// SP3 - P_Fall_SP3_2 TABITHA

IF ~Global("P_Fall_SP3_2","GLOBAL",2)~ sp5
SAY @369 /* He desentra�ado el misterio de Malar, <CHARNAME>. Tabitha ser� salvada de este plano. */
++ @370 /* Fall, �qui�n es Malar? */ + sp5_1
++ @371 /* Finalmente. �Me vas a devolver mi armadura? Cost� dinero, sabes. */ + sp5_2
++ @372 /* Es una buena noticia, Fall. Cu�ntame m�s. */ + sp5_3
END

IF ~~ sp5_1
SAY @373 /* ~�Ugh! <CHARNAME>, definitivamente nunca me prestas atenci�n. Malar es el Dios de los Cazadores, la deidad de Ivor, el compa�ero explorador de Tabitha.~ */
IF ~~ DO ~~ GOTO sp5_3
END

IF ~~ sp5_2
SAY @374 /* ~(�Qu� taca�o!) *carraspeo* S�, <CHARNAME>, te devolver� la armadura. Ahora te contar� lo que pude averiguar.~ ~(�Qu� taca�a!) *carraspeo* S�, <CHARNAME>, te devolver� la armadura. Ahora te contar� lo que pude averiguar.~ */
IF ~~ DO ~~ GOTO sp5_3
END

IF ~~ sp5_3
SAY @375 /* Malar, como quiz�s he mencionado anteriormente, aboga por la violencia desenfrenada y la brutalidad en la naturaleza. Sus seguidores son conocidos por su crueldad y por llevar a cabo rituales violentos y sacrificios en su nombre. */
= @376 /* Ello explicar�a a Ivor tratando con escoria como Lehtinan. Puede que vio la oportunidad de poner sus animales a prueba contra los gladiadores del foso. */
= @377 /* Examinar la armadura de pieles de Aeger me ha puesto en perspectiva respecto a los hechos sucedidos hace siglos cuando el oso gigante cazaba en las tierras de la Costa de la Espada. */
= @378 /* El oso gigante aterroriz� esas tierras, es verdad. Pero estaba en su sangre destructiva. La naturaleza puede ser brutal e implacable. */
= @379 /* No apoyo ese comportamiento ya que puede destruir el equilibrio que tanto busca el Padre del Bosque. Pero comprendo que a veces es a trav�s de la violencia que s�lo puede lograrse dicho objetivo. */
= @380 /* La relaci�n entre Malar y Silvanus en Faer�n es compleja y marcada por el conflicto debido a sus diferencias fundamentales en cuanto a c�mo deber�a ser tratada y vista la naturaleza. */
= @381 /* Pero... creo que finalmente he logrado comprender al Dios de la Sangre. La violencia, a veces, es inevitable. */
= @408 /* Tabitha... ahora est�s a salvo. Espero que tu amo, Ivor, tambi�n lo est�. */
IF ~~ DO ~SetGlobal("P_Fall_SP3_2","GLOBAL",3) CreateItem ("LEAT20",1,2,1) EraseJournalEntry (@310014) EraseJournalEntry (@310015) EraseJournalEntry (@310016) EraseJournalEntry (@310017) UseItem("p_malar", Myself) DestroyItem("p_malar")~ SOLVED_JOURNAL @310018 EXIT
END 

END
