BEGIN P_Dus25J



// Volo

EXTEND_BOTTOM SARVOLO 9
+ ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") Global("P_Dusk_IS_NEUTRAL_TOB","GLOBAL",1)~ + @10600000 /*  */ + P_DuskVoloBio1
+ ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") Global("P_Dusk_IS_GOOD_TOB","GLOBAL",1)~ + @10600000 /* Tell me about Dusk. */ + P_DuskVoloBio2
+ ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ + @10600000 /* Tell me about Dusk. */ + P_DuskVoloBio3
END
//NEUTRAL
CHAIN SARVOLO P_DuskVoloBio1
@10600001 /* Un hijo de Cormyr que viajó al sur para evitar una guerra. Su madre patria espera su regreso luego de incontables historias heroicas en su paso por Amn y de sus viajes junto a <CHARNAME>. */
== P_Dus25J IF ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10600002 /* ¿Esperan mi regreso? Quizás... quizás algún día lo haga... */
EXTERN SARVOLO 9
//GOOD
CHAIN SARVOLO P_DuskVoloBio2
@10600003 /* Ha actuado con justicia en nombre de las naciones de Cormyr y Shilmista. Su lealtad a naciones ajenas como Amn y Tethyr recorren los oídos silvestres y citadinos. Los elfos del bosque lo esperan como un héroe, así como incontable cantidad de amigos en Athkatla, como la Noble Orden del Radiante Corazón. */
== P_Dus25J IF ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10600004 /* Es bueno saber que seré bienvenido en muchos lugares luego de que mi viaje finalice contigo, <CHARNAME>. Quizás puedas acompañarme... */
EXTERN SARVOLO 9
//EVIL
CHAIN SARVOLO P_DuskVoloBio3
@10601000 /* Los actos crueles de Dusk han recorrido todos los oídos arcanos de Amn. Muchos temen caer presa de sus ambiciones o ser, repentinamente, el objetivo de alguna venganza imprevisible. Los Caballeros ya lo consideran un paladín caído y los orcos tiemblan ante la sola mención de su nombre. */
== P_Dus25J IF ~AreaCheck("AR5003") InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10601001 /* Tal es el resultado de mis viajes contigo, <CHARNAME>. Lo que hemos logrado con nuestro poder finalmente ha sido reconocido. */
EXTERN SARVOLO 9

// General de Tethyr (GOOD / NEUTRAL)
EXTEND_BOTTOM AMTGEN01 1
IF ~Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ EXTERN P_DUS25J p_gnduskgn1
END

CHAIN P_DUS25J p_gnduskgn1
@10620000 /* ~Pero, ¿qué diantres--?~ */
== P_Dus25J @10620004 /* ¡Por Cormyr! <CHARNAME> no ha sido culpable de la destrucción de Saradush. ¡Ha sido obra de los Gigantes de Fuego! */
== AMTGEN01 @10620005 /* Se sabe que los Engrendros de Bhaal trabajan juntos para la conquista de esta tierra. <CHARNAME> es descendiente de Bhaal... da igual lo que digas, cormyreano. */
== P_Dus25J @10620006 /* Rayos... *susurro* Parece que no tenemos otra opción más que enfrentarnos a ellos, <CHARNAME>. No quería llegar a esto... los tezhyrianos son aliados de Cormyr... */
== P_Dus25J @10620007 /* Puede... puede que cuando todo esto termine, los lazos puedan ser reforjados... */
== P_Dus25J @10620008 /* *suspiro* */
EXIT

// General de Tethyr (EVIL)
EXTEND_BOTTOM AMTGEN01 1
IF ~Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ EXTERN P_DUS25J p_gnduskgn2
END

CHAIN P_DUS25J p_gnduskgn2
@10620000 /* ~Pero, ¿qué diantres--?~ */
== P_Dus25J @10620001 /* ¿Quién te crees que eres, mequetrefe? Lo sabía, <CHARNAME>. La 'realeza' de Tethyr muestra sus hilos. */
== P_Dus25J @10620002 /* Dime, pequeño hombre, ¿acaso Zaranda y Jédrak ya no participan en sus propias luchas? Sería interesante verlos en el campo de batalla... */
== AMTGEN01 @10620003 /* ¡Canalla! ¿Cómo te atreves a mancillar los nombres de nuestros regentes con tu sucia boca? ¡Soldados, acaben con ellos! */
== P_Dus25J @10620008 /* *suspiro* */
EXIT

// Capitán Erelon (GOOD / NEUTRAL)
EXTEND_BOTTOM AMARCH02 5
IF ~Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ EXTERN P_DUS25J p_amarch02_1
END

CHAIN P_DUS25J p_amarch02_1
@10620009 /* ~Bastardo, morirás por tu perversión. ¡Prepárate a morir!~ */ DO ~AttackReevaluate("AMARCH01",30)~
EXIT

EXTEND_BOTTOM AMARCH02 7
IF ~Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ EXTERN P_DUS25J p_amarch02_2
END

CHAIN P_DUS25J p_amarch02_2
@10620010 /* ~¡¿Crees que dejaré que sigas con tu perversión, malnacido?! Las criaturas, incluso aquellas que vienen del Plano Etéreo, no deberían ser motivo de entrenamiento de nadie. ¡Morirás aquí y ahora!~ */  
END AMARCH02 5

// TEST Amelysan
/*
EXTEND_BOTTOM FINSOL01 27
IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ DO ~SetGlobal("P_DuskFinSol","GLOBAL",1)~ EXTERN P_DUS25J P_DuskSolarFriend1
END

CHAIN P_DUS25J P_DuskSolarFriend1
@10600005 /* Confío en que harás lo que debas hacer con el nuevo poder que has de adquirir, <CHARNAME>. Nadie lo merece más que tú. */
COPY_TRANS FINSOL01 27
*/


I_C_T FINSOL01 27 P_DuskSolarFriend1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10600005 /* Confío en que harás lo que debas hacer con el nuevo poder que has de adquirir, <CHARNAME>. Nadie lo merece más que tú. */
== P_cho25J IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @979152 /* Soldado, tu camino ha sido largo y complejo. Viajar por los planos es una proeza que pocas criaturas son capaces de lograr y tú has sido una de ellas. La decisión que tomes, creo firmemente, que será la correcta. */
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @979153 /* He aprendido que el poder es algo que pocos son capaces de blandir, <CHARNAME>. Tú eres más que capaz de hacerlo. Por eso, tu decisión, estoy seguro, será de la más acertada. */
== P_Fal25J IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91831 /* No es una decisión fácil, <CHARNAME>. Pero tengo plena confianza en ti. Has sido capaz de superar dificultades que pocos habrían sido capaces de siquiera enfrentar. */
END



I_C_T AMMERC02 1 P_DuskSaemonMet11
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10600046 /* Otra vez este depravado... ¿no crees que es hora de darle una lección, <CHARNAME>? */
END 

I_C_T BAZDRA01 0 P_DuskDrakonis1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10600047 /* Hm... debemos tener cuidado, <CHARNAME>. Percibo una extraña energía en este sujeto. */
END

I_C_T SARMEL01 56 P_DuskSARMEL0156
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10600048 /* ¿Por qué sientes interés en este suceso, mujer? */
END

I_C_T SARMEL01 40 P_DuskMelissanYagaTemple1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10600049 /* Creo que hemos superado retos más peligrosos, mujer. Haces mal en subestimar a <CHARNAME>. */
END

I_C_T SARMEL01 63 P_DuskMelissanGiantDead1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10600050 /* ¿Qué ha sucedido con Saradush? */
END

I_C_T HGNYA01 6 P_DuskHGNYA016
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10600052 /* Parece ser que alguien en este mundo siempre te está esperando, <CHARNAME>. Vaya fama que te has forjado. */
END

I_C_T SENGUA03 1 P_DuskSENGUA03
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @10600053 /* Si actúas como un perro, obtendrás la muerte de uno. ¡Prepárate! */
END

I_C_T BALTH 6 P_DuskBalth6
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @10600054 /* Los monjes siempre me han parecido extraños especímenes. No puedo percibir si es realmente un hombre malvado o no. */
END

I_C_T BALTH 17 P_DuskBalth17
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10600055 /* Así que ella estaba detrás de todo... Rayos... */
END

I_C_T GORODR1 11 P_DuskMetKnightsOfTheVigil1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @10600056 /* No creo que sea casualidad que suceda justo cuando arribamos, <CHARNAME>. Debemos tener cuidado. */
END

I_C_T GORCHR 2 P_DuskChromaticDemon2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @10600057 /* ¿Confiaremos en las blasfemias de un demonio? Aunque... no sé si tengamos muchas más opciones... */
END

I_C_T GORIMP01 4 P_DuskImpDeadWizards1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @10600058 /* A mí tampoco... lo que narra esta pequeña inmundicia tiene sentido. La mayoría terminan ebrios de poder y eso los lleva a su perdición. */
END


I_C_T GORDEMO 1 P_DuskImprisonedOneMet1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @10600060 /* ¡<CHARNAME>! Estad atento. Aquí existe una... fuerza sobrenatural... antigua y casi arcana. No entiendo por qué no podemos verla... pero está aquí... */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @10600061 /* Cobarde. Deberíamos acabar con él, <CHARNAME>. La venganza lo dicta. */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @10600007 /* Un engaño nada digno de Helm, clérigo... No estoy seguro de que debamos dejar pasar algo así... */
END

// SoA

I_C_T GORODR1 11 P_DuskMetKnightsOfTheVigil2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @10600056 /* No creo que sea casualidad que suceda justo cuando arribamos, <CHARNAME>. Debemos tener cuidado. */
END

I_C_T GORCHR 2 P_DuskChromaticDemon3
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @10600057 /* ¿Confiaremos en las blasfemias de un demonio? Aunque... no sé si tengamos muchas más opciones... */
END

I_C_T GORIMP01 4 P_DuskImpDeadWizards2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @10600058 /* A mí tampoco... lo que narra esta pequeña inmundicia tiene sentido. La mayoría terminan ebrios de poder y eso los lleva a su perdición. */
END


I_C_T GORDEMO 1 P_DuskImprisonedOneMet2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @10600060 /* ¡<CHARNAME>! Estad atento. Aquí existe una... fuerza sobrenatural... antigua y casi arcana. No entiendo por qué no podemos verla... pero está aquí... */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @10600061 /* Cobarde. Deberíamos acabar con él, <CHARNAME>. La venganza lo dicta. */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness3
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @10600007 /* Un engaño nada digno de Helm, clérigo... No estoy seguro de que debamos dejar pasar algo así... */
END

APPEND P_Dus25J

// ToB talks

// ToB T1 -> NEUTRAL

IF ~Global("P_DuskTalkToB","GLOBAL",2)
Global ("P_Dusk_IS_NEUTRAL_TOB","GLOBAL",1)~ b1
SAY @10600062 /* Así que esta es tu... bolsa planar, ¿no es así, <CHARNAME>? */
++ @10600063 /* Pues... sí, Dusk. No es precisamente una posada lujosa, pero al menos podremos descansar en paz aquí. */ + b1.3
++ @10600064 /* Podría ser peor, Dusk. Mejor acostúmbrate. */ + b1.3
++ @10600067 /* No estoy de humor para hablar, Dusk. Hay asuntos más importantes en las que concentrarse. */ + b.0
END

IF ~~ b.0
SAY @10600068 /* De acuerdo, <CHARNAME>. No te molestaré. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

IF ~~ b1.3
SAY @10600071 /* ~¡Ja! No es que me esté quejando, amigo mío. Es todo lo que ha pasado desde... Irenicus.~ ~¡Ja! No es que me esté quejando, amiga mía. Es todo lo que ha pasado desde... Irenicus.~ */
= @10600072 /* Tu camino es claro: debes sobrevivir a la lucha por el Trono de Bhaal y yo te ayudaré en lo que pueda. */
= @10600073 /* Pero... ¿y después qué? Puede que tú lo tengas claro. O puede que no. Lo que puedo asegurarte es que yo no tengo claro qué haré. */
++ @10600074 /* ¿Por qué lo dices? Creí que querías montar un negocio propio en el Paseo de Waukeen en Athkatla. */ + b1.4
++ @10600075 /* ~La verdad que no puedo decirte qué hacer, Dusk. Búscate a otro consejero.~ ~La verdad que no puedo decirte qué hacer, Dusk. Búscate a otra consejera.~ */ + b.0
END

IF ~~ b1.4
SAY @10600078 /* Es probable... pero siento que aún tengo muchos asuntos personales pendientes que resolver. */ 
++ @10600079 /* ¿A qué te refieres? */ + b1.8
++ @10600080 /* No creo que tengamos tiempo para esto, Dusk. */ + b.0
END

IF ~~ b1.8
SAY @10600081 /* Hablo de mi hogar: Cormyr. Partí de allí con una misión que no pude cumplir. No pude proteger a aquellos que estuvieron bajo mi mando, ni a mis allegados. */
= @10600082 /* Mi entrenamiento como Asesino de Magos tuvo como objetivo el acabar con una Orden de Hechiceros. */
= @10600083 /* Pero eso nunca sucedió. Quizás... quizás deba concentrarme en ello una vez que termine mis asuntos contigo. */
++ @10600084 /* Puede ser, Dusk. Has mencionado a Cormyr. ¿Crees que te vuelvan a recibir con los brazos abiertos? */ + b1.9
++ @10600085 /* No lo sé, Dusk. El plan original de ser mercader en Athkatla suena como una apuesta más segura. */ + b1.10
END

IF ~~ b1.10
SAY @10600089 /* ¿Tú lo crees así? A decir verdad, no suena nada mal, ¿verdad? Estoy... cansado de transitar en la senda de la venganza. */
= @10600090 /* Tus palabras siempre son un aliento al corazón, <CHARNAME>. Has aclarado mi perturbada mente. */
IF ~~ + b1.11
END

IF ~~ b1.11
SAY @10600091 /* Vamos... tu destino nos aguarda. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END


IF ~~ b1.9
SAY @10600087 /* No lo sé, <CHARNAME>. Extraño mi hogar... pero mi honor ha sido mancillado al no ser capaz de proteger a mis soldados. */
= @10600088 /* Debí caer con mis hermanos de armas cuando fuimos emboscados en la Colina de los Trolls. */
= @10600092 /* ~Debí... haber caído en muchas ocasiones... Pero aquí estoy: al lado de un semidios.~ ~Debí... haber caído en muchas ocasiones... Pero aquí estoy: al lado de una semidiosa.~ */
++ @10600093 /* Esa emboscada no fue obra tuya, Dusk. Es hora de que dejes de culparte por ello. */ + b1.12
++ @10600094 /* ~No creo ser el indicado para esta conversación, Dusk. Lo siento.~ ~No creo ser la indicada para esta conversación, Dusk. Lo siento.~ */ + b.0
END


IF ~~ b1.12
SAY @10600095 /* Puede... puede que estés en lo cierto, <CHARNAME>. */
++ @10600096 /* Así es, Dusk. Además, Irenicus ha sido vencido y hemos salvado a Suldanessallar en el proceso. Eso debe servir para recuperar tu honor, ¿no lo crees? */ + b1.13
END

IF ~~ b1.13
SAY @10600097 /* ~Es verdad, amigo mío. Una vez que nuestro viaje finalice, pondré mis asuntos en orden.~ ~Es verdad, amiga mía. Una vez que nuestro viaje finalice, pondré mis asuntos en orden.~ */
= @10600098 /* Es hora de dejar de vivir en el pasado. Por primera vez... veo esperanza en el futuro. */
= @10600099 /* ~Gracias, <CHARNAME>. No sabes cuánto me has ayudado.~ */
= @10600100 /* ~Vamos, continuemos con el viaje.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_NEUTRAL_CORMYR_KNIGHT","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)~ EXIT
END


// ToB T1 -> GOOD

IF ~Global("P_DuskTalkToB","GLOBAL",2)
Global ("P_Dusk_IS_GOOD_TOB","GLOBAL",1)~ c1
SAY @10600101 /* He pensado volver a Shilmista después de esto. Puede que Mathyus me acompañe. */
++ @10600102 /* Parece una buena idea, Dusk. ¿Qué harás allí? */ + c1.1
++ @10600103 /* No creo que tengamos tiempo para esta conversación, Dusk. Tenemos mucho trabajo por hacer. */ + c.0
END

IF ~~ c.0
SAY @10600068 /* De acuerdo, <CHARNAME>. No te molestaré. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

IF ~~ c1.1
SAY @10600104 /* Pues... mi relación con los elfos es buena. Quizás aprenda un poco más sobre Mielikki. Algunas cuestiones sobre mi futuro después de ti siguen siendo inciertas.  */

+ ~OR (2)
PartyHasItem ("p_swgoo3")
PartyHasItem ("p_swgoo4")~ + @10600105 /* ¿A qué te refieres? ¿Hay algo del pasado que aún te perturba? */ + c1.2

+ ~PartyHasItem ("p_belrn2")~ + @10600106 /* ~¿A qué te refieres? Pasas mucho tiempo viendo el anillo del Bosque de Mir. ¿Aún piensas en tus conversaciones con Bellfame?~ */ + c1.7

++ @10600107 /* ~Hm... tengo la certeza de que podrás resolverlo por tu cuenta, Dusk. Mejor continuemos.~ */ + c.0
END

// RESPUESTA c1.2
IF ~~ c1.2
SAY @10600108 /* Pues... sí. He estado pensando en Alabarza, <CHARNAME>. */
++ @10600109 /* ¿En el semiorco que acabó con tu destacamento? Esa respuesta sí que no me la esperaba. */ + c1.3
++ @10600110 /* ~¿Por qué, Dusk? Tu enemigo ya lleva un buen tiempo muerto.~ */ + c1.3
END

IF ~~ c1.3
SAY @10600111 /* ~Lo sé, lo sé, <CHARNAME>. Sin embargo, sus últimas palabras aún resuenan en mi mente.~ */
= @10600112 /* Su clan fue engañado por Anthagar, el Nigromante, para atacarnos. Fue derrotado e incluso muerto por nosotros. */
= @10600113 /* Pero... no puedo evitar el pensar en su castigo a manos de su propio dios: Gruumsh. */
++ @10600114 /* Su castigo eterno es justo, Dusk. Tu venganza también fue justa. */ + c1.4
++ @10600115 /* ~¿Por qué tienes dudas? Siento que, por alguna razón, te compadeces de él.~ */ + c1.4
END

IF ~~ c1.4
SAY @10600116 /* ~La refriega entre Alabarza y yo era personal. Una guerra entre los Caballeros de mi Orden y los Humanoides de su clan.~ */
= @10600117 /* Como guerra en la que nos encontrábamos, tanto él como yo acudimos a alianzas con el solo propósito de destruirnos en uno con el otro. */
= @10600118 /* Él acudió al elfo transmutador, Kalanda. */
= @10600119 /* El dogma de Gruumsh dicta un odio eterno hacia los elfos. */
= @10600120 /* ~Y por el otro lado, yo acudí a ti, un hijo de Bhaal.~ ~Y por el otro lado, yo acudí a ti, una hija de Bhaal.~ */
= @10600121 /* Alabarza rompió ese dogma al utilizar las artimañas mágicas de Kalanda. */
= @10600122 /* No sé si compasión sea la palabra correcta, <CHARNAME>. Pero creo que un castigo eterno es excesivo. */
++ @10600123 /* Creo que su castigo es justo, Dusk. Alabarza era un villano y su destino final: merecido. */ + c1.5
++ @10600124 /* Creo entender a lo que te refieres, Dusk. Pero... ¿acaso puedes hacer algo al respecto? */ + c1.6
END

IF ~~ c1.5
SAY @10600125 /* ~Puede que lo sea, <CHARNAME>. Sin embargo, creo que incluso un villano del calibre de Alabarza puede redimirse.~ */
IF ~~ DO ~~ + c1.6
END

IF ~~ c1.6
SAY @10600126 /* ~*suspiro* A pesar de todo, no creo que pueda hacerse algo al respecto. El asunto de las deidades de Faerûn es algo que aún me abruma.~ */
= @10600127 /* Sencillamente... necesitaba sacar el tema de mi mente. Dar aliento a nuestra voz interior muchas veces nos trae de nuevo a la realidad y a la imposibilidad de muchas cosas. */
= @10600128 /* ~Pero si algo he aprendido contigo, mi buen amigo, es que nada es imposible.~ ~Pero si algo he aprendido contigo, mi buena amiga, es que nada es imposible.~ */
= @10600129 /* Gracias por escucharme. Será mejor que continuemos con nuestro viaje. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_GOOD_ALABARZA_DEATH","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

// RESPUESTA c1.7
IF ~~ c1.7
SAY @10600130 /* Pues... a decir verdad, sí. He tenido la oportunidad de tener varias conversaciones con ella. */
= @10600131 /* Más que nada sobre asuntos complejos, como el tiempo y la Dama del Bosque. */
++ @10600132 /* Sí, seguro. El "tiempo". */ + c1.8
++ @10600133 /* ~¿Estás seguro de que eso es todo? No soy ciego, Dusk.~ ~¿Estás seguro de que eso es todo? No soy ciega, Dusk.~*/ + c1.8
END

IF ~~ c1.8
SAY @10600134 /* ~*carraspeo* ¿Estás infiriendo que entre ella y yo existe... un romance?~ */
= @10600135 /* No lo sé... a decir verdad, tengo una buena relación con ella, <CHARNAME>. */
= @10600136 /* Como recordarás, intervino en nuestra batalla contra Alabarza y me ha enseñado mucho sobre otros planos existenciales. */
= @10600137 /* Hay cierta situación que ha intentado explicar en más de una ocasión y es sobre cómo llegó a estar atrapada en el Anillo del Bosque. */
= @10600138 /* Habló sobre un combate en Mir... pero dicho combate aún no se sucedió. En teoría debería suceder dentro de un año aproximadamente. */
++ @10600139 /* ¿Ves? Por eso es que no hay que hablar con las invocaciones. Dicen sandeces. */ + c1.9
++ @10600140 /* Pues, las ninfas son criaturas mágicas. Michelson nos ha entregado ese anillo, por lo que no me sorprendería que sea cierto.  */ + c1.10
END

IF ~~ c1.9
SAY @10600141 /* ~Puede que sea un delirio. Pero no lo creo así.~ */
IF ~~ DO ~~ + c1.10
END

IF ~~ c1.10
SAY @10600142 /* ~Es cierto que Bellfame, al igual que Michelson, son criaturas mágicas. Sus leyes escapan a nuestra comprensión.~ */ 
= @10600143 /* ~Por lo que no me sorprendería que, realmente, dentro de un año suceda el evento bélico en el Bosque de Mir.~ */
= @10600144 /* ~Vaya... he pensado en esto un buen tiempo, pero decirlo en voz alta me ha hecho reflexionar un poco más sobre Bellfame.~ */
= @10600145 /* ~Gracias por escuchar, <CHARNAME>. Hablar contigo siempre aclara mi mente.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_GOOD_BELLFAME","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

// ToB T1 -> EVIL

IF ~Global("P_DuskTalkToB","GLOBAL",2)
Global ("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ d1
SAY @10600146 /* ~<CHARNAME>, ¿tienes unos minutos? He estado pensando y creo que eres el único que puede... aconsejarme sobre... mis cavilaciones.~ ~<CHARNAME>, ¿tienes unos minutos? He estado pensando y creo que eres la única que puede... aconsejarme sobre... mis cavilaciones.~ */
+ ~PartyHasItem ("p_swevi4")~ + @10600147 /* ¿Te refieres a las últimas palabras de tu esposa? */ + d1.1
++ @10600148 /* No tenemos tiempo para esto, Dusk. Quizás más adelante, ¿te parece? */ + d.0
END

IF ~~ d.0
SAY @10600149 /* No creo estar pidiendo demasiado, pero si esa es tu respuesta... Que así sea. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

IF ~~ d1.1
SAY @10600150 /* ~No sólo a sus palabras... ella... pareció despreciarme. Como si me... odiara.~ */
= @10600151 /* Soy más poderoso que lo que jamás soñé, <CHARNAME>. Incluso, el poder del Pandemonium me da la posibilidad de realizar hazañas que pocos mortales son capaces de lograr. */
= @10600152 /* Podría haberla resucitado... podría haberla extraído de ese estúpido plano de árboles. */
= @10600153 /* Pero... me rechazó... incluso se mostró dispuesta a luchar contra mí... ¿Por qué? */
++ @10600154 /* Bueno... has cambiado mucho desde que te conocí, Dusk. Creo que tal acontecimiento se debe al Orbe misterioso que te dió ese Encantador, ¿lo recuerdas? */ + d1.2
++ @10600155 /* ~Los abraza-árboles son así, Dusk. Unos pusilánimes. No comprendo por qué ello te preocupa.~ */ + d1.3
++ @10600156 /* ~Ehrm... creo que no es algo de mi incumbencia, Dusk. Será mejor que me dejes afuera de esto o que lo hablemos en otro momento...~ */ + d.0
END

IF ~~ d1.3
SAY @10600157 /* ~Si bien estoy de acuerdo con esa afirmación... no creo que sea una razón válida. No... Debe ser...~ */ 
IF ~~ DO ~~ + d1.2
END

IF ~~ d1.2
SAY @10600158 /* ~El orbe escarlata de Sornhil. No, Sornhil no... Anthagar, el Nigromante.~ */
= @10600159 /* Él fue el titiritero de todo, <CHARNAME>. Pese a que le hemos matado... aún siento su influjo en mi destino. */
= @10600160 /* ¿Por qué? ¿Por qué me persigue esta sensación de desagrado? Siento que he bailado al son de alguien sólo para su entretenimiento. */
= @10600161 /* Como que no somos los dueños de nuestro destino... somos el resultado de una mala broma. Una broma destinada a repetirse, una y otra vez. */
= @10600162 /* Mathyus, Michelson, Demoledor... ¿Por qué los maté? Eran mis amigos... Lo hice... ¿por poder? */
++ @10600163 /* Vaya, ya me había olvidado yo de esos idiotas. */ + d1.4
++ @10600164 /* Ah, los guardianes de Shilmista. Recuerdo que me sorprendió tu decisión definitiva sobre su destino. */ + d1.5
++ @10600165 /* ¿Vas a ponerte sentimental? Es mi señal para retirarme de esta conversación. */ + d.0
END

IF ~~ d1.4
SAY @10600166 /* Puede que hayan sido unos idiotas... pero lo cierto es que les traicioné. */ 
IF ~~ DO ~~ + d1.5
END

IF ~~ d1.5
SAY @10600167 /* Necesitaba de su energía vital para quitar las ataduras de Danctian y lograr que su poder pudiese filtrarse a este plano. */
= @10600168 /* Ahora que el tiempo ha pasado y comprendo mejor mi poder, yace la posibilidad de... traer de nuevo a los shilmistas. */
++ @10600169 /* ¿Piensas revivirlos? Yo ya me acostumbré a su ausencia, Dusk. Además, si escucho la risa de Michelson una vez más, te juro que te declaro la guerra. */ + d1.6
++ @10600170 /* ¿Crees que algo así habría de redimirte? Estás siendo un poco ingenuo,  me parece. */ + d1.7
++ @10600171 /* Ya me he cansado de esta conversación, Dusk. Mucha palabrería. No quiero escuchar más. */ + d.0
END

IF ~~ d1.6
SAY @10600172 /* La idea se ha impregnado en mi mente, es verdad. Pero no te preocupes, <CHARNAME>. De hacerlo, lo haré cuando mis viajes contigo hayan finalizado. */ 
IF ~~ DO ~~ + d1.8
END

IF ~~ d1.7
SAY @10600173 /* Esperaba... obtener algo de redención... creo que podría ser capaz de hacer algo así por mi esposa. */
IF ~~ DO ~~ + d1.8
END

IF ~~ d1.8
SAY @10600174 /* ~Sin embargo... no sé si sea suficiente. Esta... sensación de oscuridad dentro de mí... cada vez se arraiga más y más.~ */ 
= @10600175 /* ~Como si poco a poco... me olvidara de lo que es ser un humano. Puede que algo así te suceda a ti, <CHARNAME>. Te he estado observando todo este tiempo.~ */
= @10600176 /* Lo que eras... desde que partimos de Athkatla... has cambiado, demasiado. */
= @10600177 /* ~*carraspeo* No pretendo darte un sermón ni nada parecido. Necesitaba hacer realidad estas abstracciones. Será mejor que continuemos.~ */
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
SAY @10600178 /* No quería... sacar este tema a la luz, <CHARNAME>. Pero... el combate contra los soldados de Tethyr aún me tiene conmocionado. */
++ @10600179 /* ¿De verdad? No fue un combate que nos haya puesto en aprietos. Me parece extraño en ti. */ + aa1.1
++ @10600180 /* ¿Por qué lo dices, Dusk? Tiene que ver con tu pasado como mensajero de la paz, ¿verdad? */ + aa1.2
++ @10600181 /* No es momento de lloriqueos, Dusk. Tenemos asuntos más importantes que atender. */ + aa1.0
END

IF ~~ aa1.0
SAY @10600182 /* *suspiro* De acuerdo, <CHARNAME>. Continuemos. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END

IF ~~ aa1.1
SAY @10600183 /* ~No está relacionado al combate en sí. Muchos de esos soldados... intentaban hacer lo mismo que yo hace algunos años. Mantener la paz.~ */
= @10600184 /* No sé qué se dirá de nosotros en detalle... El comandante tethyriano no nos quiso escuchar... supongo que nunca lo haría. */
= @10600185 /* Es injusto que esto haya tenido que pasar. */
++ @10600186 /* Muchas cosas son injustas, Dusk. Así es el mundo. Mejor vete acostumbrando a esa idea. */ + aa1.3
++ @10600187 /* ~Puede que sea injusto. Pero creo que es nuestro deber enmendar las cosas. Hicimos lo posible por evitar el combate, Dusk.~ */ + aa1.4
END

IF ~~ aa1.3
SAY @10600188 /* ~Un razonamiento bastante frío, compañero. Puede que el tiempo nos haya hecho más... duros.~ ~Un razonamiento bastante frío, compañera. Puede que el tiempo nos haya hecho más... duros.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END

IF ~~ aa1.4
SAY @10600189 /* ~Tienes razón. Llevas una pesada herencia, amigo mío. No muchos llegan a comprender lo que intentas hacer.~ ~Tienes razón. Llevas una pesada herencia, amiga mía. No muchos llegan a comprender lo que intentas hacer.~ */ 
= @10600190 /* ~Aquellos que no lo entienden, te temen. El combate anterior es prueba de ello, ahora me doy cuenta.~ */
= @10600191 /* No muchos son capaces de ver el valor que tienes, <CHARNAME>. Pero yo lo veo. Confío en ti. */
= @10600192 /* ~*carraspeo* Bueno, creo que hemos hablado suficiente. Será mejor que continuemos.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END

IF ~~ aa1.2
SAY @10600193 /* ~Así es. Tethyr me recibió con los brazos abiertos. Zaranda es el emblema del honor y la sabiduría...~ */
= @10600194 /* Lo de Saradush... fue terrible. Intentamos evitarlo, ¿no es así? */
= @10600184 /* No sé qué se dirá de nosotros en detalle... El comandante tethyriano no nos quiso escuchar... supongo que nunca lo haría. */
= @10600185 /* Es injusto que esto haya tenido que pasar. */
++ @10600186 /* Muchas cosas son injustas, Dusk. Así es el mundo. Mejor vete acostumbrando a esa idea. */ + aa1.3
++ @10600187 /* ~Puede que sea injusto. Pero creo que es nuestro deber enmendar las cosas. Hicimos lo posible por evitar el combate, Dusk.~ */ + aa1.4
END



// Conversación luego del combate contra el ejército de Tethyr - EVIL
IF ~Global("P_DuskTalkToB2","GLOBAL",2)
Global ("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ bb1
SAY @10600195 /* Estúpidos tethyrianos... idiotas. ¿En qué estaban pensando? Merecían... merecían morir. */
++ @10600196 /* ¿Qué estás murmurando, Dusk? ¿Estás hablando del combate en el Oasis? */ + bb1.1
++ @10600197 /* Ah, has enloquecido, ¿huh? Era algo que me temía. Suele suceder con aquellos que hablan solos. */ + bb1.2
++ @10600198 /* No quiero oír quejas sobre nada, Dusk. Si estás a punto de lloriquear por algo, será mejor que te lo guardes para ti mismo. */ + bb1.0
END

IF ~~ bb1.0
SAY @10600199 /* ~Insolente. No estoy llorando. No me estoy quejando. Y no necesito de tu oído para esto. Será mejor que continuemos con nuestros asuntos.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END


IF ~~ bb1.1
SAY @10600200 /* ~Si a eso le puedes llamar combate, <CHARNAME>. Fue, más bien, una masacre. Esos estúpidos... nunca tuvieron una oportunidad.~ */
= @10600201 /* Nunca tuvieron una oportunidad... */
++ @10600202 /* ~Me sorprende que te compadezcas de ellos, Dusk. Tethyr se lo buscó. Aquellos que se interpongan en nuestros caminos, pagarán.~ */ + bb1.3
++ @10600203 /* ¿Te sientes mal por haberlos matado, Dusk? Si te hace sentir mejor, creo que el combate era inevitable. */ + bb1.4
END

IF ~~ bb1.3
SAY @10600204 /* ~Larga es la lista de cadáveres que pueden confirmar eso, Hijo de Bhaal. Larga es la lista...~ */
= @10600205 /* Saradush. Tethyr... cementerios van creciendo a medida que vamos avanzando. */
= @10600206 /* A veces me pregunto... si algún día podré presenciar el fin de esto. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END

IF ~~ bb1.4
SAY @10600207 /* ~Me siento molesto. ¿Limpiar la sangre de un joven soldado del filo de mi espada? No merecía el esfuerzo.~ */ 
= @10600208 /* ~Entiendo que no tuvimos otra opción. La estúpida de Zaranda no escucha razonamientos.~ */
= @10600209 /* ¿Enviar guerreros, veteranos y escuderos, al matadero por meros rumores? */
= @10600210 /* ~Te lo digo, <CHARNAME>... Los reyes ya no pelean sus combates. Dejan que los jóvenes lo hagan por ellos.~ */
= @10600211 /* El poder es una espada atractiva. Pero si quieres decapitar a los demás, al menos el que lo blanda debería poder valerse por sí mismo. */
= @10600212 /* ¡Bah! Será mejor que continuemos. Los muertos, muertos están. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB2","GLOBAL",3)
~ EXIT
END

IF ~~ bb1.2
SAY @10600213 /* ~Muy gracioso, <CHARNAME>.~ ~Muy graciosa, <CHARNAME>.~ */
= @10600214 /* Y no, no he enloquecido. He estado pensando en nuestro combate en el Oasis. */
= @10600215 /* Si es que a eso se le puede llamar combate. Fue, más bien, una masacre. Esos estúpidos... nunca tuvieron una oportunidad. */
= @10600201 /* Nunca tuvieron una oportunidad... */
++ @10600202 /* ~Me sorprende que te compadezcas de ellos, Dusk. Tethyr se lo buscó. Aquellos que se interpongan en nuestros caminos, pagarán.~ */ + bb1.3
++ @10600203 /*¿Te sientes mal por haberlos matado, Dusk? Si te hace sentir mejor, creo que el combate era inevitable. */ + bb1.4
END

END // End to APPEND
