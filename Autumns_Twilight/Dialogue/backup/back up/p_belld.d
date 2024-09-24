BEGIN ~p_belld~

IF WEIGHT #2
~RandomNum(12,1)~ THEN BEGIN 0 // from:
  SAY @0 /* ~Mis criaturas y yo fuimos arrojados al Plano Etéreo. Allí, no existe material sólido, sólo un infinito mar de neblinas...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~RandomNum(12,2)~ THEN BEGIN 1 // from:
  SAY @1 /* ~En el Plano Etéreo sobrevivimos, vagando por los aires, hasta que un misterioso ser creó una isla, la cual existe entre medio de la infinitud de neblina.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 
~RandomNum(12,3)~ THEN BEGIN 2 // from:
  SAY @2 /* ~Antes de que nos convoques al Plano Material, mortal, mis animales y yo venimos del Plano Etéreo. Cuando activas mi anillo, se abre un portal y podemos venir aquí.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 
~RandomNum(12,4)~ THEN BEGIN 3 // from:
  SAY @3 /* ~Aún si caemos en combate, mis animales y yo aparecemos nuevamente en el Plano Etéreo, esperando, nuevamente, el llamado del Anillo...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~RandomNum(12,5)~ THEN BEGIN 4 // from:
  SAY @4 /* ~La isla material en la que vivimos está llena de plantas, ríos y lagos. Me recuerda a mi querido Bosque de Mir...~ */
  IF ~~ THEN EXIT
END

// Interacción con NPCs
IF~See("P_Dusk")
InParty("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
RandomNum(3,1)
Global("P_Bellfame_Dusk1","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY @5 /* ~Muchas veces extraño al Bosque de Mir...~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Dusk1","GLOBAL",1)~ GOTO 6
END

IF
~~ THEN BEGIN 6 // from:
  SAY @6 /* ~Entonces... Dusk serás. Gracias por escucharme.~ */
  IF ~~ THEN EXIT
END

IF~See("Cernd")
InParty("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
RandomNum(3,2)
Global("P_Bellfame_Cernd1","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY @7 /* ~Las fuerzas de la naturaleza trascienden el plano material... ahora lo sé.~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Cernd1","GLOBAL",1)~ GOTO 8
END

IF 
~~ THEN BEGIN 8 // from:
  SAY @8 /* ~Lo sé, mortal. Quizás, mi destino pueda ser cambiado... pero si el forzarlo conlleva a una afrenta a la naturaleza o no... me niego a hacerlo...~ */
  IF ~~ THEN EXIT
END

IF~See("P_Dusk")
InParty("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
RandomNum(3,3)
Global("P_Bellfame_Dusk1","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY @17 /* ~Percibo una fuerza de Shilmista en ti, Dusk...~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Dusk1","GLOBAL",2)~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @38 /* ~Es siempre un placer hablar contigo, Dusk. Y recuerda. La Dama del Bosque te oye. Ella te asistirá si tu intención es la de proteger a los demás.~ */
  IF ~~ THEN EXIT
END

// FIN INTERACCION NPCs

IF WEIGHT #7 ~RandomNum(12,6)~ THEN BEGIN 9 // from:
  SAY @9 /* ~La criatura que creó la isla es pequeña, viste ropa verde y su cabello es rojo como el fuego. Está siempre feliz y lo expresa mediante bailes y risas incesantes.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 ~RandomNum(12,7)~ THEN BEGIN 10 // from:
  SAY @10 /* ~El anillo sólo puede ser empleado por aquellos que son afines a la naturaleza, tales como druidas o exploradores. Cuando sea llamada, lucharé a su lado. Ten en cuenta que mi habilidad especial es llamar a mis fieles amigos, los animales guardianes del Bosque de Mir.~ */
  IF ~~ THEN EXIT
END

// COMENTARIO sobre convocaciones

IF WEIGHT #9 ~RandomNum(12,8)~ THEN BEGIN 11 // from:
  SAY @11 /* ~Baba es un ratón del bosque. Parece un ratón normal, pero pronto verás que es algo... particular. No suele estar siempre de buen humor, pero si está sano, hay mejores chances de que te obedezca. Por ende, si lo ves herido, cúralo y puede que tengas mejor suerte en convencerlo de que trabaje para ti.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 ~RandomNum(12,9)~ THEN BEGIN 12 // from:
  SAY @12 /* ~Jack es un orgulloso lobo de invierno. Es más poderoso que la mayoría de su clase. Posee una habilidad especial, capaz de congelar a sus enemigos. Es el alfa de la manada, así que siempre estará dispuesto en ir al frente de batalla.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 ~RandomNum(12,10)~ THEN BEGIN 13 // from:
  SAY @13 /* ~Sayang es una de las más jóvenes de la manada. Es dulce, aunque enérgica. Pronto verás la velocidad con la que se mueve. Es muy entusiasta y le gusta jugar.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #12 ~RandomNum(12,11)~ THEN BEGIN 14 // from:
  SAY @14 /* ~Thiago es un poderoso oso pardo. Admito que está más gordo de lo que debería. Le gusta mucho comer miel. En la isla en la que nos encontramos, hay de sobra, por lo que puede que... no sea muy veloz que digamos. Pero te aseguro que a la hora de la verdad, es duro como una roca.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 ~RandomNum(12,12)~ THEN BEGIN 15 // from:
  SAY @15 /* ~Uma es más vieja de lo que parece. De hecho, por su pelaje (y otras... cualidades) notarás que no es una loba común y corriente. Es una loba de las penumbras, y tiene muchas características de un espíritu sombrío del bosque. Es inmune al frío, pero vulnerable al fuego. Puede hacerse invisible, así que puedes enviarla a explorar si lo deseas.~ */
  IF ~~ THEN EXIT
END


IF~See("Wilson")
InParty("Wilson")
!StateCheck("Wilson",STATE_SLEEPING)
RandomNum(5,5)
Global("P_Bellfame_Wilson1","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY @39 /* ~Wilson, ¿qué es lo que te aflige?~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Wilson1","GLOBAL",1)~ GOTO 19
END

IF 
~~ THEN BEGIN 19 // from:
  SAY @40 /* ~Bien hecho, mi amigo. Espero que esto alivie tus dolores.~ */
  IF ~~ THEN EXIT
END

IF~See("HaerDalis")
InParty("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
RandomNum(1,1)
Global("P_Bellfame_HaerDalis1","GLOBAL",0)
~ THEN BEGIN 20 // from:
  SAY @50 /* ~Forastero, he notado que vienes de otro plano. El Plano Material no es tu lugar natal, ¿no es así?~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_HaerDalis1","GLOBAL",1)~ GOTO 21
END

IF 
~~ THEN BEGIN 21 // from:
  SAY @52 /* ~Comprendo tus sentimientos. Mi caso es el opuesto, pese a que ahora me encuentre aquí, temporalmente, en este plano. Quizás, algún día pueda regresar por completo.~ */
  IF ~~ THEN EXIT
END

IF~See("Anomen")
InParty("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
RandomNum(1,1)
Global("P_Bellfame_Anomen1","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY @53 /* ~Mortal, demuestras gran desconfianza en los nuestros.~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Anomen1","GLOBAL",1)~ GOTO 23
END

IF 
~~ THEN BEGIN 23 // from:
  SAY @57 /* ~Puede que no tenga una completa libertad y que mi esencia se encuentre atada al Plano Astral... pero ten en cuenta algo, mortal. Nada es eterno... ni siquiera tus dioses.~ */
  IF ~~ THEN EXIT
END

IF~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
RandomNum(1,1)
Global("P_Bellfame_P_Fall1","GLOBAL",0)
~ THEN BEGIN 24 // from:
  SAY @2000 /* ~Mortal, emanas un aura oscura, pero no es tu culpa. No logro comprender del todo...~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_P_Fall1","GLOBAL",1)~ GOTO 25
END

IF 
~~ THEN BEGIN 25 // from:
  SAY @2001 /* ~Tal vez, mortal... o tal vez no. El plano Astral sigue siendo un misterio aún para criaturas que viven durante siglos...~ */
  IF ~~ THEN EXIT
END

IF~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
RandomNum(1,1)
Global("P_Bellfame_P_Fall1","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY @2015 /* ~Tus sueños son intranquilos, ¿no es así, mortal?~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_P_Fall1","GLOBAL",2)~ GOTO 27
END

IF 
~~ THEN BEGIN 27 // from:
  SAY @2016 /* ~Llegado el momento, mortal... sabes que puedes contar con mi asistencia en tu lucha contra lo desconocido.~ */
  IF ~~ THEN EXIT
END

// INTERACCION NPC pt2
// DUSK Necesario para Mission3

I_C_T P_BELLD 26 P_Fall_Talk1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2017 /* Bellfame... sí, ¿cómo lo sabes? */
== p_belld IF ~~ THEN @2018 /* Aún cuando mi cuerpo descanse en el Anillo de Mir, mi árbol se encuentra en este plano. Por lo que soy capaz de percibir la tierra aquí, en el Plano Material. */
== p_belld IF ~~ THEN @2019 /* Y tú sueñas, mortal. Tus sueños... son oscuros. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2020 /* Sí... pero son sólo eso, sueños. */
== p_belld IF ~~ THEN @2021 /* No, mortal... Hay una fuerza inefable que intenta alcanzarte... toda tu vida has sido perseguida por esta insondable sombra. */
== p_belld IF ~~ THEN @2022 /* Te habla en tus sueños, ¿no es así? Es como si las olas del mar chocasen violentamente contra la costa y a su vez, el sonido del agua se entremezclara con un zumbido furioso de una horda de avispas. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2023 /* ¿Cómo... cómo lo sabes? */
== p_belld IF ~~ THEN @2024 /* Las criaturas de otros planos están buscando constantemente invadir este... el Plano Material. Muchas son inofensivas y nunca lograrán llegar a este lado. */
== p_belld IF ~~ THEN @2025 /* Sin embargo, existen otras... Creaciones cósmicas y arcanas al comprendimiento de los mortales. Igual de imcomprensible es su poder. */
== p_belld IF ~~ THEN @2026 /* Estas criaturas buscarán constantemente rasgar el plano en el que se encuentran para llegar a este. Y así es la criatura que intenta contactarte. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2027 /* ¿Por qué... por qué yo? */
== p_belld IF ~~ THEN @2028 /* Recuerda nuestra primera conversación, pequeña. Tu infancia. Tu padre. Las arañas. La naturaleza. */
== p_belld IF ~~ THEN @2029 /* Todo sucedió por una razón. Pero no desesperes, querida. Mientras sigas al lado de tus amigos, estarás a salvo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2030 /* Entiendo. Gracias, Bellfame. Es un alivio hablar contigo. */
END

I_C_T P_BELLD 24 P_Bellfame_P_Fall1
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2002 /* ¿A qué te refieres, Bellfame? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2003 /* Es algo relacionado... a tu infancia. Puede que a tu padre.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2004 /* ¿A mi padre? Era humano, un gran ballestero llamado Gerwulf. ¿Qué sabes de él? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2005 /* Tú lo has visto morir, ¿no es verdad?  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2006 /* Yo... sí... Pero, ¿cómo sabes eso? Lo has... ¿lo has percibido a través de mi 'aura'? (Sea lo que sea que eso signifique). */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2007 /* Sí. Tu hogar fue atacado por una fuerza de oscuridad.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2008 /* Sí... fue un grupo de arañas gigantes. Arañas espadas y fase. */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2009 /* Pero fueron animales, a fin de cuentas. ¿Por qué has dicho oscuridad? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2010 /* Shyntquarra. La Legión que no puede ser vista.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2011 /* ¿Shyntquarra? ¿Qué sabes de ello, Bellfame? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2012 /* Nadie lo sabe con certeza, mortal. Sé que piensas que las criaturas que te atacaron fueron animales. Pero el aura que percibo en ti dice lo contrario.  */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2013 /* Las arañas que te atacaron provienen de un plano diferente al que ahora te encuentras. De hecho, es muy probable que se encuentren en mi plano.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @2014 /* Entiendo... pero... las arañas fueron derrotadas. Mi padre acabó con todas ellas antes de que... el veneno acabara con él. */
END

I_C_T P_BELLD 22 P_Dusk_Bellf_Anomen1
== AnomenJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @54 /* Es lo normal, criatura. Los vuestros no hablan como cotorras con aquellos que son sus amos. */
== P_BELLD IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @55 /* ¿Amos? Puede que esté atada a la voluntad de quien usa el Anillo del Bosque de Mir, pero están lejos de ser nuestros amos.  */
== AnomenJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @56 /* Puede ser. Eso no quiere decir que seas libre de hacer lo que te plazca. */
END

I_C_T P_BELLD 20 P_Dusk_Bellf_HaerDalis1
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @51 /* Ah, pequeña jilguero. Este no es mi hogar, pero pretendo formar uno aquí. Este gorrión dispone de muchos recursos verás. */
END

I_C_T P_BELLD 18 P_Dusk_Bellf_Wilson1
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @41 /* (Lamento, bufido) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @42 /* Oh, pobre criatura. Sí, sé a lo que te refieres. Por eso es que le he enseñado a Thiago algunas maneras de mejorar su defensa.  */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @43 /* (Gruñido) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @44 /* No es nada muy complicado. He pensado en tus problemas y he llegado a una solución simple: Debes aprender las mismas habilidades que mi Thiago. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @45 /* (Bufido) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @46 /* ¿Qué debes hacer? Sólo debes comer este fruto astral. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @47 /* (Lamento) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @48 /* No es muy sabroso, lo sé, pero te aseguro que valdrá la pena, Wilson. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @49 /* (Bufido, gruñido) */ DO ~CreateItem ("P_WILS1",1,1,0) UseItem ("P_WILS1", Myself) DestroyItem ("P_WILS1")~
END


I_C_T P_BELLD 7 P_Dusk_Bellf_Cernd1
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @16 /* Tenía mis sospechas de eso, pero no estaba tan seguro. Aún así, el Equilibrio indica que deberías estar en este Plano, ninfa. Espero que puedas encontrar el camino a casa... la madre naturaleza así lo quiere. */
END




I_C_T P_BELLD 16 P_Dusk_M3_DecisionBF
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @18 /* Pese a que no he pasado mucho tiempo en el Bosque de las Sombras... debo admitir que ha calado muy en lo hondo de mi corazón. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @19 /* No se necesitan de años para apreciar a la creación de nuestra Señora del Bosque, Dusk.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20 /* Asumo que hablas de Mielikki, ¿no es así, Bellfame? */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @21 /* Así es, querido. La hija de Silvanus es la voz de los árboles y protectora de aquellos que luchan por defender la vida.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @22 /* Celine le rendía pleitesía en sus rituales matutinos. Recuerdo que eso llamaba mucho mi atención. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @23 /* Lo que he visto en el campo de batalla... me ha hecho cuestionarme sobre seguir o no una fe. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @25 /* De pequeño, me enseñaron a rendir culto a lady Tymora... Si uno es feliz, la Dama de la Fortuna le sonreirá. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @26 /* Sin embargo... esos momentos han sido sólo efímeros... y sólo permanecen en mi mente, como recuerdos que guardo con gran cariño. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @27 /* Durante años has estado en las sombras, Dusk. Pero has hallado paz en la naturaleza, pese a las desdichas que has vivido luego de conocer Shilmista.  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @28 /* Tu curiosidad por los rituales de tu amada no era sólo eso... Puedo ver a veces le rezas a Mielikki.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @29 /* ¿Q-qué? ¿Cómo lo sabes? */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @30 /* Aun cuando me encuentre lejos, en otro plano, aún tengo una conexión única con Mir. Mi árbol vive en esta época y puedo sentir la tierra. Por consecuencia, también este plano.  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @31 /* Puede que me encuentre 'dentro' del anillo, Dusk... Pero el hecho de que pueda oír tus plegarias a la Reina del Bosque, me dice que tienes una capacidad... especial.  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @32 /* Lo quieras o no, tienes una profunda conexión con la naturaleza.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @33 /* E-entiendo, Bellfame... No me digas que eres capaz de ver todo lo que hago. Eso sería espeluznante. ¡Ja! */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @34 /* No entiendo, joven Dusk. ¿Qué sería espeluznante?  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @35 /* *carraspeo* Nada, Bellfame. Sólo bromeaba. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @36 /* No comprendo tus bromas, joven Dusk. Quizás, cuando el tiempo sea más propicio, puedas explicármelo mejor.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @37 /* Ehrm... sí, claro que sí. Hasta ese entonces, gracias por esta conversación. */
END
