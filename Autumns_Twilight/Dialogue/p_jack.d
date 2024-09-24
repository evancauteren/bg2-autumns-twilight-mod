BEGIN ~p_jack~

IF ~See("P_Dusk")
InParty("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
RandomNum(4,1)
Global("P_Jack_ITC_Dusk1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9270 /* ~*Jack mueve su cola y se echa a los pies de Dusk*~ */
  IF ~~ THEN DO ~SetGlobal("P_Jack_ITC_Dusk1","GLOBAL",1)~ GOTO 1
END

IF 
~~ THEN BEGIN 1 // from:
  SAY @9271 /* ~*Jack deja escapar algunos bufidos mientras Dusk acaricia su panza.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,1)~ THEN BEGIN 2 // from:
  SAY @9279 /* ~*Jack te observa durante unos segundos con sus ojos de zafiro. Luego, se sienta y parece esperar a que le des algunas instrucciones.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 3 // from:
  SAY @92710 /* ~*Jack respira sobre tu mano. Ves un halo gélido que desprende de su hocico. No es agresivo contigo y parece querer que lo acaricies.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 4 // from:
  SAY @92711 /* ~*Jack se detiene un instante y sus ojos se posan en la lejanía. Al cabo de unos segundos, aúlla profundamente.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 5 // from:
  SAY @92712 /* ~*La expresión de Jack es estoica, pero al cabo de unos segundos, mueve su cola y se sienta sobre sus dos patas traseras. Parece que te está pidiendo que lo acaricies.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 6 // from:
  SAY @92713 /* ~*De la nada, Jack ladra, lo cual es extraño. Bellfame te explica que lo hace porque quiere jugar contigo y porque te considera parte de su manada.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Edwin")
InParty("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
RandomNum(4,2)
Global("P_Jack_ITC_Edwin1","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY @92714 /* ~*Jack se acerca a Edwin para olisquear su túnica.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Jack_ITC_Edwin1","GLOBAL",1)~ GOTO 8
END

IF 
~~ THEN BEGIN 8 // from:
  SAY @92720 /* ~*Jack sigue moviendo su cola. Aunque luego de unos minutos, desiste y se aleja del mago rojo.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Valygar")
InParty("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
RandomNum(4,3)
Global("P_Jack_ITC_Valygar1","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY @92721 /* ~*Jack observa el horizonte y, de repente, se dirige veloz hacia Valygar.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Jack_ITC_Valygar1","GLOBAL",1)~ GOTO 10
END

IF 
~~ THEN BEGIN 10 // from:
  SAY @92725 /* ~*Jack muestra sus afilados colmillos. Aunque más que amenazante, parece demostrar una extraña sonrisa lupina.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Keldorn")
InParty("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
RandomNum(4,4)
Global("P_Jack_ITC_Keldorn1","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY @92726 /* ~*Jack parece acercarse, en un intento fallido, de forma sigilosa a Keldorn.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Jack_ITC_Valygar1","GLOBAL",1)~ GOTO 12
END

IF 
~~ THEN BEGIN 12 // from:
  SAY @92733 /* ~*Jack mueve su lomo de placer ante las caricias del viejo caballero.*~ */
  IF ~~ THEN EXIT
END


I_C_T P_JACK 11 P_Jack_Keldorn1
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @92727 /* Ya, ya, pequeño. Aquí tienes. */
== P_JACK IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @92728 /* *Jack toma la comida que Keldorn le ha ofrecido. Aparentemente es un trozo de carne seca, la cual degusta enormemente.*  */
== P_BELLD IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @92729 /* Mortal, no es necesario que lo alimentes a escondidas. Puedo ver claramente que tienes aprecio por el lobo del invierno. */
== KELDORJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @92730 /* Mis hijas siempre han querido un perro. Siempre les dije que el Distrito en el que vivimos no es el lugar correspondiente. Me pregunto si habré hecho mal... */
== P_BELLD IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @92731 /* Anhelas a tu familia... Puede que puedas remediar eso, mortal. */
== KELDORJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @92732 /* Sí... quizás... quizás cuando regrese pueda remediar eso. *acaricia a Jack**/
END

I_C_T P_JACK 9 P_Jack_Valygar1
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @92722 /* ¿Qué sucede, muchacho? Por tu rápido movimiento de cola diría que has visto algo interesante. */
== P_JACK IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @92723 /* *Jack jadea unos segundos mientras se sienta sobre sus dos patas y muestra sus patas delanteras a Valygar.*  */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @92724 /* ¿Qué quieres? Ah, ya veo. Quieres jugar. De acuerdo, pero sólo un momento. */
END


I_C_T P_JACK 7 P_Jack_Edwin1
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @92715 /* ¡¿Pero qué?! ¡Largo de aquí, saco de pulgas! Mira que olfatear las pertenencias de Edwin Odesseiron. */
== P_JACK IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @92716 /* *Jack muestra sus colmillos y se para sobre sus patas traseras.*  */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @92717 /* Ah, quieres atacarme. Verás que no es tan fácil con una bola de fuego sobre tu lomo. (Sí, eso le enseñará.) */
== P_BELLD IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @92718 /* Jack no pretende atacarte, mortal. Quiere jugar contigo. Por alguna razón, le caes bien. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @92719 /* Oh, ya veo... con que quieres jugar, ¿eh? (¿Por qué mueve la cola este pulgoso?) ¡Shu! ¡Shu! No tengo tiempo para tonterías, Jake. */
END


I_C_T P_JACK 0 P_Jack_Dusk1
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9272 /* ¡Jack! ¿Quién es un buen chico? ¡Tú eres un buen chico! *acaricia su panza* */
== P_JACK IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9273 /* *Jack muestra los colmillos y dibuja una sonrisa enorme en su hocico*  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9274 /* Jack parece quererte mucho, Dusk. */
== P_DUSKJ IF ~~ THEN @9275 /* Siempre me gustaron los perros. Bueno, en este caso, lobo. */
== P_DUSKJ IF ~~ THEN @9276 /* Nunca pude tener uno cuando era niño. Aunque tuve un gato, eso sí. También me gustan los gatos. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9277 /* Tienes afinidad con muchos animales. Da alegría a mi corazón ver que se llevan bien. */
END
