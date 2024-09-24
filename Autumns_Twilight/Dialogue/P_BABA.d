BEGIN P_BABA

// Bloque 1 (FTF)

IF WEIGHT #0 ~RandomNum(3,1)~ 
THEN BEGIN 0 
  SAY @9711 /* El pequeño Baba te mira con sus grandes ojos cuando te acercas. Comienza a mover la cola, no sabes muy bien si eso significa que está feliz o molesto. Mueve su diminuto hocico y emite algo que parece ser una especie de ladrido, lo que te deja confundido ya que estás interactuando con un roedor. */
  IF ~HPGT(Myself,9)~ THEN REPLY @9712 /* ¡Salve, gran Baba! Sé que no soy digno de dirigirme a ti, pero con el debido respeto, me atrevo a hacer solicitud de tus servicios. Si tienes algún ítem de valor para mí, ¿sería el gran Baba tan magnánimo de entregármelos y así aligerar su carga? */ GOTO 20
  IF ~HPGT(Myself,9)~ THEN REPLY @9713 /* ¿Quién es el ratoncito más lindo del mundo? ¡Tú lo eres, sí, Baba, tú lo eres! Y como es el ratoncito más lindo del mundo, seguro vas a darme lo que sea que tengas de valor contigo, ¿no es así? (intentas acariciarlo, mientras esbozas una gran sonrisa forzada) */ GOTO 21
  IF ~HPGT(Myself,9)~ THEN REPLY @9714 /* Oye, Baba. ¿Quieres un trozo de pastel? Debo tener algo guardado en mi mochila. Te daré una porción si me das lo que has robado, ¿qué te parece? */ GOTO 22
  IF ~ HPLT(Myself,10) ~ THEN REPLY @97122 /* Oye Baba, ¿te encuentras bien? Pareces más nervioso que de costumbre. ¿Te encuentras herido? */ GOTO 29
END

IF ~~ THEN BEGIN 20 
  SAY @9715 /* Por unos segundos, parece que has logrado calar en el orgullo de Baba. Pero de repente, comienza a sacudirse como un loco y huye de ti, barbotando gruñidos. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~~ THEN BEGIN 21 
  SAY @9716 /* Durante los primeros segundos, te mira con desconfianza. Pero, finalmente, se rinde ante tus caricias mientras emite algunos extraños sonidos agudos. Baba decide darte todo lo que tiene en su inventario. */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 22 
  SAY @9717 /* Cuando mencionas comida, las orejas de Baba se estiran durante un momento. Pero al cabo de unos segundos, se percata de que sólo estás intentando sobornarlo. Su orgullo se hiere y sale corriendo como un desquiciado, mientras emite barboteos de furia contra ti. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

// Bloque 2 (TFF)

IF WEIGHT #1 ~ RandomNum(3,2)
~ THEN BEGIN 1 // from:
 SAY @9718 /* El pequeño Baba te mira con sus grandes ojos cuando te acercas. Comienza a saltar como un desquiciado y no sabes si eso significa que está feliz de verte o quizás planea atacarte. Mueve sus manitos y emite sonidos que, inconfundiblemente, parecen los de un cachorro canino, lo que te deja confundido ya que estás interactuando con un roedor. */
  IF ~HPGT(Myself,9)~ THEN REPLY @9719 /* ¡Salve, gran Baba! Sé que no soy digno de dirigirme a ti, pero con el debido respeto, me atrevo a hacer solicitud de tus servicios. Si tienes algún ítem de valor para mí, ¿sería el gran Baba tan magnánimo de entregármelos y así aligerar su carga? */ GOTO 23
  IF ~HPGT(Myself,9)~ THEN REPLY @97110 /* ¿Quién es el ratoncito más lindo del mundo? ¡Tú lo eres, sí, Baba, tú lo eres! Y como es el ratoncito más lindo del mundo, seguro vas a darme lo que sea que tengas de valor contigo, ¿no es así? (intentas acariciarlo, mientras esbozas una gran sonrisa forzada) */ GOTO 24
  IF ~HPGT(Myself,9)~ THEN REPLY @97111 /* Oye, Baba. ¿Quieres un trozo de pastel? Debo tener algo guardado en mi mochila. Te daré una porción si me das lo que has robado, ¿qué te parece? */ GOTO 25
  IF ~ HPLT(Myself,10) ~ THEN REPLY @97122 /* Oye Baba, ¿te encuentras bien? Pareces más nervioso que de costumbre. ¿Te encuentras herido? */ GOTO 29
END

IF ~~ THEN BEGIN 23 
  SAY @97112 /* Baba, de repente erguido, parece estar de acuerdo contigo, emitiendo sonidos extraños de canino. El hecho de que hayas hablado con la verdad, le ha convencido de entregarte lo que tiene en su inventario. */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 24 
  SAY @97113 /* Por unos segundos casi logras convencerlo, pero Baba descubre que sólo quieres lo que él tiene, por lo que sale corriendo mientras le escuchas quejarse en un idioma incomprensible. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~~ THEN BEGIN 25 
  SAY @97114 /* Cuando mencionas comida, las orejas de Baba se estiran durante un momento. Pero al cabo de unos segundos, se percata de que sólo estás intentando sobornarlo. Su orgullo se hiere y sale corriendo como un desquiciado, mientras emite barboteos de furia contra ti. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END


// Bloque 3 (FFT)

IF WEIGHT #2 ~ RandomNum(3,3)
~ THEN BEGIN 2 // from:
 SAY @97115 /* El pequeño Baba te mira con sus grandes ojos cuando te acercas. Comienza a correr alrededor tuyo sin razón aparente y no sabes si lo hace porque está feliz de verte o porque planea robarte alguna joya de valor que puedas poseer. Se te sube por tus ropas, trepando por una de tus piernas. Intentas sacártelo de encima pero es difícil. Mientras, emite sonido de jadeo, similares a los de un perro, lo que te deja extrañado, porque sabes que interactúas con un roedor. */
  IF ~HPGT(Myself,9)~ THEN REPLY @97116 /* ¡Salve, gran Baba! Sé que no soy digno de dirigirme a ti, pero con el debido respeto, me atrevo a hacer solicitud de tus servicios. Si tienes algún ítem de valor para mí, ¿sería el gran Baba tan magnánimo de entregármelos y así aligerar su carga? */ GOTO 26
  IF ~HPGT(Myself,9)~ THEN REPLY @97117 /* ¿Quién es el ratoncito más lindo del mundo? ¡Tú lo eres, sí, Baba, tú lo eres! Y como es el ratoncito más lindo del mundo, seguro vas a darme lo que sea que tengas de valor contigo, ¿no es así? (intentas acariciarlo, mientras esbozas una gran sonrisa forzada) */ GOTO 27
  IF ~HPGT(Myself,9)~ THEN REPLY @97118 /* Oye, Baba. ¿Quieres un trozo de pastel? Debo tener algo guardado en mi mochila. Te daré una porción si me das lo que has robado, ¿qué te parece? */ GOTO 28
  // Test HPLT
  IF ~ HPLT(Myself,10) ~ THEN REPLY @97122 /* Oye Baba, ¿te encuentras bien? Pareces más nervioso que de costumbre. ¿Te encuentras herido? */ GOTO 29
END

IF ~~ THEN BEGIN 26 
  SAY @97119 /* Por unos segundos, parece que has logrado calar en el orgullo de Baba. Pero de repente, comienza a sacudirse como un loco y huye de ti, barbotando gruñidos. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~~ THEN BEGIN 27 
  SAY @97120 /* Por unos segundos casi logras convencerlo, pero Baba descubre que sólo quieres lo que él tiene, por lo que sale corriendo mientras le escuchas quejarse en un idioma incomprensible. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~~ THEN BEGIN 28 
  SAY @97121 /* Si bien ves el evidente desagrado que tiene Baba sobre ti, el pequeñuelo se ha dado cuenta de que lleva varias horas sin comer, por lo que decide darte lo que ha conseguido, a cambio de la promesa de comida. */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

// HPLT Test
IF ~~ THEN BEGIN 29 
  SAY @97123 /* Baba parece indignarse por tan obvia afirmación, por lo que decide mostrarte con sus pequeñas manitos dónde tiene la herida de combate. Luego, decide huir de ti, ya que pareces no preocuparte por su bienestar. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT 
END

IF ~See("Minsc")
InParty("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
RandomNum(3,1)
Global("P_baba_ITC_Minsc1","GLOBAL",0)
~ THEN BEGIN 30 // from:
  SAY @97124 /* ~*Baba parece observar a Minsc con gran desconfianza. En realidad, de quien desconfía es de Bubú.*~ */
  IF ~~ THEN DO ~SetGlobal("P_baba_ITC_Minsc1","GLOBAL",1)~ GOTO 31
END

IF 
~~ THEN BEGIN 31 // from:
  SAY @97134 /* ~*Podrías jurar que Baba sonríe victorioso cuando ve alejarse a Minsc con Bubú.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Yoshimo")
InParty("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
RandomNum(3,2)
Global("P_baba_ITC_Yoshimo1","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY @97135 /* ~*Baba parece estar observando detenidamente a Yoshimo.*~ */
  IF ~~ THEN DO ~SetGlobal("P_baba_ITC_Yoshimo1","GLOBAL",1)~ GOTO 33
END

IF 
~~ THEN BEGIN 33 // from:
  SAY @97141 /* ~*Baba parece asentir con su pequeña cabeza. Está totalmente convencido de que se ha explicado correctamente.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~See("Mazzy")
InParty("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
RandomNum(3,3)
Global("P_baba_ITC_Mazzy1","GLOBAL",0)
~ THEN BEGIN 34 // from:
  SAY @97142 /* ~*Baba se acerca a Mazzy y se detiene a observarla fijamente. Por primera vez, observas dudas en su mirada.*~ */
  IF ~~ THEN DO ~SetGlobal("P_baba_ITC_Mazzy1","GLOBAL",1)~ GOTO 35
END

IF 
~~ THEN BEGIN 35 // from:
  SAY @97163 /* ~*Baba parece extasiado... y al cabo de unos segundos, cae en la cuenta de que está siendo observado por todos. Para evitar la vergüenza, huye con gran velocidad.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],50)~ EXIT
END

I_C_T P_baba 34 P_baba_Mazzy1
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97143 /* Oh, hola Baba. ¿Cómo te encuen--? */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97144 /* *Baba comienza a emitir sus típicos sonidos extraños, interrumpiendo a Mazzy. Parece haber cierto dolor en sus ojos.*  */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97145 /* Ah, eso es hermoso Baba. */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97146 /* *susurro* No entiendo, ¿qué sucede, Bellfame? */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97147 /* ¿Acaso no es obvio, mortal? Baba está declarando su amor por ti. */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97148 /* *Baba sigue su 'discurso' mientras Mazzy y Bellfame hablan por lo bajo.*  */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97149 /* ¿Qué? ¿El roedor está enamorado de mí? */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97150 /* Sí. Ahora mismo está recitando lo que ustedes llaman poesía. */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97151 /* Oh, ya veo. ¿Y qué es lo que dice? */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97152 /* *Baba sigue emitiendo sonidos exóticos.*  */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97153 /* Dice algo así:
'En lo profundo de mi pequeña madriguera,
suspiro de amor por una mujer tan bella.
En sus ojos encuentro la luz verdadera,
y mi corazón se llena de estrellas.' */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97154 /* 'Aunque soy pequeño y frágil, no temo luchar,
por el amor que siento en mi ratonil ser.
Bajo la luna, susurro versos sin cesar,
pintando en la noche un dulce querer.' */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97155 /* 'Oh, Mazzy, escucha mi voz,
soy un ratón que te ama con fervor.
En mi pequeño ser hay un amor veloz,
un ratón enamorado, eterno enamorador.' */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97156 /* *Baba finalmente termina su 'declaración'.*  */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97157 /* Oh, es... sumamente hermoso. No creí que un... roedor pudiera componer algo tan bello. */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97158 /* Baba puede que sea duro con el resto de los mortales. Pero es la primera vez que veo expresa algo de amor genuino. */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97159 /* Entiendo. */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97160 /* Baba, gracias por tu poesía. Ven aquí. */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97161 /* *Los ojos de Baba brillan incesantemente y veloz se dirige hacia Mazzy.*  */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97162 /* *Mazzy lo toma en sus manos y lo eleva, plasmando un beso en su cabecita. Luego, vuelve a depositarlo en el piso.*  */
END


I_C_T P_baba 32 P_baba_Yoshimo1
== YoshJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @97136 /* ¿Qué es esto? Si es el buen Baba. Tú podrías ser un gran Ladrón de las Sombras, ¿sabes? */
== P_baba IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @97137 /* *Baba comienza a emitir sus clásicos sonidos extraños.*  */
== YoshJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @97138 /* Sí, bueno. La verdad no tengo idea de qué me estás diciendo. */
== P_baba IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @97139 /* *Baba sigue hablando su idioma y casi parece explicar lo que está 'diciendo' con sus pequeñas patitas.*  */
== YoshJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @97140 /* Por cómo lo expresas, no me atrevería a contradecirte, pequeño amigo. */
END


I_C_T P_baba 30 P_baba_Minsc1
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @97125 /* ¿Qué sucede con el pequeño Baba? ¿Eh? Bubú dice que tampoco confía en ti. */
== P_baba IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @97126 /* *Baba comienza a mover sus manitos con gran rapidez y emite sonidos extraños. Si hablaras su idioma, estarías casi seguro de que está insultando a Bubú*  */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @97127 /* ¡Eso es muy descortés! ¿Qué? ¿Tú también, Bubú? */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @97128 /* *chillido* */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @97129 /* ¡Oh, Bubú, eso es indecible! Nunca antes había oído insultos tales... ¡estoy totalmente avergonzado de ustedes! */
== P_baba IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @97130 /* *Baba sigue su rabieta y parece arengar negativamente al hámster.*  */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @97128 /* *chillido* */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @97132 /* Oh, no, eso no sucederá. Lo último que necesitamos es un combate a muerte entre roedores. <CHARNAME> estaría muy decepcionado de ustedes. */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @97133 /* ¡Vámonos, Bubú! Será mejor que te alejes de ese maleducado. */
END


