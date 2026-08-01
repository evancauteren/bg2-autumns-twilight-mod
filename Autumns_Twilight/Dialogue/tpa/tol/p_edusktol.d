EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DuskTreeOfLife","GLOBAL",0) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ EXTERN PLAYER1 duskevil_p2
END

CHAIN PLAYER1 duskevil_p2
@10103392 /* Dusk, el guerrero de Cormyr. Su corazón se ha endurecido, pero ello le ha hecho más poderoso. Su mirada es fría y temeraria; pese a ello, sus ojos emanan respeto a tu presencia. */
DO ~SetGlobal("P_DuskTreeOfLife","GLOBAL",1)~
END
++ @10100018 /* Dusk, esta no es tu pelea. No es necesario que me sigas. */ EXTERN P_DuskJ duskevil_p2.1
++ @10100019 /* Has hecho mucho por mí, Dusk. Puedes irte a casa si así lo deseas. */ EXTERN P_DuskJ duskevil_p2.1
++ @10100020 /* ¿Estás listo para seguirme? Te necesito a mi lado para vencer. */ EXTERN P_DuskJ duskevil_p2.1

CHAIN P_DuskJ duskevil_p2.1
@10103393 /* Hemos recorrido un largo camino para llegar aquí, <CHARNAME>: La venganza está a nuestro alcance. Acabemos con Jon Irenicus. Que el bastardo sea testigo de nuestro gran poder. */
END
COPY_TRANS PLAYER1 33 

////////////////////////////////////////////////////////////
   //////////          DUSK EVIL         //////////
////////////////////////////////////////////////////////////


// --- SULDANESSALAR: ENFRENTAMIENTO FINAL CONTRA JON IRENICUS EN EL ÁRBOL DE LA VIDA ---
I_C_T2 SUJON 14 P_SUJON_14_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103443 /* Este es tan buen lugar como cualquiera para hacerte caer con nuestro poder, mago. El resultado será uno sólo: tu muerte. */
END


I_C_T BODHI 90 P_DuskBODHI901
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103505 /* Hmpf. ¿De verdad vas a creerle a esta criatura, <CHARNAME>? Intenta justificar el daño que se te ha hecho de una manera casi patética. */
END

I_C_T BODHI 72 P_DuskBODHI4722
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103486 /* Un oponente digno, <CHARNAME>. Aunque siento que esta... vampiresa sólo nos está utilizando como si fuéramos el martillo de un juez. (De ser por mí, ya habría clavado una estaca en su corazón) */
END


// Bodhi EVIL Path
I_C_T BODHI 45 P_Dusk_BODHI_MISSION2E
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @10103483 /* Me da igual lo que elijas, <CHARNAME>. Me basta con acabar estos asuntos molestos con esta... esta inmunda criatura. */
END

I_C_T HELLJON 7 P_HELLJON7_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100515 /* ¡Jon Irenicus, hoy será el último día de tu miserable existencia! Tu intento de acumular poder ha fracasado. ¡Caerás y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominación... */
END

I_C_T HELLJON 8 P_HELLJON8_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100515 /* ¡Jon Irenicus, hoy será el último día de tu miserable existencia! Tu intento de acumular poder ha fracasado. ¡Caerás y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominación... */
END

I_C_T HELLJON 9 P_HELLJON9_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100515 /* ¡Jon Irenicus, hoy será el último día de tu miserable existencia! Tu intento de acumular poder ha fracasado. ¡Caerás y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominación... */
END

I_C_T HELLJON 10 P_HELLJON10_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100515 /* ¡Jon Irenicus, hoy será el último día de tu miserable existencia! Tu intento de acumular poder ha fracasado. ¡Caerás y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominación... */
END

I_C_T LYROS 5 P_LYROS5_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100517 /* (susurro) Esto es cómico... hemos sido nosotros los que aniquilamos a las 'pertenencias' de este infeliz. Si bien fue un placer hacerlo, creo que hemos sido engañados, <CHARNAME>. */
END

// Bodhi
I_C_T BODHI 6 P_Bodhi6_EvilDuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103386 /* ¿Cómo sabe esta fulana de cuánto dinero disponemos? Rayos, <CHARNAME>. Si bien, supuestamente, ofrece lo mismo que los Ladrones por menos dinero... Esta criatura se me hace muy... repugnante. */
END

I_C_T BODHI 10 P_DuskBODHI103
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100518 /* ¿Una alianza con esta... inmundicia? Aunque nos ofrezca un buen trato, no creo que valga la pena, <CHARNAME>. Si por mí fuera, la decapitaría aquí mismo. No merece otro destino... */
END

I_C_T PPBODHI4 14 P_PPBODHI4_14_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100519 /* Tenemos una oportunidad aquí, <CHARNAME>. Irenicus está cada vez más cerca. Aunque no me fío de este... demonio. Hagamos lo que quiere y luego... 'lidiemos' con ella. */
END

I_C_T GAAL 1 P_GAAL1_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100520 /* No hay nada más lamentable que fanáticos cegados por sus creencias... Aunque, en este caso es algo muy literal para mi gusto. */
END

I_C_T GAAL 22 P_GAAL22_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100521 /* Reza al dios que quieras, perro... Nadie te salvará de la muerte. ¡Déjamelo a mí, <CHARNAME>! Disfrutaré de su agonía... */
END

I_C_T RIFTM01 28 P_RIFTM01_28_DuskEvilLead
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103387 /* ¡Escúchame bien, alfeñique! <CHARNAME> ha decidido regresar el artefacto porque ha creído que es lo correcto... */
END

I_C_T MAEVAR 29 P_MAEVAR29_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103381 /* No es que me queje en tener que asesinar a un ladrón, <CHARNAME>. Pero preferiría tener que hacerlo por motivos propios y no por necesidad de esta lacra... */
END

I_C_T RENAL 41 P_RENAL41_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100523 /* Espero que nos encarguen el asesinato de Mae'var, <CHARNAME>. Esa lacra no merece estar con vida un segundo más... */
END

I_C_T HENDAK 2 P_Hendak2_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100524 /* Mucho esfuerzo si me lo preguntas a mí. Sin embargo, nunca viene mal tener que despachar a uno que otro esclavista. Lo haré con gusto si es lo que quieres, <CHARNAME>. */
END

I_C_T HENDAK 41 P_Hendak41_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100525 /* La esclavitud es un negocio muy redituable. Pero es un negocio de cobardes. Y no hay nada que me dé más placer que acabar con cobardes que se creen fuertes. Vamos, <CHARNAME>. Busquemos esa guarida y armemos algo de alboroto. */
END

I_C_T HENDAK 43 P_Hendak43_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100526 /* No creo que la 'recompensa' haya valido la pena. Pero bueno, destrozar a esos pusilánimes ha sido todo un placer. */
END

I_C_T MURDGIRL 8 P_DuskMURDGIRL82
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100527 /* ¿Qué otra cosa puedes esperar de una cortesana? Para este tipo de personas no existe la palabra 'responsabilidad'. */
END

// --- REJIEK SE REVELA (TANNER 8) ---
I_C_T TANNER 8 P_Tanner8_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100528 /* Dusk Malo: Debo admitir que me pica la curiosidad... */
END

I_C_T UDSILVER 9 P_UDSILVER9_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100531 /* Nunca creí ver a un dragón plateado... */
END

I_C_T C6ELHAN2 8 P_C6ELHAN28_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100037 /* Estúpidos elfos... hemos vivido un calvario en la Infraoscuridad... sólo para toparnos con esta desconfianza inmerecida... */
END

I_C_T TRSKIN02 16 P_TRSKIN02_16_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103383 /* ¡Ja! ¿Quién lo diría? Hemos dado con el bastardo despellejador... */
END

//EVIL
I_C_T PPIRENI2 35 P_Dusk_WIZARD_PRISON1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103391 /* ¡Finalmente! El asqueroso hechicero está a nuestro alcance, <CHARNAME>. ¡Demostrémosle a este necio lo que es el verdadero poder! */
END

I_C_T C6BODHI 0 P_C6BODHI15_DuskEvilLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103441 /* Hasta en las últimas consecuencias la criatura demuestra confianza... Acabemos con ella de una buena vez. */
END

