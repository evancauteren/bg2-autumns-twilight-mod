// Sirene

// Dusk Neutral
CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskSirene","GLOBAL",0)~ THEN P_BDusk P_DuskSirene
@10000050 /* Eres excepcional en combate, Sirene. Ilmater ciertamente te ha bendecido con una fuerza considerable, la cual veo usas sin pensarlo para defender tus ideales. */
DO ~SetGlobal("P_DuskSirene","GLOBAL",1)~
== BC0SIRE2 @10000051 /* D-dusk, gracias. No esperaba que dijeras algo así. */
== P_BDusk @10000052 /* ¿Por qué? Puede que no parezca un hombre muy espiritual, pero sé reconocer la fuerza divina cuando la veo. */
== BC0SIRE2 @10000053 /* Agradezco que no me hayas juzgado por lo que soy. */
== P_BDusk @10000054 /* Bueno... admito que no es algo que vea todos los días, me refiero a una criatura ascendencia demoníaca pelear por el Dios que Llora. Sin embargo, <CHARNAME> ha depositado tu confianza en ti. No veo por qué no deba hacer lo mismo. */
== BC0SIRE2 @10000055 /* El sentimiento es mutuo, Dusk. Pelear junto a ti en el frente de batalla es una experiencia satisfactoria. Me alegra saber que luchamos por lo mismo, aún si no seguimos la misma fe. */
== P_BDusk @10000056 /* La justicia es una fe compartida por varios dogmas. Que nuestras espadas defiendan al débil. */
== BC0SIRE2 @10000057 /* No podría estar más de acuerdo. */
EXIT

// Dusk Good
CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskGSirene","GLOBAL",0)~ THEN P_BDusk P_DuskGSirene
@10000058 /* Hola Sirene. ¿Querías algo? He notado tus miradas de curiosidad. */
DO ~SetGlobal("P_DuskGSirene","GLOBAL",1)~
== BC0SIRE2 @10000059 /* Oh--- Y-yo, no quería ser ruda, Dusk. Es que... no puedo evitar preguntarme, sobre cómo has cambiado tanto. */
== P_BDusk @10000060 /* ¿De verdad? Yo mismo creí que no había cambiado tanto... me refiero a quien soy, en esencia. */
== BC0SIRE2 @10000061 /* No me malinterpretes, es verdad que no has cambiado mucho en esencia, como dices. Pero a su vez debo discrepar, y creo que sabes por qué. */
== P_BDusk @10000062 /* Entiendo. Te refieres a Mielikki. */
== BC0SIRE2 @10000063 /* Así es. Este tiempo has adoptado, abiertamente, a la Dama del Bosque. */
== P_BDusk @10000064 /* No tan abiertamente, Sirene. No creo ser alguien que vaya gritando a los cuatro vientos mi devoción a la hija de Silvanus. Sin embargo, entiendo tu punto. */
== BC0SIRE2 @10000065 /* Creí que no eras un hombre muy espiritual. */
== P_BDusk @10000066 /* El orbe... me ha cambiado, es verdad. Me ha mostrado quien soy realmente y todo esto es gracias a todo lo que he vivido hasta llegar a Athkatla. <CHARNAME>, Falon, tú. Creo que, en cierto sentido, todo estuvo conectado para que llegásemos a este preciso momento y a estas precisas palabras. */
== BC0SIRE2 @10000067 /* Tiene sentido ahora que lo dices, Dusk. */
== BC0SIRE2 @10000068 /* ¿Sabes, Dusk? */
== P_BDusk @10000069 /* ¿Sí? */
== BC0SIRE2 @10000070 /* La fe te sienta bien. */

EXIT

// Dusk Evil
CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskSirene","GLOBAL",1)
Global("P_DuskESirene","GLOBAL",0)~ THEN P_BDusk P_DuskESirene
@10000071 /* Pierdes mucho el tiempo intentando ocultar quien eres, Sirene. He visto lo que eres capaz de hacer. ¿Por qué ocultar tu glorioso poder de los imbéciles que nos rodean? El poder es todo lo que importa y tú lo posees. */
DO ~SetGlobal("P_DuskESirene","GLOBAL",1)~
== BC0SIRE2 @10000072 /* ¿Poder? Dusk, eso nunca me ha interesado. Y hago lo que hago para no ocasionar problemas a <CHARNAME>. */
== P_BDusk @10000073 /* *risas* ¿Es broma? Los problemas siempre persiguen a <CHARNAME>, sin importar lo que haga. Tal es el destino de aquellos que desprenden poder de la yema de sus dedos. Tú, <CHARNAME>, y aquellos que nos acompañan deberían saberlo. */
== BC0SIRE2 @10000074 /* No... no puedo aceptarlo. ¿Qué te ha pasado...? Has cambiado... demasiado. */
== P_BDusk @10000075 /* Para mejor, Sirene. Soy una versión mejorada del hombre que una vez fui. La venganza está de mi lado. */
== BC0SIRE2 @10000076 /* No, Dusk... puede que seas más fuerte, puede que seas capaz de vengarte de aquellos que te han hecho daño... pero no eres mejor de lo que eras cuando te conocí. */
== BC0SIRE2 @10000077 /* El hombre de Cormyr, pese a ser imperfecto, tenía una sed genuina por justicia. */
== P_BDusk @10000078 /* ¿Justicia? No digas estupideces, Sirene. La justicia no me ha llevado a ningún lado. Todos los que amé alguna vez ahora yacen muertos... El amor... te debilita. El poder no puede permitirse debilidad, de lo contrario, la muerte es el único resultado posible. */
== BC0SIRE2 @10000079 /* Sé que no crees eso, Dusk. Sé que en el fondo aún eres el mismo, aquel que buscaba justicia por los que murieron a manos de Irenicus en el Paseo. Puedes volver a ser el mismo. */
== P_BDusk @10000080 /* No. N-no, Sirene... he ido demasiado lejos para retroceder. Ya es demasiado tarde.... es demasiado tarde para mí. */
== BC0SIRE2 @10000081 /* No, Dusk. Nunca es demasiado tarde. Espero que algún día puedas darte cuenta de ello... */

EXIT

// Fall 1
CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallSirene1","GLOBAL",0)~ THEN P_BFall P_FallSirene1
@10000082 /* Oh, Sirene, tu habilidad en el combate cuerpo a cuerpo es sorprendente. */
DO ~SetGlobal("P_FallSirene1","GLOBAL",1)~
== BC0SIRE2 @10000083 /* Os agradezco tus palabras, Fall. Debo agradecer, también, que me cubras con proyectiles mientras estoy en el frente. Tu ayuda es muy bienvenida.  */
== P_BFall @10000084 /* Gracias. *se sonroja* Hago lo que puedo. */
== BC0SIRE2 @10000085 /* ¿Cómo es que tienes tan buena puntería? Algo así requiere años de práctica. */
== P_BFall @10000086 /* Mi padre me enseñó todo lo que sé sobre ballestas y ataques a distancia. Él era un gran explorador de Imnescar. */
== BC0SIRE2 @10000087 /* No muchos padres están dispuestos a enseñar el arte de la guerra a sus hijas. Debes estar muy orgullosa de él. */
== P_BFall @10000088 /* Sí. Le extraño mucho, a decir verdad. Trato de honrarlo con cada disparo. */
== BC0SIRE2 @10000089 /* Y lo vienes haciendo a la perfección, Fall. Él estaría muy orgulloso de ti. */
== P_BFall @10000090 /* Gracias, Sirene. Eso significa mucho para mí. */

EXIT

// Fall 2
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallSirene1","GLOBAL",1)
Global("P_FallSirene2","GLOBAL",0)~ THEN BC0SIRE2 P_FallSirene2
@10000091 /* Tu vestido es muy hermoso, Fall. Pese a parecer una simple túnica, puedo percibir un cierto poder en él. Es mágico, ¿no es así? */
DO ~SetGlobal("P_FallSirene2","GLOBAL",1)~
== P_BFall @10000092 /* Así es, Sirene. Fue bordado por elfos artesanos e imbuido por el poder de mi madre. Ha cumplido su cometido, por ahora. */
== BC0SIRE2 @10000093 /* Me gusta. Te enseña que no debes juzgar algo sólo por su apariencia. Algo puede ser de apariencia sumamente delicada y, a su vez, dura como la roca. */
== P_BFall @10000094 /* No lo había pensado de esa forma. Me agrada. */
EXIT

// Fall 3
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallSirene2","GLOBAL",1)
Global("P_FallSirene3","GLOBAL",0)~ THEN BC0SIRE2 P_FallSirene3
@10000095 /* Admiro el amor que tienes a tus invocaciones, Fall. Muchos los tratan como carne de cañón y olvidan que realmente son seres sintientes. */
DO ~SetGlobal("P_FallSirene3","GLOBAL",1)~
== P_BFall @10000096 /* Trato de hacer lo que mis padres me enseñaron, Sirene. Estos años he aprendido mucho sobre el Plano Astral como para ignorar la integridad de sus habitantes. */
== P_BFall @10000097 /* Además, algunas de mis invocaciones nacieron en el Plano Material. Mis lobos, por ejemplo. */
== P_BFall @10000098 /* Daren y Sinna vivieron conmigo en Imnescar antes del ataque de las arañas. Les he visto crecer y aún siguen siendo una parte importante de mi vida. */
== BC0SIRE2 @10000099 /* Sí. Tus lobos son valientes guerreros, Fall. Es un honor pelear a su lado en el frente de batalla. */
== P_BFall @10000100 /* Sé que no pueden morir permanentemente mientras sean invocaciones del Plano Astral... pero siempre agradezco que estés allí para pelear junto a ellos, cuidando incluso de su integridad. */
== BC0SIRE2 @10000101 /* Es un placer, Fall. Todos merecen compasión, incluso las criaturas que invocamos de otros planos. */
EXIT

// Cho'Nuja

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonSirene","GLOBAL",0)~ THEN P_BChon P_ChonSirene
@10000102 /* Hembra, ¿por qué te esmeras tanto en ocultar tus cicatrices? Deberían ser motivo de orgullo. */
DO ~SetGlobal("P_ChonSirene","GLOBAL",1)~
== BC0SIRE2 @10000103 /* General... Y-yo... prefiero no hablar de ello. */
== P_BChon @10000104 /* ¿Por qué no? Creí que a ustedes, los peludos, gustaban de hablar de sus sentimientos.  */
== BC0SIRE2 @10000105 /* Es... no creo que lo entiendas. Muchas de mis cicatrices representan momentos dolorosos... fracasos, batallas. */
== P_BChon @10000106 /* Entiendo lo que hablas, hembra. He visto cómo peleas y debo insistir en que deberían ser motivos de orgullo. Las cicatrices te trajeron hasta este momento, ¿no es así? */
== P_BChon @10000107 /* <CHARNAME> te ha elegido como acompañante y veo que es por tu fortaleza. */
== P_BChon @10000108 /* En Dreach-naga, serías una reina respetada y todos admirarían tus cicatrices.  */
== BC0SIRE2 @10000109 /* Oh, gracias por tus palabras, General. */
== P_BChon @10000110 /* Incluso muchos machos estarían dispuestos a comerse entre ellos para tener la oportunidad de ser tu consorte. */
== BC0SIRE2 @10000111 /* *carraspeo* Bueno, creo que no querría que lo hicieran. *sonríe* Igual, gracias por tus palabras. */
EXIT

// Alendir 
CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenSirene","GLOBAL",0)
OR (3)
!AreaCheck("P_FA3B")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR1")~ THEN P_BAlen P_AlenSirene
@10000112 /* ¿Por qué llevas tanto tiempo observándome con compasión, pequeña? Es algo... molesto. */
DO ~SetGlobal("P_AlenSirene","GLOBAL",1)~
== BC0SIRE2 @10000113 /* L-lo lamento, Alendir. Es sólo que... Es bueno ver que estés de nuevo con vida. */
== P_BAlen @10000114 /* Hm. No es algo que esperaba escuchar. No hace mucho tiempo fui enemigo de ustedes. */
== BC0SIRE2 @10000115 /* Sí, pero es precisamente el coraje que has tenido para hacer lo correcto que estás vivo otra vez. Sólo espero que hagas lo correcto. */
== P_BAlen @10000116 /* Interesante. No noto sarcasmo o amenaza en tu tono. Comienzas a caerme bien, muchacha. */
== BC0SIRE2 @10000117 /* Puedes llamarme Sirene, Alendir. */
== BC0SIRE2 @10000118 /* Hmpf. Bien, bien. Intentaré recordarlo. */
EXIT


