// Dusk

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskFall1","GLOBAL",0)~ THEN P_BDusk P_DuskFall1
@0 /* Fall, entiendo que seas hábil con la ballesta... pero si algún oponente se te abalanza con un arma cuerpo a cuerpo, deberías echarte atrás. Estarías en desventaja física y tu vida correría peligro. */
DO ~SetGlobal("P_DuskFall1","GLOBAL",1)~
== P_BFall @1 /* ¿Por qué insistes en darme órdenes, hombre? Sé muy bien que si eso pasara, el primero en acudir en mi defensa serías tú. */
== P_BDusk @2 /* No siempre estaré allí para ti, Fall. Si te doy estos consejos es por tu bienestar. */
== P_BFall @3 /* ¿Por qué dices esas cosas, Dusk? No hay necesidad de ser tan pesimista. La vida no es tan cruel como siempre dices. */
== P_BDusk @4 /* ¿Como siempre digo? ¿A qué te refieres? */
== P_BFall @5 /* *con voz grave* "Recuerda: nadie te golpeará tan fuerte como la vida misma." */
== P_BFall @6 /* *risita* Suena muy tétrico. ¿Por qué me miras así? ¿Acaso no te gustó mi intepretación de "Dusk, el serio"? */
== P_BDusk @7 /* Mejor continuemos. */
== P_BFall @8 /* De acuerdo, de acuerdo... y por cierto: haré caso a tus consejos. Gracias por estar siempre al frente de batalla, Dusk. */
== P_BFall @9 /* Y ten en cuenta que pretendo que tu estancia con nosotros sea larga: mi ballesta y yo nos encargaremos de eso. */
== P_BDusk @10 /* Es bueno saberlo. */
EXIT


CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskFall2","GLOBAL",0)~ THEN P_BFall P_DuskFall2
@11 /* Aún no me lo decido Dusk: No sé si te ves más joven o más viejo con ese aspecto. */
DO ~SetGlobal("P_DuskFall2","GLOBAL",1)~
== P_BDusk @12 /* Pues... yo no me siento ni más joven, ni más viejo. ¿Por qué lo dices, Fall? */
== P_BFall @13 /* Bueno, ciertamente, después de tu... "absoción" del orbe purificado, has cambiado. Aunque no tanto ahora que lo pienso. */
== P_BFall @14 /* Mis lobos te adoran. No es que antes no lo hicieran, pero ahora es como que perciben en ti una conexión más afín a la naturaleza. */
== P_BDusk @15 /* Creo que es obra del orbe, Fall. Que Daren y Sinna lo perciban lo confirma aún más. */
== P_BDusk @16 /* Y con respecto a tu observación... creo que me siento más viejo. No sé si mi aspecto lo denote o no... pero ciertamente, el orbe ha consumido parte de mi energía vital. */
== P_BFall @17 /* Oh... ya veo. */
== P_BDusk @18 /* *sonríe* Ánimos, Fall. Aún disponemos de mucho tiempo. Cuando esto termine, podemos viajar juntos por Shilmista, si así lo deseas. */
== P_BFall @19 /* ¿De verdad? No hay nada que me gustaría más, Dusk. Es una promesa. */
== P_BDusk @20 /* Es una promesa. */
EXIT

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskFall1","GLOBAL",1)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskFall3","GLOBAL",0)~ THEN P_BDusk P_DuskFall3
@21 /* Hace bastante que me observas a la distancia, Fall. Si tienes algo que decir, simplemente dilo. */
DO ~SetGlobal("P_DuskFall3","GLOBAL",1)~
== P_BFall @22 /* *traga saliva* Ehm... No, yo no te he estado observando... Te habrás confundido. */
== P_BDusk @23 /* No soy estúpido, niña. ¿Acaso me temes? */
== P_BFall @24 /* ¡No soy una niña, Dusk! Y no, ¡no te temo! Es sólo que... has cambiado... */
== P_BDusk @25 /* Así es. Ahora albergo un poder mayor que el de antes. Tal es la facultad del Pandemonium. */
== P_BFall @26 /* Como si eso importara. ¿Poder? El Dusk que conocí nunca tuvo el poder como prioridad. El Dusk que conocí era amable. Un poco serio, quizás, pero su corazón albergaba amabilidad. */
== P_BFall @27 /* En cambio... ahora... es como si... */
== P_BDusk @28 /* ¿No existiera? Es porque el Dusk que tú mencionas ya no existe. Sólo estoy yo. */
== P_BFall @29 /* No creo que sea así, Dusk... pese a que tu personalidad y aspecto hayan cambiado... Siento que aún eres tú... */
== P_BFall @30 /* Dentro de esa oscuridad que emanas... siento que el Dusk que conocí aún existe. */
== P_BDusk @31 /* Quizás, niña, quizás... */
== P_BDusk @32 /* Será mejor que continuemos. */
EXIT

/*
// Michelson Joke (Chiste del Paladín)
I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_WIL_JOKES3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @0 /* ¿El paladín se llama 'Nadie'? No le veo la gra-- Ah, ya entiendo. *ríe* Muy bueno, <CHARNAME>. */
END

// CHARNAME soluciona la Quest 1 de Michelson dándole oro
I_C_T P_DUSKJ 18 P_Dusk_NPC_Michelson_GOLD2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @1 /* Bueno, lo has resuelto bastante rápido, <CHARNAME>. Aunque puede que el oro hubiese sido más útil en otro lado. */
END


// Alabarza Fight (EVIL)
I_C_T P_DUSKJ 333 P_Fall_EVIL_ALABAR1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2 /* ~Nos superan en número, sí; pero recuerda, Dusk: También contamos con la ayuda de Daren y Sinna.~ */
END

// Alabarza Fight (GOOD)
I_C_T P_DUSKJ 332 P_Fall_GOOD_ALABAR1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2 /* ~Nos superan en número, sí; pero recuerda, Dusk: También contamos con la ayuda de Daren y Sinna.~ */
END



// Final Fight - AR1506 ARRIVAL EVIL
I_C_T P_DUSKJ 322 P_Fall_EVIL_AR1506_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4 /* No hay rastros de naturaleza aquí, Dusk. Los magos eligieron este lugar por una razón. Te recomiendo que usemos a Daren y Sinna como exploradores. */
END

// Final Fight - AR1506 ARRIVAL GOOD
I_C_T P_DUSKJ 320 P_Fall_GOOD_AR1506_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4 /* No hay rastros de naturaleza aquí, Dusk. Los magos eligieron este lugar por una razón. Te recomiendo que usemos a Daren y Sinna como exploradores. */
END



// Dusk decide atacar a la tribu de Falon
I_C_T P_DUSKJ 77 P_Fall_ATTACK_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @6 /* Un ataque a traición no habría sido mi opción, Dusk. Pero veo que ya no nos queda otra alternativa. ¡A la carga! */
END




// Encuentro con Anthagar (GOOD)
I_C_T P_DUSKJ 313 P_Fall_Anthag1c
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @7 /* Ese humano carece de brillo en sus ojos... parece... un muerto viviente. */
END

// Encuentro con Anthagar (EVIL)
I_C_T P_DUSKJ 312 P_Fall_Anthag1b
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @7 /* Ese humano carece de brillo en sus ojos... parece... un muerto viviente. */
END

// Dusk consejo/decision sobre atacar a la tribu de Falon
I_C_T P_DUSKJ 84 P_Fall_Mission2_Decision
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @8 /* No parecen agresivos, ¿verdad, Dusk? */
END

// EVIL Dusk asesina a M,M,D. Antes de aparición de Danctian
I_C_T P_DUSKJ 295 P_Fall_EVIL_Dusk_Kills1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @15 /* ¡¿Dusk?! No... no entiendo... ¡¿Qué has hecho?! */
END




// Falon menciona que eran parte del Imperio de Sothillis
I_C_T P_FALON 4 P_Fall_Mission2_Falon_Sothil
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9 /* ¿Imperio de qué? *se rasca la cabeza* Siento que me he perdido de bastante contexto aquí. */
END


// Dusk decide ayudar a los humanoides de Falon
I_C_T P_FALON 19 P_Fall_Falon_GOOD1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3 /* ¡Dusk! Me alegra inmensamente que decidieras ayudar a Falon y su tribu. Espero que podamos conseguirles el hogar que tanto anhelan. */
END

// Valatar aparece por 1era vez
I_C_T P_VALATA 0 P_Fall_Valatar_tlk1EVIL
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @5 /* Percibo... una energía demoníaca en él, Dusk. Como si tuviera una conexión directa con el plano Astral. */
END

I_C_T P_VALATA 4 P_Fall_Valatar_tlk1GOOD
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @5 /* Percibo... una energía demoníaca en él, Dusk. Como si tuviera una conexión directa con el plano Astral. */
END


////////////////////////////


// Danctian crea ítem personalizado a Fall
I_C_T P_DANCTI 12 P_Fall_EVIL2
== p_dancti IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10 /* ~Ah, la Dama de las Bestias. Semielfa, para ti tengo esto: un artefacto forjado por los mismos selu'taar. Espero que te sea de utilidad.~ */  DO ~ CreateItem ("p_POTN99",1,1,0)  GiveItem("p_POTN99", "P_Fall") ~ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11 /* Gr-gracias, Danctian. Aún no sé cómo sentirme al respecto... sobre ti. Pero si Dusk y <CHARNAME> depositan tu confianza en ti, yo también lo haré. */
END

// Michelson crea ítem personalizado para Fall
I_C_T P_MATUT 223 P_Fall_GOOD_CON_P_RESTOS22
== p_michel IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @12 /* ~(Michelson observa a Fall con atención. Luego de unos segundos, sus ojos se engrandecen y, de la nada, un objeto dorado aparece en sus pequeñas manos. Con velocidad se la entrega a Fall, realizando una extraña reverencia)~ */  DO ~ CreateItem ("p_POTN99",1,1,0)  GiveItem("p_POTN99", "Minsc") ~ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @13 /* ¿Una... diadema? ¡Qué liviana es! Siento... como si ya la hubiese visto en algún lado. Gracias, pequeño Michelson. */
END

// CHARNAME dice que la Cripta Olvidada NO es su problema
I_C_T P_MATUT 258 P_Fall_FINALM4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @14 /* ¡<CHARNAME>! ¿Cómo vas a decir eso? El asunto de esos magos parece ser de suma importancia... creo que es algo que no atañe a todos. */
END



//////

// Kalanda convoca a las criaturas transmutadoras en BrynnLey
I_C_T P_KALAND 24 P_Fall_Kaland10
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @16 /* ¡Ja! Estas criaturas no son ninguna amenaza para nosotros, transmutador. */
END

I_C_T P_KALAND 9 P_Fall_Kaland3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @16 /* ¡Ja! Estas criaturas no son ninguna amenaza para nosotros, transmutador. */
END

///////




// Combate Final vs Cripta Olvidada
I_C_T P_DANCT2 18 P_Fall_P_DANCT2_7
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @17 /* ¡Ha llegado la hora, nigromante! Deja que te presente a mis lobos. ¡Ellos me ayudarán a mantener el orden natural que ustedes pretenden destruir! */
END

// Anthagar habla sobre Ojos de Serpiente. Fall no tiene ni idea de lo que está pasando.
I_C_T P_ANTHAG 7 P_Fall_Anthagar1a
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @18 /* ¿Qué significa esto, Dusk? No me digas que te siguen desde antes que llegases a Athkatla. */
END

// Sornhil conoce a Mathyus y Michelson
I_C_T P_SORNHI 23 P_Fall_Anthagar1a
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @19 /* ¡Oh, no! Está al tanto de tus amigos shilmistas, Dusk. */
END

I_C_T P_SORNHI 50 P_Fall_Anthagar1a
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @19 /* ¡Oh, no! Está al tanto de tus amigos shilmistas, Dusk. */
END



// Demoledor aparece por primera vez
I_C_T P_DEMOLE 2 P_Fall_Demole1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @20 /* ¡Pero qué perrito más lindo! */
END

// Demoledor aparece por 2da vez
I_C_T P_DEMOLE 25 P_Fall_Demole2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @21 /* ¡Hola, Demole! ¿Cómo estás? Dime, ¿te alimenta bien ese elfo escuálido de cabello verde? */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @25 /* (Demole mueve la cola a las palabras de Fall, demostrando alegría al verla también) */
END

I_C_T P_DEMOLE 26 P_Fall_Demole3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @21 /* ¡Hola, Demole! ¿Cómo estás? Dime, ¿te alimenta bien ese elfo escuálido de cabello verde? */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @25 /* (Demole mueve la cola a las palabras de Fall, demostrando alegría al verla también) */
END

// Demoledor aparece por 3era vez
I_C_T P_DEMOLE 19 P_Fall_Demole4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @23 /* ¡Demoledor! ¿Cómo has estado? Se te ve bien alimentado. Hasta creo que has engordado. */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @22 /* (Demole gira sobre su propio eje, demostrando felicidad ante la presencia de Fall) */
END

// CHARNAME dice que no lo molesten cuando le informan de la Final Quest
I_C_T P_DEMOLE 23 P_Fall_GOOD_DEMOLEMF2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @24 /* ¿Qué te pasa, <CHARNAME>? No hieras los sentimientos del pobre perro. */
END


*/