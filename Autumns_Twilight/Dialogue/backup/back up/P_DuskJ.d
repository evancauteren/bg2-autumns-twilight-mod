BEGIN P_DuskJ

// Bloques con las misiones de Dusk
// NOTA: BLOQUE Arranca desde el 100
// NOTA: enlace TRA Arranca desde el 3000
IF ~~ THEN BEGIN 1 // from:
  SAY @3000 /* ~Saludos, viejo amigo. Ha pasado un tiempo. Lamento traer visitas sin previo aviso. <CHARNAME>, este es Mathyus Davis. Un elfo explorador del Bosque de las Sombras.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 5
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3001 /* ~Mathyus, ya te lo he dicho. Puedes llamarme Dusk.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 9
END

IF ~~ THEN BEGIN 3 // from:
  SAY @3002 /* ~(Estoy seguro de que el dicho no es así...) Dime, Mathyus. ¿Has sido capaz de reparar mi armadura?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 10
END

IF ~~ THEN BEGIN 4 // from:
  SAY @3003 /* ~A todo esto... ¿dónde está Michelson? Claramente, su ausencia se nota.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 11
END

IF ~~ THEN BEGIN 5 // from:
  SAY @3014 /* ~¿Qué? Mathyus, ¿tienes idea de dónde pueda estar? Es peligroso ahí afuera para alguien como él.~ */
  IF ~~ THEN REPLY @3004 /* ~Dusk, ¿quién es ese tal Michelson?~ */ GOTO 6
  IF ~~ THEN REPLY @3005 /* ~Esto es genial... de seguro emplearemos una búsqueda por alguien desaparecido, ¿no es así?~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @3006 /* ~<CHARNAME>, lamento involucrarte en esto. Michelson es... ehmm... no sé cómo decirlo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 12
END

IF ~~ THEN BEGIN 7 // from:
  SAY @3015 /* ~*carraspeo* Bueno, Mathyus... ¿tienes idea de a dónde pueda estar?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 14
END

IF ~~ THEN BEGIN 8 // from:
  SAY @3007 /* ~De acuerdo, Mathyus. No debería ser tan complicado de traer, ¿verdad?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 21
END

// Ejemplo de llamado a archivo exterior desde respuesta de CHARNAME
IF ~~ THEN BEGIN 9 // from:
  SAY @3008 /* ~¿A qué te refieres? No me digas que...~ */
  IF ~~ THEN REPLY @3016 /* ~Dusk, ¿qué sucede?~ */ EXTERN ~P_MATUT~ 22
END

IF ~~ THEN BEGIN 10 // from:
  SAY @3009 /* ~Ya quisiera, <CHARNAME>. Michelson adora los chistes. Mathyus lo 'atrapó' así desde un principio.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 25
END

IF ~~ THEN BEGIN 11 // from:
  SAY @3010 /* ~Tanto, que Michelson le convirtió el cabello a su color favorito.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 26
END

IF ~~ THEN BEGIN 12 // from:
  SAY @3011 /* ~Te lo mereces, por haber dejado que huya. Se supone que debes cuidarlo, Mathyus.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 27
END

IF ~~ THEN BEGIN 13 // from:
  SAY @3012 /* ~En cuanto podamos, <CHARNAME>, deberíamos buscar a Michelson. Puede que no lo parezca, pero te aseguro que puede ser un aliado importante para la causa.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1","GLOBAL",2)
  ~ UNSOLVED_JOURNAL @210003 EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY @3013 /* ~Excelente, <CHARNAME>. Pongámonos en marcha.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1","GLOBAL",2)
  ~ UNSOLVED_JOURNAL @210003 EXIT
END

// Michelson Encounter

IF ~~ THEN BEGIN 15 // from:
  SAY @3017 /* ~*susurro* Creo que esa es su forma de expresar alegría, <CHARNAME>.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @3018 /* ~¡Michelson! Tanto tiempo, me alegra verte. Verás, Mathyus está preocupado por ti y...~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 3
END

IF ~~ THEN BEGIN 17 // from:
  SAY @3019 /* ~*suspiro* Rayos... <CHARNAME>, ¿alguna idea?~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 4
END

IF ~~ THEN BEGIN 18 // from:
  SAY @3020 /* ~Bueno, eso ha ido mejor de lo que he esperado. Lamento el gasto del oro, <CHARNAME>. Prometo compensártelo en un futuro.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @3023 /* ~Vamos, regresemos con Mathyus. De seguro ahora podrá entregarnos la Armadura Shilmista.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1","GLOBAL",4)
  ~ UNSOLVED_JOURNAL @210004 EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY @3024 /* ~Bueno, eso ha ido mejor de lo que he esperado. Al menos no gastamos una suma descarada de dinero en convencerlo.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 21 // from:
  SAY @3027 /* ~Oh, <CHARNAME>. Le preguntas al hombre equivocado... a decir verdad no me sé ninguno.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 7
END

IF ~~ THEN BEGIN 22 // from:
  SAY @3028 /* ~Debo admitir que ha estado bien, <CHARNAME>. Veremos si eso convence a Michelson.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MICHEL~ 8
END

IF ~~ THEN BEGIN 23 // from:
  SAY @3032 /* ~Rayos... corre como una gacela... Vamos, <CHARNAME>. Lo intentemos de nuevo.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1Failed","GLOBAL",1)
  ~ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY @3033 /* ~Hmm... No lo sé, <CHARNAME>. Eso podría ofender a los enanos, ¿no lo crees?~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 8
END

IF ~~ THEN BEGIN 25 // from:
  SAY @3037 /* ~(Creo que así no era el dicho, <CHARNAME>)~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 9
END

IF ~~ THEN BEGIN 26 // from:
  SAY @3035 /* ~¡Muy bien, <CHARNAME>! Has estado maravilloso.~ ~¡Muy bien, <CHARNAME>! Has estado maravillosa.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 27 // from:
  SAY @3036 /* ~Oh, <CHARNAME>. Creo que eso no ha sido una buena idea.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1Failed","GLOBAL",1)~EXTERN ~P_MICHEL~ 13
END

IF ~
Global("P_DuskMatMission1Failed","GLOBAL",1)
Global("P_Dusk_T2","GLOBAL",0)
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 28 // from:
  SAY @3039 /* ~El pequeñín no nos lo ha hecho fácil, Mathyus. Pero por suerte, tuvimos éxito, pese a sufrir alguna de sus travesuras.~ */
  IF ~~ THEN DO ~AddexperienceParty(10000)~ EXTERN ~P_MATUT~ 31
END

IF ~~ THEN BEGIN 29 // from:
  SAY @3040 /* ~¡Finalmente! Mi preciada armadura vuelve conmigo... gracias, amigos. Gracias a ti también, <CHARNAME>.~ */
  IF ~~ THEN REPLY @3041 /* ~Me alegra que hayamos podido ayudar.~ */ EXTERN ~P_MATUT~ 33
  IF ~~ THEN REPLY @3042 /* ~*ejem* Digamos que nada es gratis en esta vida, caballeros. Espero que este esfuerzo valga, al menos, una recompensa.~ */ EXTERN ~P_MATUT~ 33
  IF ~~ THEN REPLY @3043 /* ~No hay problema... sólo, trata de no perder de vista al renacuajo de nuevo, Mathyus, ¿de acuerdo?~ */ EXTERN ~P_MATUT~ 33
END

IF ~~ THEN BEGIN 30 // from:
  SAY @3044 /* ~Ermm... un pequeño detalle que olvidé mencionar. Perdón.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 39
END

IF ~~ THEN BEGIN 31 // from:
  SAY @3045 /* ~(Hmmm... no estoy seguro de que así sea el dicho)~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 42
END

IF ~~ THEN BEGIN 32 // from:
  SAY @3047 /* ~Te lo agradezco, amigo mío.~ */
    IF ~~ THEN REPLY @3048 /* ~¿Una búsqueda? Dusk, ¿a qué se refiere?~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @3049 /* ~Ah, <CHARNAME>. No te preocupes... a su debido tiempo lo sabrás. No es nada que no podamos manejar.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 49
END

IF ~Global("P_DuskMatMission1Failed","GLOBAL",0)
Global("P_Dusk_T2","GLOBAL",0)
Global("P_Dusk_Mathyus_Enc","LOCALS",1)
OR(2)
AreaCheck("P_AR14")
AreaCheck("P_BR14")~ THEN BEGIN 34 // from:
  SAY @3038 /* ~A decir verdad, Mathyus, es todo mérito de <CHARNAME>. Ha sabido manejar el asunto sin tapujos. Michelson no es alguien fácil de lidiar.~ */
  IF ~~ THEN DO ~AddexperienceParty(15000)~ EXTERN ~P_MATUT~ 31
END

IF ~~ THEN BEGIN 35 // from:
  SAY @3050 /* ~Erhm... está bien, Mathyus. ¡Michelson! Te encargo mi arma. Confío en ustedes.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 21
END

IF ~~ THEN BEGIN 36 // from:
  SAY @3051 /* ~Vaya... el poder que irradia... es increíble...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 60
END

IF ~~ THEN BEGIN 37 // from:
  SAY @3052 /* ~De acuerdo... aquí tienes... (Rayos, me siento desnudo)~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 66
END

IF ~~ THEN BEGIN 38 // from:
  SAY @3053 /* ~Es mucho más pesada... pero su artesanía es magnífica...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 68
END


IF ~~ THEN BEGIN 39 // from:
  SAY @3055 /* ~Vaya... el esfuerzo finalmente ha valido la pena.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 104
END

IF ~~ THEN BEGIN 40 // from:
  SAY @3056 /* ~¡¿Qué?! Rayos, <CHARNAME>, ¿qué has hecho con mi bastón? (eso me pasa por confiarte mis cosas). Será mejor que lo busquemos y volvamos. La Vengadora Real es algo que vale la pena tener, créeme.~ */
  IF ~~ THEN DO ~SetGlobal ("p_staff_lost", "GLOBAL", 1)~ EXTERN ~P_MATUT~ 52
END

IF ~~ THEN BEGIN 41 // from:
  SAY @3057 /* ~Gracias por ayudarme a recuperarlo, <CHARNAME>. Así, ambos nos evitamos el incómodo momento en que te pateo el trasero por haberlo perdido en primer lugar. *sonríe*~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 105
END

IF ~~ THEN BEGIN 42 // from:
  SAY @3058 /* ~El bastón shilmista me ha acompañado desde un principio... pero la Vengadora Real nos servirá mejor para nuestro propósito... Así que sí... acepto el cambio.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 106
END

IF ~~ THEN BEGIN 43 // from:
  SAY @3059 /* ~*suspiro* Un trato es un trato, mi pequeño amigo. Aquí tienes mi preciado bastón shilmista.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 48
END

IF ~~ THEN BEGIN 44 // from:
  SAY @3054 /* ~Reunir el equipo del Duque no ha sido fácil, Mathyus y Michelson...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 101
END

IF ~~ THEN BEGIN 45 // from:
  SAY @3058 /* ~El bastón shilmista me ha acompañado desde un principio... pero la Vengadora Real nos servirá mejor para nuestro propósito... Así que sí... acepto el cambio.~ */
  IF ~~ THEN DO ~SetGlobal ("p_staff_lost", "GLOBAL", 2) SetGlobal ("P_WSSTP_vengadora_real", "GLOBAL", 1)~ EXTERN ~P_MATUT~ 106
END


// Primer encuentro con Demoledor

IF ~~ THEN BEGIN 46 // from:
  SAY @3060 /* ~¡¿Demole?! ¿Qué diantes haces aquí?~ */
    IF ~~ THEN REPLY @3061 /* ~Dusk, ¿conoces a este saco de pulgas?~ */ GOTO 47
    IF ~~ THEN REPLY @3062 /* ~¡Pero qué perrito más tierno! ¿Lo conoces, Dusk? ¿Cómo se llama?~ */ GOTO 47
    IF ~~ THEN REPLY @3063 /* ~Genial, un perro callejero... imagino que no lo iremos a adoptar, ¿eh? Esto no es un refugio animal, muchacho.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @3064 /* ~<CHARNAME>, éste es Demoledor. No es un perro cualquiera, como aparenta. Es el compañero animal de Mathyus.~ */
    IF ~~ THEN REPLY @3065 /* ~¿Demoledor? No me parece tan demoledor a mi parecer.~ */ EXTERN ~P_DEMOLE~ 3
    IF ~~ THEN REPLY @3066 /* ~¿Es de Mathyus? No sé por qué no me sorprende.~ */ EXTERN ~P_DEMOLE~ 3
END

IF ~~ THEN BEGIN 48
  SAY @3067 /* ~¿Qué es lo que traes aquí, Demole? Déjame ver esta nota...~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @3068 /* ~"Querido Dusk, hemos encontrado una pista sobre los ataques a tu destacamento. Será mejor que vengas cuanto antes.
  Atentamente, 
  Mathyus, el poderoso elfo guardián de Shilmista."~ */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from:
  SAY @3069 /* ~<CHARNAME>, deberíamos ir cuanto antes al Distrito del Puerto a ver a Mathyus.~ */
    IF ~~ THEN REPLY @3070 /* ~¿Debe ser inmediato, Dusk? Tenemos cosas pendientes por hacer.~ */ GOTO 51
    IF ~~ THEN REPLY @3071 /* ~¿Qué sucede, Dusk? Espero que no sea algo grave.~ */ GOTO 52
    IF ~~ THEN REPLY @3072 /* ~De acuerdo, iremos de inmediato.~ */ GOTO 53
END

IF ~~ THEN BEGIN 51
  SAY @3073 /* ~Hagamos lo que tengamos que hacer, <CHARNAME>, y luego, acompáñame. Necesitaré de tu ayuda, seguramente.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 52
  SAY @3074 /* ~No estoy seguro, amigo mío. Pero lo sabremos en cuanto vayamos.~ ~No estoy seguro, amiga mía. Pero lo sabremos en cuanto vayamos.~*/
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 53
  SAY @3075 /* ~Gracias, <CHARNAME>.~*/
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @3076 /* ~Demoledor, corre y dile a tu maestro que nos espere, ¿de acuerdo?~ */
  IF ~~ THEN EXTERN ~P_DEMOLE~ 4
END

IF ~Global ("P_Dusk_1stTDemole","GLOBAL",2) 
    ~ THEN BEGIN 55 // from:
  SAY @3077 /* ~Pero, ¿qué...?~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_1stTDemole","GLOBAL",3)~ EXTERN ~P_DEMOLE~ 0
END

// MISION 2 

IF ~~ THEN BEGIN 56 // from:
  SAY @3078 /* ~Mathyus, ¿finalmente has podido encontrarlos?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 109
END

IF ~~ THEN BEGIN 57 // from:
  SAY @3079 /* ~Excelente, Mathyus... excelente...~ */
    IF ~~ THEN REPLY @3080 /* ~Dusk, creo que es hora de que nos digas de qué va todo esto.~ */ GOTO 58
    IF ~~ THEN REPLY @3081 /* ~Esto está relacionado con tu antiguo grupo de soldados, ¿verdad?~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from:
  SAY @3082 /* ~<CHARNAME>, lamento haberte tenido en las sombras respecto a este asunto.~ */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from:
  SAY @3083 /* ~Cuando arribamos a estas tierras, por el norte, mi destacamento y yo fuimos atacados por oleadas de orcos y trolls de las colinas. Esto debo habértelo mencionado, ¿no es así?~ */
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from:
  SAY @3084 /* ~Todos... todos mis compañeros fueron abatidos en combate por estas horribles criaturas...~ */
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from:
  SAY @3085 /* ~Una vez que mis heridas fueron curadas en Shilmista, volví a buscar sus cuerpos y darles un apropiado entierro.~ */
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from:
  SAY @3086 /* ~Mientras encontraba los... los restos que podía, en mi interior no podía evitar preguntarme...~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from:
  SAY @3087 /* ~¿Qué tal si estos ataques no fueron al azar? ¿Qué tal si fueron orquestados por una fuerza oscura que no puedo vislumbrar?~ */
    IF ~~ THEN REPLY @3088 /* ~¿De verdad crees que los orcos son capaces de tales planes, Dusk? Les das demasiado crédito a mi parecer.~ */ GOTO 64
    IF ~~ THEN REPLY @3089 /* ~¿Crees que esto puede haber sido originado por alguien más allá de los orcos?~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from:
  SAY @3090 /* ~Si me lo hubieses preguntado en ese entonces, no habría estado tan seguro. Pero ahora...~ */
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from:
  SAY @3091 /* ~Durante mi entrenamiento para ser un Asesino de Magos, pude vislumbrar un escudo con el emblema del Dragón Púrpura. El mismo estaba roto... partido por un feroz combate.~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from:
  SAY @3092 /* ~Esa imagen quedó en mi mente, hasta que pude venir aquí y comentárselo a Mathyus.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 110
END

IF ~~ THEN BEGIN 67 // from:
  SAY @3093 /* ~¡Estoy seguro de que son ellos, <CHARNAME>!~ */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from:
  SAY @3094 /* ~Lo vi claramente, hace mucho tiempo, en mi mente... humanoides portando artefactos de Cormyr, como si de un trofeo se tratase.~ */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from:
  SAY @3095 /* ~No ha pasado mucho tiempo desde que encomendé esta búsqueda a Mathyus... eso quiere decir que se encuentran relativamente cerca de Athkatla, <CHARNAME>.~ */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from:
  SAY @3096 /* ~Lo que tenemos que hacer está claro: debemos dar caza a estas criaturas. Daré justicia a mis compañeros caídos.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 112
END

IF ~~ THEN BEGIN 71 // from:
  SAY @3097 /* ~Mathyus, ya hemos hablado al respecto. Ahora, como me has prometido... dadme la ubicación de este grupo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 113
END

IF ~~ THEN BEGIN 72 // from:
  SAY @3097 /* ~Mathyus, ya hemos hablado al respecto. Ahora, como me has prometido... dadme la ubicación de este grupo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 113
END

IF ~~ THEN BEGIN 73 // from:
  SAY @3099 /* ~Gracias, Mathyus... de verdad.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 115
END

IF ~~ THEN BEGIN 74 // from:
  SAY @3100 /* ~No te preocupes, amigo. <CHARNAME> viaja conmigo... y cuento con su consejo en momentos difíciles.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 116
END

IF ~~ THEN BEGIN 75 // from:
  SAY @3101 /* ~De acuerdo, Mathyus. Ten por seguro que volveremos... victoriosos.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission2","GLOBAL",3)~ UNSOLVED_JOURNAL @210007 EXIT
END

IF ~Global ("P_DuskMatMission2","GLOBAL",4) Global ("P_DuskMatMission3","GLOBAL",0)~ THEN BEGIN 76
SAY @3102 /* Finalmente... ¡Les hemos encontrado! El escudo púrpura... tenía razón, <CHARNAME>... ellos lo tienen... */
IF ~~ THEN DO ~SetGlobal ("P_DuskMatMission2","GLOBAL",5)~ EXTERN ~P_FALON~ 2
END

IF ~~ THEN BEGIN 77 // from:
  SAY @3103/* ~Tienes razón, <CHARNAME>. Escúchame bien, criatura... Tu maldad llega hasta aquí. ¡Por Cormyr, los condeno a muerte!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskMatMission2","GLOBAL",7)~ EXTERN ~P_FALON~ 3
END

IF ~~ THEN BEGIN 78 // from:
  SAY @3106/* ~¿Escuchar? ¡Son orcos! Lo único que deben escuchar es el sonido metálido de mi espada mientras atraviesa su oscuro corazón...~ */
    IF ~~ THEN REPLY @3107 /* ~No me parecías del tipo de hombre que se entrega a la furia tan fácilmente, Dusk. Por favor, escúchame... y escúchalos.~ */ GOTO 79
    IF ~~ THEN REPLY @3108 /* ~Estás en lo cierto, Dusk... El mal, siempre será el mal... ¡Ataquemos!~ */ GOTO 77
END

IF ~~ THEN BEGIN 79 // from:
  SAY @3109/* ~(Rayos...) Está bien, <CHARNAME>... seguiré tu consejo. ¡Criatura! Mi amigo me ha convencido de escucharte... así que... tienes nuestra atención.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 4
END

IF ~~ THEN BEGIN 80 // from:
  SAY @3112/* ~Ah... Sothillis... el ogro mago que ha creado su propio imperio... Ha logrado juntar una cantidad considerable de humanoides que sólo buscan quedarse con la tierra de los humanos aquí, en Amn. ¿Por qué habría de pensar que ustedes son diferentes a ellos?~ */
  IF ~~ THEN EXTERN ~P_FALON~ 5
END

IF ~~ THEN BEGIN 81 // from:
  SAY @3113/* ~Lo que cuentan suena muy bello... pero hay algo que no encaja en su historia...~ */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82 // from:
  SAY @3114/* ~Me refiero al escudo roto que llevan consigo. ¡Pertenece a la Orden de los Dragones Púrpuras de Cormyr! Exijo una respuesta, ¡ahora!~ */
  IF ~~ THEN EXTERN ~P_FALON~ 7
END

IF ~~ THEN BEGIN 83 // from:
  SAY @3115/* ~¿Pretendes que me crea eso, Falon? ¿Debo creer que el escudo apareció de la nada en tu campamento?~ */
  IF ~~ THEN EXTERN ~P_FALON~ 9
END

IF ~~ THEN BEGIN 84 // from:
  SAY @3116/* ~*suspiro* Odio admitirlo... pero el ettin tiene razón...~ */
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from:
  SAY @3117/* ~<CHARNAME>, lamento poner el peso de la decisión final en ti... pero mi corazón no permite a mi mente decidir claramente sobre el asunto. ¿Qué piensas al respecto?~ */
    IF ~~ THEN REPLY @3133 /* ~Dusk, creo que estos humanoides no son responsables por tu ataque...~ */ GOTO 86
    IF ~~ THEN REPLY @3134 /* ~Dusk, creo que estos humanoides merecen morir por lo que son: miembros del imperio de Sothillis.~ */ GOTO 77
    IF ~~ THEN REPLY @3135 /* ~Dusk, creo que debemos indagar más sobre este asunto. En especial, acerca del escudo roto de Cormyr.~ */ GOTO 87
    IF ~~ THEN REPLY @3136 /* ~Dusk, creo que nos están tendiendo una trampa. Debemos atacar antes de que sea demasiado tarde.~ */ GOTO 77
END

IF ~~ THEN BEGIN 86 // from:
  SAY @3137/* ~Puede que estés en lo cierto... pero siento que debemos indagar más...~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from:
  SAY @3138/* ~El asunto del escudo, Falon... me tiene desconcertado... Dime, ¿de dónde vienen?~ */
  IF ~~ THEN EXTERN ~P_FALON~ 10
END

IF ~~ THEN BEGIN 88 // from:
  SAY @3139/* ~Entiendo... ahora... sobre el escudo...~ */
  IF ~~ THEN EXTERN ~P_FALON~ 11
END

IF ~~ THEN BEGIN 89 // from:
  SAY @3140/* ~¿Energía negativa? Puede que el escudo... después de todo... haya sido plantado.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 13
END

IF ~~ THEN BEGIN 90 // from:
  SAY @3141/* ~No importa, Falon. Gracias a <CHARNAME>, hemos podido averiguar bastante del asunto.~ */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91 // from:
  SAY @3142/* ~Por cierto, puedes dejar de llamarme 'humano'. Mi nombre es Ardusk Aldant. Pueden llamarme Dusk.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 14
END

IF ~~ THEN BEGIN 92 // from:
  SAY @3143/* ~Me gustaría pedirles un último favor.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 15
END

IF ~~ THEN BEGIN 93 // from:
  SAY @3144/* ~El escudo de Cormyr... más allá de que esté roto, pertenece a mi gente. Me gustaría que me lo entregues.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 16
END

IF ~~ THEN BEGIN 94 // from:
  SAY @3145/* ~Te lo agradezco... ¿hay algo que pueda hacer por ustedes? Considérenlo como una forma de disculpa por mi presentación un tanto... agresiva hacia ustedes.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 17
END

IF ~~ THEN BEGIN 95 // from:
  SAY @3146/* ~El hecho de que sean desertores de Sothillis les complicaría la situación, ¿verdad? Entiendo...~ */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96 // from:
  SAY @3147/* ~Creo que podemos solucionar ese inconveniente. Si intervengo por ustedes en la Noble Orden del Radiante Corazón, quizás podamos hacer algo al respecto.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 18
END

IF ~~ THEN BEGIN 97 // from:
  SAY @3148/* ~Ustedes mantengan el perfil bajo y espérenme aquí. <CHARNAME>, deberíamos ir a la Noble Orden del Radiante Corazón a hablar con Sir Ryan Espinel. Estoy seguro de que él podrá ayudarnos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",1)~ UNSOLVED_JOURNAL @210009 EXIT 
END

IF ~Global ("P_DuskEvil","GLOBAL",2)~ THEN BEGIN 98 // from:
  SAY @3149 /* ~Por Cormyr, ¿quién rayos eres tú?~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskEvil","GLOBAL",3)~ EXTERN ~p_sornhi~ 0
END

IF ~~ THEN BEGIN 99 // from:
  SAY @3150 /* ~¿Qué...? ¡Mago, explícate! ¿Quién eres... y cómo es que me conoces?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 1
END

IF ~~ THEN BEGIN 100 // from:
  SAY @3151 /* ~Oh... rayos... <CHARNAME>... creo que este hechicero... es quien plantó el escudo en la tribu de estos humanoides...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 2
END

IF ~~ THEN BEGIN 101 // from:
  SAY @3152 /* ~No... yo...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 4
END

IF ~~ THEN BEGIN 102 // from:
  SAY @3153 /* ~Bastardo... ¿por qué? ¿Por qué lo has hecho? ¿Por qué querías que masacrara a estos inocentes...?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 5
END

IF ~~ THEN BEGIN 103 // from:
  SAY @3154 /* ~Das más vueltas que un gato con su presa, mago. ¡Exijo una explicación!~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 7
END

IF ~~ THEN BEGIN 104 // from:
  SAY @3155 /* ~¿Maestro? ¿De qué demonios estás hablando?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 8
END

IF ~~ THEN BEGIN 105 // from:
  SAY @3156 /* ~Maldito...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 11
END

IF ~~ THEN BEGIN 106 // from:
  SAY @3157 /* ~Desgraciado... Si te les acercas, yo...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 24
END

IF ~~ THEN BEGIN 107 // from:
  SAY @3158 /* ~*susurro* ¿Qué...?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 26
END

IF ~Global ("P_DuskEvil","GLOBAL",4)~ THEN BEGIN 108 // from:
  SAY @3159 /* ~...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskEvil","GLOBAL",5)~ GOTO 109
END

IF ~~ THEN BEGIN 109 // from:
  SAY @3160 /* ~<CHARNAME>... lo lamento...~ */
    IF ~~ THEN REPLY @3161 /* ~Y tienes razón, Dusk. Tus asuntos han hecho que un grupo de psicópatas descubran mi identidad.~ */ GOTO 110
    IF ~~ THEN REPLY @3162 /* ~Pierde el cuidado, Dusk. Tampoco es que sea un secreto tan bien guardado a estas alturas.~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from:
  SAY @3163 /* ~Intentaré compensártelo... con mi vida si es posible...~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from:
  SAY @3164 /* ~Sin embargo... no puedes comprender el odio que invade mi corazón...~ */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from:
  SAY @3165 /* ~Siento... siento una ira que apenas puedo contener...~ */
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113 // from:
  SAY @3166 /* ~No sólo he matado a las criaturas equivocadas... sino que expuse a mis seres queridos...~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from:
  SAY @3167 /* ~Creo... creo que el camino que he intentado seguir hasta ahora no ha funcionado... muchas veces... muchas veces intenté actuar de manera recta... creyendo... creyendo que eso siempre llevaría a buen puerto...~ */
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115 // from:
  SAY @3168 /* ~Pero sigo tomando las decisiones equivocadas... una y otra vez... y siempre pongo en peligro a los que me rodean...~ */
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116 // from:
  SAY @3169 /* ~Eso se acabó, <CHARNAME>... He sentido que me he contenido toda mi vida... y el camino de la violencia es el que he elegido, desde un principio.~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from:
  SAY @3170 /* ~Entonces... creo que esa es la respuesta... El camino que elijo ahora debe ser el correcto, ¿no es así?~ */
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from:
  SAY @3171 /* ~Gracias, <CHARNAME>... has abierto mis ojos... y por ello, te lo agradezco.~ */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119 // from:
  SAY @3172 /* ~Cuentas con mi lealtad, hasta el final de mis días. Te seguiré hasta que uno de los dos sea alcanzado por los brazos de la muerte.~ */
  IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120 // from:
  SAY @3173 /* ~Vamos... ya hemos tenido suficiente con lo que ha pasado hoy... Vayamos con Mathyus y expliquemos lo que aquí ha acontecido. Quizás sepan qué hacer con este maldito orbe...~ */
IF ~~ THEN DO ~SetGlobal ("P_DuskEvil","GLOBAL",5)~ UNSOLVED_JOURNAL @210010 EXIT 
END


/////////////////////////////////////////////////////////////

IF ~Global("Kayl1Done","GLOBAL",0) Global ("P_DuskGood","GLOBAL",1) 
Global ("P_DuskEvil","GLOBAL",0) 
Global ("P_Dusk_KAYL1NOTDONE","GLOBAL",0)~ THEN BEGIN 121 // from:
  SAY @3174 /* ~Sir Ryan Espinel, en nombre de Cormyr, es un placer saludarte.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_KAYL1NOTDONE","GLOBAL",1)~ GOTO 126
END


IF ~~ THEN BEGIN 126 // from:
  SAY @3179 /* ~Gracias, Sir Ryan. Estoy seguro de que <CHARNAME> estará a la altura de lo que requieras de él.~ ~Gracias, Sir Ryan. Estoy seguro de que <CHARNAME> estará a la altura de lo que requieras de ella.~ */
  IF ~~ THEN DO ~~  UNSOLVED_JOURNAL @210011 EXIT 
END

IF ~Global("Kayl1Done","GLOBAL",1) Global ("P_DuskGood","GLOBAL",1) 
Global ("P_Dusk_KAYL1NOTDONE","GLOBAL",1)~ THEN BEGIN 127 // from:
  SAY @3180 /* ~Sir Ryan, ahora que se ha resuelto el asunto de los paladines caídos...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_KAYL1NOTDONE","GLOBAL",2) 
  SetGlobal ("P_DuskMatMission2","GLOBAL",6)~ GOTO 128
END



IF ~~ THEN BEGIN 128 // from:
  SAY @3181 /* ~¡Formidables noticias! <CHARNAME>, volvamos a las Colinas Ventolanza y demos las buenas noticias a Falon y su tribu.~ */
  IF ~~ THEN DO ~~  UNSOLVED_JOURNAL @210012 EXIT 
END



// Kayl1Done 1
IF ~Global("Kayl1Done","GLOBAL",1) Global ("P_DuskGood","GLOBAL",1) 
Global ("P_DuskEvil","GLOBAL",0) Global ("P_Dusk_KAYL1NOTDONE","GLOBAL",0)~ THEN BEGIN 129 // from:
  SAY @3174 /* ~Sir Ryan Espinel, en nombre de Cormyr, es un placer saludarte.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_KAYL1NOTDONE","GLOBAL",2) 
  SetGlobal ("P_DuskMatMission2","GLOBAL",6)~ GOTO 128
END

IF ~~ THEN BEGIN 134 // from:
  SAY @3191 /* ~¡Falon! Buenas noticias: <CHARNAME> y yo hemos logrado convencer a Sir Ryan Espinel para que obtengan un hogar en la Noble Orden del Muy Radiante Corazón. Os indicaré a ti y a tu tribu cómo llegar...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",2) 
  SetGlobal ("P_DuskMatMission2","GLOBAL",7)
  SetGlobal ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ UNSOLVED_JOURNAL @210013 EXTERN  ~P_FALON~ 23
END

IF ~~ THEN BEGIN 135 // from:
  SAY @3192 /* ~Asimismo, creo que me corresponde decir... que creo que deberán brindar información sobre Sothillis a los paladines. No creo que haya precedentes de que reciban humanoides de tan buena gana en sus cuarteles.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from:
  SAY @3193 /* ~No creo que los caballeros sean tiranos. No serán obligados a hacer nada que no quieran, puesto a que me han dado su palabra. Caso contrario, no duden en acudir a mí...~ */
  IF ~~ THEN EXTERN  ~P_FALON~ 24
END

IF ~~ THEN BEGIN 137 // from:
  SAY @3182 /* ~Gracias, Ziben. Lo acepto, honrado...~ */
  IF ~~ THEN GOTO 158 //
END

IF ~~ THEN BEGIN 138 // from:
  SAY @3183 /* ~Vamos, <CHARNAME>. Creo que es hora actualizar el estado de la misión a Mathyus.~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",2) 
  SetGlobal ("P_DuskMatMission2","GLOBAL",7)
  SetGlobal ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ EXIT 
END

IF ~Global ("P_DuskGood","GLOBAL",2) ~ THEN BEGIN 139 // from:
  SAY @3149 /* ~Por Cormyr, ¿quién rayos eres tú?~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",3) ~ EXTERN ~p_sornhi~ 28
END

IF ~~ THEN BEGIN 140 // from:
  SAY @3150 /* ~¿Qué...? ¡Mago, explícate! ¿Quién eres... y cómo es que me conoces?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 29
END

IF ~~ THEN BEGIN 141 // from:
  SAY @3184 /* ~Oh... rayos... <CHARNAME>... creo que este hechicero... es quien plantó el escudo en la tribu de Falon...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 30
END

IF ~~ THEN BEGIN 142 // from:
  SAY @3185 /* ~Bastardo... Tú has plantado ese escudo en unos humanoides inocentes y ¿me llamas patético por haber hecho lo correcto?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 32
END

IF ~~ THEN BEGIN 143 // from:
  SAY @3154 /* ~Das más vueltas que un gato con su presa, mago. ¡Exijo una explicación!~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 34
END

IF ~~ THEN BEGIN 144 // from:
  SAY @3155 /* ~¿Maestro? ¿De qué demonios estás hablando?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 35
END

IF ~~ THEN BEGIN 145 // from:
  SAY @3156 /* ~Maldito...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 38
END

IF ~~ THEN BEGIN 146 // from:
  SAY @3157 /* ~Desgraciado... Si te les acercas, yo...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 51
END

IF ~~ THEN BEGIN 147 // from:
  SAY @3158 /* ~*susurro* ¿Qué...?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 53
END

IF ~Global ("P_DuskGood","GLOBAL",4)~ THEN BEGIN 148 // from:
  SAY @3159 /* ~...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",5)~ GOTO 149
END

IF ~~ THEN BEGIN 149 // from:
  SAY @3160 /* ~<CHARNAME>... lo lamento...~ */
    IF ~~ THEN REPLY @3161 /* ~Y tienes razón, Dusk. Tus asuntos han hecho que un grupo de psicópatas descubran mi identidad.~ */ GOTO 150
    IF ~~ THEN REPLY @3162 /* ~Pierde el cuidado, Dusk. Tampoco es que sea un secreto tan bien guardado a estas alturas.~ */ GOTO 150
END

IF ~~ THEN BEGIN 150 // from:
  SAY @3163 /* ~Intentaré compensártelo... con mi vida si es posible...~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from:
  SAY @3164 /* ~Sin embargo... no puedes comprender el odio que invade mi corazón...~ */
  IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152 // from:
  SAY @3165 /* ~Siento... siento una ira que apenas puedo contener...~ */
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153 // from:
  SAY @3186 /* ~Pero... pero creo que al menos no he cometido el error de atacar a Falon y su tribu.~ */
  IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154 // from:
  SAY @3187 /* ~Es gracias a ti, <CHARNAME>. Me has salvado de cometer un error imperdonable.~ */
  IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155 // from:
  SAY @3188 /* ~Esto puede que haya sido eso que llaman una de las encrucijadas de la vida... Creo que lo que nos separa de la maldad, muchas veces, es una simple decisión.~ */
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 156 // from:
  SAY @3189 /* ~Cuentas con mi lealtad, hasta el final de mis días, <CHARNAME>. Te seguiré, sabiendo que hay un halo al final del camino.~ */
  IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157 // from:
  SAY @3190 /* ~Por lo pronto, volvamos con Mathyus. Puede que mis amigos sepan algo acerca de este orbe maldito...~ */
IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",5)~ UNSOLVED_JOURNAL @210014 EXIT 
END

IF ~~ THEN BEGIN 158 // from:
  SAY @3194 /* ~Estoy seguro de que nuestros caminos volverán a cruzarse algún día, amigos. Mientras tanto, les visitaré en el Distrito del Templo cuando pueda.~ */
  IF ~~ THEN GOTO 138
END


//////////////////////////////////////////////////////

// MISSION 2 FINAL - EVIL PATH

IF ~~ THEN BEGIN 159 // from:
  SAY @3195 /* ~Hemos encontrado al grupo de humanoides, Mathyus. La información brindada por Demoledor era certera.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission2","GLOBAL",8)
  SetGlobal ("P_DuskEvil","GLOBAL",6) ~ EXTERN ~P_DEMOLE~ 7
END

IF ~~ THEN BEGIN 160 // from:
  SAY @3196 /* ~Sin embargo, ellos no eran los responsables del ataque a mi destacamento...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 129
END

IF ~~ THEN BEGIN 161 // from:
  SAY @3197 /* ~Así es... mientras hablamos, su sangre alimenta la tierra de Colinas Ventolanza.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 132
END

IF ~~ THEN BEGIN 162 // from:
  SAY @3198 /* ~Eran desertores del imperio de Sothillis. Merecían su destino final, Mathyus.~ */
  IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 163 // from:
  SAY @3199 /* ~¿Esa razón te parece suficiente?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 134
END

IF ~~ THEN BEGIN 164 // from:
  SAY @3200 /* ~Entonces, murieron por ser humanoides, Mathyus. No le des tanta vuelta.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 135
END

IF ~~ THEN BEGIN 165 // from:
  SAY @3201 /* ~Cuando acabamos con los humanoides, un misterioso mago hizo aparición.~ */
  IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 166 // from:
  SAY @3202 /* ~Se hacía llamar Sornhil. Fue el responsable de plantar el escudo cormyreano en el campamento de los humanoides.~ */
  IF ~~ THEN GOTO 167
END

IF ~~ THEN BEGIN 167 // from:
  SAY @3203 /* ~Pero lo supe una vez que acabé con ellos.~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from:
  SAY @3204 /* ~Luego de una breve... charla, me entregó este orbe.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 53
END

IF ~~ THEN BEGIN 169 // from:
  SAY @3205 /* ~Entiendo... y, ¿qué debo hacer para liberar su poder?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 140
END

IF ~~ THEN BEGIN 170 // from:
  SAY @3206 /* ~Ya veo... Si ustedes logran extirpar esa maldad, los poderes del mismo se verían diezmados, ¿no es así?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 142
END

IF ~~ THEN BEGIN 171 // from:
  SAY @3207 /* ~En definitiva, nadie está seguro de qué es lo que pueda pasar si lo uso...~ */
  IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172 // from:
  SAY @3208 /* ~Pero... si Sornhil y su orden son lo que creo que son... no puedo darme el lujo de desperdiciar tal poder.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 145
END

IF ~~ THEN BEGIN 173 // from:
  SAY @3209 /* ~Voy a usarlo, Mathyus. Necesito saber cómo se activa.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 146
END

IF ~~ THEN BEGIN 174 // from:
  SAY @3210 /* ~¡Callaos los dos! He tomado mi decisión y no hay vuelta atrás. Mathyus, sólo lo preguntaré una vez. ¿Cómo se activa el orbe?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 147
END

IF ~~ THEN BEGIN 175 // from:
  SAY @3211 /* ~Bien. Aquí está...~ */
  IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 176 // from:
  SAY @3159 /* ~...~ */
    IF ~~ THEN REPLY @3212 /* ~¿Hola? ¡Dusk! Deja de tontear y háblamos.~ */  EXTERN ~P_MATUT~ 148
    IF ~~ THEN REPLY @3213 /* ~¿Dusk? Mathyus, ¿qué está pasando? El orbe ha comenzado a brillar.~ */  EXTERN ~P_MATUT~ 148
END

IF ~~ THEN BEGIN 177 // from:
  SAY @3214 /* ~He visto lo que me ofreces... y lo acepto. Ahora... ¡dame tu poder!~ */
  IF ~~ THEN DO ~SetGlobal ("P_EVIL_ORB","GLOBAL",1) DestroyItem("p_orbe1")~ EXIT 
END

IF ~Global ("P_EVIL_ORB","GLOBAL",2)~ THEN BEGIN 178 // from:
  SAY @3215 /* ~Ha terminado...~ */
  IF ~~ THEN DO ~SetGlobal ("P_EVIL_ORB","GLOBAL",3) CreateItem ("p_swevi1",1,1,0) SetGlobal ("P_DUSK_IS_EVIL","GLOBAL",1)~ GOTO 179
END

IF ~~ THEN BEGIN 179 // from:
  SAY @3216 /* ~¿Qué miráis?~ */
    IF ~~ THEN REPLY @3217 /* ~¿Dusk? Por Candelero, te ves sumamente diferente.~ */  GOTO 180
    IF ~~ THEN REPLY @3218 /* ~Dusk, ¿estás bien? Has... cambiado.~ */  GOTO 180
END

IF ~~ THEN BEGIN 180 // from:
  SAY @3219 /* ~Nunca antes me sentí tan vivo...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 149
END

IF ~~ THEN BEGIN 181 // from:
  SAY @3220 /* ~Mathyus... aún tienes la misión de encontrar a los verdaderos culpables del ataque a mi destacamente, ¿entendido?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 150
END

IF ~~ THEN BEGIN 182 // from:
  SAY @3221 /* ~Y esta vez... no toleraré fallos. ¿Me has comprendido?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 151
END

IF ~~ THEN BEGIN 183 // from:
  SAY @3222 /* ~Excelente...~ */
  IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 184 // from:
  SAY @3223 /* ~<CHARNAME>, será mejor que continuemos con nuestros asuntos... Cuando llegue el momento, solicitaré tus servicios para dar caza a unos orcos.~ */
    IF ~~ THEN REPLY @3224 /* ~Vaya, no te hacía tan exigente. De acuerdo.~ */  GOTO 185
    IF ~~ THEN REPLY @3225 /* ~¿Quién te crees que eres, muchacho? Haré lo que me plazca cuando se me plazca.~ */  GOTO 186
END

IF ~~ THEN BEGIN 185 // from:
  SAY @3226 /* ~Así me gusta...~ */
  IF ~~ THEN DO ~SetGlobal ("P_EVIL_ORB","GLOBAL",3) SetGlobal("P_DuskMatMission2","GLOBAL",8) SetGlobal ("P_DUSK_IS_EVIL","GLOBAL",1) EraseJournalEntry (@210006) EraseJournalEntry (@210007) EraseJournalEntry (@210008) EraseJournalEntry (@210009) EraseJournalEntry (@210010) EraseJournalEntry (@210011) EraseJournalEntry (@210012) EraseJournalEntry (@210013) EraseJournalEntry (@210014)~ SOLVED_JOURNAL @210015 EXIT
  END

IF ~~ THEN BEGIN 186 // from:
  SAY @3227 /* ~Bien, <CHARNAME>... mantén esa furia asesina... estoy seguro de que nos será útil en un futuro no muy lejano...~ */
  IF ~~ THEN DO ~SetGlobal ("P_EVIL_ORB","GLOBAL",3) SetGlobal("P_DuskMatMission2","GLOBAL",8) SetGlobal ("P_DUSK_IS_EVIL","GLOBAL",1) EraseJournalEntry (@210006) EraseJournalEntry (@210007) EraseJournalEntry (@210008) EraseJournalEntry (@210009) EraseJournalEntry (@210010) EraseJournalEntry (@210011) EraseJournalEntry (@210012) EraseJournalEntry (@210013) EraseJournalEntry (@210014)~ SOLVED_JOURNAL @210015 EXIT
  END

/////////////////////////////////////////////////////////////////

// MISSION 2 FINAL - GOOD PATH

IF ~~ THEN BEGIN 187 // from:
  SAY @3195 /* ~Hemos encontrado al grupo de humanoides, Mathyus. La información brindada por Demoledor era certera.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission2","GLOBAL",8) 
  SetGlobal ("P_DuskGood","GLOBAL",6) ~ EXTERN ~P_DEMOLE~ 10
END

IF ~~ THEN BEGIN 188 // from:
  SAY @3196 /* ~Sin embargo, ellos no eran los responsables del ataque a mi destacamento...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 153
END

IF ~~ THEN BEGIN 189 // from:
  SAY @3228 /* ~Así es... El grupo resultó ser desertor del imperio Sothillis. Se encontraban huyendo hacia el sur cuando dimos con ellos.~ */
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190 // from:
  SAY @3230 /* ~Luego de una breve conversación, y gracias a la intervención de <CHARNAME>, resolví que estarían más seguros en Athkatla.~ */
  IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191 // from:
  SAY @3231 /* ~Acudí a la Noble Orden del Radiante Corazón y Sir Ryan Espinel les dio un hogar en sus cuarteles.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 156
END

IF ~~ THEN BEGIN 192 // from:
  SAY @3232 /* ~¿Mi destino? No entiendo, ¿a qué se refiere?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 159
END

IF ~~ THEN BEGIN 193 // from:
  SAY @3233 /* ~Pues... creí que al fin podría vengar a mis compañeros caídos, Mathyus. Sin embargo, sólo culminó en una búsqueda que nos dejó más dudas que respuestas.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 166
END

IF ~~ THEN BEGIN 194 // from:
  SAY @3234 /* ~Cuando le dimos un nuevo hogar a los humanoides, un misterioso mago hizo aparición.~ */
  IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 195 // from:
  SAY @3235 /* ~Se hacía llamar Sornhil. Fue el responsable de plantar el escudo cormyreano en el campamento de Falon.~ */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from:
  SAY @3204 /* ~Luego de una breve... charla, me entregó este orbe.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 63
END

IF ~~ THEN BEGIN 197 // from:
  SAY @3205 /* ~Entiendo... y, ¿qué debo hacer para liberar su poder?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 171
END

IF ~~ THEN BEGIN 198 // from:
  SAY @3206 /* ~Ya veo... Si ustedes logran extirpar esa maldad, los poderes del mismo se verían diezmados, ¿no es así?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 173
END

IF ~~ THEN BEGIN 199 // from:
  SAY @3207 /* ~En definitiva, nadie está seguro de qué es lo que pueda pasar si lo uso...~ */
  IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 200 // from:
  SAY @3208 /* ~Pero... si Sornhil y su orden son lo que creo que son... no puedo darme el lujo de desperdiciar tal poder.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 176
END

IF ~~ THEN BEGIN 201 // from:
  SAY @3236 /* ~Debo usarlo, Mathyus... La Orden a la que pertenece Sornhil... Debo averiguar más acerca de ellos. Utilizar el orbe, a pesar del peligro que conlleve, es la única opción. Aunque...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 177
END

IF ~~ THEN BEGIN 202 // from:
  SAY @3237 /* ~Te escucho, <CHARNAME>. Y aunque aprecio tu consejo... tengo dudas en mi corazón. Creo... creo que...~ */
  IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203 // from:
  SAY @3238 /* ~De hecho, la purificación parece ser una opción viable. Michelson es un ser poderoso, capaz de lograr algo así, ¿no es así, Mathyus?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 178
END

IF ~~ THEN BEGIN 204 // from:
  SAY @3239 /* ~Michelson... lo has logrado...~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 69
END

IF ~~ THEN BEGIN 205 // from:
  SAY @3240 /* ~Gracias, amigo mío. Mathyus, creo que estoy listo para usarlo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 179
END

IF ~~ THEN BEGIN 206 // from:
  SAY @3241 /* ~Bien. Aquí está... el orbe purificado...~ */
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207 // from:
  SAY @3159 /* ~...~ */
    IF ~~ THEN REPLY @3212 /* ~¿Hola? ¡Dusk! Deja de tontear y háblamos.~ */  EXTERN ~P_MATUT~ 181
    IF ~~ THEN REPLY @3213 /* ~¿Dusk? Mathyus, ¿qué está pasando? El orbe ha comenzado a brillar.~ */  EXTERN ~P_MATUT~ 181
END

IF ~~ THEN BEGIN 208 // from:
  SAY @3242 /* ~Gracias... por otorgarme esa visión...~ */
  IF ~~ THEN DO ~SetGlobal ("P_GOOD_ORB","GLOBAL",1) DestroyItem("p_orbev")~ EXIT 
END

IF ~Global ("P_GOOD_ORB","GLOBAL",2)~ THEN BEGIN 209 // from:
  SAY @3215 /* ~Ha terminado...~ */
  IF ~~ THEN DO ~SetGlobal ("P_GOOD_ORB","GLOBAL",3) CreateItem ("p_swgoo1",1,1,0) SetGlobal ("P_DUSK_IS_GOOD","GLOBAL",1)~ GOTO 210
END

IF ~~ THEN BEGIN 210 // from:
  SAY @3216 /* ~¿Qué miráis?~ */
    IF ~~ THEN REPLY @3217 /* ~¿Dusk? Por Candelero, te ves sumamente diferente.~ */  GOTO 211
    IF ~~ THEN REPLY @3218 /* ~Dusk, ¿estás bien? Has... cambiado.~ */  GOTO 211
END

IF ~~ THEN BEGIN 211 // from:
  SAY @3243 /* ~Agradezco la atención, pero hay cosas más importantes que atender, ¿no lo creen?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 182
END

IF ~~ THEN BEGIN 212 // from:
  SAY @3244 /* ~El orbe ha desaparecido, Mathyus. Creo que ha tomado la forma de esta espada esmeralda que ha señalado Michelson, la cual resplandece en mis manos. He visto tus moviemientos de alegría, Demoledor. Gracias por precuparse.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 183
END

IF ~~ THEN BEGIN 213 // from:
  SAY @3245 /* ~Gracias, Mathyus. Sin embargo, no se expongan al peligro. Sornhil y su Orden de Hechiceros parecen ser algo a tratar, pero si no sabemos más de ellos, puede que eso no sea una mala señal.~ */
  IF ~~ THEN GOTO 214
END

IF ~~ THEN BEGIN 214 // from:
  SAY @3246 /* ~La venganza no siempre es la respuesta. Ahora lo sé. <CHARNAME>, es gracias a ti que mi corazón está más sosegado.~ */
  IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 215 // from:
  SAY @3247 /* ~Los muertos no desean venganza... asumo que querrían que aquellos que fueron sus seres amados vivan en paz y armonía. Hablo por mis compañeros caídos en batalla.~ */
    IF ~~ THEN REPLY @3248 /* ~Una sabia decisión, amigo mío. Vamos, tenemos asuntos que atender.~ */  GOTO 217
    IF ~~ THEN REPLY @3249 /* ~Vaya, Dusk. Estás totalmente cambiado. Creo que me gusta esta versión de ti.~ */  GOTO 217
	IF ~~ THEN REPLY @3250 /* ~No empezarás a cantar y a bailar como ese leprechaun, ¿eh?~ */  GOTO 216
END

IF ~~ THEN BEGIN 216 // from:
  SAY @3251 /* ~Muy gracioso, <CHARNAME>. Vamos, continuemos con nuestro viaje.~ ~Muy graciosa, <CHARNAME>. Vamos, continuemos con nuestro viaje.~*/
  IF ~~ THEN DO ~SetGlobal ("P_GOOD_ORB","GLOBAL",3) SetGlobal("P_DuskMatMission2","GLOBAL",8) SetGlobal ("P_DUSK_IS_GOOD","GLOBAL",1) EraseJournalEntry (@210006) EraseJournalEntry (@210007) EraseJournalEntry (@210008) EraseJournalEntry (@210009) EraseJournalEntry (@210010) EraseJournalEntry (@210011) EraseJournalEntry (@210012) EraseJournalEntry (@210013) EraseJournalEntry (@210014)~ SOLVED_JOURNAL @210016 EXIT
  END

IF ~~ THEN BEGIN 217 // from:
  SAY @3252 /* ~Gracias, <CHARNAME>. Vamos, continuemos con nuestro viaje.~ */
  IF ~~ THEN DO ~SetGlobal ("P_GOOD_ORB","GLOBAL",3) SetGlobal("P_DuskMatMission2","GLOBAL",8) SetGlobal ("P_DUSK_IS_GOOD","GLOBAL",1) EraseJournalEntry (@210006) EraseJournalEntry (@210007) EraseJournalEntry (@210008) EraseJournalEntry (@210009) EraseJournalEntry (@210010) EraseJournalEntry (@210011) EraseJournalEntry (@210012) EraseJournalEntry (@210013) EraseJournalEntry (@210014)~ SOLVED_JOURNAL @210016 EXIT
  END

IF ~~ THEN BEGIN 218 // from:
  SAY @3253 /* ~Erm... Gracias, Coco, pero estamos bien. Con <CHARNAME> tenemos algunos asuntos pendientes que atender... (Rayos, me costará sacarme de encima esta salsa de tomate)~ */
  IF ~~ THEN DO ~~ EXIT 
END


////////////////////////////////////////////////////////////////////


////////// MISSION 3
// DEMOLE
// EVIL
IF ~Global ("P_Dusk_2ndTDemole","GLOBAL",2)
    Global ("P_DUSK_IS_GOOD","GLOBAL",0) 
    ~ THEN BEGIN 219 // from:
  SAY @3262 /* ~Demoledor... confío en que tu interrupción sólo se deba a novedades sobre la misión que encomendé a tu maestro.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_2ndTDemole","GLOBAL",3)~ EXTERN ~p_demole~ 24
END

// GOOD
IF ~Global ("P_Dusk_2ndTDemole","GLOBAL",2)
	Global ("P_DUSK_IS_GOOD","GLOBAL",1) 
    ~ THEN BEGIN 220 // from:
  SAY @3263 /* ~¡Demole! Me alegra verte. Imagino que te envía Matyhus. ¿Hay novedades?~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_2ndTDemole","GLOBAL",3)~ EXTERN ~p_demole~ 24
END

IF ~~ THEN BEGIN 221 // from:
  SAY @3264 /* ~"¡Dusk! Finalmente hemos dado con ellos. O al menos, él. El jefe orco que ha organizado el ataque a tu destacamento se encuentra muy cerca de Athkatla. Es menester que regreses con <CHARNAME> a nuestra guarida para más detalles.
  Atentamente, Mathyus.
  El poderoso elfo shilmista."~ */
  IF ~~ THEN GOTO 222
END


IF ~~ THEN BEGIN 222 // from:
  SAY @3265 /* ~"El jefe orco..."~ */
  IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 223 // from:
  SAY @3266 /* ~Después de tanto tiempo... podré vengar a mis camaradas caídos...~ */
    IF ~~ THEN REPLY @3267 /* ~Es una buena noticia, Dusk. Sólo espero que Mathyus no la haya pifiado esta vez. Te acompañaré.~ */  GOTO 224
	IF ~Global("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN REPLY @3268 /* ~No tenemos tiempo para esto, Dusk. Deberá esperar.~ */  GOTO 232
	IF ~Global("P_DUSK_IS_GOOD","GLOBAL",1) ~ THEN REPLY @3268 /* ~No tenemos tiempo para esto, Dusk. Deberá esperar.~ */  GOTO 234
END

IF ~~ THEN BEGIN 224 // from:
  SAY @3269 /* ~Yo espero lo mismo, <CHARNAME>. Pero algo me dice que esta vez... esta vez es él...~ */
  IF ~~ THEN REPLY @3270 /* ~¿Él? ¿De quién estás hablando?~ */  EXTERN ~p_demole~ 14
END

IF ~~ THEN BEGIN 225 // from:
  SAY @3271 /* ~Alabarza, el Mutilador. Al menos, eso se jactaba de gritar mientras combatíamos en las llanuras del Este.~ */
  IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 226 // from:
  SAY @3272 /* ~Se trata de un orco que combatía con dos poderosas hachas. Logró acabar con cuatro de los nuestros antes de que pudiera encontrarle en el campo de batalla.~ */
  IF ~~ THEN GOTO 227
END

IF ~~ THEN BEGIN 227 // from:
  SAY @3273 /* ~Uno de sus impactos casi me decapita... por fortuna, mi casco impidió el golpe mortal, aunque se despedazó en el proceso.~ */
  IF ~~ THEN GOTO 228
END

IF ~~ THEN BEGIN 228 // from:
  SAY @3274 /* ~Logré asestar un golpe, aunque no de lleno, en su rostro. Creo que logré sacarle un ojo... aunque no estoy seguro. Algunos de sus esbirros acudieron en su ayuda en ese momento.~ */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229 // from:
  SAY @3275 /* ~Gritó con gran fuerza... y desde las sombras apareció un troll gigante, el cual nos hizo retroceder... Esa fue la última vez que supe de él.~ */
  IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 230 // from:
  SAY @3276 /* ~<CHARNAME>, estoy seguro de que Mathyus se refiere a Alabarza. Debe haber sobrevivido a sus heridas... y de seguro tiene consigo algún emblema de Cormyr.~ */
  IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 231 // from:
  SAY @3277 /* ~Demoledor, vuelve con tu maestro e indícale que iremos lo más pronto posible.~ */
  IF ~~ THEN EXTERN ~p_demole~ 15
END

IF ~~ THEN BEGIN 232 // from:
  SAY @3278 /* ~<CHARNAME>, si es el enemigo que creo que es, lo más probable es que cuente con un tesoro a tener en cuenta.~ */
  IF ~~ THEN GOTO 238
END

IF ~~ THEN BEGIN 233 // from:
  SAY @3283 /* ~Muy bien... no te necesito. Haré las cosas a mi propia manera, como dices. Dudo que nuestros caminos vuelvan a cruzarse...~ */
  IF ~~ THEN DO ~DestroyItem("p_brkshl") DestroyItem("p_stf1") DestroyItem("p_swr1") DestroyItem("p_swevi1") DestroyItem("p_dchan1") DestroyItem("p_orbe1") DestroyItem("p_sw1hdr")  LeaveParty() EscapeArea()~ EXTERN ~p_demole~ 16 
END

//GOOD
IF ~~ THEN BEGIN 234 // from:
  SAY @3284 /* ~Entiendo, <CHARNAME>... La venganza no clama mi corazón, aunque enfrentarnos a los orcos puede evitar muertes de inocentes.~ */
  IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 235 // from:
  SAY @3285 /* ~Si eso no te conmueve, puede que prefieras enfrentarle, simplemente, para demostrar tu propia fuerza o quizás arrebatar su tesoro.~ */
    IF ~~ THEN REPLY @3280 /* ~¿Tesoro dices? Ahora hablas mi idioma. Cuéntame más.~ */  GOTO 226
	IF ~~ THEN REPLY @3286 /* ~Hm, ahora que lo mencionas, un buen combate no vendría mal. Continúa.~ */  GOTO 226
	IF ~~ THEN REPLY @3287 /* ~Tienes razón con respecto a las posibles víctimas, Dusk. Lo lamento. Cuéntame más.~ */  GOTO 226
	IF ~~ THEN REPLY @3288 /* ~Me importan muy poco tus problemas, hombre. Quien manda aquí soy yo.~ */  GOTO 236
END

IF ~~ THEN BEGIN 236 // from:
  SAY @3289 /* ~De acuerdo, <CHARNAME>. No te presionaré por este asunto. Si la fortuna está de nuestro lado, puede que Alabarza siga allí cuando decidas investigar el asunto...~ */
  IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 237 // from:
  SAY @3290 /* ~Demoledor, vuelve con tu maestro e indícale que iremos cuando nos sea posible.~ */
  IF ~~ THEN EXTERN p_demole 15
END

IF ~~ THEN BEGIN 238 // from:
  SAY @3279 /* ~Si eso no te conmueve, puede que el reto de enfrentarte a alguien fuerte lo haga. Alabarza es un enemigo a temer.~ */
    IF ~~ THEN REPLY @3280 /* ~¿Tesoro dices? Ahora hablas mi idioma. Cuéntame más.~ */  GOTO 226
	IF ~~ THEN REPLY @3281 /* ~¿Más temible que yo, Dusk? Eso lo veremos. Muy bien, me has convencido. Cuéntame más.~ */  GOTO 226
	IF ~~ THEN REPLY @3282 /* ~Me importan muy poco tus problemas, hombre. Arréglatelas por tu propia cuenta.~ */  GOTO 233
END

////////////////////////////////////////////////////////////////////////////

/////// EVIL -> MATHYUS M3
IF ~~ THEN BEGIN 239 // from:
  SAY @3291 /* ~Al grano, Mathyus. Estoy seguro de que tienes algo... interesante qué contar, ¿no es así?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 189
END

IF ~~ THEN BEGIN 240 // from:
  SAY @3292 /* ~Lo sabía... no debe ser otro más que Alabarza, el Mutilador.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 190
END

IF ~~ THEN BEGIN 241 // from:
  SAY @3322 /* ~¿Si tú qué, Mathyus?, ¿si me dices el nombre ofensivo del clan de Alabarza? No soy una bestia, elfo. Puedo controlarme. Dilo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 193
END

IF ~~ THEN BEGIN 242 // from:
  SAY @3159 /* ~...~ */
  IF ~~ THEN GOTO 243
END

IF ~~ THEN BEGIN 243 // from:
  SAY @3293 /* ~(De repente, explota en una risa profunda y maligna)~ */
    IF ~~ THEN REPLY @3294 /* ~¿Qué es tan gracioso, Dusk?~ */  GOTO 244
    IF ~~ THEN REPLY @3295 /* ~Genial, se ha vuelto loco.~ */  GOTO 244
END

IF ~~ THEN BEGIN 244 // from:
  SAY @3296 /* ~¿No lo entiendes, <CHARNAME>? El orco bastardo ha renombrado su clan así porque ha cumplido la hazaña de matar a varios guerreros de la Orden del Dragón Púrpura.~ */
    IF ~~ THEN REPLY @3297 /* ~Tienes razón, no lo entiendo. Explícate.~ */  GOTO 245
    IF ~~ THEN REPLY @3298 /* ~¿Y eso qué tiene de gracioso?~ */  GOTO 245
END

IF ~~ THEN BEGIN 245 // from:
  SAY @3299 /* ~Entenderás la gracia del asunto, <CHARNAME>... cuando tenga el corazón del orco en mi mano y lo destruya frente a su cráneo aplastado...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 194
END

IF ~~ THEN BEGIN 246 // from:
  SAY @3323 /* ~¿Crees que algo así me asusta a mí o a <CHARNAME>?~ */
    IF ~~ THEN REPLY @3300 /* ~Pues, a mí me asusta un poco.~ */  GOTO 247
    IF ~~ THEN REPLY @3301 /* ~Tienes razón, Dusk. Acabar con ellos será pan comido.~ */  GOTO 248
END

IF ~~ THEN BEGIN 247 // from:
  SAY @3302 /* ~*susurro* Rayos, <CHARNAME>, no seas cobarde. Si tienes dudas, envíame al frente de batalla. Yo haré el resto.~ */
  IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 248 // from:
  SAY @3303 /* ~¡Ese es el espíritu, <CHARNAME>!~ */
  IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 249 // from:
  SAY @3304 /* ~¡Mathyus! Dadme la ubicación de este clan. <CHARNAME> y yo nos encargaremos de destruirlo por completo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 197
END

IF ~~ THEN BEGIN 250 // from:
  SAY @3305 /* ~Excelente... Volveremos victoriosos, elfo... ya lo verás...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",3)
  ~ UNSOLVED_JOURNAL @210019 EXIT
END

/////// GOOD -> MATHYUS M3
IF ~~ THEN BEGIN 251 // from:
  SAY @3306 /* ~¡Amigos! Siempre es un placer verlos. Mathyus, creo que tienes novedades que me conciernen, ¿no es así?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 199
END

IF ~~ THEN BEGIN 252 // from:
  SAY @3292 /* ~Lo sabía... no debe ser otro más que Alabarza, el Mutilador.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 200
END

IF ~~ THEN BEGIN 253 // from:
  SAY @3307 /* ~¿Qué sucede, Mathyus? Pueden decirme lo que sea. No perderé mi compostura.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 202
END

IF ~~ THEN BEGIN 254 // from:
  SAY @3159 /* ~...~ */
  IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255 // from:
  SAY @3308 /* ~Entiendo...~ */
    IF ~~ THEN REPLY @3309 /* ~¿Qué sucede, Dusk?~ */  GOTO 256
    IF ~~ THEN REPLY @3310 /* ~¿Te importaría compartir con el resto del grupo, muchacho?~ */  GOTO 256
END

IF ~~ THEN BEGIN 256 // from:
  SAY @3311 /* ~Alabarza ha renombrado su clan así porque ha cumplido la hazaña de matar a varios guerreros de la Orden del Dragón Púrpura.~ */
    IF ~~ THEN REPLY @3312 /* ~Oh... ya veo...~ */  GOTO 257
    IF ~~ THEN REPLY @3313 /* ~¡Bastardo! Imagino el odio que debe correr dentro de ti, Dusk.~ */  GOTO 257
END

IF ~~ THEN BEGIN 257 // from:
  SAY @3314 /* ~Supongo que sería lógico pensar que el deseo por vengarme puede llegar a poseerme, <CHARNAME>. Y debo admitir que estoy conteniendo mi ira en estos momentos... Pero esa no es la respuesta.~ */
  IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258 // from:
  SAY @3315 /* ~Sin embargo, Alabarza debe ser detenido. No por venganza, sino por justicia.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 203
END

IF ~~ THEN BEGIN 259 // from:
  SAY @3316 /* ~Gracias por la información, Mathyus. Sin embargo, creo que <CHARNAME> y yo podemos arreglárnosla bien.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 75
END

IF ~~ THEN BEGIN 260 // from:
  SAY @3317 /* ~Los Paladines... ya veo... Y puede que Falon también esté dispuesta a ayudar... ¿Qué dices, <CHARNAME>?~ */
    IF ~~ THEN REPLY @3318 /* ~Nah, nosotros solos podemos con esos humanoides, Dusk.~ */  EXTERN ~P_MATUT~ 207
    IF ~~ THEN REPLY @3319 /* ~Me parece una buena idea. ¿Nos ponemos en contacto con ellos?~ */ EXTERN ~P_MATUT~ 210
END

IF ~~ THEN BEGIN 261 // from:
  SAY @3320 /* ~Excelente, Mathyus. Volveremos en cuanto hayamos terminado de limpiar ese túmulo.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",3)
  ~ UNSOLVED_JOURNAL @210019 EXIT
END

IF ~~ THEN BEGIN 262 // from:
  SAY @3321 /* ~Muy bien... ¡Michelson, trae a Sir Ryan Espinel para que podamos informarle de nuestra situación!~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MICHEL~ 76 
END


///////////////////////////////////////////////////////

// Aparición de Valatar - EVIL
IF ~Global ("P_DUSK_VALATA_ENC1","GLOBAL",1) Global("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN BEGIN 263 // from:
  SAY @3325 /* ~Rayos... ¡otro mago más!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DUSK_VALATA_ENC1","GLOBAL",2)~ EXTERN ~p_valata~ 0
END

IF ~~ THEN BEGIN 264 // from:
  SAY @3326 /* ~(Rayos...) Veo que tú también estás al tanto de la identidad de <CHARNAME>.~ */
    IF ~~ THEN REPLY @3327 /* ~Y es lo obvio, Dusk. Estos tipos más que pertenecer a una Orden de Magos, deben pertenecer a una Orden de Chismosos.~ */  GOTO 265
    IF ~~ THEN REPLY @3328 /* ~Ya ni me ofende que mi secreto se sepa, Dusk. De igual manera, me interesa saber qué es lo que va a decir este hechicero. ¿Quién es y qué demonios hace aquí?~ */ GOTO 265
END

IF ~~ THEN BEGIN 265 // from:
  SAY @3329 /* ~¿Y quién se supone que eres tú, mago? ¿También eres un Encantador como tu amigo?~ */
  IF ~~ THEN EXTERN ~P_VALATA~ 1
END

// EVIL - DESPUES DE MATAR AL DEMONIO DE VALATAR
IF ~Global ("P_Dusk_Valata_Demon","GLOBAL",3) Global("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN BEGIN 266 // from:
  SAY @3330 /* ~Buen trabajo, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",4)~ GOTO 267
END

IF ~~ THEN BEGIN 267 // from:
  SAY @3331 /* ~Siento... una extraña sensación. Algo en mi interior me dice que debo atravesar el corazón del demonio.~ */
    IF ~~ THEN REPLY @3332 /* ~¡¿Atravesar qué?!~ */  GOTO 268	
    IF ~~ THEN REPLY @3333 /* ~Dusk, la criatura ya está muerta.~ */ GOTO 268
END

IF ~~ THEN BEGIN 268 // from:
  SAY @3334 /* ~Es la espada carmesí... Si la baño en la sangre del demonio abisal, se volverá más poderosa.~ */
  IF ~~ THEN GOTO 269
END

IF ~~ THEN BEGIN 269 // from:
  SAY @3335 /* ~(Dusk avanza hacia el cadáver de la criatura y atraviesa el corazón, aún palpitante, con la espada carmesí)~ */
  IF ~~ THEN DO ~ TakePartyItem ("p_demhe") DestroyItem ("p_demhe") TakePartyItem ("p_swevi1")  DestroyItem ("p_swevi1")  SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",1)~ EXIT
END

IF ~Global ("P_Dusk_Valata_Demon_FORGE","GLOBAL",2) Global("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN BEGIN 270 // from:
  SAY @3336 /* ~¡Ja! Tenía razón, <CHARNAME>. La espada carmesí ha mejorado... siento el calor de los infiernos en su mango... y ni siquiera me afecta.~ */
    IF ~~ THEN REPLY @3337 /* ~Excelente, Dusk. Confío en que la usarás para el beneficio del grupo.~ */  GOTO 271	
    IF ~~ THEN REPLY @3338 /* ~Dusk, ten cuidado o la espada te dominará.~ */ GOTO 272
END

IF ~~ THEN BEGIN 271 // from:
  SAY @3339 /* ~La usaré en maleficio de nuestros enemigos, <CHARNAME>. Vamos... Alabarza nos espera.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",3) CreateItem ("p_swevi2",1,1,0) ~ UNSOLVED_JOURNAL @210021 EXIT
END

IF ~~ THEN BEGIN 272 // from:
  SAY @3340 /* ~Mi voluntad es mía, <CHARNAME>. Confía en mí... no seré dominado por un trozo de acero. Ahora, vamos... Alabarza nos espera.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",3) CreateItem ("p_swevi2",1,1,0)~ UNSOLVED_JOURNAL @210021 EXIT
END

// Aparición de Valatar - GOOD
IF ~Global ("P_DUSK_VALATA_ENC1","GLOBAL",1) Global("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN BEGIN 273 // from:
  SAY @3325 /* ~Rayos... ¡otro mago más!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DUSK_VALATA_ENC1","GLOBAL",2)~ EXTERN ~p_valata~ 4
END

IF ~~ THEN BEGIN 274 // from:
  SAY @3326 /* ~(Rayos...) Veo que tú también estás al tanto de la identidad de <CHARNAME>.~ */
    IF ~~ THEN REPLY @3327 /* ~Y es lo obvio, Dusk. Estos tipos más que pertenecer a una Orden de Magos, deben pertenecer a una Orden de Chismosos.~ */  GOTO 275
    IF ~~ THEN REPLY @3328 /* ~Ya ni me ofende que mi secreto se sepa, Dusk. De igual manera, me interesa saber qué es lo que va a decir este hechicero. ¿Quién es y qué demonios hace aquí?~ */ GOTO 275
END

IF ~~ THEN BEGIN 275 // from:
  SAY @3329 /* ~¿Y quién se supone que eres tú, mago? ¿También eres un Encantador como tu amigo?~ */
  IF ~~ THEN EXTERN ~P_VALATA~ 5
END

// GOOD - DESPUES DE MATAR AL DEMONIO DE VALATAR
IF ~Global ("P_Dusk_Valata_Demon","GLOBAL",3) Global("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN BEGIN 276 // from:
  SAY @3330 /* ~Buen trabajo, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",4)~ GOTO 277
END

IF ~~ THEN BEGIN 277 // from:
  SAY @3331 /* ~Siento... una extraña sensación. Algo en mi interior me dice que debo atravesar el corazón del demonio.~ */
    IF ~~ THEN REPLY @3332 /* ~¡¿Atravesar qué?!~ */  GOTO 278	
    IF ~~ THEN REPLY @3333 /* ~Dusk, la criatura ya está muerta.~ */ GOTO 278
END

IF ~~ THEN BEGIN 278 // from:
  SAY @3341 /* ~Es la espada esmeralda... Si la uso para destruir el corazón del demonio, Valatar no podrá llamar de nuevo a la bestia que usó para intentar matarnos.~ */
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 279 // from:
  SAY @3342 /* ~(Dusk avanza hacia el cadáver de la criatura y atraviesa el corazón, aún palpitante, con la espada esmeralda)~ */
  IF ~~ THEN DO ~ TakePartyItem ("p_demhe") DestroyItem ("p_demhe") TakePartyItem ("p_swgoo1")  DestroyItem ("p_swgoo1") SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",1)~ EXIT
END

IF ~Global ("P_Dusk_Valata_Demon_FORGE","GLOBAL",2) Global("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN BEGIN 280 // from:
  SAY @3343 /* ~Es extraño... la espada ha mejorado pese a todo.~ */
    IF ~~ THEN REPLY @3344 /* ~¿Pese a todo? No entiendo, Dusk.~ */  GOTO 281	
END

IF ~~ THEN BEGIN 281 // from:
  SAY @3345 /* ~La espada esmeralda... sentí como si susurrara dentro de mi mente. Una voz similar al céfiro de otoño.~ */
  IF ~~ THEN GOTO 282
END

IF ~~ THEN BEGIN 282 // from:
  SAY @3346 /* ~Me dijo que podría utilizar la sangre del demonio para mejorar la espada o para desterrar al demonio abisal de este plano para siempre.~ */
  IF ~~ THEN GOTO 283
END

IF ~~ THEN BEGIN 283 // from:
  SAY @3347 /* ~Pese a que opté por desterrar al demonio, aparentemente la espada mejoró de igual manera.~ */
    IF ~~ THEN REPLY @3348 /* ~Has elegido sabiamente, Dusk. Y de paso, has sido recompensado.~ */  GOTO 284	
    IF ~~ THEN REPLY @3349 /* ~Dusk, ¿otra vez andas desperdiciando poder? Nos habría venido bien en nuestra lucha contra Alabarza.~ */ GOTO 285
END

IF ~~ THEN BEGIN 284 // from:
  SAY @3352 /* ~Gracias, <CHARNAME>, de verdad. Tus palabras siempre son un aliento para mi corazón. Vamos, Alabarza nos espera.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",3) CreateItem ("p_swgoo2",1,1,0) ~ UNSOLVED_JOURNAL @210023 EXIT
END

IF ~~ THEN BEGIN 285 // from:
  SAY @3351 /* ~Quizás, la espada esmeralda habría sido más fuerte... pero confío en que tendremos un enemigo menos al que enfrentarnos si llegamos a cruzarnos otra vez con Valatar. Vamos, <CHARNAME>. Alabarza nos espera.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",3) CreateItem ("p_swgoo2",1,1,0) ~ UNSOLVED_JOURNAL @210023 EXIT
END

/////////////////////////////////////////////////////////////////

// VS ALABARZA - EVIL

IF ~~ THEN BEGIN 286 // from:
  SAY @3353 /* ~¡Alabarza!~ */
  IF ~~ THEN EXTERN ~P_ALABAR~ 2
END

IF ~~ THEN BEGIN 287 // from:
  SAY @3354 /* ~No tendré compasión, Alabarza... ¡hoy será el último día de tu miserable vida! ¡¡¡Por Cormyr!!!~ */
  IF ~~ THEN DO ~~ UNSOLVED_JOURNAL @210024 EXIT
END

IF ~Global("P_DuskM3EVIL","GLOBAL",2) Global("P_DuskM3EVIL_DUSK_ALIVE","GLOBAL",1)~ THEN BEGIN 288 // from:
  SAY @3353 /* ~¡Alabarza!~ */
  IF ~~ THEN EXTERN ~P_ALABA2~ 5
END


// VS ALABARZA - GOOD

IF ~Global("P_DuskM3GOOD_OT_RING","GLOBAL",2)~ THEN BEGIN 289 // from:
  SAY @3355 /* ~¡Bellfame!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskM3GOOD_OT_RING","GLOBAL",3)~ EXTERN ~P_BELL2~ 0
END

IF ~Global("P_DuskM3GOOD_OT_RING","GLOBAL",4) PartyHasItem ("p_orbet1")~ THEN BEGIN 290
  SAY @3356 /* ~Casi puedo sentir su presencia en el anillo...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskM3GOOD_OT_RING","GLOBAL",5)~ EXTERN ~P_ALABAR~ 8
END



IF ~Global("P_DuskM3LLAMA_ORBET","GLOBAL",2)~ THEN BEGIN 291 // from:
  SAY @3357 /* ~Los refuerzos han llegado.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3LLAMA_ORBET","GLOBAL",3)~ EXTERN ~P_ALABAR~ 9
END

IF ~~ THEN BEGIN 292 // from:
  SAY @3358 /* ~Ha llegado la hora de la justicia, Alabarza. Por mis compañeros caídos... ¡¡¡Por Cormyr!!!~ */
  IF ~~ THEN DO ~~ UNSOLVED_JOURNAL @210024 EXIT
END

IF ~Global("P_DuskM3GOOD_OT_RING","GLOBAL",4) !PartyHasItem ("p_orbet1")~ THEN BEGIN 293 // from:
  SAY @3356 /* ~Casi puedo sentir su presencia en el anillo...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskM3GOOD_OT_RING","GLOBAL",5)~ EXTERN ~P_ALABAR~ 13
END

IF ~~ THEN BEGIN 294 // from:
  SAY @3359 /* ~(De repente, de los ojos de Dusk surje una deslumbrante luz escarlata)~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",1)~ UNSOLVED_JOURNAL @210033 EXIT
END

IF ~Global("P_DanctianAppear","GLOBAL",2)~ THEN BEGIN 295 // from:
  SAY @3360 /* ~Y así terminan los días del guardabosques de Shilmista...~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",3)~ GOTO 296
END

IF ~~ THEN BEGIN 296 // from:
  SAY @3361 /* ~<CHARNAME>, lamento no haberte avisado de antemano lo que haría. Digamos que... no quise involucrarte.~ */
    IF ~~ THEN REPLY @3362 /* ~¡Dusk! ¿Qué demonios has hecho? Creí que Mathyus y Michelson eran amigos tuyos. ¿Acaso planeas hacer lo mismo conmigo?~ */  GOTO 297	
    IF ~~ THEN REPLY @3363 /* ~Pues, no me quejo de lo que has hecho, Dusk. Ya me estaba cansando de ese elfo verdoso.~ */ GOTO 299
	IF ~~ THEN REPLY @3364 /* ~No comprendo, Dusk. ¿Qué está pasando?~ */ GOTO 299
END

IF ~~ THEN BEGIN 297 // from:
  SAY @3365 /* ~¡Ja! Tu ira es siempre bienvenida, <CHARNAME>.~ */
  IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 298 // from:
  SAY @3366 /* ~Jamás te traicionaría, amigo mío. Después de todo, soy así por ti.~ ~Jamás te traicionaría, amiga mía. Después de todo, soy así por ti.~ */
  IF ~~ THEN GOTO 299
END

IF ~~ THEN BEGIN 299 // from:
  SAY @3367 /* ~Aún tenemos camino por recorrer juntos, <CHARNAME>. En nuestra búsqueda por poder y venganza debemos ser capaces de confiar el uno con el otro. Por eso te debo una explicación por lo que aquí ha pasado.~ */
  IF ~~ THEN GOTO 300
END

IF ~~ THEN BEGIN 300 // from:
  SAY @3368 /* ~Enfrentarnos al demonio abisal de Valatar me brindó un canal más claro con el poder del Orbe Escarlata.~ */
  IF ~~ THEN GOTO 301
END

IF ~~ THEN BEGIN 301 // from:
  SAY @3369 /* ~Su energía proviene del Pandemonium, un plano que sirve de refugio para demonios y sombras.~ */
  IF ~~ THEN GOTO 302
END

IF ~~ THEN BEGIN 302 // from:
  SAY @3370 /* ~El orbe obtiene su poder a partir de una criatura de ese plano. Con el paso del tiempo, desde que absorbí su poder, he podido esclarecer mi comunicación con ella. Había algo en nuestro plano de existencia que evitaba su... resurgimiento.~ */
  IF ~~ THEN GOTO 303
END

IF ~~ THEN BEGIN 303 // from:
  SAY @3371 /* ~Ese algo se acabó con la muerte de Mathyus y Michelson. La caída de los Guardianes de Shilmista ahora permite el resurgimiento de la criatura...~ */
  IF ~~ THEN GOTO 304
END

IF ~~ THEN BEGIN 304 // from:
  SAY @3372 /* ~Y ahora habremos de conocerla...~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",3)~
 EXIT
END



// Espada de Disrupción
IF ~~ THEN BEGIN 305 // from:
  SAY @3373 /* ~Está bien, Danctian. ¡Haz que el filo de Cormyr sea temible a mis enemigos!~ */
  IF ~~ THEN EXTERN ~P_DANCTI~ 29
END

IF ~~ THEN BEGIN 306 // from:
  SAY @3051 /* ~Vaya... el poder que irradia... es increíble...~ */
  IF ~~ THEN EXTERN ~P_DANCTI~ 33
END

IF ~~ THEN BEGIN 307 // from:
  SAY @3374 /* ~Está bien, Danctian. ¡Haz que mi armadura se convierta en mi defensa contra aquellos que debo ajusticiar!~ */
  IF ~~ THEN EXTERN ~P_DANCTI~ 37
END

IF ~~ THEN BEGIN 308 // from:
  SAY @3053 /* ~Es mucho más pesada... pero su artesanía es magnífica...~ */
  IF ~~ THEN EXTERN ~P_DANCTI~ 39
END


IF ~~ THEN BEGIN 311 // from:
  SAY @3394 /* ~E-eres tú...~ */
    IF ~Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN REPLY @3395 /* ~¿Dusk? Estás pálido... ¿Conoces a este mequetrefe?~ */  GOTO 312	
    IF ~Global("P_Dusk_IS_GOOD","GLOBAL",1)~ THEN REPLY @3395 /* ~¿Dusk? Estás pálido... ¿Conoces a este mequetrefe?~ */ GOTO 313
END

IF ~~ THEN BEGIN 312 // from:
  SAY @3396 /* ~Es él... el asesino de Celine...~ */
  IF ~~ THEN EXTERN ~P_ANTHAG~ 1
END

IF ~~ THEN BEGIN 313 // from:
  SAY @3396 /* ~Es él... el asesino de Celine...~ */
  IF ~~ THEN EXTERN ~P_ANTHAG~ 10
END

IF ~Global("P_Dusk_Dancti_Enc_MF","GLOBAL",1)~ THEN BEGIN 314 // from:
  SAY @3405 /* ~Pero, ¿qué rayos-?~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DANCTI~ 82
END

IF ~Global ("P_Dusk_Anthag_Army","GLOBAL",1) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN BEGIN 315 // from:
  SAY @3406 /* ~Rayos... ¡percibo una poderosa fuerza arcana, <CHARNAME>!~ */
  IF ~~ THEN DO ~~ EXTERN ~P_ANTHAG~ 18
END

IF ~Global ("P_Dusk_Anthag_Army","GLOBAL",1) Global("P_Dusk_IS_GOOD","GLOBAL",1)~ THEN BEGIN 316 // from:
  SAY @3406 /* ~Rayos... ¡percibo una poderosa fuerza arcana, <CHARNAME>!~ */
  IF ~~ THEN DO ~~ EXTERN ~P_ANTHAG~ 19
END

IF ~Global ("P_Dusk_3rdTDemole","GLOBAL",2) Global("P_Dusk_IS_GOOD","GLOBAL",1) Global ("P_Dusk_DemoleDISM","GLOBAL",0)~ THEN BEGIN 317 // from:
  SAY @3407 /* ~¡Demole! Amigo, es un gran placer verte de nuevo.~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_DemoleDISM","GLOBAL",1)~ EXTERN ~P_DEMOLE~ 27
END

IF ~~ THEN BEGIN 318 // from:
  SAY @3408 /* ~Estupendo, Danctian. Todo va según lo planeado.~ */
    IF ~~ THEN REPLY @3409 /* ~*carraspeo* Hola, estoy aquí. ¿Te molestaría compartir con el resto del grupo lo que está pasando?~ */  GOTO 319	
    IF ~~ THEN REPLY @3410 /* ~Dusk, ¿de qué están hablando? No entiendo nada.~ */ GOTO 319
END

IF ~~ THEN BEGIN 319 // from:
  SAY @3411 /* ~Nada preocupante, <CHARNAME>. Podemos lidiar este asunto cuando tú quieras. Aunque recomendaría hacerlo lo más pronto posible. Las recompensas pueden ser... muy cuantiosas.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DANCTI~ 96
END

// GOOD ARRIVAL AR1506
IF ~Global("P_DuskArrivingAR1506","GLOBAL",1) Global("P_Dusk_IS_GOOD","GLOBAL",1) ~ THEN BEGIN 320 // from:
  SAY @3412 /* ~Hm... este lugar me es familiar... ¿Hemos estado aquí antes, <CHARNAME>? No importa.~ */
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 321 // from:
  SAY @3413 /* ~De acuerdo. En marcha.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskArrivingAR1506","GLOBAL",2)~ EXIT
END

// EVIL ARRIVAL AR1506
IF ~Global("P_DuskArrivingAR1506","GLOBAL",1) Global("P_Dusk_IS_EVIL","GLOBAL",1) ~ THEN BEGIN 322 // from:
  SAY @3412 /* ~Hm... este lugar me es familiar... ¿Hemos estado aquí antes, <CHARNAME>? No importa.~ */
  IF ~~ THEN GOTO 323
END

IF ~~ THEN BEGIN 323 // from:
  SAY @3413 /* ~De acuerdo. En marcha.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskArrivingAR1506","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 324 // from:
  SAY @3428 /* ~¡¿Ce-Celine?!~ */
    IF ~~ THEN REPLY @3429 /* ~¿Dusk? ¿Qué está pasando? Este espíritu... ¿es el de tu esposa?~ */  GOTO 325	
    IF ~~ THEN REPLY @3430 /* ~Pero, ¿qué diantres? ¡Grupo, desenvainad armas! Hay un fantasma que debemos aniquilar.~ */ GOTO 326
END

IF ~~ THEN BEGIN 325 // from:
  SAY @3431 /* ~*se queda un instante en silencio* Así... así es, <CHARNAME>. O al menos... eso creo...~ */
  IF ~~ THEN GOTO 327
END

IF ~~ THEN BEGIN 326 // from:
  SAY @3432 /* ~¡No muevas un músculo, <CHARNAME>! Creo... creo que ese fantasma al que llamas... no es otro que mi esposa, Celine.~ */
  IF ~~ THEN GOTO 327
END

IF ~~ THEN BEGIN 327 // from:
  SAY @3433 /* ~Celine... ¿eres... eres tú?~ */
  IF ~~ THEN DO ~~ EXTERN ~P_CELGH~ 1
END

IF ~~ THEN BEGIN 328 // from:
  SAY @3434 /* ~Por Mielikki... Celine... esta vez... eres tú...~ */
  IF ~~ THEN DO ~~ EXTERN ~P_CELIN~ 1
END

// Dusk see Celine for the last time
IF ~Global("P_CelineSpawn","GLOBAL",3)~ THEN BEGIN 329 // from:
  SAY @3435 /* ~Celine...~ */
  IF ~~ THEN DO ~SetGlobal("P_CelineSpawn","GLOBAL",4)~
 EXIT
END

IF ~~ THEN BEGIN 330 // from:
  SAY @3436 /* ~Ce-Celine... es imposible...~ */
  IF ~~ THEN DO ~~ EXTERN ~P_CELIN~ 4
END

IF ~~ THEN BEGIN 331 // from:
  SAY @3437 /* ~ ¡¡¡Celine!!! ~ */
  IF ~~ THEN DO ~ SetGlobal("P_CelineSpawn","GLOBAL",2)~ EXIT
END

// NPC Interaction QUEST 3 GOOD PATH
IF ~~ THEN BEGIN 332 // from:
  SAY @3438 /* ~ De acuerdo... ¡Soldados, en formación! Una ardua batalla nos espera... ~ */
  IF ~~ THEN DO ~~ EXTERN ~P_ALABAR~ 10
END

// NPC Interaction QUEST 3 EVIL PATH
IF ~~ THEN BEGIN 333 // from:
  SAY @3492 /* ~Ladra mientras puedas, perro.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_ALABAR~ 6
END

//EE Related code
//DORN
IF ~Global("P_Dusk_DornEnemy","GLOBAL",1)~ THEN BEGIN 334 // from:
  SAY @3501 /* ~¿Planeas atacar a la Orden? No puedo consentirlo... ¡son mis aliados! <CHARNAME>, ¡prepárate!~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_DornEnemy","GLOBAL",2)~
 EXIT
END

IF ~Global("P_DUSK_OHD5100","GLOBAL",1) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN BEGIN 335 // from:
  SAY @3502 /* ~No me avergüenza decir que estoy acostumbrado a vagar por los árboles. Me recuerda a Shilmista.~ */
  IF ~~ THEN DO ~SetGlobal("P_DUSK_OHD5100","GLOBAL",2)~
 EXIT
END

IF ~Global("P_DUSK_OHD5100","GLOBAL",1) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN BEGIN 336 // from:
  SAY @3503 /* ~Esto es ridículo, <CHARNAME>. ¿Todo este lío por ese malnacido semiorco?~ */
  IF ~~ THEN DO ~SetGlobal("P_DUSK_OHD5100","GLOBAL",2)~
 EXIT
END

IF ~Global("P_DUSK_OHD7000","GLOBAL",1) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN BEGIN 338 // from:
  SAY @3508 /* ~¿Tiene sentido confiar en una vampiro? ¡Acaba de asesinar a una de nuestras compañeras! Esto no me gusta nada, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("P_DUSK_OHD7000","GLOBAL",2)~
 EXIT
END

// KAYL2 1a
I_C_T P_DUSKJ 121 P_Dusk_Kayl2_1a
== KAYL2 IF ~~ THEN @30000 /* Ah, si es el capitán del norte. Dime, Dusk, ¿hay algo en lo que pueda ayudarte? */
== P_DuskJ IF ~~ THEN @3175 /* Con nuestro grupo hemos podido localizar a un grupo de humanoides renegados del imperio Sothillis. Su cacique busca vivir en paz, lejos de la guerra que su antiguo jefe ha provocado. */
== KAYL2 IF ~~ THEN @30001 /* ¿Un grupo de renegados, dices? Ya veo. ¿Y qué es lo que buscas de la Noble Orden del Radiante Corazón? */
== P_DuskJ IF ~~ THEN @3176 /* Pues... luego de dialogar con ellos, he prometido buscarles un hogar, aquí en Amn. Sé que pido demasiado, pero creo que he ayudado en el pasado a la ciudad como me ha sido posible. Lo único que busco, es una oportunidad... */
== KAYL2 IF ~~ THEN @30002 /* Hm... Supongo que podría interceder con el prelado por ti y tu grupo de humanoides. Pero dime, ¿por qué habría de hacerlo? */
== P_DuskJ IF ~~ THEN @3177 /* No se trata de un grupo violento, ni siquiera numeroso, mi señor. Si estuvieran bajo la protección de la Orden, creo que serían útiles en la guerra que se está llevando a cabo contra el imperio de Sothillis. */
== P_DuskJ IF ~~ THEN @3178 /* Creo que podrían brindar información vital acerca del ejército del ogro, mi señor. Incluso, puede que luchen a su lado si así se lo piden. Siempre y cuando se les prometa un hogar aquí, en Amn. */
== KAYL2 IF ~~ THEN @30003 /* Tiene sentido... Está bien, hablaré con el prelado, seguro que no habrá problemas. Hay mucho lugar aquí en el cuartel, incluso para humanoides de gran tamaño. Pueden ayudar con los quehaceres diarios, además de servir para un bien mayor para la nación. */
== KAYL2 IF ~~ THEN @30004 /* Pero primero necesito que me hagan un favor... Siempre y cuando la reputación de ustedes sea pertinente, claro está. */
== KAYL2 IF ~~ THEN @30005 /* Además, necesitaría hablar con tu líder <CHARNAME>. Tenemos un asunto tedioso relacionado al tráfico de esclavos, con hombres que solían llamarse Paladines. */
== KAYL2 IF ~~ THEN @30006 /* Haz esto, Dusk... y yo convenceré al prelado sobre los humanoides que intentas proteger. */
END

// KAYL2 2a
I_C_T P_DUSKJ 127 P_Dusk_Kayl2_2a
== KAYL2 IF ~~ THEN @30007 /* Sí, Dusk. El asunto de tus humanoides... */
== KAYL2 IF ~~ THEN @30008 /* Con gusto intercederé con el prelado por ti. Puedes volver con los desertores de Sothillis y decirles que vengan al cuartel de la Orden. */
END

// KAYL2 1b
I_C_T P_DUSKJ 129 P_Dusk_Kayl2_1b
== KAYL2 IF ~~ THEN @30000 /* Ah, si es el capitán del norte. Dime, Dusk, ¿hay algo en lo que pueda ayudarte? */
== P_DuskJ IF ~~ THEN @3175 /* Con nuestro grupo hemos podido localizar a un grupo de humanoides renegados del imperio Sothillis. Su cacique busca vivir en paz, lejos de la guerra que su antiguo jefe ha provocado. */
== KAYL2 IF ~~ THEN @30001 /* ¿Un grupo de renegados, dices? Ya veo. ¿Y qué es lo que buscas de la Noble Orden del Radiante Corazón? */
== P_DuskJ IF ~~ THEN @3176 /* Pues... luego de dialogar con ellos, he prometido buscarles un hogar, aquí en Amn. Sé que pido demasiado, pero creo que he ayudado en el pasado a la ciudad como me ha sido posible. Lo único que busco, es una oportunidad... */
== KAYL2 IF ~~ THEN @30002 /* Hm... Supongo que podría interceder con el prelado por ti y tu grupo de humanoides. Pero dime, ¿por qué habría de hacerlo? */
== P_DuskJ IF ~~ THEN @3177 /* No se trata de un grupo violento, ni siquiera numeroso, mi señor. Si estuvieran bajo la protección de la Orden, creo que serían útiles en la guerra que se está llevando a cabo contra el imperio de Sothillis. */
== P_DuskJ IF ~~ THEN @3178 /* Creo que podrían brindar información vital acerca del ejército del ogro, mi señor. Incluso, puede que luchen a su lado si así se lo piden. Siempre y cuando se les prometa un hogar aquí, en Amn. */
== KAYL2 IF ~~ THEN @30003 /* Tiene sentido... Está bien, hablaré con el prelado, seguro que no habrá problemas. Hay mucho lugar aquí en el cuartel, incluso para humanoides de gran tamaño. Pueden ayudar con los quehaceres diarios, además de servir para un bien mayor para la nación. */
END

// NEERA Quest2
I_C_T OHNTELAN 12 P_DuskNeeraQ2_1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3490 /* *suspiro* Parece ser que el Paseo se ha convertido en el epicentro de magia corrupta.  */
END

// Bodhi narra de enfrentamiento de Irenicus con Ladrones
I_C_T BODHI 90 P_DuskBODHI902
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3504 /* Y en dicha confrontación, muchos murieron por su culpa. Fui testigo de ello. No merece piedad alguna. */
END

I_C_T BODHI 90 P_DuskBODHI901
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3505 /* Hmpf. ¿De verdad vas a creerle a esta criatura, <CHARNAME>? Intenta justificar el daño que se te ha hecho de una manera casi patética. */
END

// Bodhi pide asesinar a Aran
I_C_T BODHI 72 P_DuskBODHI721
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3485 /* Supongo que ya estamos metidos en el barro. Dudo que este Aran sea alguien de buena calaña, así que no tendrás objeciones por mi parte. */
END

I_C_T BODHI 72 P_DuskBODHI4722
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3486 /* Un oponente digno, <CHARNAME>. Aunque siento que esta... vampiresa sólo nos está utilizando como si fuéramos el martillo de un juez. (De ser por mí, ya habría clavado una estaca en su corazón) */
END

// Bodhi EVIL Path
I_C_T BODHI 45 P_Dusk_BODHI_MISSION2E
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @3483 /* Me da igual lo que elijas, <CHARNAME>. Me basta con acabar estos asuntos molestos con esta... esta inmunda criatura. */
END

I_C_T BODHI 45 P_Dusk_BODHI_MISSION2E
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0)~ THEN @3484 /* De por sí trabajar para esta alimaña ya es malo. Preferiría algo que no sea maléfico, <CHARNAME>. */
END

// inject EE CHAR and crossmods I_C_T
I_C_T P_DUSKJ 333 P_Dusk_EVIL_ALABAR1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3491 /* ~Pronto, tus aullidos de dolor inundaran este inmundo Túmulo.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4002 /* ~Nos superan en número, sí; pero recuerda, Dusk: También contamos con la ayuda de Daren y Sinna.~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3439 /* ¡Dusk, <CHARNAME>, Minsc y Bubú están listos para patear traseros orcos y trolls! */
== P_KOMAR IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3479 /* ¡Calvo! Ese roedor será mío. ¡Komar así lo exige! ¡¡¡Komar romperá tus huesos y tomará al pequeño peludo para su diversión!!! */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3480 /* ¿Calvo? ¡Tú serás el calvo, malvado ogro! Y Bubú no será esclavo de nadie. ¡La furia del hámster es libre y te hará ver las estrellas! */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3481 /* Oh, no me gusta esto... ¡Pero haré lo posible por proteger a mis amigos! */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3482 /* Puede que esta sea nuestra última batalla, amigos míos. ¡Pero por Torm que daré batalla hasta las últimas consecuencias! */
== P_SERRA IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3444 /* ¡Un paladín! Jefe, déjeme a ese infeliz a mí. Me encargaré de que se reúna con su dios lo antes posible. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3445 /* ¡Inténtalo, criatura! Verás cuán rápido caes ante el filo de la Justicia. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3446 /* Pues, ya es hora de poner a prueba mis habilidades guerreras (no es que vaya a ser algo impresionante, pero quizás asuste a un par de monstruos). */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3447 /* ¡Arvorin, dame las fuerzas para vencer en este combate! */
== P_TOXSAN IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3448 /* Chimi: ¿Así que quieres devorarte a esa mediana, Bob? Hazlo, libremente. Deja algunos huesos para tu hermano Mike, ¿quieres? */
== P_BOB IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3449 /* (La criatura centra sus ojos en Mazzy. Casi pareciera ser que está relamiéndose) */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3450 /* Odio decir esto, pero no es la primera vez que un monstruo intenta devorarme... Aún así, lamento decir que te quedarás con las ganas, mole. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3451 /* ¡Al fin nos traes algo de acción, Dusk! Helm, dame las fuerzas. ¡Hoy lucharé en tu nombre y triunfaré! */
== P_KOCHA IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3452 /* Jefecito, déjeme a ese joven monje para mí. Siempre es un placer apalear humanos engreídos. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3453 /* Por el recuerdo de mi padre, ¡no permitiré que miserables trolls vaguen por estas tierras! */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3454 /* Siento que me hablas a mí, niña. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3455 /* ¡Por de'Arnise! Hoy será el último día en que respires monstruo. */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3456 /* *resoplido* Estoy cansado de estos humanos engreídos... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3457 /* Dusk, tu deseo de venganza es comprendido y bienvenido. ¡Y será un honor luchar a tu lado para cumplirlo! */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3458 /* Es hora de ponerle fin a este Tumulario. Una guarida así tan cerca de la Arboleda es una afrenta a la naturaleza. */
== P_TOXSAN IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3459 /* Toxsan: ¿Qué dices, Mike? ¿Que quieres comerte al druida humano? Por mí, bienvenido sea. No te olvides de tu hermano Bob, ¿sí? */
== P_MIKE IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3460 /* (La mole sombría centra sus cuatro ojos en Cernd, impaciente a que su amo suelte sus riendas y pueda comenzar el ataque) */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3461 /* Criatura, hoy serás el alimento de gusanos y colaborarás con el ciclo de la vida, a través de tu muerte. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3462 /* Dusk, ha llegado la hora. ¡Haremos justicia por tus camaradas caídos! */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3463 /* Bueno, rivvil, hemos recorrido un largo camino para llegar aquí. Utilizaré la divinidad de Shar en tu favor, no lo olvides. Nuestros enemigos caerán en la Oscuridad Eterna. */
== P_XEB IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3464 /* *siseo* ¡Una drow! Señor, déjeme experimentar con ella, por favor. Prometo ssser... meticulossso. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3465 /* Si bien me da igual tu pasado, hombre del palito, admito que esta es una buena oportunidad para poner a prueba mis conjuros. Especialmente contra esa lagartija. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3466 /* ¿Me hablas a mí, mago rojo? */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3467 /* ¡Así es, renacuajo! Tendrás el honor de morir a manos de Edwin Odesseiron. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3468 /* Estás loco, mago. Aunque eso no me sorprende en un usuario humano. Señor, permítame acabar con ese mentecato. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3469 /* ¡Muy bien, flacucho! Nos has traído a una 'trampa'. Lo que estos infelices no saben es que cuentas con el hacha de Korgan. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3470 /* Chimi: ¡Mira, Toxsan! Un enano. Me recuerda a los viejos tiempos. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3471 /* Toxsan: Así es, Chimi. Aplastarlos era nuestro pasatiempos. Ahora podremos rememorarlos, ¿no lo crees? */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3472 /* Aquí me tienes, maldito ettin. ¡Ven a probar mi hacha! Verás cuán rápido te destripo. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3473 /* Así que caímos en una trampa, ¿eh? Esto me recuerda a la vez-- */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3474 /* ~No creo que sea el mejor momento para una de tus historias, Jan.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3475 /* Bueno, bueno. Pero te lo contaré cuanto hayamos ganado aquí. ¿Qué te parece, buen Dusk? */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3476 /* ~Trato hecho.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3477 /* Ahhhh, cuervo blanco. Has caído en una trampa. Pero, ¿quién soy yo para juzgarte? Yo mismo me he visto en situaciones similares. Vamos, venzamos a estos insensatos, así puedo componer una o dos canciones sobre nuestras proezas. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @3478 /* ~Oh, Dusk... tú sí que sabes hacer amistades, ¿eh? Vamos, que os ayudaré a enfrentar a estos monstruos.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @3509 /* ~Esto será un buen entrenamiento para mis facultades. ¡Venga! Alimentad a mi espada...~ */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @3510 /* ~Muy bien, Dusk. Ha llegado la hora de tu venganza. ¡Haré lo que pueda para ayudarte a completarla!~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @3514 /* ~Ehrm... bueno, no es que quiera presumir, pero en este tipo de batallas realmente puedo ser decisiva. ¡A por ellos!~ */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @3512 /* ~Bien, bien... no me llama la atención beber sangre humanoide... pero puede que esta vez haga una excepción.~ */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3513 /* ~(GRUÑIDO)~ */
END


I_C_T P_DUSKJ 332 P_Dusk_GOOD_ALABAR1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3493 /* ~Una ardua batalla nos espera...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4002 /* ~Nos superan en número, sí; pero recuerda, Dusk: También contamos con la ayuda de Daren y Sinna.~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3439 /* ¡Dusk, <CHARNAME>, Minsc y Bubú están listos para patear traseros orcos y trolls! */
== P_KOMAR IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3479 /* ¡Calvo! Ese roedor será mío. ¡Komar así lo exige! ¡¡¡Komar romperá tus huesos y tomará al pequeño peludo para su diversión!!! */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3480 /* ¿Calvo? ¡Tú serás el calvo, malvado ogro! Y Bubú no será esclavo de nadie. ¡La furia del hámster es libre y te hará ver las estrellas! */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3481 /* Oh, no me gusta esto... ¡Pero haré lo posible por proteger a mis amigos! */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3482 /* Puede que esta sea nuestra última batalla, amigos míos. ¡Pero por Torm que daré batalla hasta las últimas consecuencias! */
== P_SERRA IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3444 /* ¡Un paladín! Jefe, déjeme a ese infeliz a mí. Me encargaré de que se reúna con su dios lo antes posible. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3445 /* ¡Inténtalo, criatura! Verás cuán rápido caes ante el filo de la Justicia. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3446 /* Pues, ya es hora de poner a prueba mis habilidades guerreras (no es que vaya a ser algo impresionante, pero quizás asuste a un par de monstruos). */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3447 /* ¡Arvorin, dame las fuerzas para vencer en este combate! */
== P_TOXSAN IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3448 /* Chimi: ¿Así que quieres devorarte a esa mediana, Bob? Hazlo, libremente. Deja algunos huesos para tu hermano Mike, ¿quieres? */
== P_BOB IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3449 /* (La criatura centra sus ojos en Mazzy. Casi pareciera ser que está relamiéndose) */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3450 /* Odio decir esto, pero no es la primera vez que un monstruo intenta devorarme... Aún así, lamento decir que te quedarás con las ganas, mole. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3451 /* ¡Al fin nos traes algo de acción, Dusk! Helm, dame las fuerzas. ¡Hoy lucharé en tu nombre y triunfaré! */
== P_KOCHA IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3452 /* Jefecito, déjeme a ese joven monje para mí. Siempre es un placer apalear humanos engreídos. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3453 /* Por el recuerdo de mi padre, ¡no permitiré que miserables trolls vaguen por estas tierras! */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3454 /* Siento que me hablas a mí, niña. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3455 /* ¡Por de'Arnise! Hoy será el último día en que respires monstruo. */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3456 /* *resoplido* Estoy cansado de estos humanos engreídos... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3457 /* Dusk, tu deseo de venganza es comprendido y bienvenido. ¡Y será un honor luchar a tu lado para cumplirlo! */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3458 /* Es hora de ponerle fin a este Tumulario. Una guarida así tan cerca de la Arboleda es una afrenta a la naturaleza. */
== P_TOXSAN IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3459 /* Toxsan: ¿Qué dices, Mike? ¿Que quieres comerte al druida humano? Por mí, bienvenido sea. No te olvides de tu hermano Bob, ¿sí? */
== P_MIKE IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3460 /* (La mole sombría centra sus cuatro ojos en Cernd, impaciente a que su amo suelte sus riendas y pueda comenzar el ataque) */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3461 /* Criatura, hoy serás el alimento de gusanos y colaborarás con el ciclo de la vida, a través de tu muerte. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3462 /* Dusk, ha llegado la hora. ¡Haremos justicia por tus camaradas caídos! */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3463 /* Bueno, rivvil, hemos recorrido un largo camino para llegar aquí. Utilizaré la divinidad de Shar en tu favor, no lo olvides. Nuestros enemigos caerán en la Oscuridad Eterna. */
== P_XEB IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3464 /* *siseo* ¡Una drow! Señor, déjeme experimentar con ella, por favor. Prometo ssser... meticulossso. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3465 /* Si bien me da igual tu pasado, hombre del palito, admito que esta es una buena oportunidad para poner a prueba mis conjuros. Especialmente contra esa lagartija. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3466 /* ¿Me hablas a mí, mago rojo? */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3467 /* ¡Así es, renacuajo! Tendrás el honor de morir a manos de Edwin Odesseiron. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3468 /* Estás loco, mago. Aunque eso no me sorprende en un usuario humano. Señor, permítame acabar con ese mentecato. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3469 /* ¡Muy bien, flacucho! Nos has traído a una 'trampa'. Lo que estos infelices no saben es que cuentas con el hacha de Korgan. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3470 /* Chimi: ¡Mira, Toxsan! Un enano. Me recuerda a los viejos tiempos. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3471 /* Toxsan: Así es, Chimi. Aplastarlos era nuestro pasatiempos. Ahora podremos rememorarlos, ¿no lo crees? */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3472 /* Aquí me tienes, maldito ettin. ¡Ven a probar mi hacha! Verás cuán rápido te destripo. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3473 /* Así que caímos en una trampa, ¿eh? Esto me recuerda a la vez-- */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3474 /* ~No creo que sea el mejor momento para una de tus historias, Jan.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3475 /* Bueno, bueno. Pero te lo contaré cuanto hayamos ganado aquí. ¿Qué te parece, buen Dusk? */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3476 /* ~Trato hecho.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3477 /* Ahhhh, cuervo blanco. Has caído en una trampa. Pero, ¿quién soy yo para juzgarte? Yo mismo me he visto en situaciones similares. Vamos, venzamos a estos insensatos, así puedo componer una o dos canciones sobre nuestras proezas. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @3478 /* ~Oh, Dusk... tú sí que sabes hacer amistades, ¿eh? Vamos, que os ayudaré a enfrentar a estos monstruos.~ */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @3509 /* ~Esto será un buen entrenamiento para mis facultades. ¡Venga! Alimentad a mi espada...~ */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @3510 /* ~Muy bien, Dusk. Ha llegado la hora de tu venganza. ¡Haré lo que pueda para ayudarte a completarla!~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @3514 /* ~Ehrm... bueno, no es que quiera presumir, pero en este tipo de batallas realmente puedo ser decisiva. ¡A por ellos!~ */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @3512 /* ~Bien, bien... no me llama la atención beber sangre humanoide... pero puede que esta vez haga una excepción.~ */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3513 /* ~(GRUÑIDO)~ */
END

I_C_T P_FALON 19 P_Fall_Falon_GOOD1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4003 /* ¡Dusk! Me alegra inmensamente que decidieras ayudar a Falon y su tribu. Espero que podamos conseguirles el hogar que tanto anhelan. */
END



// AR1506 ARRIVAL EVIL
I_C_T P_DUSKJ 322 P_Dusk_EVIL_AR1506_1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3420 /* No confío en estos magos, por lo que recomiendo proceder con cuidado. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3421 /* ¿Quién habría de hacerlo, patas flacas? No te preocupes, yo habré de cuidarte las espaldas si tanto te preocupa. Mi hacha siempre está sedienta de sangre arcana. */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3422 /* ~El ambiente es tétrico, Dusk. La energía de la naturaleza no es percibida en ningún lado. Actuar con cautela y lentitud, como si fuéramos un caracol, no sería una mala elección.~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3423 /* ~Un lugar extraño para el enfrentamiento final contra esta Orden de iblith. No te preocupes, abbil, la fuerza de Shar está con nosotros. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4004 /* No hay rastros de naturaleza aquí, Dusk. Los magos eligieron este lugar por una razón. Te recomiendo que usemos a Daren y Sinna como exploradores. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3424 /* ~Hmm... creo que hemos estado aquí. Esto es como una especie de deja vú, ¿no lo crees, Dusk? Una vez pasé por algo parecido cuando ese lamebotas de Trax venía una y otra vez a pincharme sobre la venta ilegal de nabos en el Distrito Gubernamental. "Gnomo, no puedes vender eso aquí. Está prohibido." Y esa frase se repetía prácticamente todos los días. */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3425 /* No creo que ese sea el concepto de "deja vú", Jan. Creo que simplemente iban a ti porque estabas diariamente tratando de vender... ¿verduras ilegales? */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3426 /* ~Nabos, rapos, podríamos inmiscuirnos en esa discusión y la misma tardaría días en resolverse. O puede que años, mi buen Duskie. Sabes, yo no tengo problema en charlar, aunque me considero un gnomo de pocas palabras. */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3427 /* *carraspeo* Será mejor que esa discusión sea para otro día (un día que no esperaré con ansias...). */
END

// AR1506 ARRIVAL GOOD
I_C_T P_DUSKJ 320 P_Dusk_GOOD_AR1506_1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3414 /* No veo a Mathyus ni a Demoledor por ninguna parte... */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3415 /* Hmpf... lo más probable es que ni siquiera venga. Ese elfo es pura palabrería. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3416 /* P-puede que hayan tenido algún problema durante el hechizo de teletransportación, ¿no lo creen? */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @3417 /* ~No creo que tu amigo te haya abandonado, Dusk. A juzgar por su... apariencia, lo más probable es que quiera hacer alguna entrada espectacular o algo así.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4004 /* No hay rastros de naturaleza aquí, Dusk. Los magos eligieron este lugar por una razón. Te recomiendo que usemos a Daren y Sinna como exploradores. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3418 /* Será mejor que tengamos cuidado... Sabiendo que nos enfrentamos a Anthagar y sus secuaces, lo más probable es que tengan alguna trampa arcana preparada para nosotros. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3419 /* Llegado al caso no debes preocuparte, hombre del palito. Edwin Odesseiron se encargara de superarlos en cualquier aspecto relacionado a la magia. (Sí, ya lo verán...) */
END


////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T UDSVIR03 27 P_Dusk_GOOD_SVIRN1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0) ~ THEN @3404 /* ¡¿Qué?! <CHARNAME>, ¿qué demonios estás haciendo? ¡Es una vil traición! No... ¡No lo consentiré! Espero... espero que nuestros caminos no vuelvan a cruzarse... */
DO ~SetGlobal("P_Dusk_IS_GONE","GLOBAL",1) LeaveParty() EscapeArea()~
END

I_C_T P_DUSKJ 77 P_Dusk_ATTACK_1
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3104 /* Muy bien, flacucho. Me gusta tu determinación. Déjame ese gigante a mí, ¿quieres?  ¡Ja! */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3105 /* No estoy de acuerdo con esto, Dusk... pero supongo que si no los aniquilamos ahora, estos humanoides bien podrían hacer daño a inocentes. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4005 /* Un ataque a traición no habría sido mi opción, Dusk. Pero veo que ya no nos queda otra alternativa. ¡A la carga! */
END

I_C_T P_DUSKJ 77 P_Dusk_ATTACK_2
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3105 /* No estoy de acuerdo con esto, Dusk... pero supongo que si no los aniquilamos ahora, estos humanoides bien podrían hacer daño a inocentes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3104 /* Muy bien, flacucho. Me gusta tu determinación. Déjame ese gigante a mí, ¿quieres?  ¡Ja! */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4005 /* Un ataque a traición no habría sido mi opción, Dusk. Pero veo que ya no nos queda otra alternativa. ¡A la carga! */
END

I_C_T P_DUSKJ 77 P_Dusk_ATTACK_3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4005 /* Un ataque a traición no habría sido mi opción, Dusk. Pero veo que ya no nos queda otra alternativa. ¡A la carga! */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3105 /* No estoy de acuerdo con esto, Dusk... pero supongo que si no los aniquilamos ahora, estos humanoides bien podrían hacer daño a inocentes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3104 /* Muy bien, flacucho. Me gusta tu determinación. Déjame ese gigante a mí, ¿quieres?  ¡Ja! */
END



// ENCUENTRO CON ANTHAGAR - GOOD1

I_C_T P_DUSKJ 313 P_Dusk_Anthag4c
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3397 /* ¿Eso alivia tu carga, capitán? Desligarte de la culpa por completo... ¿es así? */
== P_DuskJ IF ~ InMyArea("P_Dusk") ~ THEN @3398 /* Sé lo que intentas, sierpe. Y sé quién eres, también. */
== P_DuskJ IF ~ InMyArea("P_Dusk") ~ THEN @3399 /* Has sido tú quien ha enviado a los otros magos, ¿no es así? */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3400 /* No se necesita ser sagaz para esa deducción, Asesino. */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3401 /* Pero ya es hora de que formalicemos esto, ¿no lo crees? */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4006 /* Este humano carece de brillo en sus ojos... parece... un muerto viviente. */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3402 /* Soy el líder de la Orden de la Cripta Olvidada y Velsharún es mi Señor. */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3403 /* Soy Anthagar, el Nigromante. Comandante del Veneno, la Muerte y la Destrucción. */
END

// ENCUENTRO CON ANTHAGAR - EVIL1

I_C_T P_DUSKJ 312 P_Dusk_Anthag4b
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3397 /* ¿Eso alivia tu carga, capitán? Desligarte de la culpa por completo... ¿es así? */
== P_DuskJ IF ~ InMyArea("P_Dusk") ~ THEN @3398 /* Sé lo que intentas, sierpe. Y sé quién eres, también. */
== P_DuskJ IF ~ InMyArea("P_Dusk") ~ THEN @3399 /* Has sido tú quien ha enviado a los otros magos, ¿no es así? */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3400 /* No se necesita ser sagaz para esa deducción, Asesino. */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3401 /* Pero ya es hora de que formalicemos esto, ¿no lo crees? */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4006 /* Este humano carece de brillo en sus ojos... parece... un muerto viviente. */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3402 /* Soy el líder de la Orden de la Cripta Olvidada y Velsharún es mi Señor. */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3403 /* Soy Anthagar, el Nigromante. Comandante del Veneno, la Muerte y la Destrucción. */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T MINSCJ 79 P_Dusk_Minscj1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3380 /*  ~Concuerdo contigo, Minsc. Aunque lo de arrancarse los ojos me parece un tanto... exagerado.~ */
END


////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T KALAH2 4 P_Dusk_KALAH2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3378 /* Vaya, a fin de cuentas, no era un ogro mago, sino un gnomo ilusionista. Todo cobra sentido ahora... */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T CIRCg4 3 P_Dusk_CIRCUS1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3377 /* Hm... Es extraño, <CHARNAME>. Quizás el guardia tenga razón... puede que esto se trate de magia maligna. Debemos proceder con cuidado. */ 
END


////////////// OK!!! \\\\\\\\\\\\\\\\\ 

I_C_T P_DUSKJ 84 P_Dusk_Mission2_Decision
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3494 /* Necesito consejos... */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4007 /* No parecen agresivos, ¿verdad, Dusk? Si no nos han atacado en primera instancia... creo que lo prudente sería pensarlo un poco más. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3118 /* ¡Argh! Minsc se confunde mucho en estas situaciones. Sin embargo, Bubú piensa que no todo debe terminar en combate, buen Dusk. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3119 /* P-pues... yo opino que este grupo no es malvado, Dusk. C-creo que deberías darle una oportunidad... Incluso, ayudarles. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3120 /* A veces es sabio compartir la responsabilidad de una decisión, joven Dusk. Creo que haces lo correcto en confiar en el juicio de tus compañeros. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3121 /* Pues, si me lo preguntas a mí, Dusk... yo intentaría evitar un conflicto de ser posible. Pero tampoco reniego a una refriega. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3496 /* (Gruñido, resoplido) */
== P_DuskJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3497 /* ¿Qué dices, Wilson? ¿Quieres devorarte a la gnoll? */
== p_ziben IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3498 /* *gruñido* Será mejor que calmes a tu pulgoso amigo, soldado. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3499 /* (Gruñido, lamento) */
== P_DuskJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3500 /* Tranquilo, Wilson, tranquilo... aguarda un instante... en tan sólo un momento veremos cómo se resuelve esto... */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3122 /* Me he enfrentado a muchos humanoides, Dusk. Y, ciertamente, ninguno ha sido como este grupo. Me cuesta creer que éstos hayan orquestado un ataque contra un destacamento de Cormyr. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3123 /* No parecen oponentes dignos de nuestra atención... Sin embargo, pienso que no deberían estar libres. Un buen juez de Athkatla ya les habría condenado a la hoguera. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3124 /* De primera mano, tengo mala experiencia tratando con humanoides... Pero, Dusk... estas criaturas no parecen ser violentas. */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3125 /* Dusk, entiendo que quieras vengar a tus compañeros de armas... pero ten en cuenta, que puede que este grupo no sea el responsable de tal ataque. */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3126 /* La naturaleza indica la violencia innata en muchos humanoides, Dusk. Pero no logro ver eso en este grupo. Puede que, a fin de cuentas, no hayan sido responsables de dicho ataque. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3127 /* Sé muy bien lo que es ser juzgado por un grupo corrupto, Dusk. No quiero creer que el nuestro encaje en esa clasificación. Que el odio no nuble tu juicio, amigo mío. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3128 /* Abbil, sé muy bien lo que es ser juzgada sólo por tu raza. Juzgada por los viles rivvil... Y creo, Dusk, que tú no eres como el resto de los rivvil. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3129 /* Pues, si me lo preguntan a mí (cosa que aún no han hecho, pero no se puede esperar menos de un grupo de primates), yo diría que los friamos con magia. Los humanoides de Sothillis no merecen vivir en el mundo de los hombres. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3130 /* Hmpf... ¿dijiste algo, flacucho? Sólo di la palabra mágica y Korgan se encargará de este patético grupo de orcos. Mi hacha también lo ansia. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3131 /* Esto me recuerda a una situación que vivió mi tío Gerardo. El pobre había sido acusado de robar toda una granja de faisanes. Los rumores indicaban que mi tío planeaba armar un ejército de faisanes y así asaltar diferentes granjas de nabos a lo largo de todo Faerûn. Al cabo de unos días, un destacamento de guardias cayó a mi casa. Por suerte, allí pudieron desmentir los viles rumores sobre Gerardo. Como represalia, los meses siguientes planeó armar un ejército de hurones para que los rumores se hicieran realidad. Aún no sé en qué habrá quedado ese plan. Pero ciertamente tenía su potencial. */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3132 /* Vaya, vaya, el cuervo blanco está en una especie de discrepancia con sus deseos. Yo diría: no lo pienses tanto. Baila un poco y que tus pies decidan tu destino (y el suyo también). */

END


I_C_T P_FALON 4 P_Dusk_Mission2_Falon_Sothil
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3110 /* Ya veo, estas criaturas eran parte del ejército que busca invadir Amn... Creo que es una razón más para aniquilarlos, <CHARNAME>. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3111 /* Los caballeros de la Noble Orden han combatido durante meses contra criaturas como esta, <CHARNAME>. Sin embargo, estos no parecen tener la sed de sangre que tienen los esbirros del ogro. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4008 /* ¿Imperio de qué? *se rasca la cabeza* Siento que me he perdido de bastante contexto aquí. */
END

I_C_T P_FALON 4 P_Dusk_Mission2_Falon_Sothil2
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3111 /* Los caballeros de la Noble Orden han combatido durante meses contra criaturas como esta, <CHARNAME>. Sin embargo, estos no parecen tener la sed de sangre que tienen los esbirros del ogro. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3110 /* Ya veo, estas criaturas eran parte del ejército que busca invadir Amn... Creo que es una razón más para aniquilarlos, <CHARNAME>. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4008 /* ¿Imperio de qué? *se rasca la cabeza* Siento que me he perdido de bastante contexto aquí. */
END

I_C_T P_FALON 4 P_Dusk_Mission2_Falon_Sothil3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4008 /* ¿Imperio de qué? *se rasca la cabeza* Siento que me he perdido de bastante contexto aquí. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3111 /* Los caballeros de la Noble Orden han combatido durante meses contra criaturas como esta, <CHARNAME>. Sin embargo, estos no parecen tener la sed de sangre que tienen los esbirros del ogro. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3110 /* Ya veo, estas criaturas eran parte del ejército que busca invadir Amn... Creo que es una razón más para aniquilarlos, <CHARNAME>. */
END

// EVIL Dusk asesina a M,M,D. Antes de aparición de Danctian
I_C_T P_DUSKJ 295 P_Fall_EVIL_Dusk_Kills1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4009 /* ¡¿Dusk?! No... no entiendo... ¡¿Qué has hecho?! */
END

// Sornhil conoce a Mathyus y Michelson
I_C_T P_SORNHI 23 P_Fall_Anthagar1a
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4010 /* ¡Oh, no! Está al tanto de tus amigos shilmistas, Dusk. */
END

I_C_T P_SORNHI 50 P_Fall_Anthagar1a
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4010 /* ¡Oh, no! Está al tanto de tus amigos shilmistas, Dusk. */
END

// Demoledor aparece por primera vez
I_C_T P_DEMOLE 2 P_Fall_Demole1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4011 /* ¡Pero qué perrito más lindo! */
END

// Demoledor aparece por 2da vez
I_C_T P_DEMOLE 25 P_Fall_Demole2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4012 /* ¡Hola, Demole! ¿Cómo estás? Dime, ¿te alimenta bien ese elfo escuálido de cabello verde? */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4013 /* (Demole mueve la cola a las palabras de Fall, demostrando alegría al verla también) */
END

I_C_T P_DEMOLE 26 P_Fall_Demole3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4012 /* ¡Hola, Demole! ¿Cómo estás? Dime, ¿te alimenta bien ese elfo escuálido de cabello verde? */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4013 /* (Demole mueve la cola a las palabras de Fall, demostrando alegría al verla también) */
END

// Demoledor aparece por 3era vez
I_C_T P_DEMOLE 19 P_Fall_Demole4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4014 /* ¡Demoledor! ¿Cómo has estado? Se te ve bien alimentado. Hasta creo que has engordado. */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4015 /* (Demole gira sobre su propio eje, demostrando felicidad ante la presencia de Fall) */
END

// CHARNAME dice que no lo molesten cuando le informan de la Final Quest
I_C_T P_DEMOLE 23 P_Fall_GOOD_DEMOLEMF2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4016 /* ¿Qué te pasa, <CHARNAME>? No hieras los sentimientos del pobre perro. */
END

I_C_T P_DUSKJ 18 P_Dusk_NPC_Michelson_GOLD2
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3022 /* Con un demonio, <CHARNAME>. ¿Cómo se te ocurre darle dinero a esa pulga verdosa? (¡Mejor me lo hubieras dado a mí!) */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3021/* ~Bueno, eso ha sido un gasto excesivo de oro si me lo preguntas a mí. No te preocupes, <CHARNAME>. Siempre podemos 'reabastecernos' en el Distrito Gubernamental.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4001 /* Bueno, lo has resuelto bastante rápido, <CHARNAME>. Aunque puede que el oro hubiese sido más útil en otro lado. */
END

I_C_T P_DUSKJ 18 P_Dusk_NPC_Michelson_GOLD2_1
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3021/* ~Bueno, eso ha sido un gasto excesivo de oro si me lo preguntas a mí. No te preocupes, <CHARNAME>. Siempre podemos 'reabastecernos' en el Distrito Gubernamental.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3022 /* Con un demonio, <CHARNAME>. ¿Cómo se te ocurre darle dinero a esa pulga verdosa? (¡Mejor me lo hubieras dado a mí!) */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4001 /* Bueno, lo has resuelto bastante rápido, <CHARNAME>. Aunque puede que el oro hubiese sido más útil en otro lado. */
END

I_C_T P_DUSKJ 18 P_Dusk_NPC_Michelson_GOLD2_2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4001 /* Bueno, lo has resuelto bastante rápido, <CHARNAME>. Aunque puede que el oro hubiese sido más útil en otro lado. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3021/* ~Bueno, eso ha sido un gasto excesivo de oro si me lo preguntas a mí. No te preocupes, <CHARNAME>. Siempre podemos 'reabastecernos' en el Distrito Gubernamental.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3022 /* Con un demonio, <CHARNAME>. ¿Cómo se te ocurre darle dinero a esa pulga verdosa? (¡Mejor me lo hubieras dado a mí!) */
END


I_C_T P_DUSKJ 20 P_Dusk_NPC_Michelson_BEER2
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3026 /* Nunca creí que algo tan pequeño pudiese beber tanto. Ese Michelson es algo de otro mundo. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3025 /* ¡Con un carajo, <CHARNAME>! Desperdicias una cerveza de buena calidad en ese enclenque del bosque. Mejor se la hubieras dado al buen Korgan. */
END

I_C_T P_DUSKJ 20 P_Dusk_NPC_Michelson_BEER2_1
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3025 /* ¡Con un carajo, <CHARNAME>! Desperdicias una cerveza de buena calidad en ese enclenque del bosque. Mejor se la hubieras dado al buen Korgan. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3026 /* Nunca creí que algo tan pequeño pudiese beber tanto. Ese Michelson es algo de otro mundo. */
END

I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES1d
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3031 /* Esto es una pérdida de tiempo, <CHARNAME>. Espero que tu pequeña treta funcione. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3029 /* ¡Vaya, <CHARNAME>! Has hecho despanzar de la risa a Bubú. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3030 /* Cielos, <CHARNAME>. *risita* Eso ha sido muy gracioso. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3495 /* (Wilson mueve sus orejas, demostrando confusión ante el chiste de <CHARNAME>) */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4000 /* ¿El paladín se llama 'Nadie'? No le veo la gra-- Ah, ya entiendo. *ríe* Muy bueno, <CHARNAME>. */
END

I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES1d_1
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3029 /* ¡Vaya, <CHARNAME>! Has hecho despanzar de la risa a Bubú. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3030 /* Cielos, <CHARNAME>. *risita* Eso ha sido muy gracioso. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3031 /* Esto es una pérdida de tiempo, <CHARNAME>. Espero que tu pequeña treta funcione. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3495 /* (Wilson mueve sus orejas, demostrando confusión ante el chiste de <CHARNAME>) */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4000 /* ¿El paladín se llama 'Nadie'? No le veo la gra-- Ah, ya entiendo. *ríe* Muy bueno, <CHARNAME>. */
END

I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES1d_2
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3030 /* Cielos, <CHARNAME>. *risita* Eso ha sido muy gracioso. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3029 /* ¡Vaya, <CHARNAME>! Has hecho despanzar de la risa a Bubú. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3031 /* Esto es una pérdida de tiempo, <CHARNAME>. Espero que tu pequeña treta funcione. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3495 /* (Wilson mueve sus orejas, demostrando confusión ante el chiste de <CHARNAME>) */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4000 /* ¿El paladín se llama 'Nadie'? No le veo la gra-- Ah, ya entiendo. *ríe* Muy bueno, <CHARNAME>. */

END

I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES1d_3
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3495 /* (Wilson mueve sus orejas, demostrando confusión ante el chiste de <CHARNAME>) */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3030 /* Cielos, <CHARNAME>. *risita* Eso ha sido muy gracioso. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3029 /* ¡Vaya, <CHARNAME>! Has hecho despanzar de la risa a Bubú. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3031 /* Esto es una pérdida de tiempo, <CHARNAME>. Espero que tu pequeña treta funcione. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4000 /* ¿El paladín se llama 'Nadie'? No le veo la gra-- Ah, ya entiendo. *ríe* Muy bueno, <CHARNAME>. */
END

I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES1d_4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4000 /* ¿El paladín se llama 'Nadie'? No le veo la gra-- Ah, ya entiendo. *ríe* Muy bueno, <CHARNAME>. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @3495 /* (Wilson mueve sus orejas, demostrando confusión ante el chiste de <CHARNAME>) */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3030 /* Cielos, <CHARNAME>. *risita* Eso ha sido muy gracioso. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3029 /* ¡Vaya, <CHARNAME>! Has hecho despanzar de la risa a Bubú. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3031 /* Esto es una pérdida de tiempo, <CHARNAME>. Espero que tu pequeña treta funcione. */
END


I_C_T P_DUSKJ 24 P_Dusk_NPC_Michelson_JOKES2
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3034 /* ¡Ja! ¿De qué te preocupas, flacucho? El chiste de <CHARNAME> ha estado muy bueno. De hecho yo lo conté en el funeral de mi tía. Fue todo un éxito. */
END

I_C_T P_MATUT 44 P_Dusk_NPC_Minsc_Mathyus_Mission_Complete
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3046 /* ¿Calvo? Pues Minsc no ve el inconveniente en ello ¿verdad, Bubú?*/
END
///////////////////////////////////

// Gitana
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Dusk",LastTalkedToBy)~ EXTERN TRGYP02 g4
END

CHAIN TRGYP02 g4
@0 /* Aún cuando ya no eres un mensajero de la paz, puedes lograr mucho si tu <LADYLORD> <CHARNAME> encamina su destino hacia la luz. Pero ten en cuenta, aún en la oscuridad puedes encontrar el camino que tanto buscas... */
== P_DuskJ @1 /* Un poco ambiguo, mi dama. Sin embargo, no haré oídos sordos a lo que me ha dicho. */ 
EXIT

// Boy1
EXTEND_BOTTOM BOY1 1
IF ~~ EXTERN P_DUSKJ p_g4
END

CHAIN P_DUSKJ p_g4
@20000 /* Rayos, <CHARNAME>. Que tengas tu propia búsqueda no implica que no puedas ayudar a los demás, en especial a un niño que ha perdido a su madre... */
EXIT

EXTEND_BOTTOM OHNQUAID 10
IF ~~ EXTERN P_DUSKJ p_g2
END

CHAIN P_DUSKJ p_g2
@3489 /* ¡<CHARNAME>, cuidado! */
EXIT

// Celvan el Loco
CHAIN IF WEIGHT #-1 
~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskReactionCelvan","AR0300",0)~ THEN CELVAN c1
@2 /* Hubo una vez un valiente guerrero,
aunque soñaba con la paz su porte era severo.
Fue entonces que al amor de su vida conoció un día:
una elfa de cabellos dorados le correspondía.
Le acompañó en su gesta por la paz
y su rostro severo ahora era un disfraz,
pues el amor le cegó como a un tonto
ajeno a la tragedia que le golpearía pronto... */
DO ~SetGlobal("P_DuskReactionCelvan","AR0300",1)~
== P_DuskJ @3 /* ¿Me hablas a mí? ¡¿Cómo sabes eso?! ¡Explícate! */
END CELVAN 1

CHAIN IF WEIGHT #-1 
~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskReactionRibald","AR0702",0)~ THEN RIBALD P_DuskRibald1
@3515 /* Ribald el Truequista a vuestro servicio. El Mercado del Aventurero es la mejor tienda del ramo en toda Faerûn. La mejor selección, los precios asequibles y no son cantos de sirena. Tan solo buenas mercancías, simple y llanamente... Hmmm... ¿Por qué anotas a medida que voy hablando, muchacho? */
DO ~SetGlobal("P_DuskReactionRibald","AR0702",1)~
== P_DuskJ @3375 /* "Tan solo buenas mercancías, simple y..." (deja de escribir cuando todos posan su atención en él) */
== P_DuskJ @3376 /* Ehm... Perdón, señor Ribald, es sólo que usted tiene buena labia para estas cosas. Y he pensado que podría aprender una o dos cosas de su discurso. */
== RIBALD @3516 /* Ah, ya veo. Un futuro competidor, ¿eh? Ah, no hay necesidad de esa cara, mi estimado humano. Puedes aprender todo lo que quieras. Y, de paso, harías bien en comprarme una o dos baratijas, ¿no lo crees? Ahora, déjame comenzar de nuevo: */
END RIBALD 0

// Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Dusk",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_DuskReactionMadam1
@4 /* Saludos, mi señor. Soy la Madame Nin, y estoy aquí para asegurar que su compañía sea placentera. ¿Estás interesado? */
== P_DuskJ @5 /* No, gracias. <CHARNAME>, será mejor que encontremos una solución a esto. Claramente, aquí trabajan en contra de su voluntad. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Dusk",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_DuskReactionMadam2
@6 /* Entonces... ¿deseas compañía para esta noche? */
== P_DuskJ @7 /* Rayos, deje de molestar, señora. */
EXIT




// Traición de Yoshimo

I_C_T YOSHJ 113 P_DuskYOSHJ113
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @8 /* No, Yoshimo... no... ¿cómo has podido vender tu alma a este ser desgraciado? Maldito seas, Yoshimo... maldito seas... */
END

// Prisión del Hechicero, luego de perder el alma

INTERJECT Player1 3 P_DuskSpellholdDizzy0
== P_DuskJ IF ~InParty("P_Dusk") Range("P_Dusk",15) !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN
@9 /* ¿Te encuentras bien? Estuviste un buen tiempo inconsciente. */
END
++ @10 /* Estoy bien, no te preocupes. */ EXTERN P_DuskJ pl1.1
++ @11 /* Mi cuerpo se siente extraño, como si no estuviera en total control... */ EXTERN P_DuskJ pl1.2

CHAIN P_DuskJ pl1.1
@13 /* De acuerdo, pero no dudes en acudir a tus amigos si lo necesitas. Debemos estar juntos en esto si queremos salir de aquí con vida. */
EXIT

CHAIN P_DuskJ pl1.2
@14 /* Es muy probable que el mago haya lanzado algo permanente contra ti... o tal vez, quitado algo. Pensar en las almas me estremece, pero si la tuya fue arrebatada, la recuperaremos. Es una promesa, <CHARNAME>. */
EXIT

// PC se convierte en el Asesino por primera vez

I_C_T PLAYER1 5 P_DuskFirstSlayerChange1 
== P_DuskJ IF ~InParty("P_Dusk") See("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @15 /* ¿Qué diantres fue eso? Te convertiste en una criatura sediente de sangre, totalmente enajenada de sus sentidos de juicio. <CHARNAME>, eso fue el avatar del Asesino, ¿no es así? Fue impresionante... y escalofriante al mismo tiempo. */
END

// Lonk ha muerto. Momentos antes del enfrentamiento contra Irenicus

I_C_T PLAYER1 15 P_DuskLonkIsDead1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @16 /* No me sentiría muy a gusto con tantos hechiceros (especialmente dementes) a mi alrededor. Pero creo que tienen tantas razones como nosotros para enfrentarse a Irenicus, <CHARNAME>. Haz lo que consideres correcto. */
END

// Diálogo por el Árbol de la Vida

EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DuskTreeOfLife","GLOBAL",0) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
@17 /* Dusk, el bravo guerrero. Su mirada es severa y determinada. Sabes que no dudaría en morir por sus ideales, ni por sus camaradas. */
DO ~SetGlobal("P_DuskTreeOfLife","GLOBAL",1)~
END
++ @18 /* Dusk, esta no es tu pelea. No es necesario que me sigas. */ EXTERN P_DuskJ pl2.1
++ @19 /* Has hecho mucho por mí, Dusk. Puedes irte a casa si así lo deseas. */ EXTERN P_DuskJ pl2.1
++ @20 /* ¿Estás listo para seguirme? Te necesito a mi lado para vencer. */ EXTERN P_DuskJ pl2.1

CHAIN P_DuskJ pl2.1
@21 /* Hemos recorrido un largo camino para llegar aquí. La única opción es el combate, <CHARNAME>. Lo haremos juntos... ¡lo haremos por los caídos! */
END
COPY_TRANS PLAYER1 33 

EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DuskTreeOfLife","GLOBAL",0) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ EXTERN PLAYER1 pl3
END

CHAIN PLAYER1 pl3
@3392 /* Dusk, el guerrero de Cormyr. Su corazón se ha endurecido, pero ello le ha hecho más poderoso. Su mirada es fría y temeraria; pese a ello, sus ojos emanan respeto a tu presencia. */
DO ~SetGlobal("P_DuskTreeOfLife","GLOBAL",1)~
END
++ @18 /* Dusk, esta no es tu pelea. No es necesario que me sigas. */ EXTERN P_DuskJ pl3.1
++ @19 /* Has hecho mucho por mí, Dusk. Puedes irte a casa si así lo deseas. */ EXTERN P_DuskJ pl3.1
++ @20 /* ¿Estás listo para seguirme? Te necesito a mi lado para vencer. */ EXTERN P_DuskJ pl3.1

CHAIN P_DuskJ pl3.1
@3393 /* Hemos recorrido un largo camino para llegar aquí, <CHARNAME>: La venganza está a nuestro alcance. Acabemos con Jon Irenicus. Que el bastardo sea testigo de nuestro gran poder. */
END
COPY_TRANS PLAYER1 33 


// Árbol de la vida. Irenicus es derrotado.
I_C_T PLAYER1 16 P_DuskIrenicusIsDead1
== P_DuskJ IF ~InParty("P_Dusk") Range("P_Dusk",15) !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @27 /* ¡Le hemos vencido! Pero... algo no está bien... ¿qué sucede? */
END

// Infierno
I_C_T PLAYER1 25 P_DuskEnteringHell1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @28 /* Una visión extraña, <CHARNAME>. ¿Me has traído a tu infierno personal? Si salimos de aquí con vida, puede que acepte que me compres una cerveza. */
END

// Combatiendo contra Irenicus
I_C_T HELLJON 7 P_DuskThirdBattleWithIrenicus1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @29 /* Desde el Paseo de Waukin no has hecho más que dejar un regadero de cadáveres en tu camino, Irenicus... tu egoísmo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los caídos tendrán su venganza. ¡Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 7 P_DuskThirdBattleWithIrenicus12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @515 /* ¡Jon Irenicus, hoy será el último día de tu miserable existencia! Tu intento de acumular poder ha fracasado. ¡Caerás y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominación... */
END

I_C_T HELLJON 8 P_DuskThirdBattleWithIrenicus2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @29 /* Desde el Paseo de Waukin no has hecho más que dejar un regadero de cadáveres en tu camino, Irenicus... tu egoísmo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los caídos tendrán su venganza. ¡Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 8 P_DuskThirdBattleWithIrenicus22
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @515 /* ¡Jon Irenicus, hoy será el último día de tu miserable existencia! Tu intento de acumular poder ha fracasado. ¡Caerás y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominación... */
END

I_C_T HELLJON 9 P_DuskThirdBattleWithIrenicus3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @29 /* Desde el Paseo de Waukin no has hecho más que dejar un regadero de cadáveres en tu camino, Irenicus... tu egoísmo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los caídos tendrán su venganza. ¡Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 9 P_DuskThirdBattleWithIrenicus32
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @515 /* ¡Jon Irenicus, hoy será el último día de tu miserable existencia! Tu intento de acumular poder ha fracasado. ¡Caerás y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominación... */
END

I_C_T HELLJON 10 P_DuskThirdBattleWithIrenicus4
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @29 /* Desde el Paseo de Waukin no has hecho más que dejar un regadero de cadáveres en tu camino, Irenicus... tu egoísmo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los caídos tendrán su venganza. ¡Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 10 P_DuskThirdBattleWithIrenicus42
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @515 /* ¡Jon Irenicus, hoy será el último día de tu miserable existencia! Tu intento de acumular poder ha fracasado. ¡Caerás y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominación... */
END

// GAELAN BAYLE
I_C_T GAELAN 12 P_DuskGAELAN1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20001 /* Debemos ser cuidadosos. Estos son los Barrios Bajos, por lo que confiar en un extraño es algo potencialmente peligroso. Aún así, confío en mi fuerza. Si este pelmazo intenta algo raro, mi bastón le hará ver las estrellas. */
END

I_C_T GAELAN 87 P_DuskGAELAN2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20002 /* Finalmente... conoceremos al líder de los Ladrones de las Sombras. Más vale que haga valer nuestros esfuerzos... */
END

// Viconia, ANTES DE SER QUEMADA

I_C_T vicg4 2 P_DuskVICONI13
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @60 /* ¿Van a quemarla viva?... No... ¿sólo por ser una drow? <CHARNAME>, esto es inconcebible. ¡Debemos hacer algo! */
END

I_C_T vicg4 2 P_DuskVICONI132
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @516 /* ¡Ja! ¿Cómo es posible que una drow se haya dejado atrapar tan fácilmente por estos alfeñiques? En mi opinión, tal ineptitud debería ser castigada con la muerte... */
END

// Xzar
I_C_T LYROS 5 P_DuskLYROS5
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @61 /* (susurro) <CHARNAME>, claramente fuimos nosotros los que irrumpimos en su casa y matamos a esas viles criaturas. No es que me esté quejando, pero creo que aquí hay gato encerrado... Debemos estar atentos. */
END

I_C_T LYROS 5 P_DuskLYROS52
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @517 /* (susurro) Esto es cómico... hemos sido nosotros los que aniquilamos a las 'pertenencias' de este infeliz. Si bien fue un placer hacerlo, creo que hemos sido engañados, <CHARNAME>. */
END

// Faldorn
I_C_T CERNDJ 69 P_DuskCEFALDOR9
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @62 /* Incluso yo puedo entender que esta Faldorn es una afrenta para la naturaleza. Usar a los animales para el asesinato por venganza es una maniobra soez y cobarde. Cernd, espero que puedas patearle el trasero. */
END

I_C_T JAHEIRAJ 94 P_DuskCEFALDOR10
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20003 /* Incluso yo puedo entender que esta Faldorn es una afrenta para la naturaleza. Usar a los animales para el asesinato por venganza es una maniobra soez y cobarde. Jaheira, espero que puedas patearle el trasero. */
END

// Bodhi
I_C_T BODHI 6 P_DuskBODHI10
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3386 /* ¿Cómo sabe esta fulana de cuánto dinero disponemos? Rayos, <CHARNAME>. Si bien, supuestamente, ofrece lo mismo que los Ladrones por menos dinero... Esta criatura se me hace muy... repugnante. */
END

I_C_T BODHI 6 P_DuskBODHI101
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3385 /* Al parecer está al tanto de nuestros movimientos, <CHARNAME>. Sabe hasta de cuánto oro disponemos. Err... un dato incómodo si a mí me lo preguntas... */
END

I_C_T BODHI 10 P_DuskBODHI102
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @63 /* <CHARNAME>, aliarnos con esta criatura supondrá inmiscuirnos directamente en una guerra abierta contra los Ladrones de las Sombras. Debemos ser cautos en nuestras próximas decisiones... puede que la vida de muchos inocentes estén en nuestras manos... Si hay una guerra, querría evitarla (aunque a estas alturas, parece casi imposible). */
END

I_C_T BODHI 10 P_DuskBODHI103
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @518 /* ¿Una alianza con esta... inmundicia? Aunque nos ofrezca un buen trato, no creo que valga la pena, <CHARNAME>. Si por mí fuera, la decapitaría aquí mismo. No merece otro destino... */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\



I_C_T BODHI2 4 P_DuskBODHI24
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @65 /* Mide tus palabras, criatura. Puede que <CHARNAME> sea un fastidio (sin ánimos de ofender) pero al menos tiene claridad en sus palabras, a diferencia tuya. */
END

I_C_T PPBODHI4 14 P_DuskPPBODHI414
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @66 /* Parece ser que Irenicus aún puede ser alcanzado. <CHARNAME>, debemos superar los obstáculos que nos ponga esta criatura si queremos lograrlo. */
END

I_C_T PPBODHI4 14 P_DuskPPBODHI4142
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @519 /* Tenemos una oportunidad aquí, <CHARNAME>. Irenicus está cada vez más cerca. Aunque no me fío de este... demonio. Hagamos lo que quiere y luego... 'lidiemos' con ella. */
END

I_C_T C6BODHI 15 P_DuskC6BODHI15
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @67 /* Finalmente la criatura demuestra sentimientos. La sola mención de los elfos casi le hace perder la cabeza. */
END

// El Ojo Ciego
I_C_T GAAL 1 P_DuskGAAL1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @68 /* Fanáticos... presiento que algo malo está por ocurrir aquí, <CHARNAME>... */
END

I_C_T GAAL 1 P_DuskGAAL12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @520 /* No hay nada más lamentable que fanáticos cegados por sus creencias... Aunque, en este caso es algo muy literal para mi gusto. */
END

I_C_T GAAL 22 P_DuskGAAL22
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @69 /* ¡La hora del juicio ha llegado, Gaal! ¡Pagarás con sangre por aquellos inocentes que han muerto por tu culpa! */
END

I_C_T GAAL 22 P_DuskGAAL222
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @521 /* Reza al dios que quieras, perro... Nadie te salvará de la muerte. ¡Déjamelo a mí, <CHARNAME>! Disfrutaré de su agonía... */
END

I_C_T CTRAITOR 2 P_DuskCTRAITOR2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @70 /* Al parecer, el dios va tomando forma de bestia. Debemos tener cuidado, los contempladores no son criaturas para tomar a la ligera. */
END

I_C_T RIFTM01 6 P_DuskRIFTM016
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @71 /* ~¡¿Casi cada siglo?! Rayos...~ */
END

I_C_T RIFTM01 28 P_DuskRIFTM0128
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @72 /* ~El artefacto no nos pertenece. <CHARNAME> está haciendo lo correcto, al menos deberías darle el beneficio de la duda.~ */
END

I_C_T RIFTM01 28 P_DuskRIFTM01282
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3387 /* ~¡Escúchame bien, alfeñique! <CHARNAME> ha decidido regresar el artefacto porque ha creído que es lo correcto. Lo mínimo que deberías hacer es agradecérselo de rodillas. ¿Eso te costaría? Yo podría ayudarte. Ya verás que mi espada es un buen incentivo...~ */
END

// Maevar, Renal, Aran Linvail 

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T MAEVAR 24 P_DuskMAEVAR24
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @73 /* ~Este tipo es un pelmazo, <CHARNAME>. Sin duda espero que nuestros esfuerzos valgan la pena.~ */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T MAEVAR 29 P_DuskMAEVAR29
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @74 /* ~Si hay algo que me gustaría evitar, es asesinar en nombre de este idiota, <CHARNAME>. Espero que puedas encontrar la sabiduría de hacer lo correcto.~ */
END

I_C_T MAEVAR 29 P_DuskMAEVAR292
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3381 /* ~No es que me queje en tener que asesinar a un ladrón, <CHARNAME>. Pero preferiría tener que hacerlo por motivos propios y no por necesidad de esta lacra...~ */
END


////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T EDWIN 3 P_DuskEDWIN3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @75 /* Claramente, esta es una Cofradía de Zopencos, <CHARNAME>. ¿Asesinar por este... este tipejo de rojo? (suspiro) Creo que puedo encargarme de ello, si es necesario. */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T EDWIN 16 P_DuskEDWIN16
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @76 /* <CHARNAME>, espero que no lleguemos al extremo del asesinato en esta ocasión. Sin duda creo que podremos llegar a ser un tanto más... diplomáticos, ¿verdad? */
END

I_C_T EDWIN 16 P_DuskEDWIN162
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @522 /* <CHARNAME>, creo poder estar a la altura de la tarea. Si quieres, envíame a mí. Le amenazaré y haré que suelte esos papeles que tanto quiere este... infeliz de rojo. */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T RENAL 5 P_DuskRENAL5
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @77 /* Es bastante carismático para ser un ladrón. Veremos qué tiene para decir... */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T RENAL 41 P_DuskRENAL41
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @78 /* Finalmente, alguien a quien vale la pena matar. Quizás te sorprenda lo que voy a decir, pero espero que nos asignen la tarea de matar a ese bastardo. */
END

I_C_T RENAL 41 P_DuskRENAL412
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @523 /* Espero que nos encarguen el asesinato de Mae'var, <CHARNAME>. Esa lacra no merece estar con vida un segundo más... */
END

I_C_T ARAN 49 P_DuskARAN49
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @79 /* Este tipo es tan carismático como Renal. Sin embargo, no puedo evitar pensar que puede que estemos siendo estafados... */
END

I_C_T ARAN 53 P_DuskARAN53
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @80 /* Creo que la criatura del cementerio entra en juego aquí, <CHARNAME>... De seguro le está dando por los pelos a estos ladronzuelos. */
END

I_C_T ARAN 12 P_DuskARAN12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @81 /* Todo apunta a un enfrentamiento definitivo con la criatura, ¿verdad? No veo las horas de armar un alboroto entre los muertos. */
END

I_C_T ARAN 66 P_DuskARAN66
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @82 /* Y todo culminó en la tragedia del Paseo y en la muerte de decenas de personas inocentes. Debo decir que fue una lástima que no hayas podido resolver esto antes, Aran. */
END

// Hendak y Lehtinian

I_C_T LEHTIN 17 P_DuskLEHTIN17
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @83 /* Qué desagradable es este tipejo, <CHARNAME>. Sin embargo, será mejor que le sigas preguntando al respecto. Presiento que aquí pasa algo más de lo que vemos. */
END

I_C_T HENDAK 2 P_DuskHendakInt2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @84 /* ¡Me hierve la sangre de ira, <CHARNAME>! Hagamos lo posible por liberar a estos esclavos y hagamos pagar a los culpables. Cuenta conmigo. */
END

I_C_T HENDAK 2 P_DuskHendakInt22
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @524 /* Mucho esfuerzo si me lo preguntas a mí. Sin embargo, nunca viene mal tener que despachar a uno que otro esclavista. Lo haré con gusto si es lo que quieres, <CHARNAME>. */
END

I_C_T HENDAK 41 P_DuskHendakInt41
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @85 /* La esclavitud es un negocio muy redituable. El precio que pagamos por la libertad no es visible, pero cuesta y mucho. Acabar con los asquerosos esclavistas es lo mejor que podemos hacer. */
END

I_C_T HENDAK 41 P_DuskHendakInt412
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @525 /* La esclavitud es un negocio muy redituable. Pero es un negocio de cobardes. Y no hay nada que me dé más placer que acabar con cobardes que se creen fuertes. Vamos, <CHARNAME>. Busquemos esa guarida y armemos algo de alboroto. */
END

I_C_T HENDAK 43 P_DuskHendakInt43
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @86 /* Hemos hecho algo bueno aquí, <CHARNAME>. Estoy seguro de que Hendak hará lo posible para mejorar la calidad de vida de aquellos que fueron esclavos. */
END

I_C_T HENDAK 43 P_DuskHendakInt432
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @526 /* No creo que la 'recompensa' haya valido la pena. Pero bueno, destrozar a esos pusilánimes ha sido todo un placer. */
END

// Distrito del Puente. Paladines Caídos. Plano de Tieflings

I_C_T MURDGIRL 8 P_DuskMURDGIRL8
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @87 /* Muchachita, el hecho de que hayas escapado por los pelos, ¿no te dice algo? Campoescudo hizo lo correcto al darnos tu nombre. */
END

I_C_T MURDGIRL 8 P_DuskMURDGIRL82
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @527 /* ¿Qué otra cosa puedes esperar de una cortesana? Para este tipo de personas no existe la palabra 'responsabilidad'. */
END

I_C_T TANNER 8 P_DuskTanner8
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @88 /* Así que lo admites... Miserable. Pagarás por lo que has hecho... */
END

I_C_T TANNER 8 P_DuskTanner82
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @528 /* Debo admitir que me pica un poco la curiosidad de por qué ha hecho todo esto. Pero, de nuevo, ¿a quién le importa el deseo de un chiflado? */
END

I_C_T INSPECT 43 P_DuskINSPECT43
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @89 /* Debes ir con cuidado, teniente. El bastardo había plantado un montón de trampas mortales, puede que aún quede alguna. Oh, y si fuera tú, llevaría mascarilla... El hedor allí es... insoportable. */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T MEKRAT 11 P_DuskMEKRAT11
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN 
@90 /* No tengo quejas en realizar esta búsqueda, sin embargo, este elfo hechicero parece algo inestable... Recomendaría ir con cuidado, tanto si tenemos éxito, cómo si no. */
== P_DuskJ IF ~InParty("P_Dusk")~ THEN @3324 /* Tampoco tendría quejas si decidieras, de repente, que le dé un bastonazo por la cabeza. Dilo y se hará realidad. */
END

I_C_T RAELIS 17 P_DuskRAELIS17
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91 /* Ha sido una aventura extraña, <CHARNAME>, aunque siempre es bueno enfrentarse a esclavistas. Espero que Raelis no tenga inconvenientes para abrir ese portal... */
END

I_C_T EDWINJ 58 P_DuskEDWINJ58
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @92 /* ¿Estás loco, hechicero? En ningún momento mencionó que teníamos permiso para usar tus cochinos conjuros a diestra y siniestra. ¡No creas que me quedaré de brazos cruzados si tienes la intención de lastimar a inocentes con tu magia! */
== VALYGARJ IF ~InParty("P_Dusk") InParty("Valygar") InMyArea("Valygar") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20007 /* No lo podría haber dicho mejor, Dusk. */
== EDWINJ IF ~InParty("P_Dusk") InParty("Edwin") InMyArea("Edwin") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20008 /* ¿Qué es esto? ¿El hombre del palito intenta darme advertencias? Puedes intentar detenerme, hombre del palito... Sólo inténtalo... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20009 /* Ya lo veremos, mago... ya lo veremos... */
END

I_C_T KAYPAL02 16 P_DuskKAYPAL0216
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @93 /* No soy nadie para juzgar los errores ajenos. Más aún de aquellos que intentan redimirse pese a no tener lugar en el mundo... Espero que estemos haciendo lo correcto, <CHARNAME>. */
END



// Valle de Inmes

////////////// OK!!! \\\\\\\\\\\\\\\\\


I_C_T TOLGER 75 P_DuskTOLGER75
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @94 /* ¿Te pide aceptar un trato sin siquiera conocer los detalles de antemano? Uff... típica actitud de un mago cobarde... */
END

I_C_T UHOGRE01 5 P_DuskUHOGRE01
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @96 /* No me pinta que ellos sean los responsables de este misterio, <CHARNAME>. Cazarlos sin que hayan hecho nada malo sería un error. Creo que es mejor que sigamos indagando. */
END

// Ventolanza
////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T VAELASA 7 P_DuskVAELASA7
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @97 /* Es raro... pero siento una extraña nostalgia con sólo verlas... Son criaturas hermosas. 
Has hecho bien en liberarlas, <CHARNAME>. Pertenecen al bosque. Y a la libertad. */
END

I_C_T FIRKRA02 7 P_DuskFIRKRA02
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @98 /* Cada vez me convenzo más, amigo mío, que lo de tu linaje divino no es un secreto tan bien guardado... */ /* Cada vez me convenzo más, amiga mía, que lo de tu linaje divino no es un secreto tan bien guardado... */
END

I_C_T FIRKRA02 21 P_DuskFIRKRA21
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20010 /* Una criatura imponente... Dicen que los dragones ancianos se encuentran entre las criaturas más poderosas de los Reinos... Creo que es oportuno que posterguemos este combate... Creo... */
END

I_C_T FIRKRA02 25 P_DuskFIRKRA25
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20011 /* ¡El día de tu juicio ha llegado, dragón! ¡¡¡Prepárate a sentir nuestra ira!!! */
END


// Castillo de'Arnise

I_C_T NALIA 56 P_DuskP_Dusk56
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @99 /* La muchacha no carece de coraje, <CHARNAME>. Creo que sería una buena adición al grupo. Sin embargo, también comprendería que decidas no arriesgar su cuello en esta empresa. */
END


I_C_T KPCAPT01 3 P_DuskKPCAPT0103
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20012 /* ¿Bestias excavadoras? Se me ocurre que pueden tratarse de Moles Sombrías... Eso o... Topos gigantes. */
== MINSCJ IF ~InParty("P_Dusk") InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @20013 /* ¿Topos gigantes? Bubú se estremece de sólo pensarlo. */
== JAHEIRAJ IF ~InParty("P_Dusk") InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @20014 /* ¿Topos? Vaya imaginación que tienes, Dusk. */
== P_DuskJ IF ~ OR (2) InMyArea("Jaheira") InMyArea("Minsc") ~ @20015 /* *carraspeo* Creo que me quedo con la teoría de las Moles Sombrías... */
END


// Caravasar 
 
I_C_T NEEBER 10 P_DuskNEEBER8
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @103 /* Claramente, este tipejo no cuenta con todas sus luces. */
END

I_C_T CELOGAN 40 P_DuskCELOGAN40
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @104 /* Tiene sentido... ¿Puede que se trate de un druida? */
== JAHEIRAJ IF ~ InParty("P_Dusk") InMyArea("Jaheira") ~ THEN @20016 /* Es posible, aunque no veo por qué haría algo así. Provocar una guerra abierta contra las ciudades no es la forma de preservar el equilibrio. */
== VALYGARJ IF ~ InParty("P_Dusk") InMyArea("Valygar") ~ THEN @20017 /* He conocido a algunos druidas. Si bien suelen ser extraños, no veo razones para que comiencen una guerra sin sentido. Pero, de nuevo, es muy probable que se trate de un druida. */
== CELOGAN IF ~InParty("P_Dusk")~ THEN @20018 /* Quizás, pero espera a que continúe con mi relato. */
END

I_C_T TRGENI01 24 P_DuskTRGENI0124
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20019 /* No sé si podamos confiar en los djinn, <CHARNAME>. Nada garantiza que cumplan con su palabra. */
== TRGENI01 @20020 /* ¿Pero qué oigo? Un pequeño mortal dudando de las palabras del gran Khan Zahra. Debería mandarte a otro plano por tal insolencia... pero te diré qué: Si me traes lo que pido, os daré un artefacto digno para alguien de tu... clase. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20021 /* No actuamos por la recompensa, criatura. Lo hacemos para ayudar al pueblo que asolas. Si no cumples con la promesa de irte, ten por seguro que te las verás con nosotros... */
== TRGENI01 @20022 /* (risa) ¡Qué divertidos son ustedes los humanos! */
END

I_C_T TRGENI01 24 P_DuskTRGENI01242
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3388 /* No se puede confiar en un djinn, <CHARNAME>. Si optas por perseguir a su presa, supongo que puedo ponerme detrás de eso. Pero si fuera por mí, los exterminaría aquí mismo. */
== TRGENI01 @20020 /* ¿Pero qué oigo? Un pequeño mortal dudando de las palabras del gran Khan Zahra. Debería mandarte a otro plano por tal insolencia... pero te diré qué: Si me traes lo que pido, os daré un artefacto digno para alguien de tu... clase. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @514 /* ¿Un artefacto dices? Aunque suene tentador, ello no me convence de lo que me dices, monstruo. Sin embargo, seguiré a <CHARNAME> y si nos traicionas... lo pagarás con tu vida. */
== TRGENI01 @20022 /* (risa) ¡Qué divertidos son ustedes los humanos! */
END



I_C_T TRGENI01 35 P_DuskTRGENI0135 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20023 /* Supongo que te debo una disculpa, genio. Después de todo, has cumplido con tu palabra. */
== TRGENI01  @20024 /* Ah, pero si es el mortal desconfiado. Así es, caminante, no creas que me he olvidado de ti. Este fajín es muy extraño y presiento que puedes encontrarle más utilidad que yo. */ DO ~CreateItem ("p_wsash",1,1,1) GiveItem("p_wsash", "P_Dusk")~
END

///

I_C_T TRGENI01 40 P_DuskTRGENI0140 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20023 /* Supongo que te debo una disculpa, genio. Después de todo, has cumplido con tu palabra. */
== TRGENI01  @20024 /* Ah, pero si es el mortal desconfiado. Así es, caminante, no creas que me he olvidado de ti. Este fajín es muy extraño y presiento que puedes encontrarle más utilidad que yo. */ DO ~CreateItem ("p_wsash",1,1,1) GiveItem("p_wsash", "P_Dusk")~
END


I_C_T TRGENI01 35 P_DuskTRGENI01352 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3389 /* ¡Ja! ¿Quién lo diría? El djinn está dispuesto a cumplir con su palabra. Espero que también lo hagas con lo que me has prometido, ¿eh? */
== TRGENI01  @20024 /* Ah, pero si es el mortal desconfiado. Así es, caminante, no creas que me he olvidado de ti. Este fajín es muy extraño y presiento que puedes encontrarle más utilidad que yo. */ DO ~CreateItem ("p_wsash",1,1,1) GiveItem("p_wsash", "P_Dusk")~
END

I_C_T TRGENI01 40 P_DuskTRGENI01402 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3389 /* ¡Ja! ¿Quién lo diría? El djinn está dispuesto a cumplir con su palabra. Espero que también lo hagas con lo que me has prometido, ¿eh? */
== TRGENI01  @20024 /* Ah, pero si es el mortal desconfiado. Así es, caminante, no creas que me he olvidado de ti. Este fajín es muy extraño y presiento que puedes encontrarle más utilidad que yo. */ DO ~CreateItem ("p_wsash",1,1,1) GiveItem("p_wsash", "P_Dusk")~
END

// Prisión del Hechicero

I_C_T PPCOWLED 1 P_DuskPPCOWLED1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @107 /* (susurro) Algo va mal... mantén la guardia en alto, sólo por si las dudas... */
END

I_C_T PPSAEM3 2 P_DuskPPSAEM32
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @108 /* De tres palabras que dice este tipo, cuatro son mentiras. Sin embargo, <CHARNAME>, (pese a arriesgarnos a ser nuevamente traicionados por este batracio) creo que deberíamos escucharlo. */
END

I_C_T PPSAEM3 55 P_DuskPPSAEM355
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @109 /* Con un demonio, Saemon... */
END

I_C_T PPSAEM3 52 P_DuskPPSAEM352
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @110 /* El bastardo nos ha engañado de nuevo... */
END

I_C_T ELEARB01 2 P_DuskELEARB012
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @111 /* Estos lugares arcanos... tienen un aire de corrupción por doquier... */
== VALYGARJ IF ~InParty("P_Dusk") InParty("Valygar")~ THEN @20025 /* Coincido, Dusk. Típica treta, viniendo de los Magos Encapuchados... */
END

I_C_T PPTIAX 1 P_DuskPPTIAX1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @112 /* Es extraño, no percibo energía mágica en este tipejo. Sin embargo, está claro que no está en sus cabales. Pobre... */
END

I_C_T PPTIAX 1 P_DuskPPTIAX12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @529 /* Es extraño, no percibo energía mágica en este tipejo. Sin embargo, está claro que no está en sus cabales. */
END

I_C_T PPIRENI1 4 P_DuskPPIRENI14
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @114 /* Está claro que no dejará marchar a tu amiga de aquí así como así, <CHARNAME>. Creo que debemos prepararnos para un inevitable combate... */
END

// Ciudad Sahuagin

I_C_T SAHKNG01 33 P_DuskSAHKNG0133
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") InMyArea("Minsc") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @116 /* Ciertamente, este hombre-pez es muy cabeza dura. Me recuerda a alguien... */
== MINSCJ IF ~InParty("P_Dusk") InParty("Minsc") InMyArea("Minsc")~ THEN @20026 /* Bubú pregunta, ¿por qué has mirado a Minsc cuando has dicho cabeza dura? */
== P_DuskJ IF ~InParty("P_Dusk") InParty("Minsc") InMyArea("Minsc")~ THEN @20027 /* (carraspeo) Oh, no, mi querido Minsc. No estaba insinuando nada. Solamente me acordé de... ehm... un amigo, llamado... Munsc. Sí, eso es. */
== MINSCJ IF ~InParty("P_Dusk") InParty("Minsc") InMyArea("Minsc")~ THEN @20028 /* ¿Munsc? ¡Qué gran nombre! De seguro debe ser buen amigo tuyo, Dusk. */
== P_DuskJ IF ~InParty("P_Dusk") InParty("Minsc") InMyArea("Minsc")~ @20029 /* De los mejores. */
END

I_C_T SAHPR1 1 P_DuskSAHPR11
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @117 /* Esta civilización es increíble. Parece ser sumamente antigua. No creo que muchos hombres hayan pisado estas... pegajosas baldosas. */
END

I_C_T SAHPR1 1 P_DuskSAHPR112
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @530 /* Este lugar es asqueroso. El hedor a pescado abunda. Las baldosas están pegajosas... Rayos, <CHARNAME>, estos lugares a los que nos traes... */
END

I_C_T SAHPR2 12 P_DuskSAHPR1123
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @118 /* No me sorprende. <CHARNAME>, tu linaje de Bhaal seguro que tiene algo que ver. */
END

I_C_T SAHBEH01 26 P_DuskSAHBEH0126
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @119 /* (susurro) Quizás puedas convencerlo con cierta perspicacia, <CHARNAME>. Si no me comprendes, envíame a hablar con él directamente. Creo que la clave está en la palabra *arcón*... */
END

// Infraoscuridad

I_C_T UDSVIR01 3 P_DuskUDSVIR013
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @120 /* He leído sobre los svirfneblin. En general, son criaturas benévolas. Si necesitan de nuestra ayuda, no deberíamos dudarlo, <CHARNAME>. Puede que incluso en este lugar podamos hacer algo de bien. */
== VICONIJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0) ~ THEN @20030 /* Incluso en la Oscuridad buscas ayudar a los demás, rivvil. Deberías saber que ese accionar tuyo, en la Infraoscuridad, te llevará a una muerte dolorosa. */
== P_DuskJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20031 /* Si fueras tú la que estuviese en apuros, Viconia, no dudaría en ayudarte. Para eso están los compañeros. */
== VICONIJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ @20032 /* Hmm... ¿intentas seducirme, abbil? ¡Oh, Dusk, protégeme, soy una damisela en apuros! */
== VICONIJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20033 /* ¡Ja! ¿Así conquistas a tus hembras? Te lo advierto, necesitarás mucho más que dulces palabras para tenerme satisfecha, mi querido abbil. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0) ~ @20034 /* (suspiro) ¿Para qué habré hablado? */
END

I_C_T UDSILVER 9 P_DuskUDSILVER12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @121 /* Aún no salgo de mi asombro. Esta dragona es sumamente hermosa. Una criatura maravillosa. */
END

I_C_T UDSILVER 9 P_DuskUDSILVER122
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @531 /* Nunca creí ver a un dragón plateado. Me pregunto si tendrá algún artefacto que valga la pena... */
END

I_C_T UDSILVER 35 P_DuskUDSILVER35
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @122 /* Rayos... nunca creí que algún día habría de convertirme en un... drow... */
== AERIEJ IF ~ InParty("P_Dusk")  InMyArea("Aerie") ~ @20035 /* N-no te ves tan mal, Dusk. No pongas esa cara. A fin de cuentas, así es como lucirías si hubieses nacido como un elfo. U-uno de piel oscura. */
== P_DuskJ IF ~ InParty("P_Dusk")  InMyArea("Aerie") ~ @20036 /* Sí, bueno... tú no has cambiado mucho. Sólo tu tono de piel se ha oscurecido, pero con claridad aún puedo ver que eres Aerie. */
== P_DuskJ IF ~ InParty("P_Dusk")  InMyArea("Aerie") InMyArea("Viconia") ~ @20037 /* Hasta puedo ver que tienes un parecido a Viconia, je. */
== VICONIJ IF ~ InParty("P_Dusk")  InMyArea("Aerie") InMyArea("Viconia")~ @20038 /* Escuché eso, rivvil. Tus bromas pueden costarte caro. */
== AERIEJ IF ~ InParty("P_Dusk")  InMyArea("Viconia") InMyArea("Aerie")~ @20039 /* En esta ocasión estoy de acuerdo con Viconia. Dusk, retráctate. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("Viconia") InMyArea("Aerie") ~ @20040 /* Bueno, bueno. Dejen de mirarme así. (suspiro) Creo que abro mucho la boca últimamente... */
END

I_C_T UDSOLA01 56 P_DuskUDSOLA0156
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @123 /* ¡Vaya! Con que hay problemas en el paraíso, ¿eh? */
END

// Cap 6 y 7

I_C_T C6ELHAN2 8 P_DuskC6ELHAN28
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @126 /* Hubiera esperado una bienvenida más cálida por parte de los elfos de la superficie... aunque puedo llegar a comprender su alto nivel de desconfianza. */
END

I_C_T C6ELHAN2 8 P_DuskC6ELHAN282
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @37 /* Estúpidos elfos... hemos vivido un calvario en la Infraoscuridad... sólo para toparnos con esta desconfianza inmerecida... */
END

I_C_T C6ELHAN2 23 P_DuskC6ELHAN223
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20041 /* ¿Condena? <CHARNAME>, no podemos permitir que le hagan daño a Viconia. ¡Otra vez es juzgada sólo por su raza! */
== VICONIJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20042 /* Tranquilízate, abbil. Sé cuidarme sola. */
END

I_C_T VICONIJ 119 P_DuskVICONIJ119
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20043 /* Ahora tranquilízate tú, Viconia. Estoy seguro de que <CHARNAME> bromeaba. Tiene un sentido del humor bastante extraño... */
END

I_C_T SUELHAN 6 P_DuskSUELHAN6
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0) Global("P_Dusk_T12","GLOBAL",3) ~ THEN @127 /* ¡Debemos apresurarnos, <CHARNAME>! La ciudad de los elfos corre peligro. ¡Por la memoria de Celine protegeré a los suyos! */
END

I_C_T p_belld 5 P_DuskBelld1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3254 /* Mi pequeño amigo, Michelson, mencionó algo sobre una alteración en el tiempo. No creí que algo así fuese posible. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3255 /* El mundo de la magia tiene la capacidad de alterar el tiempo y el espacio. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3256 /* En mi enfrentamiento contra el destacamento de Kartlzer, mi magia druídica colisionó contra la magia arcana de su hechicero. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3257 /* El anillo que ahora tu grupo posee, fue el conductor de dicho evento... No creo que pueda explicar concretamente lo que sucedió... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3258 /* Pues... sea lo que sea, tu historia en el Bosque de Mir aún no ha sucedido. Eso me confunde... */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3259 /* No tienes necesidad de entender todo lo que te rodea, mortal. A veces, las cosas... simplemente suceden. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3261 /* Es verdad que soy un mortal, ninfa... pero mis amigos me llaman Dusk. Tú también puedes hacerlo. */
END


// Agregados

// Tiris
I_C_T TRSKIN02 16 P_DuskTRSKIN021
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3382 /* <CHARNAME>, aparentemente hemos dado con el curtidor que se nos escapó en Athkatla. Creo que es una buena oportunidad para hacer justicia, ¿no lo crees? */
END

I_C_T TRSKIN02 16 P_DuskTRSKIN0212
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3383 /* ¡Ja! ¿Quién lo diría? Hemos dado con el bastardo despellejador. Es una buena oportunidad para averiguar por qué hace lo que hace... aunque, si tenemos que matarlo, no habrá quejas por mi parte. */
END

// GOOD/NEUTRAL
I_C_T PPIRENI2 35 P_Dusk_WIZARD_PRISON1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3390 /* ¡Irenicus! Pagarás por las muertes que has causado en el Paseo de Waukin. La muerte de los inocentes no quedarán en el olvido. ¡Por Cormyr! */
END
//EVIL
I_C_T PPIRENI2 35 P_Dusk_WIZARD_PRISON1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3391 /* ¡Finalmente! El asqueroso hechicero está a nuestro alcance, <CHARNAME>. ¡Demostrémosle a este necio lo que es el verdadero poder! */
END

// Agregados v0.9

I_C_T C6BODHI 0 P_DuskC6BODHI15_GOOD
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3440 /* Debemos tener cuidado, <CHARNAME>. Sabemos cuán fanática es Bodhi de las trampas mortales... */
END

I_C_T C6BODHI 0 P_DuskC6BODHI15_EVIL
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3441 /* Hasta en las últimas consecuencias la criatura demuestra confianza... Acabemos con ella de una buena vez. */
END

/*I_C_T SUJON 14 P_DuskSUJON14_GOOD_NEUTRAL
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3442 /* Es hora de que pagues por lo que has hecho, Jon Irenicus. ¡Por la justicia de Athkatla, caerás! */
END*/

/*I_C_T SUJON 14 P_DuskSUJON14_EVIL
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3443 /* Este es tan buen lugar como cualquiera para hacerte caer con nuestro poder, mago. El resultado será uno sólo: tu muerte. */
END*/


// FALL INTERJECTIONS
I_C_T P_ANDREW 2 P_DuskFallAndrew1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4017 /* La muerte de decenas de inocentes tampoco lo es. Fall, ¿de verdad conoces a este bufón? */
END



// ***************************************************************


// COMIENZO DEL APPEND -> AMISTAD e HISTORIA DE Dusk
APPEND P_DuskJ

// ***************************************************************


// t1 - GLOBAL 2
// Incluso si P1 no quiere hablar, el Increment en el Global sigue siendo de 1. 
// Nos podemos guiar por el fin de la conversación por el EXIT en la línea de diálogo
// Deberemos decidir cuánto ponemos de Timer, dependiendo de la cantidad de Talks que tengamos -> "P_DuskTimer","GLOBAL",3600

IF ~Global("P_DuskTalk","GLOBAL",2)~ t1
SAY @129 /* Empecemos una conversación (ocurrirá 100 segundos después de que Dusk se haya unido al grupo) */
++ @130 /* Player 1: Respuesta 1 */ + t1.1
++ @131 /* Player 1: Respuesta 2 */ + t1.2
++ @132 /* Player 1: Respuesta 4 Que corta la conversación */ + t.0
END

IF ~~ t.0
SAY @144 /* Respuesta 4: Fin de la conversación -> Timer 3600 segundos (.d file) */
= @338 /*  */
= @580 /*  */
= @581 /*  */
IF ~~ DO ~IncrementGlobal("P_DuskTalk","GLOBAL",1)
SetGlobal("P_DuskMatMission1","GLOBAL",1) ~ UNSOLVED_JOURNAL @210001 EXIT
END 
//RealSetGlobalTimer("P_DuskTimer","GLOBAL",60)

// NOTA: el t.0 puede utilizarla para finalizar varias conversaciones

// t.1.1, .2 y .3 Son Ramas Loop. Sea cual sea la opción que el Player elija, el resultado será el mismo.

IF ~~ t1.1
SAY @133 /* Dusk: Respuesta 1.1 -> Se va a la 1.4 */
= @223 /*  */
= @134 /*  */
++ @135 /* Player 1: Respuesta 1 */ + t1.11
++ @136 /* Player 1: Respuesta 2 */ + t.0
END

IF ~~ t1.11
SAY @137 /* Dusk: Respuesta 1.2 -> Se va a la 1.4 */
= @138 /*  */
= @139 /*  */
++ @140 /* Player 1: Respuesta 1 */ + t.0
++ @141 /* Player 1: Respuesta 2 */ + t1.12
END

IF ~~ t1.12
SAY @142 /* Dusk: Respuesta 1.3 -> Se va a la 1.4 */
= @338 /*  */
= @580 /*  */
= @581 /*  */
IF ~~ DO ~IncrementGlobal("P_DuskTalk","GLOBAL",1)
SetGlobal("P_DuskMatMission1","GLOBAL",1)~ UNSOLVED_JOURNAL @210001 EXIT
END 
//RealSetGlobalTimer("P_DuskTimer","GLOBAL",60)

IF ~~ t1.2
SAY @143 /* Dusk: Respuesta 1.1 -> Se va a la 1.4 */
= @139 /*  */
++ @140 /* Player 1: Respuesta 1 */ + t.0
++ @141 /* Player 1: Respuesta 2 */ + t1.12
END


// Cuando se finalizan los diálogos, las funciones IncrementGlobal() y RealSetGlobalTimer() DEBEN ejecutarse

// ***************************************************************


// ***************************************************************


// t2 - P_Dusk_T2

IF ~Global("P_Dusk_T2","GLOBAL",2)~ t2
SAY @145 /*  */
++ @146 /* */ + t2.3
++ @147 /*  */ + t2.1
END

IF ~~ t2.3
SAY @148 /* */
IF ~~ DO ~SetGlobal("P_Dusk_T2","GLOBAL",3)   
//RealSetGlobalTimer("P_DuskTimer","GLOBAL",60)
SetGlobal("P_Dusk_T3","GLOBAL",0)~ EXIT
END


IF ~~ t2.1
SAY @149 /*  */
= @172 /*  */
= @150 /*  */
= @151 /*  */
= @173 /*  */
= @152 /*  */
++ @153 /* */ + t2.4
++ @154 /*  */ + t2.5
++ @155 /*  */ + t2.6
END

IF ~~ t2.6
SAY @156 /* */
IF ~~ DO ~SetGlobal("P_Dusk_T2","GLOBAL",3)   
//RealSetGlobalTimer("P_DuskTimer","GLOBAL",60)
SetGlobal("P_Dusk_T3","GLOBAL",0)~ EXIT
END

IF ~~ t2.5
SAY @158 /*  */
= @171 /*  */
++ @159 /* */ + t2.7
END

IF ~~ t2.7
SAY @160 /*  */
IF ~~ + t2.8
END

IF ~~ t2.4
SAY @157 /*  */
IF ~~ + t2.8
END

IF ~~ t2.8
SAY @161 /*  */
++ @162 /* */ + t2.11
++ @163 /*  */ + t2.9
END

IF ~~ t2.9
SAY @164 /*  */
++ @165 /* */ + t2.10
++ @166 /*  */ + t2.10
++ @167 /*  */ + t2.10
END

IF ~~ t2.10
SAY @168 /*  */
= @169 /*  */
= @170 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T2","GLOBAL",3)  
SetGlobal("P_Dusk_T3","GLOBAL",0) ~ EXIT
END

IF ~~ t2.11
SAY @144 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T2","GLOBAL",3)  
SetGlobal("P_Dusk_T3","GLOBAL",0) ~ EXIT
END

// ***************************************************************


// t3 - P_Dusk_T3
// Esto desencadenaría la 2da misión

IF ~Global("P_Dusk_T3","GLOBAL",2)~ t3
SAY @174 /*  */
++ @175 /* */ + t3.1
++ @176 /*  */ + t3.0
END

IF ~~ t3.0
SAY @177 /*  */
IF ~~ DO ~IncrementGlobal("P_Dusk_T3","GLOBAL",1) 
~ EXIT
END

IF ~~ t3.1
SAY @178 /*  */
= @179 /*  */
= @180 /*  */
= @181 /*  */
= @182 /*  */
= @183 /*  */
= @184 /*  */
= @185 /*  */
= @186 /*  */
= @187 /*  */
= @188 /*  */
= @189 /*  */
= @190 /*  */
= @191 /*  */
= @192 /*  */
= @193 /*  */
= @194 /*  */
= @195 /*  */
++ @196 /*  */ + t3.2
END

IF ~~ t3.2
SAY @197 /*  */
= @198 /*  */
= @199 /*  */
IF ~~ DO ~IncrementGlobal("P_Dusk_T3","GLOBAL",1) 
~ EXIT
END

// ***************************************************************


// T4 - P_Dusk_T4 GOOD

IF ~Global("P_Dusk_T4","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t4
SAY @200 /*  */
++ @201 /* */ + t4.1
++ @202 /*  */ + t4.0
END

IF ~~ t4.0
SAY @203 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T4","GLOBAL",3)~ EXIT
END

IF ~~ t4.1
SAY @204 /*  */
= @205 /*  */
= @206 /*  */
= @207 /*  */
= @208 /*  */
= @209 /*  */
= @210 /*  */
++ @211 /*  */ + t4.2
++ @212 /*  */ + t4.3 //termina
END

IF ~~ t4.3
SAY @213 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T4","GLOBAL",3)~ EXIT
END

IF ~~ t4.2
SAY @214 /*  */
= @215 /*  */
= @216 /*  */
= @217 /*  */
= @218 /*  */
 IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @219 /* *carraspeo* Vaya, Dusk. No me esperaba que fueras tan directo. */ + t4.4
 IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @219 /* *carraspeo* Vaya, Dusk. No me esperaba que fueras tan directo. */ + t4.4e
END

IF ~~ t4.4
SAY @220 /*  */
= @221 /*  */
= @222 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T4","GLOBAL",3)~ EXIT
END

// T4 - P_Dusk_T4 EVIL
// @532 en adelante

IF ~Global("P_Dusk_T4","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t4e
SAY @532 /*  */
= @533 /*  */
++ @534 /* */ + t4.1
++ @202 /*  */ + t4.0
END

IF ~~ t4.4e
SAY @535 /*  */
= @536 /*  */
= @537 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T4","GLOBAL",3)~ EXIT
END



// ***************************************************************


// t5 - GLOBAL 10
// T5 - P_Dusk_T5 GOOD

IF ~Global("P_Dusk_T5","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t5
SAY @224 /*  */
++ @225 /* */ + t5.1
++ @226 /*  */ + t5.1
++ @227 /* */ + t5.2
++ @228 /*  */ + t5.0
END

IF ~~ t5.0
SAY @203 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T5","GLOBAL",3)~ EXIT
END

IF ~~ t5.1
SAY @229 /*  */
= @230 /*  */
= @231 /*  */
= @232 /*  */
= @233 /*  */
= @234 /*  */
= @235 /*  */
= @236 /*  */
++ @237 /*  */ + t5.3
++ @238 /*  */ + t5.3 
END

IF ~~ t5.2
SAY @230 /*  */
= @231 /*  */
= @232 /*  */
= @233 /*  */
= @234 /*  */
= @235 /*  */
= @236 /*  */
++ @237 /*  */ + t5.3
++ @238 /*  */ + t5.3
END

IF ~~ t5.3
SAY @239 /*  */
= @240 /*  */
= @241 /*  */
 IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @242 /* ~No me digas que has conocido a un rey elfo, Dusk. Suena un poco increíble.~ */ + t5.4
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @242 /* ~No me digas que has conocido a un rey elfo, Dusk. Suena un poco increíble.~ */ + t5.4e
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @243 /* ~He oído hablar de Elbereth. Fue un héroe de guerra, según tengo entendido. Menuda suerte has tenido.~ */ + t5.4
    IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @243 /* ~He oído hablar de Elbereth. Fue un héroe de guerra, según tengo entendido. Menuda suerte has tenido.~ */ + t5.4e
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @244 /* ~Vaya… pues yo habría estado a punto de mojar mis pantalones de ser así, Dusk. Después de todo, acababas de llevar una invasión troll a su bosque. Me imagino que no habría sido una bienvenida cálida.~ */ + t5.4
    IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @244 /* ~Vaya… pues yo habría estado a punto de mojar mis pantalones de ser así, Dusk. Después de todo, acababas de llevar una invasión troll a su bosque. Me imagino que no habría sido una bienvenida cálida.~ */ + t5.4e  
END

IF ~~ t5.4
SAY @245 /*  */
= @246 /*  */
= @247 /*  */
= @248 /*  */
= @249 /*  */
= @250 /*  */
= @251 /*  */
= @252 /*  */
= @253 /*  */
= @254 /*  */
= @255 /*  */
= @256 /*  */
= @257 /*  */
= @258 /*  */
= @259 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T5","GLOBAL",3) ~ EXIT
END

// T5 - P_Dusk_T5 EVIL

IF ~Global("P_Dusk_T5","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t5e
SAY @538 /*  */
++ @225 /* */ + t5.1
++ @226 /*  */ + t5.1
++ @227 /* */ + t5.2
++ @228 /*  */ + t5.0
END

IF ~~ t5.4e
SAY @539 /*  */
= @540 /*  */
= @247 /*  */
= @541 /*  */
= @249 /*  */
= @250 /*  */
= @251 /*  */
= @542 /*  */
= @253 /*  */
= @254 /*  */
= @255 /*  */
= @543 /*  */
= @544 /*  */
= @258 /*  */
= @545 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T5","GLOBAL",3) ~ EXIT
END


// ***************************************************************

// P_Dusk_T6 GOOD
// t6 - GLOBAL 12


IF ~Global("P_Dusk_T6","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t6
SAY @260 /*  */
IF ~~ THEN REPLY @261 /* */ + t6.1
IF ~~ THEN REPLY @262 /*  */ + t6.0
END

IF ~~ t6.0
SAY @263 /*  */
= @264 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T6","GLOBAL",3) ~ EXIT
END

IF ~~ t6.1
SAY @265 /*  */
= @266 /*  */
= @267 /*  */
= @268 /*  */
= @269 /*  */
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @270 /* ~He oído hablar de Elbereth. Fue un héroe de guerra, según tengo entendido. Menuda suerte has tenido.~ */ + t6.2
    IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @270 /* ~He oído hablar de Elbereth. Fue un héroe de guerra, según tengo entendido. Menuda suerte has tenido.~ */ + t6.2e
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @271 /* ~Vaya… pues yo habría estado a punto de mojar mis pantalones de ser así, Dusk. Después de todo, acababas de llevar una invasión troll a su bosque. Me imagino que no habría sido una bienvenida cálida.~ */ + t6.2
    IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @271 /* ~Vaya… pues yo habría estado a punto de mojar mis pantalones de ser así, Dusk. Después de todo, acababas de llevar una invasión troll a su bosque. Me imagino que no habría sido una bienvenida cálida.~ */ + t6.2e  
END



IF ~~ t6.2
SAY @272 /*  */
= @273 /*  */
= @274 /*  */
= @275 /*  */
= @276 /*  */
= @277 /*  */
= @278 /*  */
++ @279 /* */ + t6.3
END

IF ~~ t6.3
SAY @280 /*  */
= @281 /*  */
= @282 /*  */
= @283 /*  */
= @284 /*  */
= @285 /*  */
= @286 /*  */
= @287 /*  */
= @288 /*  */
= @289 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T6","GLOBAL",3) ~ EXIT
END

// P_Dusk_T6 EVIL
// t6 - GLOBAL 12


IF ~Global("P_Dusk_T6","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t6e
SAY @546 /* Es hora de que escuches cómo continúa mi relato, <CHARNAME>. */
IF ~~ THEN REPLY @261 /* */ + t6.1
IF ~~ THEN REPLY @262 /*  */ + t6.0
END


IF ~~ t6.2e
SAY @272 /*  */
= @273 /*  */
= @547 /*  */
= @275 /*  */
= @276 /*  */
= @277 /*  */
= @548 /*  */
++ @279 /* */ + t6.3e
END

IF ~~ t6.3e
SAY @549 /* Lamento mi silencio, <CHARNAME>. A veces... mi mente se queda vagando en el pasado. *carraspeo* Continuaré con la historia. */
= @550 /* El camino que recorríamos era peligroso… y vaya si lo era… */
= @282 /* En algunas ocasiones nos vimos forzados a luchar contra goblins y trasgos. Rescatamos caravanas de ataques de ogrillones y salvamos a varios viajantes de necrófagos y xvarts. */
= @551 /* Por alguna razón, estábamos convencidos de que nuestra misión sería un éxito. Al punto, de que tuvimos una conversación sobre qué hacer una vez que lográramos nuestro cometido. */
= @285 /* Planeamos un viaje a Cormyr, para que ella conociese mi tierra. Volvería como un héroe al puerto de Suzail y allí, mis amigos y compañeros habrían de conocer a la mujer de mi vida: Celine. */
= @286 /* Ella se emocionaba al escuchar esto. Y me animaba a seguir de viaje con ella. Conocer el bosque de Mir, la Llanura Brillante, Calimsham, los Picos de las Nubes… */
= @552 /* Su voz era una apacible melodía que danzaba en mi mente durante horas... *carraspeo* No me mires así, <CHARNAME>. */
= @553 /* Hablar sobre ella me induce una extraña sensación de tristeza y felicidad... */
= @554 /* Finalmente, llegamos al castillo de Tethyr… y hasta aquí llega mi narración hoy, <CHARNAME>. Continuaré mi relato más adelante. Continuemos. */
IF ~~ DO ~SetGlobal("P_Dusk_T6","GLOBAL",3)~ EXIT
END

// ***************************************************************

//P_Dusk_T7
// t7 - GLOBAL 14
IF ~Global("P_Dusk_T7","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t7
SAY @290 /*  */
++ @291 /* */ + t7.1
++ @292 /*  */ + t7.0
END

IF ~~ t7.0
SAY @293 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T7","GLOBAL",3)~ EXIT
END

IF ~~ t7.1
SAY @294 /*  */
= @295 /*  */
= @296 /*  */
= @297 /*  */
= @298 /*  */
= @299 /*  */
= @300 /*  */
++ @301 /* */ + t7.2
++ @302 /*  */ + t7.2
END

IF ~~ t7.2
SAY @303 /*  */
= @304 /*  */
= @305 /*  */
= @306 /*  */
= @307 /*  */
= @308 /*  */
= @309 /*  */
= @310 /*  */
= @311 /*  */
= @312 /*  */
= @313 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T7","GLOBAL",3)~ EXIT
END

//P_Dusk_T7 EVIL
// t7 - GLOBAL 14
IF ~Global("P_Dusk_T7","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t7e
SAY @290 /*  */
++ @291 /* */ + t7.1e
++ @292 /*  */ + t7.0
END

IF ~~ t7.1e
SAY @294 /*  */
= @295 /*  */
= @296 /*  */
= @297 /*  */
= @298 /*  */
= @299 /*  */
= @300 /*  */
++ @301 /* */ + t7.2e
++ @302 /*  */ + t7.2e
END

IF ~~ t7.2e
SAY @555 /*  */
= @304 /*  */
= @305 /*  */
= @306 /*  */
= @307 /*  */
= @556 /*  */
= @312 /*  */
= @313 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T7","GLOBAL",3)~ EXIT
END


// ***************************************************************

//P_Dusk_T8
// t8 - GLOBAL 16
IF ~Global("P_Dusk_T8","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t8
SAY @314 /*  */
++ @315 /* */ + t8.1
++ @316 /*  */ + t8.0
END

IF ~~ t8.0
SAY @317 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T8","GLOBAL",3)~ EXIT
END

IF ~~ t8.1
SAY @318 /*  */
= @319 /*  */
= @320 /*  */
= @321 /*  */
= @322 /*  */
= @323 /*  */
= @324 /*  */
= @325 /*  */
= @326 /*  */
= @327 /*  */
= @328 /*  */
= @329 /*  */
= @330 /*  */
= @331 /*  */
= @332 /*  */
= @333 /*  */
= @334 /*  */
= @335 /*  */
= @336 /*  */
= @337 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T8","GLOBAL",3)~ EXIT
END

//P_Dusk_T8 EVIL
// t8 - GLOBAL 16
IF ~Global("P_Dusk_T8","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t8e
SAY @557 /*  */
= @558 /*  */
= @320 /*  */
= @559 /*  */
= @322 /*  */
= @323 /*  */
= @560 /*  */
= @561 /*  */
= @562 /*  */
= @564 /*  */
= @565 /*  */
= @566 /*  */
= @567 /*  */
= @568 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T8","GLOBAL",3)~ EXIT
END

// ***************************************************************


//P_Dusk_T9
// t9 - GLOBAL 16

IF ~Global("P_Dusk_T9","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t9
SAY @368 /* <CHARNAME>, ¿qué opinas del matrimonio? */
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @3379 /* *carraspeo* Vaya, Dusk. No me esperaba que fueras tan directo. */ + t9.1
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @339 /* ¿Es una proposición, Dusk? No te hacía del tipo lanzado. *ríe*  */ + t9.1
 IF ~Gender(Player1,MALE)~ THEN REPLY  @340 /* ¿Por qué preguntas, Dusk? ¿Acaso quieres presentarme a alguna noble muchachita de Cormyr? Eso no suena nada mal.  */ + t9.1
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @341 /* ¿De qué diantres estás hablando, Dusk? No pienso casarme contigo.  */ + t9.1
 ++ @342 /* Opino que no es mi fuerte. Pero algo me dice que tú tienes algo qué decir al respecto.  */ + t9.2
END

IF ~~ t9.2
SAY @343 /* Así es... quería continuar mi relato, desde donde nos quedamos. */
IF ~~ DO ~~ GOTO t9.3
END

IF ~~ t9.1
SAY @344 /* Oh, no me refería a una propuesta ahora, <CHARNAME>. Sólo quería continuar mi relato. */
++ @345 /* Haberlo dicho antes, muchacho. Cuéntame. */ + t9.3
++ @346 /* Oh, ya veo... *ejem* Bueno... en ese caso, continúa, Dusk. */ + t9.3
++ @347 /* Es una lástima. De igual manera, no tenemos tiempo para esto, Dusk. */ + t9.0
END

IF ~~ t9.0
SAY @317 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T9","GLOBAL",3)~ EXIT
END

IF ~~ t9.3
SAY @348 /* Las palabras de Zaranda quedaron grabadas en mi mente… */
= @349 /* Mi mente lógica indicaba que un matrimonio con Celine sería un refuerzo entre las naciones de Cormyr y Shilmista, entre humanos y elfos. */
= @350 /* Pero lo cierto es que ese pensamiento era una excusa positiva a mis verdaderos deseos. */
= @351 /* Deseaba pasar el resto de mi vida mortal con ella… Pero ése era el problema… */
= @352 /* “El resto de mi vida mortal.” ¿Cuánto tiempo de vida me quedaba? El tiempo de un humano es como un suspiro al lado de un elfo. ¿Qué sería de ella durante el resto de su extensa… extensa vida? */
= @353 /* Poco a poco, estos pensamientos apesadumbraron mi alma y me fueron alejando del mundo real. Celine, obviamente, notó esto. */
= @354 /* Pero, pese a ello, no dijo nada, hasta que… */
= @355 /* Hasta que un día, Celine, de la nada, me preguntó: “¿Por qué no quieres casarte conmigo?” */
++ @356 /* Vaya, la chica sabía lo que quería, ¿no? */ + t9.4
++ @357 /* Conociéndote, me imagino que habrás quedado boquiabierto, ¿eh? */ + t9.4
++ @358 /* Me interesa saber qué es lo que respondiste, Dusk. */ + t9.4
END

IF ~~ t9.4
SAY @359 /* Ciertamente, la pregunta me tomó por sorpresa. Al instante, ella confesó haber oído mi conversación con Zaranda en Darromar. */
= @360 /* Pidió disculpas, con lágrimas en sus ojos, pero exigió de inmediato una explicación. */
= @361 /* “Sólo soy un humano, Celine.” Fue mi respuesta. Ella era lo suficientemente perspicaz como para saber a qué me refería. */
= @362 /* “El amor no se mide por tiempo, Dusk.” Respondió. “El amor no puede ser medido, porque mi amor por ti se desborda en alegría y dolor… alegría por tenerte y dolor por el miedo a perderte… Pero así es la vida.” */
= @363 /* “No pretendo ser lo suficientemente sabia como para decir que tengo todas las respuestas, amor mío. Sólo sé que lo que quiero es pasar la mayor cantidad de días a tu lado…” */
= @364 /* “Ahora que he dicho esto… entiendo que el matrimonio sea sólo una formalidad… Si no quieres, no es necesario que lo hagamos.” */
= @365 /* Por alguna razón, en ese momento me decidí, <CHARNAME>. Le dije que la amaba y que nos casaríamos al llegar a Shilmista. */
= @366 /* Nos abrazamos bajo los rojizos rayos de sol del atardecer de Tethyr… aún siento cómo sus brazos rodean mi cuello y cómo su cabello danza en mi rostro. */
= @367 /* Lo lamento, <CHARNAME>… Creo que continuaré mi relato en otro momento. */
IF ~~ DO ~SetGlobal("P_Dusk_T9","GLOBAL",3)~ EXIT
END

//P_Dusk_T9 EVIL
// t9 - GLOBAL 16

IF ~Global("P_Dusk_T9","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t9e
SAY @368 /* <CHARNAME>, ¿qué opinas del matrimonio? */
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @3379 /* *carraspeo* Vaya, Dusk. No me esperaba que fueras tan directo. */ + t9.1e
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @339 /* ¿Es una proposición, Dusk? No te hacía del tipo lanzado. *ríe*  */ + t9.1e
 IF ~Gender(Player1,MALE)~ THEN REPLY  @340 /* ¿Por qué preguntas, Dusk? ¿Acaso quieres presentarme a alguna noble muchachita de Cormyr? Eso no suena nada mal.  */ + t9.1e
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @341 /* ¿De qué diantres estás hablando, Dusk? No pienso casarme contigo.  */ + t9.1e
 ++ @342 /* Opino que no es mi fuerte. Pero algo me dice que tú tienes algo qué decir al respecto.  */ + t9.2e
END

IF ~~ t9.1e
SAY @569 /* No te hagas ilusiones, <CHARNAME>. Era sólo una excusa para seguir con mi historia. */
++ @345 /* Haberlo dicho antes, muchacho. Cuéntame. */ + t9.3e
++ @346 /* Oh, ya veo... *ejem* Bueno... en ese caso, continúa, Dusk. */ + t9.3e
++ @347 /* Es una lástima. De igual manera, no tenemos tiempo para esto, Dusk. */ + t9.0
END

IF ~~ t9.2e
SAY @570 /* Así es... continuaré mi relato, desde donde nos quedamos. */
IF ~~ DO ~~ GOTO t9.3e
END

IF ~~ t9.3e
SAY @348 /* Las palabras de Zaranda quedaron grabadas en mi mente… */
= @349 /* Mi mente lógica indicaba que un matrimonio con Celine sería un refuerzo entre las naciones de Cormyr y Shilmista, entre humanos y elfos. */
= @350 /* Pero lo cierto es que ese pensamiento era una excusa positiva a mis verdaderos deseos. */
= @351 /* Deseaba pasar el resto de mi vida mortal con ella… Pero ése era el problema… */
= @352 /* “El resto de mi vida mortal.” ¿Cuánto tiempo de vida me quedaba? El tiempo de un humano es como un suspiro al lado de un elfo. ¿Qué sería de ella durante el resto de su extensa… extensa vida? */
= @353 /* Poco a poco, estos pensamientos apesadumbraron mi alma y me fueron alejando del mundo real. Celine, obviamente, notó esto. */
= @354 /* Pero, pese a ello, no dijo nada, hasta que… */
= @355 /* Hasta que un día, Celine, de la nada, me preguntó: “¿Por qué no quieres casarte conmigo?” */
++ @356 /* Vaya, la chica sabía lo que quería, ¿no? */ + t9.4
++ @357 /* Conociéndote, me imagino que habrás quedado boquiabierto, ¿eh? */ + t9.4
++ @358 /* Me interesa saber qué es lo que respondiste, Dusk. */ + t9.4
END


// ***************************************************************


//P_Dusk_T10

IF ~Global("P_Dusk_T10","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t10
SAY @369 /* Oye, <CHARNAME>, ¿quieres saber cómo fue mi casamiento? */
++ @370 /* Vaya, vaya, Dusk. Sí, cuéntamelo todo. */ + t10.1
++ @371 /* Hm... No tenemos tiempo para esto, Dusk. */ + t10.0
END

IF ~~ t10.0
SAY @317 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T10","GLOBAL",3)~ EXIT
END

IF ~~ t10.1
SAY @372 /* Llegamos a Shilmista y fuimos recibidos cándidamente por sus habitantes. Inmediatamente, solicité audiencia con el rey Elbereth para pedir la mano de Celine. Si bien sus padres habían muerto hacía ya muchos años en combate contra los orcos, creí que era lo correcto hacerlo con el protector de los elfos del bosque. */
= @373 /* Elbereth se sorprendió, pero vio como algo positivo que se forjaran lazos con Cormyr. Le dije que el matrimonio no era una estrategia política. Él sólo sonrió y me dijo: “Estoy al tanto de ello.” */
= @374 /* Inmediatamente se planeó la ceremonia. La misma fue maravillosa. Los elfos tienen costumbres hermosas, <CHARNAME>. En todo momento despliegan su amor por la naturaleza, bailando alegremente entre ellos mientras las luciérnagas sobrevuelan el ambiente. */
= @375 /* Sin embargo… ni Celine ni yo éramos personas de multitud… en cuanto pudimos, planeamos un viaje hacia el norte del bosque. */
= @376 /* Pasamos nuestras primeras noches en un lugar llamado La Colina de las Estrellas. */
= @377 /* El lugar está casi en las fronteras del bosque, por lo que el cielo, estando nosotros sobre los alcores, es inmenso. */
= @378 /* El cosmos, infinito, era un océano de estrellas brillantes. La luz del universo nocturno nos iluminaba. */
= @379 /* Besé a Celine. Y en ese momento… en ese momento… */
= @380 /* Fui lo suficientemente ingenuo como para creer que la felicidad sería eterna. */
++ @381 /* ¿Por qué, Dusk?, ¿qué pasó? */ + t10.2
++ @382 /* Tienes razón, Dusk. Eres ingenuo. La felicidad no es eterna. Pero dime, ¿cómo sigue tu historia? */ + t10.2
END


IF ~~ t10.2
SAY @383 /* (suspiro) Lo lamento, <CHARNAME>. Continuaré… continuaré en otra ocasión. */
IF ~~ DO ~SetGlobal("P_Dusk_T10","GLOBAL",3)~ EXIT
END


//P_Dusk_T10 EVIL

IF ~Global("P_Dusk_T10","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t10e
SAY @571 /* ~*carraspeo* Oye, <CHARNAME>, ¿estás... interesado en saber cómo sigue mi historia?~ ~*carraspeo* Oye, <CHARNAME>, ¿estás... interesada en saber cómo sigue mi historia?~ */
++ @370 /* Vaya, vaya, Dusk. Sí, cuéntamelo todo. */ + t10.1e
++ @371 /* Hm... No tenemos tiempo para esto, Dusk. */ + t10.0
END


IF ~~ t10.1e
SAY @572 /* ~Al llegar a Shilmista, solicité audiencia con el rey Elbereth para pedir la mano de Celine. Si bien sus padres habían muerto hacía ya muchos años en combate contra los orcos, en ese entonces creí que era lo correcto pedírselo al protector de los elfos del bosque.~ */
= @573 /* ~Para conveniencia del rey elfo, vio como algo positivo que se forjaran lazos con Cormyr. Le dije que el matrimonio no era una estrategia política.~ */
= @574 /* ~Inmediatamente se planeó la ceremonia. Hm... apenas tengo recuerdo de ella. He tratado de olvidarme de las costumbres élficas desde entonces. Además... ese tipo de detalles no vienen al caso.~ */
= @575 /* ~La cuestión es que ni Celine ni yo éramos personas de multitud… en cuanto pudimos, planeamos un viaje hacia el norte del bosque.~ */
= @376 /* Pasamos nuestras primeras noches en un lugar llamado La Colina de las Estrellas. */
= @377 /* El lugar está casi en las fronteras del bosque, por lo que el cielo, estando nosotros sobre los alcores, era inmenso. */
= @378 /* El cosmos, infinito, era un océano de estrellas brillantes. La luz del universo nocturno nos iluminaba. */
= @379 /* Besé a Celine. Y en ese momento… en ese momento… */
= @576 /* Creí que tenía todo lo que necesitaba... que estaba lleno en mi interior de algo que llaman... felicidad. Fui un estúpido al pensar eso... */
++ @381 /* ¿Por qué, Dusk?, ¿qué pasó? */ + t10.2
++ @382 /* Tienes razón, Dusk. Eres ingenuo. La felicidad no es eterna. Pero dime, ¿cómo sigue tu historia? */ + t10.2
END

// ***************************************************************

//P_Dusk_T11

IF ~Global("P_Dusk_T11","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t11
SAY @384 /* Comenzaré el relato del evento… del evento que me llevó a convertirme en Asesino de Magos, <CHARNAME>. */
++ @385 /* Claro, Dusk. Por favor, sigue. */ + t11.1
++ @386 /* Quizás en otra ocasión, Dusk. Ahora no es un buen momento */ + t11.0
END


IF ~~ t11.0
SAY @317 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T11","GLOBAL",3)~ EXIT
END

IF ~~ t11.1
SAY @387 /* A las pocas semanas de mi casamiento, llegó un mensajero de Darromar. En realidad, el mismo mensajero era uno de los concejeros reales de Zaranda. */
= @388 /* Su nombre era Darvin, un hombrecillo temeroso de su propia sombra. Pidió hablar conmigo y con Celine respecto a nuestra visita a Tethyr y de nuestra audiencia en el castillo. */
= @389 /* Cuando estuvimos en Darromar y tuve mi audiencia con Zaranda, Darvin estaba entre los presentes, oyendo todo lo que tenía para decir al respecto. */
= @390 /* Darvin nos dijo que los rumores de una guerra no eran rumores, sino una promesa. Los Zhentarim buscaban la destrucción o debilitación de ambas naciones para así establecer un monopolio en el sur de Faerûn. */
= @391 /* Inquirí sobre los regentes de Tethyr y los grifos que habían enviado a Amn. Darvin comentó que el descubrimiento del complot Zhentarim fue posterior al envío de los grifos y que el accionar de la organización era inminente. */
= @392 /* “¿Por qué acudes a nosotros?” preguntamos. Darvin dijo que la interferencia directa de alguien de Tethyr o Amn podría acelerar los conflictos bélicos, pero que si alguien extranjero, ya sea de Cormyr o Shilmista intervenían, podrían evitar una guerra. */
++ @393 /* Un poco extraño, ¿no lo crees? Cuéntame qué pasó después, Dusk. */ + t11.2
++ @394 /* Por como lo narras, ese tal Darvin no te daba una buena espina, ¿no? */ + t11.2
END

IF ~~ t11.2
SAY @395 /* Lo cierto es que Darvin no me convencía mucho. Sin embargo, sacó una nota con el emblema y sello real de Zaranda. Eso me convenció de seguir escuchándolo. */
= @396 /* Lo que pretendía Darvin de nosotros era una incursión al norte del bosque, pasando el río Valashar, dejando el bosque detrás hasta encontrarnos con un campamento, aparentemente, de mercaderes. */
= @397 /* Según Darvin, esos eran los mercenarios Zhentarim enviados a cumplir asesinatos puntuales en Tethyr, con el objetivo de inculpar a Amn en el proceso y así desatar la guerra. */
= @398 /* “¿Cómo sabremos si no estamos atacando a las personas equivocadas?” preguntó, inteligentemente, Celine. */
= @399 /* Darvin dijo que encontraríamos emblemas de Zhentarim en sus alijos. */
= @400 /* Estaba al tanto de cuál era el emblema Zhentarim, así que no sería problema el reconocerlo. */
= @401 /* No tuvimos que pensarlo mucho con Celine, <CHARNAME>. Así que, al cabo de unas horas de planeamiento, partimos hacia el norte. */
++ @402 /* ¿Y…? Dusk, ¿qué pasó? */ + t11.3
++ @403 /* No me digas… era una trampa. */ + t11.3
END

IF ~~ t11.3
SAY @404 /* Falta poco para terminar mi historia, <CHARNAME>. Será mejor que lo hagamos en otra ocasión. */
IF ~~ DO ~SetGlobal("P_Dusk_T11","GLOBAL",3)~ EXIT
END

//P_Dusk_T11 EVIL


IF ~Global("P_Dusk_T11","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t11e
SAY @577 /* Comenzaré el relato del evento que me llevó a convertirme en Asesino de Magos, <CHARNAME>. */
++ @385 /* Claro, Dusk. Por favor, sigue. */ + t11.1
++ @386 /* Quizás en otra ocasión, Dusk. Ahora no es un buen momento */ + t11.0
END


// ***************************************************************

//P_Dusk_T12

IF ~Global("P_Dusk_T12","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t12
SAY @405 /* <CHARNAME>, si quieres, puedo seguir con mi relato, desde donde lo dejamos. */
++ @406 /* Sí, Dusk. Por favor, continúa. */ + t12.1
++ @386 /* Quizás en otra ocasión, Dusk. Ahora no es un buen momento */ + t12.0
END


IF ~~ t12.0
SAY @317 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T12","GLOBAL",3)~ EXIT
END

IF ~~ t12.1
SAY @407 /* Luego de unas noches de viaje, teníamos al campamento a la vista. */
= @408 /* Celine, con su vista élfica, notó que el mismo estaba vacío. */
++ @409 /* Lo sabía… era una trampa, ¿verdad? Dime, ¿qué hizo Celine? */ + t12.2
++ @410 /* Continúa, Dusk. ¿Qué pasó a continuación? */ + t12.2
END

IF ~~ t12.2
SAY @411 /* Le pedí que se mantuviera oculta mientras yo investigaba el campamento de mercaderes. Ella habría de cubrirme con su arco en caso de alguna emboscada. */
= @412 /* Extrañamente, pese a estar en la llanura, el silencio se acrecentaba a medida que me acercaba a las carpas y a las fogatas, ya apagadas, del campamento. */
= @413 /* Tenía un mal presentimiento, <CHARNAME>. Pese a ello, busqué en aquellas pertenencias andrajosas por signos del emblema Zentharim. Por más que revisé, no pude encontrar nada. */
= @414 /* Esperé unos minutos antes de retirarme del campamento y volver con Celine, pero decidí dar una vuelta más. */
= @415 /* En el piso, al frente de una extinguida fogata, vi cómo algo brillaba, como si de una moneda de oro se tratase. */
= @416 /* Al acercarme, un estruendo me aturdió y unas chispas me dejaron ciego. Había activado una trampa mágica... */
= @417 /* Intenté gritar para advertir a Celine que no se acercara, pero estaba mudo. La trampa incluía, al parecer, un hechizo de silencio. */
= @418 /* Celine, al ver que había quedado paralizado por aquella trampa, corrió hacia mí. Fue entonces cuando, de la nada, un portal se abrió. */
= @419 /* Al desaparecer las chispas y el humo del hechizo teleportador, la imagen de Darvin yacía enfrente nuestro. */
= @420 /* Pero no era el hombrecillo débil que aparentaba ser. Estaba erguido y sus ojos, antes brillantes, ahora estaban inundados de una negrura sobrenatural. */
= @421 /* “Es increíble lo fácil que resulta engañar a las personas felices.” Dijo. Su voz, incluso, había cambiado. Tenía un tono profundo y acentuado. No pude identificar la región a la que pertenecía. Pero es de esperarse… los magos humanos se descarrían de la realidad, incluso de su propia humanidad. */
= @422 /* Celine intentó apuntarle con el arco, pero los labios de Darvin se movieron más rápido: Celine, al igual que yo, sufrió una parálisis mágica mediante un hechizo lanzado por el mago. */
= @423 /* “La llegada de ambos a Darromar fue más que propicia. Sin lugar a dudas, un evento que significó un cambio de planes de nuestra Orden.” dijo. */
= @424 /* Intenté hablar, pero aún permanecía silenciado por el conjuro. El mago movió sus dedos y el hechizo se deshizo, aunque seguía paralizado. */
= @425 /* “¿Quién eres? Estoy seguro de que Darvin no es tu nombre…” pregunté. */
= @426 /* El mago rio macabramente. “Es un nombre demasiado común en Tethyr, ¿no es así?” Se tornó serio y sus negros ojos se turnaban entre mí y Celine. “Soy Anthagar, el nigromante.” */
= @427 /* “¿Qué quieres de nosotros, Anthagar? Si nos quisieras muertos, ya lo habrías hecho, ¿no?” pregunté. */
= @428 /* Sonrió. “Es verdad, capitán… Pero mi maestro ha tomado un particular interés en esta… unión entre elfos y humanos.” */
= @429 /* “Es cierto que buscamos la guerra entre Amn y Tethyr…” continuó. “Intentar engatusar a los nobles estaba siendo más complicado de lo que esperábamos. Zaranda no es alguien fácil de engañar. Y, como por arte de magia, ustedes hicieron aparición.” */
= @430 /* “Los rumores de guerra habían comenzado hacía ya un tiempo.” Dijo “Lo mejor de todo es que no fue iniciado por nosotros. No sabemos quién o qué fue, ni tampoco nos importa.” */
= @431 /* “Lo único que queremos es que el caos se desate en la tierra y que la muerte ronde en el aire. Sólo así podremos cumplir nuestro objetivo.” */
= @432 /* Mientras el bastardo seguía narrando su historia, comencé a darme cuenta de que el hechizo de parálisis se debilitaba a medida que pasaban los segundos. Concentré toda mi voluntad en romper aquellas cadenas invisibles. */
= @433 /* Celine se percató de ello e intentó hacer lo mismo. Pero Anthagar advirtió esto: “¡¿Qué haces, elfa?!” elevó sus manos “¡Bah! De todas formas, sólo necesito a uno de ustedes con vida.” */
= @434 /* Ahora sé que estaba conjurando un hechizo de muerte mágica contra Celine. En ese entonces, aún ignorante de esto, sabía que lo que lanzara Anthagar provocaría la muerte de mi esposa. Así que fue entonces cuando, finalmente, pude librarme de su conjuro. */
= @435 /* Acometí, rápidamente, con mi bastón. El golpe contundente dio en su pecho y logré tumbarlo antes de que terminara su hechizo. */
= @436 /* El bastardo, de sus mangas, sacó una varita mágica y lanzó un proyectil contra mí. El daño mágico dio de lleno en mi pecho. */
= @437 /* Caí de espaldas al suelo, viendo cómo Anthagar se incorporaba. “Parece ser que serás tú, después de todo.” Dijo. */
= @438 /* Con su voz sombría como la muerte comenzó a conjurar. Sabía que sería mi fin… pero dijo que sólo uno de nosotros dos debía morir… en cierto sentido, me alegraba de que fuera yo y no Celine. */
= @439 /* Pero… en ese instante, el grito de Celine inundó el ambiente. Rompió su parálisis y se lanzó enfrente del hechizo… */
++ @440 /* Oh, Dusk… no me digas que… */ + t12.3
END

IF ~~ t12.3
SAY @441 /* Celine cayó de bruces frente a mí. Anthagar pareció sorprendido. Vi que intentó mover sus manos, pero una expresión de dolor escapó de sus labios. Al parecer, el golpe que le di con el bastón le había desgastado. */
= @442 /* “Parece ser… capitán… que tú tendrás que lidiar con el peso de la historia...”  */
= @443 /* “Ten en cuenta esto: si tu esposa dice tu nombre, la maldición se romperá… pero al hacerlo, el efecto será la muerte inmediata…” */
= @444 /* “El amor es cruel… ¿no lo crees?” Luego de decir esto, desapareció entre las sombras de un portal negro, desvaneciéndose su maldita risa en la oscuridad. */
= @445 /* Rápidamente tomé a Celine entre mis brazos. Aún estaba con vida… pero… pero… */
= @446 /* El brillo de sus ojos había desaparecido. */
= @447 /* Su respiración parecía estable, al igual que sus signos vitales… pero no respondía a mi voz… */
= @448 /* Anthagar le había lanzado una maldición… */
= @449 /* <CHARNAME>, no puedo continuar… será mejor… será mejor que lo dejemos para una última ocasión. */
IF ~~ DO ~SetGlobal("P_Dusk_T12","GLOBAL",3)~ EXIT
END

//P_Dusk_T12 EVIL

IF ~Global("P_Dusk_T12","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t12e
SAY @578 /* <CHARNAME>, continuaré con mi relato donde lo dejamos. */
++ @406 /* Sí, Dusk. Por favor, continúa. */ + t12.1
++ @386 /* Quizás en otra ocasión, Dusk. Ahora no es un buen momento */ + t12.0
END

// ***************************************************************

//P_Dusk_T13

IF ~Global("P_Dusk_T13","GLOBAL",2)~ t13
SAY @450 /* <CHARNAME>, procederé a narrar el último capítulo de mi historia… */
= @451 /* Cargué a Celine en mis brazos y viajé lo más rápido posible de vuelta a Shilmista. */
= @452 /* En las fronteras nos aguardaban algunos elfos guardianes, por lo que, en cierto sentido, ya no corríamos peligro de otra emboscada. */
= @453 /* Ya en el corazón del bosque, el mismo Elbereth supervisó la situación: Muchos clérigos y hechiceros elfos habían acudido al llamado del Rey. */
= @454 /* La sabiduría élfica desveló los misterios de la maldición en tan sólo una noche. El hechizo era algo muy particular y personal. Quien lo haya creado, lo hizo pensando meramente en nosotros. */
= @455 /* El alma de Celine había sido apagada por dicha maldición. Para restablecerla, se debía realizar un ritual sumamente peligroso en un paraje maldito. */
= @456 /* El lugar debía tener indicios de magia salvaje, demoníaca o nigromántica. Elbereth mencionó que el sitio más cercano para ejecutar dicho ritual eran las Ruinas del Castillo de la Trinidad. */
= @457 /* No presté atención a los detalles del porqué, <CHARNAME>. Sólo puedo imaginar que allí se realizó algún ritual maléfico, relacionado a demonios o muertos vivientes. */
= @458 /* Aquellas imaginaciones se confirmaron cuando llegué al lugar. */
++ @459 /* Dusk, ¿fuiste a las ruinas? Me imagino que habrá sido muy peligroso. */ + t13.1
++ @460 /* Estás loco, muchacho. Más allá de que fuesen ruinas, conjurar un ritual allí es llamar a la desgracia. */ + t13.1
++ @461 /* Entiendo… ¿y qué es lo que pasó? */ + t13.1
END

IF ~~ t13.1
SAY @462 /* Pues… la idea era llevar a cabo dicho ritual en las ruinas del castillo… */
= @463 /* Como sea… los rasgos de la maldición, como habrás imaginado, consistían en anular la voluntad vital del objetivo. El afectado no podía hablar, ni hacer nada por cuenta propia. Como si de una marioneta sin cuerdas se tratase. */
= @464 /* La naturaleza de la maldición podía ser rota con un contraconjuro llevado a cabo mediante un ritual. Uno de los hechiceros élficos mencionó que existía una leve posibilidad de que la misma Celine rompiera la maldición, pero yo sabía que, si eso sucedía, Celine moriría... O al menos eso es lo que el bastardo de Anthagar había dicho. */
= @465 /* Sólo disponíamos de siete días y siete noches antes de que la maldición consumiera la energía vital de Celine. */
= @466 /* Los clérigos de Shilmista me dijeron que la maldición sólo podía ser limpiada por alguien cercano al maldito. Un ser amado o alguien de la familia. */
= @467 /* Celine no tenía parientes de sangre, y aunque los tuviera, no les habría permitido llevar a cabo el ritual. Era algo que dependía de mí. Era mi responsabilidad. */
++ @468 /* Tengo conocimiento sobre este tipo de situaciones, Dusk. El costo de dicho ritual no es algo que se deba tomar a la ligera. */ + t13.2
++ @469 /* Fue una decisión arriesgada, Dusk. No veo cómo podrías poner en peligro tu vida por una causa perdida. */ + t13.2
END

IF ~~ t13.2
SAY @470 /* Debía hacerlo, <CHARNAME>. Y estaba al tanto de las posibles consecuencias. */
= @471 /* Y las consecuencias eran fatales… Si fallaba en ejecutar el ritual correctamente, la misma energía arcana absorbería la vida de Celine y la mía incluida. Pero… si lo hacía de forma correcta, sólo habría de costar la mía. */
++ @472 /* ¡¿Tu vida?! Por Candelero, Dusk. ¿Dar tu vida por un ritual mágico desconocido? Eso es extremo. */ + t13.3
++ @473 /* Lo que uno hace por amor… Por favor, Dusk, continúa. */ + t13.3
END

IF ~~ t13.3
SAY @474 /* … */
= @475 /* Al cabo de unos días, arribamos a Trinidad. Elbereth brindó una escolta de guerreros y exploradores, pero exigí que permanecieran fuera de las Ruinas. Si no salía en unas horas, tenían la orden de marchar de regreso a Shilmista. */
= @476 /* Ingresé a lo que debió ser el salón real del castillo. Otrora habría sido espléndido bajo la luz del sol y seguro que gozaría de felicidad y armonía… Pero ahora… no era más que el esqueleto de una estructura sombría y maligna. */
= @477 /* El silencio reinaba en todos los rincones y las sombras parecían acechar a toda presencia viva que ingresaba en aquellos recintos. */
= @478 /* La luz de la luna no existía, puesto a que las negras nubes reinaban constantemente el cielo. La noche allí… es eterna… */
= @479 /* Pero debía despabilarme de este escenario terrorífico. Tenía conmigo aquello que habría de salvar a mi amor… El contraconjuro: Un pergamino élfico del Bosque de las Sombras. */
= @480 /* Uno de los hechiceros elfos me entrenó para leer el pergamino de contraconjuro que debía ejecutar. Me dijo que, al entrar en tierra maldita, debía leerlo enfrente de Celine. */
= @481 /* Nadie estaba seguro de qué es lo que sucedería durante el proceso, pero sí sabían que si tenía éxito, entregaría mi energía vital para revitalizar a Celine. Y si fallaba, ambos habríamos de morir, inmediatamente, allí, en las sombras de Trinidad… */
= @482 /* (suspiro) Rayos, <CHARNAME>. Perdóname, pero no puedo continuar… creí que podría hacerlo… pero no puedo… no puedo… */
++ @483 /* Dusk, ¿qué pasó? Si tú estás vivo, es obvio que el ritual no funcionó…  */ + t13.4
++ @484 /* Claramente fallaste en tu empresa, Dusk. ¿Leíste mal el pergamino y provocaste la muerte de tu esposa?  */ + t13.5
++ @485 /* Tengo la certeza de que lo que haya sucedido no fue tu culpa, Dusk. */ + t13.6
END

IF ~~ t13.4
SAY @486 /* El ritual nunca llegó a ejecutarse, <CHARNAME>… */
IF ~~ DO ~~ GOTO t13.7
END

IF ~~ t13.5
SAY @487 /* Es verdad… fallé… le fallé a mi esposa… */
IF ~~ DO ~~ GOTO t13.7
END

IF ~~ t13.6
SAY @488 /* Oh, <CHARNAME>… pero sí… fue mi culpa. */
IF ~~ DO ~~ GOTO t13.7
END


IF ~~ t13.7
SAY @489 /* Celine estaba al frente mío… su mirada vacía, sin vida, como el ambiente en que nos encontrábamos. */
= @490 /* Comencé a leer el pergamino… y con cada palabra, mi voz parecía elevarse a las alturas, resonando en cada rincón de la oscuridad. */
= @491 /* Mi visión comenzó a nublarse y comencé a atisbar figuras sombrías en el horizonte, como si los mismos emisarios de la muerte vinieran en mi busca. */
= @492 /* La oración estaba por terminar y mi corazón, aterrorizado por mi inminente hado, comenzó a temblar. */
= @493 /* Fue entonces cuando volví mi vista a Celine. Sus ojos estaban llenos de lágrimas y el brillo estaba restaurado. Todo… todo sucedió muy rápido… pero a la vez, parecía como si el tiempo se hubiese detenido. */
= @494 /* La imagen de Anthagar apareció en mi mente y su advertencia regresó: “Si tu esposa dice tu nombre, la maldición se romperá… pero al hacerlo, el efecto será la muerte…”. */
= @495 /* Tuve la intención de acelerar el ritual… pero… mis palabras se vieron rotas… finalmente… por su voz… Ella dijo: */
= @496 /* “Ardusk…” */
= @497 /* Mi voz se quebró y el silencio inundó aún más el ambiente… */
= @498 /* Aquellas visiones que tuve de la muerte se habían desvanecido, y sólo estaba ella, iluminada por el fuego de las antorchas. */
= @499 /* Sonrió dulcemente, y se desplomó… */
= @500 /* Antes… antes de que cayese al suelo la puse entre mis brazos… */
= @501 /* “Celine… Celine… estoy aquí… estoy aquí, a tu lado…” */
= @502 /* Con su último aliento, acarició mi rostro… y sus ojos se cerraron… para siempre… */
= @503 /* Seguí… seguí hablándole… pero mis palabras se perdían en las sombras… y nadie me escuchaba. Nadie me escuchaba. */
++ @504 /* Dusk, lamento tu pérdida… */ + t13.8
++ @505 /* No fue tu culpa, Dusk… hiciste lo que pudiste. */ + t13.8
END

IF ~~ t13.8
SAY @506 /* Perdí la noción del tiempo… no sé cuántas horas pasaron… ni podría decirlo, pues las noches en ese lugar maldito son eternas… */
= @507 /* Finalmente… llevé su cuerpo de vuelta a Shilmista. Elbereth en persona se encargó de los oficios solemnes. La ceremonia fue… fue hermosa. */
= @508 /* Como consecuencia de esto… fue que entregué mi vida a ser un Asesino de Magos. Anthagar está ahí fuera… y aún necesito respuestas del porqué… */
= @509 /* Pretendo dar con su Orden… y acabar con cada uno de ellos… */
++ @510 /* Cuenta conmigo, Dusk. Llegado el momento, estaré a tu lado. */ + t13.9
++ @511 /* Hm… suena peligroso, Dusk. Pero, de todas formas, te deseo la mejor de las suertes. */ + t13.10
END

IF ~~ t13.9
SAY @512 /* Gracias, <CHARNAME>. Sabía que podría contar contigo. Y gracias por escucharme… */
IF ~~ DO ~SetGlobal("P_Dusk_T13","GLOBAL",3)~ UNSOLVED_JOURNAL @210035 EXIT
END

IF ~~ t13.10
SAY @513 /* La suerte no tiene nada que ver con esto, <CHARNAME>. De igual manera, gracias por escucharme…  */
IF ~~ DO ~SetGlobal("P_Dusk_T13","GLOBAL",3)~ UNSOLVED_JOURNAL @210035 EXIT
END

// *************************************************************** 
// @578 última etiqueta



// ***************************************************************




// ***************************************************************




END // END for APPEND