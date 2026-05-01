BEGIN ~p_uma~

IF ~See("Viconia")
InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
//RandomNum(3,1)
Global("P_uma_ITC_Viconia1","GLOBAL",0)
~ THEN BEGIN CA_VIC_01 // from:
  SAY @11100007 /* ~*Uma jadea mientras es acariciada por las glaucas manos de Viconia.*~ */
  IF ~~ THEN DO ~SetGlobal("P_uma_ITC_Viconia1","GLOBAL",1)~ GOTO CA_VIC_02
END

IF 
~~ THEN BEGIN CA_VIC_02 // from:
  SAY @11100015 /* ~*Uma parece comprender a la perfección las palabras de Viconia mientras mueve ligeramente la cola.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Viconia")
InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("P_uma_ITC_Viconia1","GLOBAL",1)
Global("P_UmaViconia_CA_001","GLOBAL",0)
~ THEN BEGIN CA_VIC_03 // from:
  SAY @11100016 /* ~*Las orejas de Uma parecen hojas congeladas de invierno mientras admira a Viconia.*~ */
  IF ~~ THEN DO ~SetGlobal("P_UmaViconia_CA_001","GLOBAL",1)~ GOTO CA_VIC_04
END

IF 
~~ THEN BEGIN CA_VIC_04 // from:
  SAY @11100020 /* ~*Uma deja escapar un tímido pero no menos escalofriante aullido.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Hexxat")
InParty("Hexxat")
!StateCheck("Hexxat",STATE_SLEEPING)
//RandomNum(3,1)
Global("P_uma_ITC_Hexxat1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9230 /* ~*Uma se sienta al lado de Hexxat con una comodidad que pocos se atreverían a demostrar ante la oscura presencia de la vampiresa.*~ */
  IF ~~ THEN DO ~SetGlobal("P_uma_ITC_Hexxat1","GLOBAL",1)~ GOTO 1
END

IF 
~~ THEN BEGIN 1 // from:
  SAY @9235 /* ~*Uma emite un aullido mientras es acariciada por Hexxat. Ciertamente, la loba se siente a gusto a su lado.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Imoen2")
InParty("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
//RandomNum(3,2)
Global("P_uma_ITC_Imoen21","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @9236 /* ~*Uma parece corretar sigilosamente y observa a Imoen con una actitud un tanto juguetona.*~ */
  IF ~~ THEN DO ~SetGlobal("P_uma_ITC_Imoen21","GLOBAL",1)~ GOTO 3
END

IF 
~~ THEN BEGIN 3 // from:
  SAY @92312 /* ~*Uma se escapa con velocidad y su pelaje parece confundirse con las sombras del paraje.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~See("Aerie")
InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
//RandomNum(3,3)
Global("P_uma_ITC_Aerie1","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @92313 /* ~*Uma se echa de espaldas al lado de Aerie y expone su panza a la avariel para que ésta la acaricie.*~ */
  IF ~~ THEN DO ~SetGlobal("P_uma_ITC_Aerie1","GLOBAL",1)~ GOTO 5
END

IF 
~~ THEN BEGIN 5 // from:
  SAY @92318 /* ~*Uma sigue recibiendo las caricias de Aerie mientras se relaja con el tono de su voz.*~ */
  IF ~~ THEN DO ~~ EXIT
END


IF
~RandomNum(5,1)~ THEN BEGIN 6 // from:
  SAY @92319 /* ~*Uma se pone a tu lado y espera fervientemente unas caricias de tu parte. Por su aspecto lóbrego, primero hubieses pensado que quería devorarte. Ahora sólo observas como se regodea cuando la acaricias.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 7 // from:
  SAY @92320 /* ~*Uma comienza a cavar en un pequeño lugar, arrojando tierra por todos lados. Intentas comprender la razón, pero imaginas que es algo rutinario para ella.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 8 // from:
  SAY @92321 /* ~*De la nada, Uma comienza a ladrar. Pero su ladrido es extraño, casi como si estuviese tosiendo como un humano que se encuentra en agonía. Bellfame te indica que no te preocupes, que es simplemente algo que Uma hace cuando está emocionada.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 9 // from:
  SAY @92322 /* ~*Los argénteos ojos de Uma se posan en ti. Durante unos segundos te observa con solemnidad y luego muestra sus afilados colmillos y su lengua, dibujando una sonrisa en su hocico.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 10 // from:
  SAY @92323 /* ~*Sientes una fría presencia a tu lado. No es otra más que Uma, quien se ha ocultado en las sombras sólo para sorprenderte. Pretendes estar asombrado, haciendo que Uma comience a corretear a tu alrededor, demostrando alegría ante su juego.*~ */
  IF ~~ THEN EXIT
END


I_C_T P_uma CA_VIC_03 P_CA_VIC_02
== ViconiJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @11100017 /* Eres una buena discípula de la Oscuridad, mi pequeña kal'daka. Creo que estamos listas para llevar a cabo nuestra estrategia. */
== P_uma IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @11100018 /* *Uma jadea y el brillo en sus ojos resalta en su pelaje negruzco.*  */
== ViconiJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @11100019 /* El Diezmo de Shar será entonces. Cuando estés cerca mío y haya enemigos cerca, lo haremos, ¿sí? */
END

I_C_T P_uma CA_VIC_01 P_CA_VIC_01
== ViconiJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @11100008 /* La oscuridad de tu pelaje es hermosa, kal'daka. Podría admirarla por horas y horas. */
== P_uma IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @11100009 /* *Uma se estremece de placer ante la sonrisa de la drow*  */
== P_BELLD IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @11100010 /* Es bueno ver disfrutar a Uma de halagos y cariños de un habitante primario, sacerdotisa de Shar. Creo que podrías despertar en ella un poder oculto, aunque puede ser algo mutuo. */
== ViconiJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @11100011 /* Eres misteriosa, narikia. No lo digo como algo malo. Por extraño que parezca, tu presencia no me aborrece. */
== P_BELLD IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @11100012 /* Deberías pasar más tiempo con Uma. Parece ser que es algo que les hace bien a ambas. */
== ViconiJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @11100013 /* *sonríe* Por más que quisiera, parece que no quiere alejarse de mí. Tendré en cuenta lo que me has dicho sobre el poder. No es algo que pueda despreciar a la ligera. */
== ViconiJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @11100014 /* Ven, Uma. Te enseñaré algo sobre Shar y quizás ambas seamos compañeras de la oscuridad. */
END


I_C_T P_uma 4 P_uma_Aerie1
== AerieJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @92314 /* ¡Te gustan los mimos, Uma! Y no es de esperar. Eres sumamente hermosa. */
== P_uma IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @92315 /* *Uma jadea y mueve la cola, levantando una sutil polvareda.*  */
== P_BELLD IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @92316 /* Pese a la sombría actitud de Uma, pareces agradarle, querida. Aunque no es de sorprender. Tu naturaleza afable es un don en estos tiempos. */
== AerieJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @92317 /* Amo a tus animales, Bellfame. En cierto sentido, e-es un alivio pensar que están a salvo en el Plano Astral. */
END


I_C_T P_uma 2 P_uma_Imoen21
== Imoen2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @9237 /* Hmmm... me pregunto a dónde habré dejado mi cinta de cabello. Si tengo los mechones sueltos me cubren la cara y así se me dificulta lugar para <CHARNAME>. */
== P_uma IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @9238 /* *Uma para sus orejas y escucha atenta a las palabras de Imoen. Parece divertirse.*  */
== Imoen2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @9239 /* ¿Dónde estará? Es posible que... una loba de pelaje negro y actitud traviesa... ¿me la haya robado? */
== P_uma IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @92310 /* *Uma muestra sus blancecinos colmillos y entre ellos se ve una cinta de cabello color avellana. Imoen la observa divertida y Uma comienza la huída.*  */
== Imoen2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @92311 /* ¡Ja! Lo sabía. ¡Ven aquí, pequeña tramposa! ¿Otra vez hurgando mis cosas, eh? ¡Te atraparé! */
END


I_C_T P_uma 0 P_uma_Hexxat1
== HexxatJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @9231 /* Ah, la cachorra de las sombras viene de nuevo a mí. No puedes mantenerte alejada de mí, ¿verdad? */
== P_uma IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @9232 /* *Uma mueve la cola ante la voz de Hexxat y sus enormes ojos brillan de admiración.*  */
== P_BELLD IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @9233 /* Uma siempre se ha visto atraída hacia las sombras. Puede que su naturaleza sea oscura, pero eso no la hace de sangre fría como tú, criatura de la noche. */
== HexxatJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @9234 /* Has criado a una hermosa criatura, ninfa. Soy más que capaz de admirar su belleza... y de comprender su naturaleza poco... apreciada. */
END
