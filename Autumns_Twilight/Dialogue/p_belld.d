BEGIN ~p_belld~

// Interacci�n con NPCs
IF WEIGHT #0~See("P_Dusk")
InParty("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
//RandomNum(3,1)
Global("P_Bellfame_Dusk1","GLOBAL",0)
Global("P_DUSKESTABLISHINGPARTYIN","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY @9725 /* ~Muchas veces extra�o al Bosque de Mir...~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Dusk1","GLOBAL",1)~ GOTO 6
END

IF WEIGHT #1~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
//RandomNum(1,1)
Global("P_Bellfame_P_Fall1","GLOBAL",1)
Global("P_FALLESTABLISHINGPARTYIN","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY @9722015 /* ~Tus sue�os son intranquilos, �no es as�, mortal?~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_P_Fall1","GLOBAL",2)~ GOTO 27
END

IF WEIGHT #2~See("Cernd")
InParty("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
RandomNum(3,2)
Global("P_Bellfame_Cernd1","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY @9727 /* ~Las fuerzas de la naturaleza trascienden el plano material... ahora lo s�.~ */
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
  SAY @97239 /* ~Wilson, �qu� es lo que te aflige?~ */
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
  SAY @97250 /* ~Forastero, he notado que vienes de otro plano. El Plano Material no es tu lugar natal, �no es as�?~ */
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
  SAY @800015 /* ~Puede que sea la respuesta que esperas de m�, mortal. Pero no soy quien para juzgarte. He conocido a muchos lanzadores de hechizos. Pero hay algo en ti que no te hace un ser despiadado. Puede que el tiempo me d� la raz�n.~ */
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
  SAY @800016 /* ~Maestro de la Escarcha. Tu t�nica es especial.~ */
  IF ~~ THEN DO ~SetGlobal("P_Bellfame_Alen1","GLOBAL",2)~ GOTO 31
END


IF 
~~ THEN BEGIN 31 // from:
  SAY @800034 /* ~V�stela con honor. �sala con sabidur�a. Joven Alendir, tengo fe en que podr�s encauzar la magia hacia el equilibrio. S�lo faltas t� creer en ello.~ */
  IF ~~ THEN EXIT
END 


IF 
~~ THEN BEGIN 25 // from:
  SAY @9722001 /* ~Tal vez, mortal... o tal vez no. El plano Astral sigue siendo un misterio a�n para criaturas que viven durante siglos...~ */
  IF ~~ THEN EXIT
END



IF 
~~ THEN BEGIN 27 // from:
  SAY @9722016 /* ~Llegado el momento, mortal... sabes que puedes contar con mi asistencia en tu lucha contra lo desconocido.~ */
  IF ~~ THEN EXIT
END


IF WEIGHT #20
~RandomNum(12,1)~ THEN BEGIN 0 // from:
  SAY @9720 /* ~Mis criaturas y yo fuimos arrojados al Plano Et�reo. All�, no existe material s�lido, s�lo un infinito mar de neblinas...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #21
~RandomNum(12,2)~ THEN BEGIN 1 // from:
  SAY @9721 /* ~En el Plano Et�reo sobrevivimos, vagando por los aires, hasta que un misterioso ser cre� una isla, la cual existe entre medio de la infinitud de neblina.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #10
~RandomNum(12,3)~ THEN BEGIN 2 // from:
  SAY @9722 /* ~Antes de que nos convoques al Plano Material, mortal, mis animales y yo venimos del Plano Et�reo. Cuando activas mi anillo, se abre un portal y podemos venir aqu�.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #11
~RandomNum(12,4)~ THEN BEGIN 3 // from:
  SAY @9723 /* ~A�n si caemos en combate, mis animales y yo aparecemos nuevamente en el Plano Et�reo, esperando, nuevamente, el llamado del Anillo...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #12
~RandomNum(12,5)~ THEN BEGIN 4 // from:
  SAY @9724 /* ~La isla material en la que vivimos est� llena de plantas, r�os y lagos. Me recuerda a mi querido Bosque de Mir...~ */
  IF ~~ THEN EXIT
END



IF
~~ THEN BEGIN 6 // from:
  SAY @9726 /* ~Entonces... Dusk ser�s. Gracias por escucharme.~ */
  IF ~~ THEN EXIT
END


IF 
~~ THEN BEGIN 8 // from:
  SAY @9728 /* ~Lo s�, mortal. Quiz�s, mi destino pueda ser cambiado... pero si el forzarlo conlleva a una afrenta a la naturaleza o no... me niego a hacerlo...~ */
  IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN 17 // from:
  SAY @97238 /* ~Es siempre un placer hablar contigo, Dusk. Y recuerda. La Dama del Bosque te oye. Ella te asistir� si tu intenci�n es la de proteger a los dem�s.~ */
  IF ~~ THEN EXIT
END

// FIN INTERACCION NPCs

IF WEIGHT #13 ~RandomNum(12,6)~ THEN BEGIN 9 // from:
  SAY @9729 /* ~La criatura que cre� la isla es peque�a, viste ropa verde y su cabello es rojo como el fuego. Est� siempre feliz y lo expresa mediante bailes y risas incesantes.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 ~RandomNum(12,7)~ THEN BEGIN 10 // from:
  SAY @97210 /* ~El anillo s�lo puede ser empleado por aquellos que son afines a la naturaleza, tales como druidas o exploradores. Cuando sea llamada, luchar� a su lado. Ten en cuenta que mi habilidad especial es llamar a mis fieles amigos, los animales guardianes del Bosque de Mir.~ */
  IF ~~ THEN EXIT
END

// COMENTARIO sobre convocaciones

IF WEIGHT #15 ~RandomNum(12,8)~ THEN BEGIN 11 // from:
  SAY @97211 /* ~Baba es un rat�n del bosque. Parece un rat�n normal, pero pronto ver�s que es algo... particular. No suele estar siempre de buen humor, pero si est� sano, hay mejores chances de que te obedezca. Por ende, si lo ves herido, c�ralo y puede que tengas mejor suerte en convencerlo de que trabaje para ti.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #16 ~RandomNum(12,9)~ THEN BEGIN 12 // from:
  SAY @97212 /* ~Jack es un orgulloso lobo de invierno. Es m�s poderoso que la mayor�a de su clase. Posee una habilidad especial, capaz de congelar a sus enemigos. Es el alfa de la manada, as� que siempre estar� dispuesto en ir al frente de batalla.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #17 ~RandomNum(12,10)~ THEN BEGIN 13 // from:
  SAY @97213 /* ~Sayang es una de las m�s j�venes de la manada. Es dulce, aunque en�rgica. Pronto ver�s la velocidad con la que se mueve. Es muy entusiasta y le gusta jugar.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 ~RandomNum(12,11)~ THEN BEGIN 14 // from:
  SAY @97214 /* ~Thiago es un poderoso oso pardo. Admito que est� m�s gordo de lo que deber�a. Le gusta mucho comer miel. En la isla en la que nos encontramos, hay de sobra, por lo que puede que... no sea muy veloz que digamos. Pero te aseguro que a la hora de la verdad, es duro como una roca.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #19 ~RandomNum(12,12)~ THEN BEGIN 15 // from:
  SAY @97215 /* ~Uma es m�s vieja de lo que parece. De hecho, por su pelaje (y otras... cualidades) notar�s que no es una loba com�n y corriente. Es una loba de las penumbras, y tiene muchas caracter�sticas de un esp�ritu sombr�o del bosque. Es inmune al fr�o, pero vulnerable al fuego. Puede hacerse invisible, as� que puedes enviarla a explorar si lo deseas.~ */
  IF ~~ THEN EXIT
END



IF 
~~ THEN BEGIN 21 // from:
  SAY @97252 /* ~Comprendo tus sentimientos. Mi caso es el opuesto, pese a que ahora me encuentre aqu�, temporalmente, en este plano. Quiz�s, alg�n d�a pueda regresar por completo.~ */
  IF ~~ THEN EXIT
END


// INTERACCION NPC pt2
// DUSK Necesario para Mission3

I_C_T P_BELLD 30 P_Alen_Talk2
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800017 /* �Estamos mencionando obviedades? Claro que mi t�nica es especial. Est� hecha a medida para los Selu'taar de Cormanthyr. S�lo los hechiceros de alto rango pueden vestirla. Es muy interesante, cuando mand� a hacerla la ped� con ciertos ornamentos y- */
== p_belld IF ~~ THEN @800018 /* Creo que puedo aplicar un hechizo para mejorarla. */
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800019 /* �Qu�? �C�mo puede una ninfa exhibicionista mejorar una prenda �lfica del Reino Oculto? Querida, creo que finalmente la locura ha alcanzado tu mente astral. */
== p_belld IF ~~ THEN @800020 /* Eres una criatura que ha estado en varios planos en cuesti�n de pocos a�os. Has estado en el Plano Material, de Hielo, en el Abismo y en el Plano de los Muertos. Tu misma esencia se sacrifica a medida que te especializas en el arte arcano. */
== p_belld IF ~~ THEN @800021 /* Puedo aplicar dicha mejora, Alendir. Tu t�nica ser� acorde a la esencia que he mencionado anteriormente. */
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800022 /* �Y por qu� habr�as de hacerlo? T� misma lo has dicho. No tengo el mayor de los respetos hacia las convocaciones. */
== p_belld IF ~~ THEN @800023 /* Nadie ha dicho eso, Maestro de la Escarcha. Por el contrario, yo estoy convencida de que hay lugar para que tu redenci�n arcana sea posible. */
== p_belld IF ~~ THEN @800024 /* No habr�a de ofrecerte dicho poder si no fuese as�. */ 
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800025 /* Hm. De acuerdo. Haz lo que tengas que hacer. Y que sea r�pido. A diferencia tuya, no me siento c�modo estando semidesnudo. */
== p_belld IF ~~ THEN @800026 /* No os preocup�is. Como ver�s, todo ser� con presteza. */ DO ~TakePartyItem ("p_falrob") DestroyItem ("p_falrob") CreateItem ("p_alrob2",1,1,0) GiveItem ("p_alrob2", "P_ALEN")~
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800027 /* No exagerabas con lo de presteza. �Ya est�? Es... es verdad... */
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800028 /* El cambio es significativo. No logro comprender c�mo es que una criatura del Plano Astral, atada a un anillo, puede tener tanto poder. */
== p_belld IF ~~ THEN @800029 /* Mi poder no es grande. Lo que consideras poderoso es mi capacidad de canalizar ciertas energ�as, joven selu'taar. */ 
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800030 /* Comprendo. */
== p_fal25J IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @800031 /* No te vendr�a mal decir gracias de vez en cuando, Alendir. */
== P_ale25J IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @800032 /* *susurro* Silencio, ni�a. */
== P_ale25J IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800033 /* *carraspeo* Bueno, esta mejora es algo que podr�a haber logrado yo si me lo hubiera propuesto. Pero... gracias, Bellfame. Os lo agradezco. */
END

I_C_T P_BELLD 28 P_Alen_Talk1
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800001 /* �Me est�s hablando a m�, ninfa? */
== p_belld IF ~~ THEN @800002 /* S�. Mi nombre es- */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800003 /* Ah, s�. Bellfame. La ninfa semidesnuda que pertenece a Dusk. */
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @800004 /* �Me hablabas, Alendir? */
== P_AlenJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @800005 /* Nadie te mencion�, humano mequetrefe. */
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID)~ THEN @800006 /* Ehrm. Bueno. */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800007 /* Dime, invocaci�n. �Qu� es lo que quieres? No tengo mucho tiempo disponible, ver�s. Soy un elfo muy ocupado. */
== p_belld IF ~~ THEN @800008 /* Tampoco tienes mucho cari�o por las invocaciones, pese a que seas un especialista en conjuraciones. */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800009 /* �Implicas que debo preocuparme por criaturas que no pueden morir aqu� en el Plano Material? Debe ser una de las cosas m�s est�pidas que he escuchado. �Por qu� habr�a de hacerlo? */
== p_belld IF ~~ THEN @800010 /* Puede que no estemos vulnerables a lo que ustedes llaman muerte. Pero no estamos exentos de dolor. Incluso podemos recibir da�o de nuestros propios "amos" y volveremos a servir cuando seamos llamados nuevamente. */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800011 /* Hm. No lo hab�a pensado de esa manera. Lo cierto es que los experimentos crueles son m�s id�neos de los humanos. Hechiceros de esta raza han perdido la cordura en ocasiones que no puedo ni siquiera contar. */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800012 /* Experimentar conjuros sobre convocaciones no es una pr�ctica que les sea desconocida. */
== p_belld IF ~~ THEN @800013 /* Y t� eres un Maestro de la Escarcha. Llamar a las criaturas del Plano de Hielo es una de tus especialidades. �Eres cruel con ellas? */
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @800014 /* No. A decir verdad no. Pero s� les llamo para combatir. Debo confesar, que les he llamado como carnada, incluso. �Eso me hace cruel, ninfa? */
END


I_C_T P_BELLD 26 P_Fall_Talk1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722017 /* Bellfame... s�, �c�mo lo sabes? */
== p_belld IF ~~ THEN @9722018 /* A�n cuando mi cuerpo descanse en el Anillo de Mir, mi �rbol se encuentra en este plano. Por lo que soy capaz de percibir la tierra aqu�, en el Plano Material. */
== p_belld IF ~~ THEN @9722019 /* Y t� sue�as, mortal. Tus sue�os... son oscuros. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722020 /* S�... pero son s�lo eso, sue�os. */
== p_belld IF ~~ THEN @9722021 /* No, mortal... Hay una fuerza inefable que intenta alcanzarte... toda tu vida has sido perseguida por esta insondable sombra. */
== p_belld IF ~~ THEN @9722022 /* Te habla en tus sue�os, �no es as�? Es como si las olas del mar chocasen violentamente contra la costa y a su vez, el sonido del agua se entremezclara con un zumbido furioso de una horda de avispas. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722023 /* �C�mo... c�mo lo sabes? */
== p_belld IF ~~ THEN @9722024 /* Las criaturas de otros planos est�n buscando constantemente invadir este... el Plano Material. Muchas son inofensivas y nunca lograr�n llegar a este lado. */
== p_belld IF ~~ THEN @9722025 /* Sin embargo, existen otras... Creaciones c�smicas y arcanas al comprendimiento de los mortales. Igual de imcomprensible es su poder. */
== p_belld IF ~~ THEN @9722026 /* Estas criaturas buscar�n constantemente rasgar el plano en el que se encuentran para llegar a este. Y as� es la criatura que intenta contactarte. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722027 /* �Por qu�... por qu� yo? */
== p_belld IF ~~ THEN @9722028 /* Recuerda nuestra primera conversaci�n, peque�a. Tu infancia. Tu padre. Las ara�as. La naturaleza. */
== p_belld IF ~~ THEN @9722029 /* Todo sucedi� por una raz�n. Pero no desesperes, querida. Mientras sigas al lado de tus amigos, estar�s a salvo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722030 /* Entiendo. Gracias, Bellfame. Es un alivio hablar contigo. */
END

I_C_T P_BELLD 24 P_Bellfame_P_Fall1
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722002 /* �A qu� te refieres, Bellfame? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722003 /* Es algo relacionado... a tu infancia. Puede que a tu padre.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722004 /* �A mi padre? Era humano, un gran ballestero llamado Gerwulf. �Qu� sabes de �l? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722005 /* T� lo has visto morir, �no es verdad?  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722006 /* Yo... s�... Pero, �c�mo sabes eso? Lo has... �lo has percibido a trav�s de mi 'aura'? (Sea lo que sea que eso signifique). */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722007 /* S�. Tu hogar fue atacado por una fuerza de oscuridad.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722008 /* S�... fue un grupo de ara�as gigantes. Ara�as espadas y fase. */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722009 /* Pero fueron animales, a fin de cuentas. �Por qu� has dicho oscuridad? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722010 /* Shyntquarra. La Legi�n que no puede ser vista.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722011 /* �Shyntquarra? �Qu� sabes de ello, Bellfame? */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722012 /* Nadie lo sabe con certeza, mortal. S� que piensas que las criaturas que te atacaron fueron animales. Pero el aura que percibo en ti dice lo contrario.  */
== P_BELLD IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722013 /* Las ara�as que te atacaron provienen de un plano diferente al que ahora te encuentras. De hecho, es muy probable que se encuentren en mi plano.  */
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9722014 /* Entiendo... pero... las ara�as fueron derrotadas. Mi padre acab� con todas ellas antes de que... el veneno acabara con �l. */
END

// INTERACCION NPC pt2
// DUSK Necesario para Mission3

I_C_T P_BELLD 22 P_Dusk_Bellf_Anomen1
== AnomenJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @97254 /* Es lo normal, criatura. Los vuestros no hablan como cotorras con aquellos que son sus amos. */
== P_BELLD IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @97255 /* �Amos? Puede que est� atada a la voluntad de quien usa el Anillo del Bosque de Mir, pero est�n lejos de ser nuestros amos.  */
== AnomenJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @97256 /* Puede ser. Eso no quiere decir que seas libre de hacer lo que te plazca. */
END

I_C_T P_BELLD 20 P_Dusk_Bellf_HaerDalis1
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @97251 /* Ah, peque�a jilguero. Este no es mi hogar, pero pretendo formar uno aqu�. Este gorri�n dispone de muchos recursos ver�s. */
END

I_C_T P_BELLD 18 P_Dusk_Bellf_Wilson1
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97241 /* (Lamento, bufido) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97242 /* Oh, pobre criatura. S�, s� a lo que te refieres. Por eso es que le he ense�ado a Thiago algunas maneras de mejorar su defensa.  */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97243 /* (Gru�ido) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97244 /* No es nada muy complicado. He pensado en tus problemas y he llegado a una soluci�n simple: Debes aprender las mismas habilidades que mi Thiago. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97245 /* (Bufido) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97246 /* �Qu� debes hacer? S�lo debes comer este fruto astral. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97247 /* (Lamento) */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97248 /* No es muy sabroso, lo s�, pero te aseguro que valdr� la pena, Wilson. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97249 /* (Bufido, gru�ido) */ DO ~CreateItem ("P_WILS1",1,1,0) UseItem ("P_WILS1", Myself) DestroyItem ("P_WILS1")~
END


I_C_T P_BELLD 7 P_Dusk_Bellf_Cernd1
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @97216 /* Ten�a mis sospechas de eso, pero no estaba tan seguro. A�n as�, el Equilibrio indica que deber�as estar en este Plano, ninfa. Espero que puedas encontrar el camino a casa... la madre naturaleza as� lo quiere. */
END




I_C_T P_BELLD 16 P_Dusk_M3_DecisionBF
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97218 /* Pese a que no he pasado mucho tiempo en el Bosque de las Sombras... debo admitir que ha calado muy en lo hondo de mi coraz�n. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97219 /* No se necesitan de a�os para apreciar a la creaci�n de nuestra Se�ora del Bosque, Dusk.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97220 /* Asumo que hablas de Mielikki, �no es as�, Bellfame? */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97221 /* As� es, querido. La hija de Silvanus es la voz de los �rboles y protectora de aquellos que luchan por defender la vida.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97222 /* Celine le rend�a pleites�a en sus rituales matutinos. Recuerdo que eso llamaba mucho mi atenci�n. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97223 /* Lo que he visto en el campo de batalla... me ha hecho cuestionarme sobre seguir o no una fe. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97225 /* De peque�o, me ense�aron a rendir culto a lady Tymora... Si uno es feliz, la Dama de la Fortuna le sonreir�. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97226 /* Sin embargo... esos momentos han sido s�lo ef�meros... y s�lo permanecen en mi mente, como recuerdos que guardo con gran cari�o. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97227 /* Durante a�os has estado en las sombras, Dusk. Pero has hallado paz en la naturaleza, pese a las desdichas que has vivido luego de conocer Shilmista.  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97228 /* Tu curiosidad por los rituales de tu amada no era s�lo eso... Puedo ver a veces le rezas a Mielikki.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97229 /* �Q-qu�? �C�mo lo sabes? */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97230 /* Aun cuando me encuentre lejos, en otro plano, a�n tengo una conexi�n �nica con Mir. Mi �rbol vive en esta �poca y puedo sentir la tierra. Por consecuencia, tambi�n este plano.  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97231 /* Puede que me encuentre 'dentro' del anillo, Dusk... Pero el hecho de que pueda o�r tus plegarias a la Reina del Bosque, me dice que tienes una capacidad... especial.  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97232 /* Lo quieras o no, tienes una profunda conexi�n con la naturaleza.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97233 /* E-entiendo, Bellfame... No me digas que eres capaz de ver todo lo que hago. Eso ser�a espeluznante. �Ja! */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97234 /* No entiendo, joven Dusk. �Qu� ser�a espeluznante?  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97235 /* *carraspeo* Nada, Bellfame. S�lo bromeaba. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97236 /* No comprendo tus bromas, joven Dusk. Quiz�s, cuando el tiempo sea m�s propicio, puedas explic�rmelo mejor.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97237 /* Ehrm... s�, claro que s�. Hasta ese entonces, gracias por esta conversaci�n. */
END
