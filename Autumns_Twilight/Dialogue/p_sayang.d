BEGIN ~p_sayang~

IF ~See("Rasaad")
InParty("Rasaad")
!StateCheck("Rasaad",STATE_SLEEPING)
RandomNum(4,1)
Global("P_Sayang_ITC_Rasaad1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9220 /* ~*Sayang corretea alrededor de Rasaad, formando un torbellino de polvareda.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Sayang_ITC_Rasaad1","GLOBAL",1)~ GOTO 1
END

IF 
~~ THEN BEGIN 1 // from:
  SAY @9224 /* ~*Sayang emite un profundo aullido de aprobación y se sienta a esperar a Rasaad.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Dorn")
InParty("Dorn")
!StateCheck("Dorn",STATE_SLEEPING)
RandomNum(4,2)
Global("P_Sayang_ITC_Dorn1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @9225 /* ~*Sayang, en su habitual trote, se detiene en seco al presenciar la sombría presencia de Dorn.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Sayang_ITC_Dorn1","GLOBAL",1)~ GOTO 3
END

IF 
~~ THEN BEGIN 3 // from:
  SAY @92210 /* ~*Sayang sale disparada como un rayo, alejándose lo más posible de Dorn.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~See("Jaheira")
InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
RandomNum(4,3)
Global("P_Sayang_ITC_Jaheira1","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @92211 /* ~*Sayang corretea a gran velocidad alrededor de Jaheira.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Sayang_ITC_Jaheira1","GLOBAL",1)~ GOTO 5
END

IF 
~~ THEN BEGIN 5 // from:
  SAY @92216 /* ~*Sayang se incorpora con rapidez y mueve la cola con gran velocidad ante las palabras de Jaheira. Luego, sale disparada como un rayo, corriendo de un lado para otro.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~See("Nalia")
InParty("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
RandomNum(4,4)
Global("P_Sayang_ITC_Nalia1","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY @92217 /* ~*Sayang se acerca a Nalia y comienza a olfatearla. Levanta la cabeza y mira con un brillo incesante a la humana.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Sayang_ITC_Nalia1","GLOBAL",1)~ GOTO 7
END

IF 
~~ THEN BEGIN 7 // from:
  SAY @92223 /* ~*Sayang deja que Nalia le abrace mientras se emociona moviendo su cola de un lado para el otro.*~ */
  IF ~~ THEN EXIT
END


IF
~RandomNum(5,1)~ THEN BEGIN 8 // from:
  SAY @92224 /* ~*Sayang ladra con poder. Esto ocasiona que te acerques con rapidez. Al verte, sale corriendo, porque sabe que estabas por regañarla.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 9 // from:
  SAY @92225 /* ~*Sayang corre de un lado para el otro, levantando un huracán de polvo. Tanto, que ensucia todas tus pertenencias. Cuando ve que te diriges hacia ella, se detiene unos segundos y luego emprende la huída. Claramente no le gusta que la regañen.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 10 // from:
  SAY @92226 /* ~*Llegas a creer que Thiago es el que más comilón ya que siempre está pidiendo comida, pero te casi te convences de lo contrario cuando ves, en más de una ocasión, a Sayang olfateando tus pertenencias en busca de alimento.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 11 // from:
  SAY @92227 /* ~*Por un momento, ves a Sayang echada en el piso. Ves que se encuentra profundamente dormida, patas para arriba, mostrando toda su panza. Trotar de un lado a otro la debe dejar muy exhausta.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 12 // from:
  SAY @92228 /* ~*Sayang trota de un lado a otro en todo su esplendor de worg. Su velocidad es tal que tienes por seguro que ninguna presa habría de escaparse de sus fauces. Sin embargo, sabes que no tiene necesidad de cazar a menos que se lo ordenes, así que sólo corretea mientras persigue insectos voladores o mariposas y ves qué no se los come. Sólo lo hace por el placer de ejercitarse.*~ */
  IF ~~ THEN EXIT
END

I_C_T P_Sayang 6 P_Sayang_Nalia1
== NaliaJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @92218 /* Buena muchacha. Vaya que te gustan las caricias, ¿verdad? Me recuerdas a mis cachorros en el castillo. ¡Cómo los extraño!*/
== P_Sayang IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @92219 /* *La worg inclina la cabeza, sin saber bien a qué se refiere.*  */
== NaliaJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @92220 /* A padre le gustaban los sabuesos de caza. Estoy segura de que tú serías una muy buena. Aunque... creo que perteneces a la libertad. */
== P_Sayang IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @92221 /* *Sayang levanta una de sus patas delanteras y se la ofrece a Nalia.*  */
== NaliaJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @92222 /* Por lo pronto, niña, creo que tendré que conformarme con abrazarte. */
END


I_C_T P_Sayang 4 P_Sayang_Jaheira1
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @92212 /* Debo decir que me alegra ver que tengas tanta energía, pequeña worg. Pero procura guardar algo por si nos enfrentamos a algún enemigo imprevisto. */
== P_Sayang IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @92213 /* *Sayang se detiene al frente de Jaheira y se sienta.*  */
== P_BELLD IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @92214 /* Eres sorprendente, seguidora de Silvanus. Es muy difícil controlar a Sayang. Su espíritu tiene demasiado... ímpetu. */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @92215 /* Me gusta tu espíritu, Sayang. Eres una buena guardiana para Bellfame. Ella debe estar muy orgullosa de ti. */
END


I_C_T P_Sayang 2 P_Sayang_Dorn1
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @9226 /* Aléjate de mí, criatura insignificante. Te lo advierto, ninfa. Ordena a tu bestia que no se acerque más a mis pertenencias. */
== P_Sayang IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @9227 /* *Sayang baja sus orejas y agacha la cabeza ante las palabras del semiorco.*  */
== P_BELLD IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @9228 /* Mortal, haré lo que dices, sólo en beneficio de <CHARNAME>. De no ser así, es muy probable que nos encontraríamos como enemigos el uno con el otro. */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @9229 /* Bien, así me gusta. Ahora, vete de aquí. */
END


I_C_T P_Sayang 0 P_Sayang_Rasaad1
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @9221 /* ¿Qué sucede, Sayang? Ah, ¿estás buscando una carrera otra vez? */
== P_Sayang IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @9222 /* *Sayang demuestra un gran brillo en sus ojos y parece dibujar una sonrisa en su hocico.*  */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @9223 /* De acuerdo, de acuerdo. Deja que termine mi concentración y nos pondremos a ello. */
END
