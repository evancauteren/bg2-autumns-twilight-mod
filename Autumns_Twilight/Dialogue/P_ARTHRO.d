BEGIN P_ARTHRO

IF ~AreaCheck("P_F11B")
InMyArea("p_cho")
Global ("P_ArthromTalk1","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @9370 /* Esperaba al Capit�n Gassthon. Mis enfrentamientos contra �l eran constantes. Pero supongo que est� muerto. Que tengas el coraz�n de la Reina Medusa lo demuestra. Gassthon nunca dejar�a que la matases. Por ende, que ella est� muerta, significa que �l tambi�n lo est�. */
  IF ~~ THEN DO ~SetGlobal ("P_ArthromTalk1","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9371 /* ~Yo tengo la Piedra guarda de Vreshnak. Si la quieres, tendr�s que derrotarme. Descubrir�s que matarnos no es una tarea f�cil, <CHARNAME>.~*/
    IF ~~ THEN REPLY @9372 /* ~He destruido a muchas de los tuyos en los pantanos. Ya ver�s, monstruo, que la piedra pronto estar� en mi poder.~ */  GOTO 2
	IF ~~ THEN REPLY @9373 /* ~No sab�a que los insectos fueran tan parlanchines. Me has cansado. �Es hora de luchar!~ */ GOTO 2
END


IF ~~ THEN BEGIN 2 // from:
  SAY @9374 /* En el nombre de mi madre: Morgrath, Reina de Rachnidra, morir�n. */
  IF ~~ THEN DO ~SetGlobal ("P_ArthromTalk1","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ EXIT
END

IF ~AreaCheck("P_F11B")
!InMyArea("p_cho")
Global ("P_ArthromTalk1","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY @9370 /* Esperaba al Capit�n Gassthon. Mis enfrentamientos contra �l eran constantes. Pero supongo que est� muerto. Que tengas el coraz�n de la Reina Medusa lo demuestra. Gassthon nunca dejar�a que la matases. Por ende, que ella est� muerta, significa que �l tambi�n lo est�. */
  IF ~~ THEN DO ~SetGlobal ("P_ArthromTalk1","GLOBAL",1)~ GOTO 1
END

I_C_T P_ARTHRO 0 P_ARTHRO1_0
== P_CHO IF ~~ THEN @9375 /* ~Gassthon ha muerto, Arthrom. T� tambi�n lo estar�s. Pronto. Muy pronto.~ */
== P_ARTHRO IF ~~ THEN @9376 /* ~General Cho'Nuja. A�n est�s con vida. Y aliado con el semidi�s. Lipihix no exageraba.~ */
== P_ARTHRO IF ~~ THEN @9377 /* ~Sabes muy bien que la muerte no es eterna para nosotros. Gassthon me ha matado en m�s de una ocasi�n. Y heme aqu�. Gassthon ha muerto una vez y sus restos alimentan las tierras de una ahora moribunda Dreach-naga.~ */
== P_CHO IF ~~ THEN @9378 /* ~S� muy bien que tu madre debe ser destruida para que sus engendros mueran para siempre. <CHARNAME> lo sabe. Eso significar� el fin de tu existencia, alima�a.~ */ DO ~UseItem("p_fifirc",Myself)~
== P_ARTHRO IF ~~ THEN @9379 /* ~Como Gassthon defender� a mi madre hasta las �ltimas consecuencias, General. Y yo, a diferencia del yuan-ti, no fallar�.~*/
END
