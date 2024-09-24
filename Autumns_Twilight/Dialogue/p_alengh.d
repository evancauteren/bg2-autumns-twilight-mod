BEGIN P_ALENGH

IF ~~ THEN BEGIN 1 // from:
  SAY @9110 /* ~Peque�a Caraneth... <CHARNAME>...~ */
    IF ~~ THEN REPLY @9111 /* ~No creo haber perdido la cordura... pero, �no se supone que est�s muerto?~ */  GOTO 2
	IF ~~ THEN REPLY @9112 /* ~Anciano, �vienes a terminar el trabajo de tu amo Cryonax? No te ser� tan f�cil, os lo advierto.~ */  GOTO 3
	IF ~~ THEN REPLY @9113 /* ~Es un placer verte de nuevo, Alendir. Aunque eso no explica c�mo es que sigues con vida.~ */  GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9114 /* ~Si est�is viendo esta versi�n de m�, eso quiere decir que he muerto. He atado un conjuro de proyecci�n a la rosa de hielo.~*/
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9115 /* ~Tan encantador como siempre, <CHARNAME>. Pero no, no soy vuestro enemigo. Nunca lo he sido.~ ~Tan encantadora como siempre, <CHARNAME>. Pero no, no soy vuestro enemigo. Nunca lo he sido.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9116 /* ~No s� qu� fue lo que aconteci� despu�s de este evento... pero estimo que mor� a manos de <CHARNAME> o de Icelock. Tarde o temprano, iba a suceder.~*/
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9117 /* ~Ver�s el portal abierto al final... pero ten en cuenta que una vez que entres... no podr�s volver.~ */
    IF ~~ THEN REPLY @9118 /* ~Espera un momento... �est�s diciendo que es un viaje de ida? No podemos quedarnos atrapados en el Abismo, tenemos asuntos que atender aqu�.~ */  GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9119 /* ~Por alguna raz�n conjur� la Rosa para que se derrita s�lo cuando considere que se han vuelto lo suficientemente fuertes como para realizar dicha haza�a, <CHARNAME>.~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @91110 /* ~<CHARNAME>, Fall necesitar� tu ayuda si viaja al Abismo. Conf�o en que ser�s m�s que capaz de asistirla. Este plano no estar� a salvo hasta que Morgrath sea detenida.~ */
    IF ~~ THEN REPLY @91111 /* ~No podr� ayudarla mucho si muero durante dicha incursi�n. Espero que est�s en lo cierto con respecto al tiempo.~ */  GOTO 8
	IF ~~ THEN REPLY @91112 /* ~No ser�a capaz de abandonar a Fall en un momento tan cr�tico, Alendir. Cuenta conmigo.~ */  GOTO 9
	IF ~~ THEN REPLY @91113 /* ~�Un viaje de ida al Abismo de las Ara�as? Me has perdido con eso, anciano. Lo lamento, Fall... pero primero debo preocuparme por salvar mi vida.~ */  EXTERN ~P_FALLJ~ 77
END

IF ~~ THEN BEGIN 8 // from:
  SAY @91114 /* ~Nadie est� seguro en el Abismo, <CHARNAME>. Sin embargo, asumo que decidir�s sobre la marcha.~*/
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9 // from:
  SAY @91115 /* ~Me tranquiliza escuchar eso.~*/
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @91116 /* ~Recuerden: Deben ir a Rachnidra antes de entrar en Suldanessellar, de lo contrario, es probable que el portal se cierre y ya no se pueda acceder al Abismo.~*/
  IF ~~ THEN GOTO 11
END


IF ~~ THEN BEGIN 11 // from:
  SAY @91117 /* *sonr�e* No llores, peque�a Caran. Mi tiempo ha llegado. Conocerlos ha sido un honor. Mystra, prot�gelos con tu manto... La Rosa de Hielo... se ha derretido. */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Final_Mission_Init","GLOBAL",2) SetGlobal ("P_Fall_Final_Mission","GLOBAL",1) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310036 EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @91134 /* Es... una l�stima, <CHARNAME>. Aqu� me despido, entonces... ruego a Mystra para que Fall no caiga para siempre en el Abismo... */
  IF ~~ THEN DO ~ForceSpell (Myself, POOF_GONE)~EXIT
END

I_C_T P_ALENGH 10 P_Fall_P_ALENGH_3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91118 /* Lo tendremos en cuenta, Alendir. Gracias por avisarnos. */
== P_ALENGH IF ~~ THEN @91119 /* ~Nunca dejas de sorprenderme, peque�a Caraneth. Estoy orgulloso de ti. Y estoy seguro de que tu padre tambi�n lo estar�a.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91120 /* Alendir... quisiera abrazarte... pero est�s desapareciendo... �no puedes... no puedes quedarte un tiempo m�s? */ DO ~TakePartyItem ("p_ficero") UseItem ("p_ficero", Myself)~
END

I_C_T P_ALENGH 6 P_Fall_P_ALENGH_2
== P_ALENGH IF ~~ THEN @91121 /* ~S� que lo que les ofrezco no es suficiente y lo que haya m�s all� del portal escapa a mi conocimiento.~ */
== P_ALENGH IF ~~ THEN @91122 /* ~Pero os he visto lograr lo imposible. Tu sangre divina puede que sea la respuesta. O puede que haya aliados, incluso en los rincones m�s oscuros del Abismo.~ */
== P_ALENGH IF ~~ THEN @91123 /* ~Caraneth... has realizado este viaje durante tanto tiempo... que s� que esto no te detendr�.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91124 /* Tienes raz�n, Alendir. Sin embargo, no puedo arriesgar a <CHARNAME> a esto sin su consentimiento. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91125 /* Actualmente... estamos en una carrera contra la oscuridad. Un vil hechicero ha arrebatado el alma de mi amigo y complota contra los elfos de Suldanessellar. */
== P_ALENGH IF ~~ THEN @91126 /* ~Ya veo... Puede que sea as�, pero no veo que el tiempo vaya a consumir a <CHARNAME> pronto.~ */
== P_ALENGH IF ~~ THEN @91127 /* ~Tanto Rachnidra como Suldanessellar no se encuentran atados a un tiempo tan presuroso como parece. Pero me temo que tu madre no soportar� m�s tiempo que los elfos, eso tenlo por seguro.~ */
== P_ALENGH IF ~~ THEN @91128 /* ~Tendr�s que viajar a Rachnidra antes de realizar la haza�a de salvar a Suldanessellar.~ */
END


I_C_T P_ALENGH 4 P_Fall_P_ALENGH_1
== P_ALENGH IF ~~ THEN @91129 /* ~Peque�a Caraneth... he cometido errores imperdonables a lo largo de los siglos. Mi ambici�n de poder ha sido una de ellas. Amar a tu madre, sin embargo, no ha sido uno de ellos.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91130 /* Lo... lo s�, Alendir... he le�do tus �ltimos escritos. */
== P_ALENGH IF ~~ THEN @91131 /* ~No es momento de ponernos sentimentales. La hora ha llegado. La Rosa G�lida est� a punto de derretirse.~ */
== P_ALENGH IF ~~ THEN @91132 /* ~Cuando eso suceda, Fall, se abrir� un portal hacia Rachnidra en la c�mara de Icelock.~ */
== P_ALENGH IF ~~ THEN @91133 /* ~Tendr�s que volver a los Barrios Bajos de Athkatla y encontrar mi guarida a trav�s de los pasajes de las cloacas.~ */
END
