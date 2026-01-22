BEGIN ~p_belld~

// Interacción con NPCs
IF WEIGHT #0~See("P_Dusk")
InParty("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
//RandomNum(3,1)
Global("P_Bellfame_Dusk1","GLOBAL",0)
Global("P_DUSKESTABLISHINGPARTYIN","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY @9725 /* ~Muchas veces extraño al Bosque de Mir...~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Dusk1","GLOBAL",1)~ GOTO 6
END

IF WEIGHT #1~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
//RandomNum(1,1)
Global("P_Bellfame_P_Fall1","GLOBAL",1)
Global("P_FALLESTABLISHINGPARTYIN","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY @9722015 /* ~Tus sueños son intranquilos, ¿no es así, mortal?~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_P_Fall1","GLOBAL",2)~ GOTO 27
END

IF WEIGHT #2~See("Cernd")
InParty("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
RandomNum(3,2)
Global("P_Bellfame_Cernd1","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY @9727 /* ~Las fuerzas de la naturaleza trascienden el plano material... ahora lo sé.~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Cernd1","GLOBAL",1)~ GOTO 8
END

IF WEIGHT #3~See("P_Dusk")
InParty("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
//RandomNum(3,3)
Global("P_Bellfame_Dusk1","GLOBAL",1)
Global("P_DUSKESTABLISHINGPARTYIN","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY @97217 /* ~Percibo una fuerza de Shilmista en ti, Dusk...~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Dusk1","GLOBAL",2)~ GOTO 17
END

IF WEIGHT #4~See("Wilson")
InParty("Wilson")
!StateCheck("Wilson",STATE_SLEEPING)
RandomNum(5,5)
Global("P_Bellfame_Wilson1","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY @97239 /* ~Wilson, ¿qué es lo que te aflige?~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Wilson1","GLOBAL",1)~ GOTO 19
END

IF 
~~ THEN BEGIN 19 // from:
  SAY @97240 /* ~Bien hecho, mi amigo. Espero que esto alivie tus dolores.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5~See("HaerDalis")
InParty("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
RandomNum(1,1)
Global("P_Bellfame_HaerDalis1","GLOBAL",0)
~ THEN BEGIN 20 // from:
  SAY @97250 /* ~Forastero, he notado que vienes de otro plano. El Plano Material no es tu lugar natal, ¿no es así?~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_HaerDalis1","GLOBAL",1)~ GOTO 21
END


IF WEIGHT #6~See("Anomen")
InParty("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
RandomNum(1,1)
Global("P_Bellfame_Anomen1","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY @97253 /* ~Mortal, demuestras gran desconfianza en los nuestros.~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Anomen1","GLOBAL",1)~ GOTO 23
END

IF 
~~ THEN BEGIN 23 // from:
  SAY @97257 /* ~Puede que no tenga una completa libertad y que mi esencia se encuentre atada al Plano Astral... pero ten en cuenta algo, mortal. Nada es eterno... ni siquiera tus dioses.~ */
  IF ~~ THEN EXIT
END


IF WEIGHT #7~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
//RandomNum(1,1)
Global("P_FALLESTABLISHINGPARTYIN","GLOBAL",0)
Global("P_Bellfame_P_Fall1","GLOBAL",0)
~ THEN BEGIN 24 // from:
  SAY @9722000 /* ~Mortal, emanas un aura oscura, pero no es tu culpa. No logro comprender del todo...~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_P_Fall1","GLOBAL",1)~ GOTO 25
END

IF WEIGHT #8 ~See("P_Alen")
InParty("P_Alen")
!StateCheck("P_Alen",STATE_SLEEPING)
//RandomNum(3,1)
Global("P_Bellfame_Alen1","GLOBAL",0)
Global("P_AlenEstablishingPartyIN","GLOBAL",0)
~ THEN BEGIN 28 // from:
  SAY @800000 /* ~Mortal, no tienes un gran aprecio por la Naturaleza. Es una pena. Tu potencial es grande.~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Alen1","GLOBAL",1)~ GOTO 29
END


IF 
~~ THEN BEGIN 29 // from:
  SAY @800015 /* ~Puede que sea la respuesta que esperas de mí, mortal. Pero no soy quien para juzgarte. He conocido a muchos lanzadores de hechizos. Pero hay algo en ti que no te hace un ser despiadado. Puede que el tiempo me dé la razón.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~See("P_Alen")
InParty("P_Alen")
!StateCheck("P_Alen",STATE_SLEEPING)
//RandomNum(3,1)
PartyHasItem("p_falrob")
Global("P_Bellfame_Alen1","GLOBAL",1)
Global("P_AlenEstablishingPartyIN","GLOBAL",1)
~ THEN BEGIN 30 // from:
  SAY @800016 /* ~Maestro de la Escarcha. Tu túnica es especial.~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Alen1","GLOBAL",2)~ GOTO 31
END


IF 
~~ THEN BEGIN 31 // from:
  SAY @800034 /* ~Vístela con honor. Úsala con sabiduría. Joven Alendir, tengo fe en que podrás encauzar la magia hacia el equilibrio. Sólo faltas tú creer en ello.~ */
  IF ~~ THEN EXIT
END 


IF 
~~ THEN BEGIN 25 // from:
  SAY @9722001 /* ~Tal vez, mortal... o tal vez no. El plano Astral sigue siendo un misterio aún para criaturas que viven durante siglos...~ */
  IF ~~ THEN EXIT
END



IF 
~~ THEN BEGIN 27 // from:
  SAY @9722016 /* ~Llegado el momento, mortal... sabes que puedes contar con mi asistencia en tu lucha contra lo desconocido.~ */
  IF ~~ THEN EXIT
END


IF WEIGHT #20
~RandomNum(12,1)~ THEN BEGIN 0 // from:
  SAY @9720 /* ~Mis criaturas y yo fuimos arrojados al Plano Etéreo. Allí, no existe material sólido, sólo un infinito mar de neblinas...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #21
~RandomNum(12,2)~ THEN BEGIN 1 // from:
  SAY @9721 /* ~En el Plano Etéreo sobrevivimos, vagando por los aires, hasta que un misterioso ser creó una isla, la cual existe entre medio de la infinitud de neblina.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #10
~RandomNum(12,3)~ THEN BEGIN 2 // from:
  SAY @9722 /* ~Antes de que nos convoques al Plano Material, mortal, mis animales y yo venimos del Plano Etéreo. Cuando activas mi anillo, se abre un portal y podemos venir aquí.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #11
~RandomNum(12,4)~ THEN BEGIN 3 // from:
  SAY @9723 /* ~Aún si caemos en combate, mis animales y yo aparecemos nuevamente en el Plano Etéreo, esperando, nuevamente, el llamado del Anillo...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #12
~RandomNum(12,5)~ THEN BEGIN 4 // from:
  SAY @9724 /* ~La isla material en la que vivimos está llena de plantas, ríos y lagos. Me recuerda a mi querido Bosque de Mir...~ */
  IF ~~ THEN EXIT
END



IF
~~ THEN BEGIN 6 // from:
  SAY @9726 /* ~Entonces... Dusk serás. Gracias por escucharme.~ */
  IF ~~ THEN EXIT
END


IF 
~~ THEN BEGIN 8 // from:
  SAY @9728 /* ~Lo sé, mortal. Quizás, mi destino pueda ser cambiado... pero si el forzarlo conlleva a una afrenta a la naturaleza o no... me niego a hacerlo...~ */
  IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN 17 // from:
  SAY @97238 /* ~Es siempre un placer hablar contigo, Dusk. Y recuerda. La Dama del Bosque te oye. Ella te asistirá si tu intención es la de proteger a los demás.~ */
  IF ~~ THEN EXIT
END

// FIN INTERACCION NPCs

IF WEIGHT #13 ~RandomNum(12,6)~ THEN BEGIN 9 // from:
  SAY @9729 /* ~La criatura que creó la isla es pequeña, viste ropa verde y su cabello es rojo como el fuego. Está siempre feliz y lo expresa mediante bailes y risas incesantes.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 ~RandomNum(12,7)~ THEN BEGIN 10 // from:
  SAY @97210 /* ~El anillo sólo puede ser empleado por aquellos que son afines a la naturaleza, tales como druidas o exploradores. Cuando sea llamada, lucharé a su lado. Ten en cuenta que mi habilidad especial es llamar a mis fieles amigos, los animales guardianes del Bosque de Mir.~ */
  IF ~~ THEN EXIT
END

// COMENTARIO sobre convocaciones

IF WEIGHT #15 ~RandomNum(12,8)~ THEN BEGIN 11 // from:
  SAY @97211 /* ~Baba es un ratón del bosque. Parece un ratón normal, pero pronto verás que es algo... particular. No suele estar siempre de buen humor, pero si está sano, hay mejores chances de que te obedezca. Por ende, si lo ves herido, cúralo y puede que tengas mejor suerte en convencerlo de que trabaje para ti.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #16 ~RandomNum(12,9)~ THEN BEGIN 12 // from:
  SAY @97212 /* ~Jack es un orgulloso lobo de invierno. Es más poderoso que la mayoría de su clase. Posee una habilidad especial, capaz de congelar a sus enemigos. Es el alfa de la manada, así que siempre estará dispuesto en ir al frente de batalla.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #17 ~RandomNum(12,10)~ THEN BEGIN 13 // from:
  SAY @97213 /* ~Sayang es una de las más jóvenes de la manada. Es dulce, aunque enérgica. Pronto verás la velocidad con la que se mueve. Es muy entusiasta y le gusta jugar.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 ~RandomNum(12,11)~ THEN BEGIN 14 // from:
  SAY @97214 /* ~Thiago es un poderoso oso pardo. Admito que está más gordo de lo que debería. Le gusta mucho comer miel. En la isla en la que nos encontramos, hay de sobra, por lo que puede que... no sea muy veloz que digamos. Pero te aseguro que a la hora de la verdad, es duro como una roca.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #19 ~RandomNum(12,12)~ THEN BEGIN 15 // from:
  SAY @97215 /* ~Uma es más vieja de lo que parece. De hecho, por su pelaje (y otras... cualidades) notarás que no es una loba común y corriente. Es una loba de las penumbras, y tiene muchas características de un espíritu sombrío del bosque. Es inmune al frío, pero vulnerable al fuego. Puede hacerse invisible, así que puedes enviarla a explorar si lo deseas.~ */
  IF ~~ THEN EXIT
END



IF 
~~ THEN BEGIN 21 // from:
  SAY @97252 /* ~Comprendo tus sentimientos. Mi caso es el opuesto, pese a que ahora me encuentre aquí, temporalmente, en este plano. Quizás, algún día pueda regresar por completo.~ */
  IF ~~ THEN EXIT
END


// INTERACCION NPC pt2
// DUSK Necesario para Mission3

I_C_T P_BELLD 30 P_Alen_Talk2
== p_alenj IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800017 /* ¿Estamos mencionando obviedades? Claro que mi túnica es especial. Está hecha a medida para los Selu'taar de Cormanthyr. Sólo los hechiceros de alto rango pueden vestirla. Es muy interesante, cuando mandé a hacerla la pedí con ciertos ornamentos y- */
== p_belld IF ~~ THEN @800018 /* Creo que puedo aplicar un hechizo para mejorarla. */
== p_alenj IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800019 /* ¿Qué? ¿Cómo puede una ninfa exhibicionista mejorar una prenda élfica del Reino Oculto? Querida, creo que finalmente la locura ha alcanzado tu mente astral. */
== p_belld IF ~~ THEN @800020 /* Eres una criatura que ha estado en varios planos en cuestión de pocos años. Has estado en el Plano Material, de Hielo, en el Abismo y en el Plano de los Muertos. Tu misma esencia se sacrifica a medida que te especializas en el arte arcano. */
== p_belld IF ~~ THEN @800021 /* Puedo aplicar dicha mejora, Alendir. Tu túnica será acorde a la esencia que he mencionado anteriormente. */
== p_alenj IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800022 /* ¿Y por qué habrías de hacerlo? Tú misma lo has dicho. No tengo el mayor de los respetos hacia las convocaciones. */
== p_belld IF ~~ THEN @800023 /* Nadie ha dicho eso, Maestro de la Escarcha. Por el contrario, yo estoy convencida de que hay lugar para que tu redención arcana sea posible. */
== p_belld IF ~~ THEN @800024 /* No habría de ofrecerte dicho poder si no fuese así. */ 
== p_alenj IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800025 /* Hm. De acuerdo. Haz lo que tengas que hacer. Y que sea rápido. A diferencia tuya, no me siento cómodo estando semidesnudo. */
== p_belld IF ~~ THEN @800026 /* No os preocupéis. Como verás, todo será con presteza. */ DO ~TakePartyItem ("p_falrob") DestroyItem ("p_falrob") CreateItem ("p_alrob2",1,1,0) GiveItem ("p_alrob2", "P_ALEN")~
== p_alenj IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800027 /* No exagerabas con lo de presteza. ¿Ya está? Es... es verdad... */
== p_alenj IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800028 /* El cambio es significativo. No logro comprender cómo es que una criatura del Plano Astral, atada a un anillo, puede tener tanto poder. */
== p_belld IF ~~ THEN @800029 /* Mi poder no es grande. Lo que consideras poderoso es mi capacidad de canalizar ciertas energías, joven selu'taar. */ 
== p_alenj IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800030 /* Comprendo. */
== p_fallj IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @800031 /* No te vendría mal decir gracias de vez en cuando, Alendir. */
== p_alenj IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @800032 /* *susurro* Silencio, niña. */
== p_alenj IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800033 /* *carraspeo* Bueno, esta mejora es algo que podría haber logrado yo si me lo hubiera propuesto. Pero... gracias, Bellfame. Os lo agradezco. */
END

I_C_T P_BELLD 28 P_Alen_Talk1
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800001 /* ¿Me estás hablando a mí, ninfa? */
== p_belld IF ~~ THEN @800002 /* Sí. Mi nombre es- */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800003 /* Ah, sí. Bellfame. La ninfa semidesnuda que pertenece a Dusk. */
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @800004 /* ¿Me hablabas, Alendir? */
== P_AlenJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @800005 /* Nadie te mencionó, humano mequetrefe. */
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @800006 /* Ehrm. Bueno. */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800007 /* Dime, invocación. ¿Qué es lo que quieres? No tengo mucho tiempo disponible, verás. Soy un elfo muy ocupado. */
== p_belld IF ~~ THEN @800008 /* Tampoco tienes mucho cariño por las invocaciones, pese a que seas un especialista en conjuraciones. */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800009 /* ¿Implicas que debo preocuparme por criaturas que no pueden morir aquí en el Plano Material? Debe ser una de las cosas más estúpidas que he escuchado. ¿Por qué habría de hacerlo? */
== p_belld IF ~~ THEN @800010 /* Puede que no estemos vulnerables a lo que ustedes llaman muerte. Pero no estamos exentos de dolor. Incluso podemos recibir daño de nuestros propios "amos" y volveremos a servir cuando seamos llamados nuevamente. */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800011 /* Hm. No lo había pensado de esa manera. Lo cierto es que los experimentos crueles son más idóneos de los humanos. Hechiceros de esta raza han perdido la cordura en ocasiones que no puedo ni siquiera contar. */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800012 /* Experimentar conjuros sobre convocaciones no es una práctica que les sea desconocida. */
== p_belld IF ~~ THEN @800013 /* Y tú eres un Maestro de la Escarcha. Llamar a las criaturas del Plano de Hielo es una de tus especialidades. ¿Eres cruel con ellas? */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800014 /* No. A decir verdad no. Pero sí les llamo para combatir. Debo confesar, que les he llamado como carnada, incluso. ¿Eso me hace cruel, ninfa? */
END


I_C_T P_BELLD 26 P_Fall_Talk1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722017 /* Bellfame... sí, ¿cómo lo sabes? */
== p_belld IF ~~ THEN @9722018 /* Aún cuando mi cuerpo descanse en el Anillo de Mir, mi árbol se encuentra en este plano. Por lo que soy capaz de percibir la tierra aquí, en el Plano Material. */
== p_belld IF ~~ THEN @9722019 /* Y tú sueñas, mortal. Tus sueños... son oscuros. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722020 /* Sí... pero son sólo eso, sueños. */
== p_belld IF ~~ THEN @9722021 /* No, mortal... Hay una fuerza inefable que intenta alcanzarte... toda tu vida has sido perseguida por esta insondable sombra. */
== p_belld IF ~~ THEN @9722022 /* Te habla en tus sueños, ¿no es así? Es como si las olas del mar chocasen violentamente contra la costa y a su vez, el sonido del agua se entremezclara con un zumbido furioso de una horda de avispas. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722023 /* ¿Cómo... cómo lo sabes? */
== p_belld IF ~~ THEN @9722024 /* Las criaturas de otros planos están buscando constantemente invadir este... el Plano Material. Muchas son inofensivas y nunca lograrán llegar a este lado. */
== p_belld IF ~~ THEN @9722025 /* Sin embargo, existen otras... Creaciones cósmicas y arcanas al comprendimiento de los mortales. Igual de imcomprensible es su poder. */
== p_belld IF ~~ THEN @9722026 /* Estas criaturas buscarán constantemente rasgar el plano en el que se encuentran para llegar a este. Y así es la criatura que intenta contactarte. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722027 /* ¿Por qué... por qué yo? */
== p_belld IF ~~ THEN @9722028 /* Recuerda nuestra primera conversación, pequeña. Tu infancia. Tu padre. Las arañas. La naturaleza. */
== p_belld IF ~~ THEN @9722029 /* Todo sucedió por una razón. Pero no desesperes, querida. Mientras sigas al lado de tus amigos, estarás a salvo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722030 /* Entiendo. Gracias, Bellfame. Es un alivio hablar contigo. */
END

I_C_T P_BELLD 24 P_Bellfame_P_Fall1
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722002 /* ¿A qué te refieres, Bellfame? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722003 /* Es algo relacionado... a tu infancia. Puede que a tu padre.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722004 /* ¿A mi padre? Era humano, un gran ballestero llamado Gerwulf. ¿Qué sabes de él? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722005 /* Tú lo has visto morir, ¿no es verdad?  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722006 /* Yo... sí... Pero, ¿cómo sabes eso? Lo has... ¿lo has percibido a través de mi 'aura'? (Sea lo que sea que eso signifique). */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722007 /* Sí. Tu hogar fue atacado por una fuerza de oscuridad.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722008 /* Sí... fue un grupo de arañas gigantes. Arañas espadas y fase. */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722009 /* Pero fueron animales, a fin de cuentas. ¿Por qué has dicho oscuridad? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722010 /* Shyntquarra. La Legión que no puede ser vista.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722011 /* ¿Shyntquarra? ¿Qué sabes de ello, Bellfame? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722012 /* Nadie lo sabe con certeza, mortal. Sé que piensas que las criaturas que te atacaron fueron animales. Pero el aura que percibo en ti dice lo contrario.  */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722013 /* Las arañas que te atacaron provienen de un plano diferente al que ahora te encuentras. De hecho, es muy probable que se encuentren en mi plano.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722014 /* Entiendo... pero... las arañas fueron derrotadas. Mi padre acabó con todas ellas antes de que... el veneno acabara con él. */
END

// INTERACCION NPC pt2
// DUSK Necesario para Mission3

I_C_T P_BELLD 22 P_Dusk_Bellf_Anomen1
== AnomenJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @97254 /* Es lo normal, criatura. Los vuestros no hablan como cotorras con aquellos que son sus amos. */
== P_BELLD IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @97255 /* ¿Amos? Puede que esté atada a la voluntad de quien usa el Anillo del Bosque de Mir, pero están lejos de ser nuestros amos.  */
== AnomenJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @97256 /* Puede ser. Eso no quiere decir que seas libre de hacer lo que te plazca. */
END

I_C_T P_BELLD 20 P_Dusk_Bellf_HaerDalis1
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @97251 /* Ah, pequeña jilguero. Este no es mi hogar, pero pretendo formar uno aquí. Este gorrión dispone de muchos recursos verás. */
END

I_C_T P_BELLD 18 P_Dusk_Bellf_Wilson1
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97241 /* (Lamento, bufido) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97242 /* Oh, pobre criatura. Sí, sé a lo que te refieres. Por eso es que le he enseñado a Thiago algunas maneras de mejorar su defensa.  */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97243 /* (Gruñido) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97244 /* No es nada muy complicado. He pensado en tus problemas y he llegado a una solución simple: Debes aprender las mismas habilidades que mi Thiago. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97245 /* (Bufido) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97246 /* ¿Qué debes hacer? Sólo debes comer este fruto astral. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97247 /* (Lamento) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97248 /* No es muy sabroso, lo sé, pero te aseguro que valdrá la pena, Wilson. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97249 /* (Bufido, gruñido) */ DO ~CreateItem ("P_WILS1",1,1,0) UseItem ("P_WILS1", Myself) DestroyItem ("P_WILS1")~
END


I_C_T P_BELLD 7 P_Dusk_Bellf_Cernd1
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @97216 /* Tenía mis sospechas de eso, pero no estaba tan seguro. Aún así, el Equilibrio indica que deberías estar en este Plano, ninfa. Espero que puedas encontrar el camino a casa... la madre naturaleza así lo quiere. */
END

I_C_T P_BELLD 5 P_DuskBelld1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9723254 /* Mi pequeño amigo, Michelson, mencionó algo sobre una alteración en el tiempo. No creí que algo así fuese posible. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9723255 /* El mundo de la magia tiene la capacidad de alterar el tiempo y el espacio. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9723256 /* En mi enfrentamiento contra el destacamento de Kartlzer, mi magia druídica colisionó contra la magia arcana de su hechicero. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9723257 /* El anillo que ahora tu grupo posee, fue el conductor de dicho evento... No creo que pueda explicar concretamente lo que sucedió... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9723258 /* Pues... sea lo que sea, tu historia en el Bosque de Mir aún no ha sucedido. Eso me confunde... */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9723259 /* No tienes necesidad de entender todo lo que te rodea, mortal. A veces, las cosas... simplemente suceden. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9723261 /* Es verdad que soy un mortal, ninfa... pero mis amigos me llaman Dusk. Tú también puedes hacerlo. */
END


I_C_T P_BELLD 16 P_Dusk_M3_DecisionBF
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97218 /* Pese a que no he pasado mucho tiempo en el Bosque de las Sombras... debo admitir que ha calado muy en lo hondo de mi corazón. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97219 /* No se necesitan de años para apreciar a la creación de nuestra Señora del Bosque, Dusk.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97220 /* Asumo que hablas de Mielikki, ¿no es así, Bellfame? */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97221 /* Así es, querido. La hija de Silvanus es la voz de los árboles y protectora de aquellos que luchan por defender la vida.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97222 /* Celine le rendía pleitesía en sus rituales matutinos. Recuerdo que eso llamaba mucho mi atención. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97223 /* Lo que he visto en el campo de batalla... me ha hecho cuestionarme sobre seguir o no una fe. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97225 /* De pequeño, me enseñaron a rendir culto a lady Tymora... Si uno es feliz, la Dama de la Fortuna le sonreirá. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97226 /* Sin embargo... esos momentos han sido sólo efímeros... y sólo permanecen en mi mente, como recuerdos que guardo con gran cariño. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97227 /* Durante años has estado en las sombras, Dusk. Pero has hallado paz en la naturaleza, pese a las desdichas que has vivido luego de conocer Shilmista.  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97228 /* Tu curiosidad por los rituales de tu amada no era sólo eso... Puedo ver a veces le rezas a Mielikki.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97229 /* ¿Q-qué? ¿Cómo lo sabes? */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97230 /* Aun cuando me encuentre lejos, en otro plano, aún tengo una conexión única con Mir. Mi árbol vive en esta época y puedo sentir la tierra. Por consecuencia, también este plano.  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97231 /* Puede que me encuentre 'dentro' del anillo, Dusk... Pero el hecho de que pueda oír tus plegarias a la Reina del Bosque, me dice que tienes una capacidad... especial.  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97232 /* Lo quieras o no, tienes una profunda conexión con la naturaleza.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97233 /* E-entiendo, Bellfame... No me digas que eres capaz de ver todo lo que hago. Eso sería espeluznante. ¡Ja! */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97234 /* No entiendo, joven Dusk. ¿Qué sería espeluznante?  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97235 /* *carraspeo* Nada, Bellfame. Sólo bromeaba. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97236 /* No comprendo tus bromas, joven Dusk. Quizás, cuando el tiempo sea más propicio, puedas explicármelo mejor.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97237 /* Ehrm... sí, claro que sí. Hasta ese entonces, gracias por esta conversación. */
END
