BEGIN P_ARTHRO

IF ~AreaCheck("P_F11B")
InMyArea("p_cho")
Global ("P_ArthromTalk1","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @9370 /* Esperaba al Capitán Gassthon. Mis enfrentamientos contra él eran constantes. Pero supongo que está muerto. Que tengas el corazón de la Reina Medusa lo demuestra. Gassthon nunca dejaría que la matases. Por ende, que ella esté muerta, significa que él también lo está. */
  IF ~~ THEN DO ~SetGlobal ("P_ArthromTalk1","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9371 /* ~Yo tengo la Piedra guarda de Vreshnak. Si la quieres, tendrás que derrotarme. Descubrirás que matarnos no es una tarea fácil, <CHARNAME>.~*/
    IF ~~ THEN REPLY @9372 /* ~He destruido a muchas de los tuyos en los pantanos. Ya verás, monstruo, que la piedra pronto estará en mi poder.~ */  GOTO 2
	IF ~~ THEN REPLY @9373 /* ~No sabía que los insectos fueran tan parlanchines. Me has cansado. ¡Es hora de luchar!~ */ GOTO 2
END


IF ~~ THEN BEGIN 2 // from:
  SAY @9374 /* En el nombre de mi madre: Morgrath, Reina de Rachnidra, morirán. */
  IF ~~ THEN DO ~SetGlobal ("P_ArthromTalk1","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ EXIT
END

IF ~AreaCheck("P_F11B")
!InMyArea("p_cho")
Global ("P_ArthromTalk1","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY @9370 /* Esperaba al Capitán Gassthon. Mis enfrentamientos contra él eran constantes. Pero supongo que está muerto. Que tengas el corazón de la Reina Medusa lo demuestra. Gassthon nunca dejaría que la matases. Por ende, que ella esté muerta, significa que él también lo está. */
  IF ~~ THEN DO ~SetGlobal ("P_ArthromTalk1","GLOBAL",1)~ GOTO 1
END

I_C_T P_ARTHRO 0 P_ARTHRO1_0
== P_CHO IF ~~ THEN @9375 /* ~Gassthon ha muerto, Arthrom. Tú también lo estarás. Pronto. Muy pronto.~ */
== P_ARTHRO IF ~~ THEN @9376 /* ~General Cho'Nuja. Aún estás con vida. Y aliado con el semidiós. Lipihix no exageraba.~ */
== P_ARTHRO IF ~~ THEN @9377 /* ~Sabes muy bien que la muerte no es eterna para nosotros. Gassthon me ha matado en más de una ocasión. Y heme aquí. Gassthon ha muerto una vez y sus restos alimentan las tierras de una ahora moribunda Dreach-naga.~ */
== P_CHO IF ~~ THEN @9378 /* ~Sé muy bien que tu madre debe ser destruida para que sus engendros mueran para siempre. <CHARNAME> lo sabe. Eso significará el fin de tu existencia, alimaña.~ */ DO ~UseItem("p_fifirc",Myself)~
== P_ARTHRO IF ~~ THEN @9379 /* ~Como Gassthon defenderé a mi madre hasta las últimas consecuencias, General. Y yo, a diferencia del yuan-ti, no fallaré.~*/
END
