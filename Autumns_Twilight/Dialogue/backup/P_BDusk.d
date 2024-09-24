// Dusk

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskFall1","GLOBAL",0)~ THEN P_BDusk P_DuskFall1
@0 /* Fall, entiendo que seas h�bil con la ballesta... pero si alg�n oponente se te abalanza con un arma cuerpo a cuerpo, deber�as echarte atr�s. Estar�as en desventaja f�sica y tu vida correr�a peligro. */
DO ~SetGlobal("P_DuskFall1","GLOBAL",1)~
== P_BFall @1 /* �Por qu� insistes en darme �rdenes, hombre? S� muy bien que si eso pasara, el primero en acudir en mi defensa ser�as t�. */
== P_BDusk @2 /* No siempre estar� all� para ti, Fall. Si te doy estos consejos es por tu bienestar. */
== P_BFall @3 /* �Por qu� dices esas cosas, Dusk? No hay necesidad de ser tan pesimista. La vida no es tan cruel como siempre dices. */
== P_BDusk @4 /* �Como siempre digo? �A qu� te refieres? */
== P_BFall @5 /* *con voz grave* "Recuerda: nadie te golpear� tan fuerte como la vida misma." */
== P_BFall @6 /* *risita* Suena muy t�trico. �Por qu� me miras as�? �Acaso no te gust� mi intepretaci�n de "Dusk, el serio"? */
== P_BDusk @7 /* Mejor continuemos. */
== P_BFall @8 /* De acuerdo, de acuerdo... y por cierto: har� caso a tus consejos. Gracias por estar siempre al frente de batalla, Dusk. */
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
@11 /* A�n no me lo decido Dusk: No s� si te ves m�s joven o m�s viejo con ese aspecto. */
DO ~SetGlobal("P_DuskFall2","GLOBAL",1)~
== P_BDusk @12 /* Pues... yo no me siento ni m�s joven, ni m�s viejo. �Por qu� lo dices, Fall? */
== P_BFall @13 /* Bueno, ciertamente, despu�s de tu... "absoci�n" del orbe purificado, has cambiado. Aunque no tanto ahora que lo pienso. */
== P_BFall @14 /* Mis lobos te adoran. No es que antes no lo hicieran, pero ahora es como que perciben en ti una conexi�n m�s af�n a la naturaleza. */
== P_BDusk @15 /* Creo que es obra del orbe, Fall. Que Daren y Sinna lo perciban lo confirma a�n m�s. */
== P_BDusk @16 /* Y con respecto a tu observaci�n... creo que me siento m�s viejo. No s� si mi aspecto lo denote o no... pero ciertamente, el orbe ha consumido parte de mi energ�a vital. */
== P_BFall @17 /* Oh... ya veo. */
== P_BDusk @18 /* *sonr�e* �nimos, Fall. A�n disponemos de mucho tiempo. Cuando esto termine, podemos viajar juntos por Shilmista, si as� lo deseas. */
== P_BFall @19 /* �De verdad? No hay nada que me gustar�a m�s, Dusk. Es una promesa. */
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
== P_BFall @22 /* *traga saliva* Ehm... No, yo no te he estado observando... Te habr�s confundido. */
== P_BDusk @23 /* No soy est�pido, ni�a. �Acaso me temes? */
== P_BFall @24 /* �No soy una ni�a, Dusk! Y no, �no te temo! Es s�lo que... has cambiado... */
== P_BDusk @25 /* As� es. Ahora albergo un poder mayor que el de antes. Tal es la facultad del Pandemonium. */
== P_BFall @26 /* Como si eso importara. �Poder? El Dusk que conoc� nunca tuvo el poder como prioridad. El Dusk que conoc� era amable. Un poco serio, quiz�s, pero su coraz�n albergaba amabilidad. */
== P_BFall @27 /* En cambio... ahora... es como si... */
== P_BDusk @28 /* �No existiera? Es porque el Dusk que t� mencionas ya no existe. S�lo estoy yo. */
== P_BFall @29 /* No creo que sea as�, Dusk... pese a que tu personalidad y aspecto hayan cambiado... Siento que a�n eres t�... */
== P_BFall @30 /* Dentro de esa oscuridad que emanas... siento que el Dusk que conoc� a�n existe. */
== P_BDusk @31 /* Quiz�s, ni�a, quiz�s... */
== P_BDusk @32 /* Ser� mejor que continuemos. */
EXIT

/*
// Michelson Joke (Chiste del Palad�n)
I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_WIL_JOKES3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @0 /* �El palad�n se llama 'Nadie'? No le veo la gra-- Ah, ya entiendo. *r�e* Muy bueno, <CHARNAME>. */
END

// CHARNAME soluciona la Quest 1 de Michelson d�ndole oro
I_C_T P_DUSKJ 18 P_Dusk_NPC_Michelson_GOLD2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @1 /* Bueno, lo has resuelto bastante r�pido, <CHARNAME>. Aunque puede que el oro hubiese sido m�s �til en otro lado. */
END


// Alabarza Fight (EVIL)
I_C_T P_DUSKJ 333 P_Fall_EVIL_ALABAR1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2 /* ~Nos superan en n�mero, s�; pero recuerda, Dusk: Tambi�n contamos con la ayuda de Daren y Sinna.~ */
END

// Alabarza Fight (GOOD)
I_C_T P_DUSKJ 332 P_Fall_GOOD_ALABAR1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2 /* ~Nos superan en n�mero, s�; pero recuerda, Dusk: Tambi�n contamos con la ayuda de Daren y Sinna.~ */
END



// Final Fight - AR1506 ARRIVAL EVIL
I_C_T P_DUSKJ 322 P_Fall_EVIL_AR1506_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4 /* No hay rastros de naturaleza aqu�, Dusk. Los magos eligieron este lugar por una raz�n. Te recomiendo que usemos a Daren y Sinna como exploradores. */
END

// Final Fight - AR1506 ARRIVAL GOOD
I_C_T P_DUSKJ 320 P_Fall_GOOD_AR1506_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @4 /* No hay rastros de naturaleza aqu�, Dusk. Los magos eligieron este lugar por una raz�n. Te recomiendo que usemos a Daren y Sinna como exploradores. */
END



// Dusk decide atacar a la tribu de Falon
I_C_T P_DUSKJ 77 P_Fall_ATTACK_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @6 /* Un ataque a traici�n no habr�a sido mi opci�n, Dusk. Pero veo que ya no nos queda otra alternativa. �A la carga! */
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
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @8 /* No parecen agresivos, �verdad, Dusk? */
END

// EVIL Dusk asesina a M,M,D. Antes de aparici�n de Danctian
I_C_T P_DUSKJ 295 P_Fall_EVIL_Dusk_Kills1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @15 /* ��Dusk?! No... no entiendo... ��Qu� has hecho?! */
END




// Falon menciona que eran parte del Imperio de Sothillis
I_C_T P_FALON 4 P_Fall_Mission2_Falon_Sothil
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9 /* �Imperio de qu�? *se rasca la cabeza* Siento que me he perdido de bastante contexto aqu�. */
END


// Dusk decide ayudar a los humanoides de Falon
I_C_T P_FALON 19 P_Fall_Falon_GOOD1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3 /* �Dusk! Me alegra inmensamente que decidieras ayudar a Falon y su tribu. Espero que podamos conseguirles el hogar que tanto anhelan. */
END

// Valatar aparece por 1era vez
I_C_T P_VALATA 0 P_Fall_Valatar_tlk1EVIL
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @5 /* Percibo... una energ�a demon�aca en �l, Dusk. Como si tuviera una conexi�n directa con el plano Astral. */
END

I_C_T P_VALATA 4 P_Fall_Valatar_tlk1GOOD
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @5 /* Percibo... una energ�a demon�aca en �l, Dusk. Como si tuviera una conexi�n directa con el plano Astral. */
END


////////////////////////////


// Danctian crea �tem personalizado a Fall
I_C_T P_DANCTI 12 P_Fall_EVIL2
== p_dancti IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10 /* ~Ah, la Dama de las Bestias. Semielfa, para ti tengo esto: un artefacto forjado por los mismos selu'taar. Espero que te sea de utilidad.~ */  DO ~ CreateItem ("p_POTN99",1,1,0)  GiveItem("p_POTN99", "P_Fall") ~ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @11 /* Gr-gracias, Danctian. A�n no s� c�mo sentirme al respecto... sobre ti. Pero si Dusk y <CHARNAME> depositan tu confianza en ti, yo tambi�n lo har�. */
END

// Michelson crea �tem personalizado para Fall
I_C_T P_MATUT 223 P_Fall_GOOD_CON_P_RESTOS22
== p_michel IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @12 /* ~(Michelson observa a Fall con atenci�n. Luego de unos segundos, sus ojos se engrandecen y, de la nada, un objeto dorado aparece en sus peque�as manos. Con velocidad se la entrega a Fall, realizando una extra�a reverencia)~ */  DO ~ CreateItem ("p_POTN99",1,1,0)  GiveItem("p_POTN99", "Minsc") ~ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @13 /* �Una... diadema? �Qu� liviana es! Siento... como si ya la hubiese visto en alg�n lado. Gracias, peque�o Michelson. */
END

// CHARNAME dice que la Cripta Olvidada NO es su problema
I_C_T P_MATUT 258 P_Fall_FINALM4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @14 /* �<CHARNAME>! �C�mo vas a decir eso? El asunto de esos magos parece ser de suma importancia... creo que es algo que no ata�e a todos. */
END



//////

// Kalanda convoca a las criaturas transmutadoras en BrynnLey
I_C_T P_KALAND 24 P_Fall_Kaland10
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @16 /* �Ja! Estas criaturas no son ninguna amenaza para nosotros, transmutador. */
END

I_C_T P_KALAND 9 P_Fall_Kaland3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @16 /* �Ja! Estas criaturas no son ninguna amenaza para nosotros, transmutador. */
END

///////




// Combate Final vs Cripta Olvidada
I_C_T P_DANCT2 18 P_Fall_P_DANCT2_7
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @17 /* �Ha llegado la hora, nigromante! Deja que te presente a mis lobos. �Ellos me ayudar�n a mantener el orden natural que ustedes pretenden destruir! */
END

// Anthagar habla sobre Ojos de Serpiente. Fall no tiene ni idea de lo que est� pasando.
I_C_T P_ANTHAG 7 P_Fall_Anthagar1a
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @18 /* �Qu� significa esto, Dusk? No me digas que te siguen desde antes que llegases a Athkatla. */
END

// Sornhil conoce a Mathyus y Michelson
I_C_T P_SORNHI 23 P_Fall_Anthagar1a
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @19 /* �Oh, no! Est� al tanto de tus amigos shilmistas, Dusk. */
END

I_C_T P_SORNHI 50 P_Fall_Anthagar1a
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @19 /* �Oh, no! Est� al tanto de tus amigos shilmistas, Dusk. */
END



// Demoledor aparece por primera vez
I_C_T P_DEMOLE 2 P_Fall_Demole1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @20 /* �Pero qu� perrito m�s lindo! */
END

// Demoledor aparece por 2da vez
I_C_T P_DEMOLE 25 P_Fall_Demole2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @21 /* �Hola, Demole! �C�mo est�s? Dime, �te alimenta bien ese elfo escu�lido de cabello verde? */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @25 /* (Demole mueve la cola a las palabras de Fall, demostrando alegr�a al verla tambi�n) */
END

I_C_T P_DEMOLE 26 P_Fall_Demole3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @21 /* �Hola, Demole! �C�mo est�s? Dime, �te alimenta bien ese elfo escu�lido de cabello verde? */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @25 /* (Demole mueve la cola a las palabras de Fall, demostrando alegr�a al verla tambi�n) */
END

// Demoledor aparece por 3era vez
I_C_T P_DEMOLE 19 P_Fall_Demole4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @23 /* �Demoledor! �C�mo has estado? Se te ve bien alimentado. Hasta creo que has engordado. */
== p_demole IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @22 /* (Demole gira sobre su propio eje, demostrando felicidad ante la presencia de Fall) */
END

// CHARNAME dice que no lo molesten cuando le informan de la Final Quest
I_C_T P_DEMOLE 23 P_Fall_GOOD_DEMOLEMF2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @24 /* �Qu� te pasa, <CHARNAME>? No hieras los sentimientos del pobre perro. */
END


*/