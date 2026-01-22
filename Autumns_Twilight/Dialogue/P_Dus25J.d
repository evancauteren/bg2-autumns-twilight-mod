BEGIN P_Dus25J



// Volo

EXTEND_BOTTOM SARVOLO 9
+ ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") Global("P_Dusk_IS_NEUTRAL_TOB","GLOBAL",1)~ + @0 /*  */ + P_DuskVoloBio1
+ ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") Global("P_Dusk_IS_GOOD_TOB","GLOBAL",1)~ + @0 /* Tell me about Dusk. */ + P_DuskVoloBio2
+ ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ + @0 /* Tell me about Dusk. */ + P_DuskVoloBio3
END
//NEUTRAL
CHAIN SARVOLO P_DuskVoloBio1
@1 /* Un hijo de Cormyr que viajó al sur para evitar una guerra. Su madre patria espera su regreso luego de incontables historias heroicas en su paso por Amn y de sus viajes junto a <CHARNAME>. */
== P_Dus25J IF ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @2 /* ¿Esperan mi regreso? Quizás... quizás algún día lo haga... */
EXTERN SARVOLO 9
//GOOD
CHAIN SARVOLO P_DuskVoloBio2
@3 /* Ha actuado con justicia en nombre de las naciones de Cormyr y Shilmista. Su lealtad a naciones ajenas como Amn y Tethyr recorren los oídos silvestres y citadinos. Los elfos del bosque lo esperan como un héroe, así como incontable cantidad de amigos en Athkatla, como la Noble Orden del Radiante Corazón. */
== P_Dus25J IF ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4 /* Es bueno saber que seré bienvenido en muchos lugares luego de que mi viaje finalice contigo, <CHARNAME>. Quizás puedas acompañarme... */
EXTERN SARVOLO 9
//EVIL
CHAIN SARVOLO P_DuskVoloBio3
@1000 /* Los actos crueles de Dusk han recorrido todos los oídos arcanos de Amn. Muchos temen caer presa de sus ambiciones o ser, repentinamente, el objetivo de alguna venganza imprevisible. Los Caballeros ya lo consideran un paladín caído y los orcos tiemblan ante la sola mención de su nombre. */
== P_Dus25J IF ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @1001 /* Tal es el resultado de mis viajes contigo, <CHARNAME>. Lo que hemos logrado con nuestro poder finalmente ha sido reconocido. */
EXTERN SARVOLO 9

// General de Tethyr (GOOD / NEUTRAL)
EXTEND_BOTTOM AMTGEN01 1
IF ~Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ EXTERN P_DUS25J p_gnduskgn1
END

CHAIN P_DUS25J p_gnduskgn1
@20000 /* ~Pero, ¿qué diantres--?~ */
== P_Dus25J @20004 /* ¡Por Cormyr! <CHARNAME> no ha sido culpable de la destrucción de Saradush. ¡Ha sido obra de los Gigantes de Fuego! */
== AMTGEN01 @20005 /* Se sabe que los Engrendros de Bhaal trabajan juntos para la conquista de esta tierra. <CHARNAME> es descendiente de Bhaal... da igual lo que digas, cormyreano. */
== P_Dus25J @20006 /* Rayos... *susurro* Parece que no tenemos otra opción más que enfrentarnos a ellos, <CHARNAME>. No quería llegar a esto... los tezhyrianos son aliados de Cormyr... */
== P_Dus25J @20007 /* Puede... puede que cuando todo esto termine, los lazos puedan ser reforjados... */
== P_Dus25J @20008 /* *suspiro* */
EXIT

// General de Tethyr (EVIL)
EXTEND_BOTTOM AMTGEN01 1
IF ~Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ EXTERN P_DUS25J p_gnduskgn2
END

CHAIN P_DUS25J p_gnduskgn2
@20000 /* ~Pero, ¿qué diantres--?~ */
== P_Dus25J @20001 /* ¿Quién te crees que eres, mequetrefe? Lo sabía, <CHARNAME>. La 'realeza' de Tethyr muestra sus hilos. */
== P_Dus25J @20002 /* Dime, pequeño hombre, ¿acaso Zaranda y Jédrak ya no participan en sus propias luchas? Sería interesante verlos en el campo de batalla... */
== AMTGEN01 @20003 /* ¡Canalla! ¿Cómo te atreves a mancillar los nombres de nuestros regentes con tu sucia boca? ¡Soldados, acaben con ellos! */
== P_Dus25J @20008 /* *suspiro* */
EXIT

// Capitán Erelon (GOOD / NEUTRAL)
EXTEND_BOTTOM AMARCH02 5
IF ~Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ EXTERN P_DUS25J p_amarch02_1
END

CHAIN P_DUS25J p_amarch02_1
@20009 /* ~Bastardo, morirás por tu perversión. ¡Prepárate a morir!~ */ DO ~AttackReevaluate("AMARCH01",30)~
EXIT

EXTEND_BOTTOM AMARCH02 7
IF ~Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ EXTERN P_DUS25J p_amarch02_2
END

CHAIN P_DUS25J p_amarch02_2
@20010 /* ~¡¿Crees que dejaré que sigas con tu perversión, malnacido?! Las criaturas, incluso aquellas que vienen del Plano Etéreo, no deberían ser motivo de entrenamiento de nadie. ¡Morirás aquí y ahora!~ */  
END AMARCH02 5

// TEST Amelysan
/*
EXTEND_BOTTOM FINSOL01 27
IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ DO ~SetGlobal("P_DuskFinSol","GLOBAL",1)~ EXTERN P_DUS25J P_DuskSolarFriend1
END

CHAIN P_DUS25J P_DuskSolarFriend1
@5 /* Confío en que harás lo que debas hacer con el nuevo poder que has de adquirir, <CHARNAME>. Nadie lo merece más que tú. */
COPY_TRANS FINSOL01 27
*/


I_C_T FINSOL01 27 P_DuskSolarFriend1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @5 /* Confío en que harás lo que debas hacer con el nuevo poder que has de adquirir, <CHARNAME>. Nadie lo merece más que tú. */
== P_cho25J IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @979152 /* Soldado, tu camino ha sido largo y complejo. Viajar por los planos es una proeza que pocas criaturas son capaces de lograr y tú has sido una de ellas. La decisión que tomes, creo firmemente, que será la correcta. */
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @979153 /* He aprendido que el poder es algo que pocos son capaces de blandir, <CHARNAME>. Tú eres más que capaz de hacerlo. Por eso, tu decisión, estoy seguro, será de la más acertada. */
== P_Fal25J IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91831 /* No es una decisión fácil, <CHARNAME>. Pero tengo plena confianza en ti. Has sido capaz de superar dificultades que pocos habrían sido capaces de siquiera enfrentar. */
END



I_C_T AMMERC02 1 P_DuskSaemonMet11
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @46 /* Otra vez este depravado... ¿no crees que es hora de darle una lección, <CHARNAME>? */
END 

I_C_T BAZDRA01 0 P_DuskDrakonis1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @47 /* Hm... debemos tener cuidado, <CHARNAME>. Percibo una extraña energía en este sujeto. */
END

I_C_T SARMEL01 56 P_DuskSARMEL0156
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @48 /* ¿Por qué sientes interés en este suceso, mujer? */
END

I_C_T SARMEL01 40 P_DuskMelissanYagaTemple1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @49 /* Creo que hemos superado retos más peligrosos, mujer. Haces mal en subestimar a <CHARNAME>. */
END

I_C_T SARMEL01 63 P_DuskMelissanGiantDead1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @50 /* ¿Qué ha sucedido con Saradush? */
END

I_C_T HGNYA01 6 P_DuskHGNYA016
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @52 /* Parece ser que alguien en este mundo siempre te está esperando, <CHARNAME>. Vaya fama que te has forjado. */
END

I_C_T SENGUA03 1 P_DuskSENGUA03
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @53 /* Si actúas como un perro, obtendrás la muerte de uno. ¡Prepárate! */
END

I_C_T BALTH 6 P_DuskBalth6
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @54 /* Los monjes siempre me han parecido extraños especímenes. No puedo percibir si es realmente un hombre malvado o no. */
END

I_C_T BALTH 17 P_DuskBalth17
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @55 /* Así que ella estaba detrás de todo... Rayos... */
END

I_C_T GORODR1 11 P_DuskMetKnightsOfTheVigil1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @56 /* No creo que sea casualidad que suceda justo cuando arribamos, <CHARNAME>. Debemos tener cuidado. */
END

I_C_T GORCHR 2 P_DuskChromaticDemon2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @57 /* ¿Confiaremos en las blasfemias de un demonio? Aunque... no sé si tengamos muchas más opciones... */
END

I_C_T GORIMP01 4 P_DuskImpDeadWizards1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @58 /* A mí tampoco... lo que narra esta pequeña inmundicia tiene sentido. La mayoría terminan ebrios de poder y eso los lleva a su perdición. */
END


I_C_T GORDEMO 1 P_DuskImprisonedOneMet1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @60 /* ¡<CHARNAME>! Estad atento. Aquí existe una... fuerza sobrenatural... antigua y casi arcana. No entiendo por qué no podemos verla... pero está aquí... */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @61 /* Cobarde. Deberíamos acabar con él, <CHARNAME>. La venganza lo dicta. */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @7 /* Un engaño nada digno de Helm, clérigo... No estoy seguro de que debamos dejar pasar algo así... */
END

// SoA

I_C_T GORODR1 11 P_DuskMetKnightsOfTheVigil2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @56 /* No creo que sea casualidad que suceda justo cuando arribamos, <CHARNAME>. Debemos tener cuidado. */
END

I_C_T GORCHR 2 P_DuskChromaticDemon3
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @57 /* ¿Confiaremos en las blasfemias de un demonio? Aunque... no sé si tengamos muchas más opciones... */
END

I_C_T GORIMP01 4 P_DuskImpDeadWizards2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @58 /* A mí tampoco... lo que narra esta pequeña inmundicia tiene sentido. La mayoría terminan ebrios de poder y eso los lleva a su perdición. */
END


I_C_T GORDEMO 1 P_DuskImprisonedOneMet2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @60 /* ¡<CHARNAME>! Estad atento. Aquí existe una... fuerza sobrenatural... antigua y casi arcana. No entiendo por qué no podemos verla... pero está aquí... */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @61 /* Cobarde. Deberíamos acabar con él, <CHARNAME>. La venganza lo dicta. */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness3
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @7 /* Un engaño nada digno de Helm, clérigo... No estoy seguro de que debamos dejar pasar algo así... */
END

APPEND P_Dus25J

// ToB talks

// ToB T1 -> NEUTRAL

IF ~Global("P_DuskTalkToB","GLOBAL",2)
Global ("P_Dusk_IS_NEUTRAL_TOB","GLOBAL",1)~ b1
SAY @62 /* Así que esta es tu... bolsa planar, ¿no es así, <CHARNAME>? */
++ @63 /* Pues... sí, Dusk. No es precisamente una posada lujosa, pero al menos podremos descansar en paz aquí. */ + b1.3
++ @64 /* Podría ser peor, Dusk. Mejor acostúmbrate. */ + b1.3
++ @67 /* No estoy de humor para hablar, Dusk. Hay asuntos más importantes en las que concentrarse. */ + b.0
END

IF ~~ b.0
SAY @68 /* De acuerdo, <CHARNAME>. No te molestaré. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

IF ~~ b1.3
SAY @71 /* ~¡Ja! No es que me esté quejando, amigo mío. Es todo lo que ha pasado desde... Irenicus.~ ~¡Ja! No es que me esté quejando, amiga mía. Es todo lo que ha pasado desde... Irenicus.~ */
= @72 /* Tu camino es claro: debes sobrevivir a la lucha por el Trono de Bhaal y yo te ayudaré en lo que pueda. */
= @73 /* Pero... ¿y después qué? Puede que tú lo tengas claro. O puede que no. Lo que puedo asegurarte es que yo no tengo claro qué haré. */
++ @74 /* ¿Por qué lo dices? Creí que querías montar un negocio propio en el Paseo de Waukeen en Athkatla. */ + b1.4
++ @75 /* ~La verdad que no puedo decirte qué hacer, Dusk. Búscate a otro consejero.~ ~La verdad que no puedo decirte qué hacer, Dusk. Búscate a otra consejera.~ */ + b.0
END

IF ~~ b1.4
SAY @78 /* Es probable... pero siento que aún tengo muchos asuntos personales pendientes que resolver. */ 
++ @79 /* ¿A qué te refieres? */ + b1.8
++ @80 /* No creo que tengamos tiempo para esto, Dusk. */ + b.0
END

IF ~~ b1.8
SAY @81 /* Hablo de mi hogar: Cormyr. Partí de allí con una misión que no pude cumplir. No pude proteger a aquellos que estuvieron bajo mi mando, ni a mis allegados. */
= @82 /* Mi entrenamiento como Asesino de Magos tuvo como objetivo el acabar con una Orden de Hechiceros. */
= @83 /* Pero eso nunca sucedió. Quizás... quizás deba concentrarme en ello una vez que termine mis asuntos contigo. */
++ @84 /* Puede ser, Dusk. Has mencionado a Cormyr. ¿Crees que te vuelvan a recibir con los brazos abiertos? */ + b1.9
++ @85 /* No lo sé, Dusk. El plan original de ser mercader en Athkatla suena como una apuesta más segura. */ + b1.10
END

IF ~~ b1.10
SAY @89 /* ¿Tú lo crees así? A decir verdad, no suena nada mal, ¿verdad? Estoy... cansado de transitar en la senda de la venganza. */
= @90 /* Tus palabras siempre son un aliento al corazón, <CHARNAME>. Has aclarado mi perturbada mente. */
IF ~~ + b1.11
END

IF ~~ b1.11
SAY @91 /* Vamos... tu destino nos aguarda. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END


IF ~~ b1.9
SAY @87 /* No lo sé, <CHARNAME>. Extraño mi hogar... pero mi honor ha sido mancillado al no ser capaz de proteger a mis soldados. */
= @88 /* Debí caer con mis hermanos de armas cuando fuimos emboscados en la Colina de los Trolls. */
= @92 /* ~Debí... haber caído en muchas ocasiones... Pero aquí estoy: al lado de un semidios.~ ~Debí... haber caído en muchas ocasiones... Pero aquí estoy: al lado de una semidiosa.~ */
++ @93 /* Esa emboscada no fue obra tuya, Dusk. Es hora de que dejes de culparte por ello. */ + b1.12
++ @94 /* ~No creo ser el indicado para esta conversación, Dusk. Lo siento.~ ~No creo ser la indicada para esta conversación, Dusk. Lo siento.~ */ + b.0
END


IF ~~ b1.12
SAY @95 /* Puede... puede que estés en lo cierto, <CHARNAME>. */
++ @96 /* Así es, Dusk. Además, Irenicus ha sido vencido y hemos salvado a Suldanessallar en el proceso. Eso debe servir para recuperar tu honor, ¿no lo crees? */ + b1.13
END

IF ~~ b1.13
SAY @97 /* ~Es verdad, amigo mío. Una vez que nuestro viaje finalice, pondré mis asuntos en orden.~ ~Es verdad, amiga mía. Una vez que nuestro viaje finalice, pondré mis asuntos en orden.~ */
= @98 /* Es hora de dejar de vivir en el pasado. Por primera vez... veo esperanza en el futuro. */
= @99 /* ~Gracias, <CHARNAME>. No sabes cuánto me has ayudado.~ */
= @100 /* ~Vamos, continuemos con el viaje.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_NEUTRAL_CORMYR_KNIGHT","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)~ EXIT
END


// ToB T1 -> GOOD

IF ~Global("P_DuskTalkToB","GLOBAL",2)
Global ("P_Dusk_IS_GOOD_TOB","GLOBAL",1)~ c1
SAY @101 /* He pensado volver a Shilmista después de esto. Puede que Mathyus me acompañe. */
++ @102 /* Parece una buena idea, Dusk. ¿Qué harás allí? */ + c1.1
++ @103 /* No creo que tengamos tiempo para esta conversación, Dusk. Tenemos mucho trabajo por hacer. */ + c.0
END

IF ~~ c.0
SAY @68 /* De acuerdo, <CHARNAME>. No te molestaré. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

IF ~~ c1.1
SAY @104 /* Pues... mi relación con los elfos es buena. Quizás aprenda un poco más sobre Mielikki. Algunas cuestiones sobre mi futuro después de ti siguen siendo inciertas.  */

+ ~OR (2)
PartyHasItem ("p_swgoo3")
PartyHasItem ("p_swgoo4")~ + @105 /* ¿A qué te refieres? ¿Hay algo del pasado que aún te perturba? */ + c1.2

+ ~PartyHasItem ("p_belrn2")~ + @106 /* ~¿A qué te refieres? Pasas mucho tiempo viendo el anillo del Bosque de Mir. ¿Aún piensas en tus conversaciones con Bellfame?~ */ + c1.7

++ @107 /* ~Hm... tengo la certeza de que podrás resolverlo por tu cuenta, Dusk. Mejor continuemos.~ */ + c.0
END

// RESPUESTA c1.2
IF ~~ c1.2
SAY @108 /* Pues... sí. He estado pensando en Alabarza, <CHARNAME>. */
++ @109 /* ¿En el semiorco que acabó con tu destacamento? Esa respuesta sí que no me la esperaba. */ + c1.3
++ @110 /* ~¿Por qué, Dusk? Tu enemigo ya lleva un buen tiempo muerto.~ */ + c1.3
END

IF ~~ c1.3
SAY @111 /* ~Lo sé, lo sé, <CHARNAME>. Sin embargo, sus últimas palabras aún resuenan en mi mente.~ */
= @112 /* Su clan fue engañado por Anthagar, el Nigromante, para atacarnos. Fue derrotado e incluso muerto por nosotros. */
= @113 /* Pero... no puedo evitar el pensar en su castigo a manos de su propio dios: Gruumsh. */
++ @114 /* Su castigo eterno es justo, Dusk. Tu venganza también fue justa. */ + c1.4
++ @115 /* ~¿Por qué tienes dudas? Siento que, por alguna razón, te compadeces de él.~ */ + c1.4
END

IF ~~ c1.4
SAY @116 /* ~La refriega entre Alabarza y yo era personal. Una guerra entre los Caballeros de mi Orden y los Humanoides de su clan.~ */
= @117 /* Como guerra en la que nos encontrábamos, tanto él como yo acudimos a alianzas con el solo propósito de destruirnos en uno con el otro. */
= @118 /* Él acudió al elfo transmutador, Kalanda. */
= @119 /* El dogma de Gruumsh dicta un odio eterno hacia los elfos. */
= @120 /* ~Y por el otro lado, yo acudí a ti, un hijo de Bhaal.~ ~Y por el otro lado, yo acudí a ti, una hija de Bhaal.~ */
= @121 /* Alabarza rompió ese dogma al utilizar las artimañas mágicas de Kalanda. */
= @122 /* No sé si compasión sea la palabra correcta, <CHARNAME>. Pero creo que un castigo eterno es excesivo. */
++ @123 /* Creo que su castigo es justo, Dusk. Alabarza era un villano y su destino final: merecido. */ + c1.5
++ @124 /* Creo entender a lo que te refieres, Dusk. Pero... ¿acaso puedes hacer algo al respecto? */ + c1.6
END

IF ~~ c1.5
SAY @125 /* ~Puede que lo sea, <CHARNAME>. Sin embargo, creo que incluso un villano del calibre de Alabarza puede redimirse.~ */
IF ~~ DO ~~ + c1.6
END

IF ~~ c1.6
SAY @126 /* ~*suspiro* A pesar de todo, no creo que pueda hacerse algo al respecto. El asunto de las deidades de Faerûn es algo que aún me abruma.~ */
= @127 /* Sencillamente... necesitaba sacar el tema de mi mente. Dar aliento a nuestra voz interior muchas veces nos trae de nuevo a la realidad y a la imposibilidad de muchas cosas. */
= @128 /* ~Pero si algo he aprendido contigo, mi buen amigo, es que nada es imposible.~ ~Pero si algo he aprendido contigo, mi buena amiga, es que nada es imposible.~ */
= @129 /* Gracias por escucharme. Será mejor que continuemos con nuestro viaje. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_GOOD_ALABARZA_DEATH","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

// RESPUESTA c1.7
IF ~~ c1.7
SAY @130 /* Pues... a decir verdad, sí. He tenido la oportunidad de tener varias conversaciones con ella. */
= @131 /* Más que nada sobre asuntos complejos, como el tiempo y la Dama del Bosque. */
++ @132 /* Sí, seguro. El "tiempo". */ + c1.8
++ @133 /* ~¿Estás seguro de que eso es todo? No soy ciego, Dusk.~ ~¿Estás seguro de que eso es todo? No soy ciega, Dusk.~*/ + c1.8
END

IF ~~ c1.8
SAY @134 /* ~*carraspeo* ¿Estás infiriendo que entre ella y yo existe... un romance?~ */
= @135 /* No lo sé... a decir verdad, tengo una buena relación con ella, <CHARNAME>. */
= @136 /* Como recordarás, intervino en nuestra batalla contra Alabarza y me ha enseñado mucho sobre otros planos existenciales. */
= @137 /* Hay cierta situación que ha intentado explicar en más de una ocasión y es sobre cómo llegó a estar atrapada en el Anillo del Bosque. */
= @138 /* Habló sobre un combate en Mir... pero dicho combate aún no se sucedió. En teoría debería suceder dentro de un año aproximadamente. */
++ @139 /* ¿Ves? Por eso es que no hay que hablar con las invocaciones. Dicen sandeces. */ + c1.9
++ @140 /* Pues, las ninfas son criaturas mágicas. Michelson nos ha entregado ese anillo, por lo que no me sorprendería que sea cierto.  */ + c1.10
END

IF ~~ c1.9
SAY @141 /* ~Puede que sea un delirio. Pero no lo creo así.~ */
IF ~~ DO ~~ + c1.10
END

IF ~~ c1.10
SAY @142 /* ~Es cierto que Bellfame, al igual que Michelson, son criaturas mágicas. Sus leyes escapan a nuestra comprensión.~ */ 
= @143 /* ~Por lo que no me sorprendería que, realmente, dentro de un año suceda el evento bélico en el Bosque de Mir.~ */
= @144 /* ~Vaya... he pensado en esto un buen tiempo, pero decirlo en voz alta me ha hecho reflexionar un poco más sobre Bellfame.~ */
= @145 /* ~Gracias por escuchar, <CHARNAME>. Hablar contigo siempre aclara mi mente.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_GOOD_BELLFAME","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

// ToB T1 -> EVIL

IF ~Global("P_DuskTalkToB","GLOBAL",2)
Global ("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ d1
SAY @146 /* ~<CHARNAME>, ¿tienes unos minutos? He estado pensando y creo que eres el único que puede... aconsejarme sobre... mis cavilaciones.~ ~<CHARNAME>, ¿tienes unos minutos? He estado pensando y creo que eres la única que puede... aconsejarme sobre... mis cavilaciones.~ */
+ ~PartyHasItem ("p_swevi4")~ + @147 /* ¿Te refieres a las últimas palabras de tu esposa? */ + d1.1
++ @148 /* No tenemos tiempo para esto, Dusk. Quizás más adelante, ¿te parece? */ + d.0
END

IF ~~ d.0
SAY @149 /* No creo estar pidiendo demasiado, pero si esa es tu respuesta... Que así sea. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

IF ~~ d1.1
SAY @150 /* ~No sólo a sus palabras... ella... pareció despreciarme. Como si me... odiara.~ */
= @151 /* Soy más poderoso que lo que jamás soñé, <CHARNAME>. Incluso, el poder del Pandemonium me da la posibilidad de realizar hazañas que pocos mortales son capaces de lograr. */
= @152 /* Podría haberla resucitado... podría haberla extraído de ese estúpido plano de árboles. */
= @153 /* Pero... me rechazó... incluso se mostró dispuesta a luchar contra mí... ¿Por qué? */
++ @154 /* Bueno... has cambiado mucho desde que te conocí, Dusk. Creo que tal acontecimiento se debe al Orbe misterioso que te dió ese Encantador, ¿lo recuerdas? */ + d1.2
++ @155 /* ~Los abraza-árboles son así, Dusk. Unos pusilánimes. No comprendo por qué ello te preocupa.~ */ + d1.3
++ @156 /* ~Ehrm... creo que no es algo de mi incumbencia, Dusk. Será mejor que me dejes afuera de esto o que lo hablemos en otro momento...~ */ + d.0
END

IF ~~ d1.3
SAY @157 /* ~Si bien estoy de acuerdo con esa afirmación... no creo que sea una razón válida. No... Debe ser...~ */ 
IF ~~ DO ~~ + d1.2
END

IF ~~ d1.2
SAY @158 /* ~El orbe escarlata de Sornhil. No, Sornhil no... Anthagar, el Nigromante.~ */
= @159 /* Él fue el titiritero de todo, <CHARNAME>. Pese a que le hemos matado... aún siento su influjo en mi destino. */
= @160 /* ¿Por qué? ¿Por qué me persigue esta sensación de desagrado? Siento que he bailado al son de alguien sólo para su entretenimiento. */
= @161 /* Como que no somos los dueños de nuestro destino... somos el resultado de una mala broma. Una broma destinada a repetirse, una y otra vez. */
= @162 /* Mathyus, Michelson, Demoledor... ¿Por qué los maté? Eran mis amigos... Lo hice... ¿por poder? */
++ @163 /* Vaya, ya me había olvidado yo de esos idiotas. */ + d1.4
++ @164 /* Ah, los guardianes de Shilmista. Recuerdo que me sorprendió tu decisión definitiva sobre su destino. */ + d1.5
++ @165 /* ¿Vas a ponerte sentimental? Es mi señal para retirarme de esta conversación. */ + d.0
END

IF ~~ d1.4
SAY @166 /* Puede que hayan sido unos idiotas... pero lo cierto es que les traicioné. */ 
IF ~~ DO ~~ + d1.5
END

IF ~~ d1.5
SAY @167 /* Necesitaba de su energía vital para quitar las ataduras de Danctian y lograr que su poder pudiese filtrarse a este plano. */
= @168 /* Ahora que el tiempo ha pasado y comprendo mejor mi poder, yace la posibilidad de... traer de nuevo a los shilmistas. */
++ @169 /* ¿Piensas revivirlos? Yo ya me acostumbré a su ausencia, Dusk. Además, si escucho la risa de Michelson una vez más, te juro que te declaro la guerra. */ + d1.6
++ @170 /* ¿Crees que algo así habría de redimirte? Estás siendo un poco ingenuo,  me parece. */ + d1.7
++ @171 /* Ya me he cansado de esta conversación, Dusk. Mucha palabrería. No quiero escuchar más. */ + d.0
END

IF ~~ d1.6
SAY @172 /* La idea se ha impregnado en mi mente, es verdad. Pero no te preocupes, <CHARNAME>. De hacerlo, lo haré cuando mis viajes contigo hayan finalizado. */ 
IF ~~ DO ~~ + d1.8
END

IF ~~ d1.7
SAY @173 /* Esperaba... obtener algo de redención... creo que podría ser capaz de hacer algo así por mi esposa. */
IF ~~ DO ~~ + d1.8
END

IF ~~ d1.8
SAY @174 /* ~Sin embargo... no sé si sea suficiente. Esta... sensación de oscuridad dentro de mí... cada vez se arraiga más y más.~ */ 
= @175 /* ~Como si poco a poco... me olvidara de lo que es ser un humano. Puede que algo así te suceda a ti, <CHARNAME>. Te he estado observando todo este tiempo.~ */
= @176 /* Lo que eras... desde que partimos de Athkatla... has cambiado, demasiado. */
= @177 /* ~*carraspeo* No pretendo darte un sermón ni nada parecido. Necesitaba hacer realidad estas abstracciones. Será mejor que continuemos.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_EVIL_REDEMPTION","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END


// Conversación luego del combate contra el ejército de Tethyr - NEUTRAL/GOOD
IF ~Global("P_DuskTalkToB2","GLOBAL",2)
OR(2)
Global ("P_Dusk_IS_NEUTRAL_TOB","GLOBAL",1)
Global ("P_Dusk_IS_GOOD_TOB","GLOBAL",1)~ aa1
SAY @178 /* No quería... sacar este tema a la luz, <CHARNAME>. Pero... el combate contra los soldados de Tethyr aún me tiene conmocionado. */
++ @179 /* ¿De verdad? No fue un combate que nos haya puesto en aprietos. Me parece extraño en ti. */ + aa1.1
++ @180 /* ¿Por qué lo dices, Dusk? Tiene que ver con tu pasado como mensajero de la paz, ¿verdad? */ + aa1.2
++ @181 /* No es momento de lloriqueos, Dusk. Tenemos asuntos más importantes que atender. */ + aa1.0
END

IF ~~ aa1.0
SAY @182 /* *suspiro* De acuerdo, <CHARNAME>. Continuemos. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END

IF ~~ aa1.1
SAY @183 /* ~No está relacionado al combate en sí. Muchos de esos soldados... intentaban hacer lo mismo que yo hace algunos años. Mantener la paz.~ */
= @184 /* No sé qué se dirá de nosotros en detalle... El comandante tethyriano no nos quiso escuchar... supongo que nunca lo haría. */
= @185 /* Es injusto que esto haya tenido que pasar. */
++ @186 /* Muchas cosas son injustas, Dusk. Así es el mundo. Mejor vete acostumbrando a esa idea. */ + aa1.3
++ @187 /* ~Puede que sea injusto. Pero creo que es nuestro deber enmendar las cosas. Hicimos lo posible por evitar el combate, Dusk.~ */ + aa1.4
END

IF ~~ aa1.3
SAY @188 /* ~Un razonamiento bastante frío, compañero. Puede que el tiempo nos haya hecho más... duros.~ ~Un razonamiento bastante frío, compañera. Puede que el tiempo nos haya hecho más... duros.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END

IF ~~ aa1.4
SAY @189 /* ~Tienes razón. Llevas una pesada herencia, amigo mío. No muchos llegan a comprender lo que intentas hacer.~ ~Tienes razón. Llevas una pesada herencia, amiga mía. No muchos llegan a comprender lo que intentas hacer.~ */ 
= @190 /* ~Aquellos que no lo entienden, te temen. El combate anterior es prueba de ello, ahora me doy cuenta.~ */
= @191 /* No muchos son capaces de ver el valor que tienes, <CHARNAME>. Pero yo lo veo. Confío en ti. */
= @192 /* ~*carraspeo* Bueno, creo que hemos hablado suficiente. Será mejor que continuemos.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END

IF ~~ aa1.2
SAY @193 /* ~Así es. Tethyr me recibió con los brazos abiertos. Zaranda es el emblema del honor y la sabiduría...~ */
= @194 /* Lo de Saradush... fue terrible. Intentamos evitarlo, ¿no es así? */
= @184 /* No sé qué se dirá de nosotros en detalle... El comandante tethyriano no nos quiso escuchar... supongo que nunca lo haría. */
= @185 /* Es injusto que esto haya tenido que pasar. */
++ @186 /* Muchas cosas son injustas, Dusk. Así es el mundo. Mejor vete acostumbrando a esa idea. */ + aa1.3
++ @187 /* ~Puede que sea injusto. Pero creo que es nuestro deber enmendar las cosas. Hicimos lo posible por evitar el combate, Dusk.~ */ + aa1.4
END



// Conversación luego del combate contra el ejército de Tethyr - EVIL
IF ~Global("P_DuskTalkToB2","GLOBAL",2)
Global ("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ bb1
SAY @195 /* Estúpidos tethyrianos... idiotas. ¿En qué estaban pensando? Merecían... merecían morir. */
++ @196 /* ¿Qué estás murmurando, Dusk? ¿Estás hablando del combate en el Oasis? */ + bb1.1
++ @197 /* Ah, has enloquecido, ¿huh? Era algo que me temía. Suele suceder con aquellos que hablan solos. */ + bb1.2
++ @198 /* No quiero oír quejas sobre nada, Dusk. Si estás a punto de lloriquear por algo, será mejor que te lo guardes para ti mismo. */ + bb1.0
END

IF ~~ bb1.0
SAY @199 /* ~Insolente. No estoy llorando. No me estoy quejando. Y no necesito de tu oído para esto. Será mejor que continuemos con nuestros asuntos.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END


IF ~~ bb1.1
SAY @200 /* ~Si a eso le puedes llamar combate, <CHARNAME>. Fue, más bien, una masacre. Esos estúpidos... nunca tuvieron una oportunidad.~ */
= @201 /* Nunca tuvieron una oportunidad... */
++ @202 /* ~Me sorprende que te compadezcas de ellos, Dusk. Tethyr se lo buscó. Aquellos que se interpongan en nuestros caminos, pagarán.~ */ + bb1.3
++ @203 /* ¿Te sientes mal por haberlos matado, Dusk? Si te hace sentir mejor, creo que el combate era inevitable. */ + bb1.4
END

IF ~~ bb1.3
SAY @204 /* ~Larga es la lista de cadáveres que pueden confirmar eso, Hijo de Bhaal. Larga es la lista...~ */
= @205 /* Saradush. Tethyr... cementerios van creciendo a medida que vamos avanzando. */
= @206 /* A veces me pregunto... si algún día podré presenciar el fin de esto. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END

IF ~~ bb1.4
SAY @207 /* ~Me siento molesto. ¿Limpiar la sangre de un joven soldado del filo de mi espada? No merecía el esfuerzo.~ */ 
= @208 /* ~Entiendo que no tuvimos otra opción. La estúpida de Zaranda no escucha razonamientos.~ */
= @209 /* ¿Enviar guerreros, veteranos y escuderos, al matadero por meros rumores? */
= @210 /* ~Te lo digo, <CHARNAME>... Los reyes ya no pelean sus combates. Dejan que los jóvenes lo hagan por ellos.~ */
= @211 /* El poder es una espada atractiva. Pero si quieres decapitar a los demás, al menos el que lo blanda debería poder valerse por sí mismo. */
= @212 /* ¡Bah! Será mejor que continuemos. Los muertos, muertos están. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END

IF ~~ bb1.2
SAY @213 /* ~Muy gracioso, <CHARNAME>.~ ~Muy graciosa, <CHARNAME>.~ */
= @214 /* Y no, no he enloquecido. He estado pensando en nuestro combate en el Oasis. */
= @215 /* Si es que a eso se le puede llamar combate. Fue, más bien, una masacre. Esos estúpidos... nunca tuvieron una oportunidad. */
= @201 /* Nunca tuvieron una oportunidad... */
++ @202 /* ~Me sorprende que te compadezcas de ellos, Dusk. Tethyr se lo buscó. Aquellos que se interpongan en nuestros caminos, pagarán.~ */ + bb1.3
++ @203 /*¿Te sientes mal por haberlos matado, Dusk? Si te hace sentir mejor, creo que el combate era inevitable. */ + bb1.4
END

END // End to APPEND
