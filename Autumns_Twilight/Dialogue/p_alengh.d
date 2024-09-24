BEGIN P_ALENGH

IF ~~ THEN BEGIN 1 // from:
  SAY @9110 /* ~Pequeña Caraneth... <CHARNAME>...~ */
    IF ~~ THEN REPLY @9111 /* ~No creo haber perdido la cordura... pero, ¿no se supone que estás muerto?~ */  GOTO 2
	IF ~~ THEN REPLY @9112 /* ~Anciano, ¿vienes a terminar el trabajo de tu amo Cryonax? No te será tan fácil, os lo advierto.~ */  GOTO 3
	IF ~~ THEN REPLY @9113 /* ~Es un placer verte de nuevo, Alendir. Aunque eso no explica cómo es que sigues con vida.~ */  GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9114 /* ~Si estáis viendo esta versión de mí, eso quiere decir que he muerto. He atado un conjuro de proyección a la rosa de hielo.~*/
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9115 /* ~Tan encantador como siempre, <CHARNAME>. Pero no, no soy vuestro enemigo. Nunca lo he sido.~ ~Tan encantadora como siempre, <CHARNAME>. Pero no, no soy vuestro enemigo. Nunca lo he sido.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9116 /* ~No sé qué fue lo que aconteció después de este evento... pero estimo que morí a manos de <CHARNAME> o de Icelock. Tarde o temprano, iba a suceder.~*/
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9117 /* ~Verás el portal abierto al final... pero ten en cuenta que una vez que entres... no podrás volver.~ */
    IF ~~ THEN REPLY @9118 /* ~Espera un momento... ¿estás diciendo que es un viaje de ida? No podemos quedarnos atrapados en el Abismo, tenemos asuntos que atender aquí.~ */  GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9119 /* ~Por alguna razón conjuré la Rosa para que se derrita sólo cuando considere que se han vuelto lo suficientemente fuertes como para realizar dicha hazaña, <CHARNAME>.~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @91110 /* ~<CHARNAME>, Fall necesitará tu ayuda si viaja al Abismo. Confío en que serás más que capaz de asistirla. Este plano no estará a salvo hasta que Morgrath sea detenida.~ */
    IF ~~ THEN REPLY @91111 /* ~No podré ayudarla mucho si muero durante dicha incursión. Espero que estés en lo cierto con respecto al tiempo.~ */  GOTO 8
	IF ~~ THEN REPLY @91112 /* ~No sería capaz de abandonar a Fall en un momento tan crítico, Alendir. Cuenta conmigo.~ */  GOTO 9
	IF ~~ THEN REPLY @91113 /* ~¿Un viaje de ida al Abismo de las Arañas? Me has perdido con eso, anciano. Lo lamento, Fall... pero primero debo preocuparme por salvar mi vida.~ */  EXTERN ~P_FALLJ~ 77
END

IF ~~ THEN BEGIN 8 // from:
  SAY @91114 /* ~Nadie está seguro en el Abismo, <CHARNAME>. Sin embargo, asumo que decidirás sobre la marcha.~*/
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
  SAY @91117 /* *sonríe* No llores, pequeña Caran. Mi tiempo ha llegado. Conocerlos ha sido un honor. Mystra, protégelos con tu manto... La Rosa de Hielo... se ha derretido. */
  IF ~~ THEN DO ~SetGlobal ("P_Fall_Final_Mission_Init","GLOBAL",2) SetGlobal ("P_Fall_Final_Mission","GLOBAL",1) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310036 EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @91134 /* Es... una lástima, <CHARNAME>. Aquí me despido, entonces... ruego a Mystra para que Fall no caiga para siempre en el Abismo... */
  IF ~~ THEN DO ~ForceSpell (Myself, POOF_GONE)~EXIT
END

I_C_T P_ALENGH 10 P_Fall_P_ALENGH_3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91118 /* Lo tendremos en cuenta, Alendir. Gracias por avisarnos. */
== P_ALENGH IF ~~ THEN @91119 /* ~Nunca dejas de sorprenderme, pequeña Caraneth. Estoy orgulloso de ti. Y estoy seguro de que tu padre también lo estaría.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91120 /* Alendir... quisiera abrazarte... pero estás desapareciendo... ¿no puedes... no puedes quedarte un tiempo más? */ DO ~TakePartyItem ("p_ficero") UseItem ("p_ficero", Myself)~
END

I_C_T P_ALENGH 6 P_Fall_P_ALENGH_2
== P_ALENGH IF ~~ THEN @91121 /* ~Sé que lo que les ofrezco no es suficiente y lo que haya más allá del portal escapa a mi conocimiento.~ */
== P_ALENGH IF ~~ THEN @91122 /* ~Pero os he visto lograr lo imposible. Tu sangre divina puede que sea la respuesta. O puede que haya aliados, incluso en los rincones más oscuros del Abismo.~ */
== P_ALENGH IF ~~ THEN @91123 /* ~Caraneth... has realizado este viaje durante tanto tiempo... que sé que esto no te detendrá.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91124 /* Tienes razón, Alendir. Sin embargo, no puedo arriesgar a <CHARNAME> a esto sin su consentimiento. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91125 /* Actualmente... estamos en una carrera contra la oscuridad. Un vil hechicero ha arrebatado el alma de mi amigo y complota contra los elfos de Suldanessellar. */
== P_ALENGH IF ~~ THEN @91126 /* ~Ya veo... Puede que sea así, pero no veo que el tiempo vaya a consumir a <CHARNAME> pronto.~ */
== P_ALENGH IF ~~ THEN @91127 /* ~Tanto Rachnidra como Suldanessellar no se encuentran atados a un tiempo tan presuroso como parece. Pero me temo que tu madre no soportará más tiempo que los elfos, eso tenlo por seguro.~ */
== P_ALENGH IF ~~ THEN @91128 /* ~Tendrás que viajar a Rachnidra antes de realizar la hazaña de salvar a Suldanessellar.~ */
END


I_C_T P_ALENGH 4 P_Fall_P_ALENGH_1
== P_ALENGH IF ~~ THEN @91129 /* ~Pequeña Caraneth... he cometido errores imperdonables a lo largo de los siglos. Mi ambición de poder ha sido una de ellas. Amar a tu madre, sin embargo, no ha sido uno de ellos.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91130 /* Lo... lo sé, Alendir... he leído tus últimos escritos. */
== P_ALENGH IF ~~ THEN @91131 /* ~No es momento de ponernos sentimentales. La hora ha llegado. La Rosa Gélida está a punto de derretirse.~ */
== P_ALENGH IF ~~ THEN @91132 /* ~Cuando eso suceda, Fall, se abrirá un portal hacia Rachnidra en la cámara de Icelock.~ */
== P_ALENGH IF ~~ THEN @91133 /* ~Tendrás que volver a los Barrios Bajos de Athkatla y encontrar mi guarida a través de los pasajes de las cloacas.~ */
END
