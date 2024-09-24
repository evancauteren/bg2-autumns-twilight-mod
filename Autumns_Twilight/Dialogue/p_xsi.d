BEGIN P_XSI

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
Global("P_FXsiQuest1","GLOBAL",0)
AreaCheck("P_FAR7")
~ THEN BEGIN 0 // from:
  SAY @9240 /* ~Mortales. Vidomina me ha ordenado el brindarles mis sabios consejos y servicios curativos si as� lo requirieran. Aunque es una nimiedad para mis verdaderas capacidades.~ */
    IF ~~ THEN REPLY @9241 /* Liche, necesitamos curaci�n. */  GOTO 2
	IF ~~ THEN REPLY @9242 /* Xsi, �c�mo llegaste aqu�? */  GOTO 5
    IF ~~ THEN REPLY @9243 /* Por ahora no necesito nada. Adi�s. */  GOTO 4E
END

IF ~~ THEN BEGIN 2
  SAY @9244 /* ~Por tu aspecto dir�a que s�. Vamos, �qu� puedo hacer por ti?~ */
  IF ~~ THEN DO ~StartStore("P_XSI",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 4E
  SAY @9245 /* ~(�Y por qu� me hace perder el tiempo?) *refunfu�eo* ~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9246 /* ~Era un poderoso mago en mis tierras. Vengo de Mulhorand y Anhur era mi gu�a.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9247 /* ~Son tres tomos de Dreach-naga y tres tomos de Rachnidra. Tr�eme los seis libros, mortal.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FXsiQuest1","GLOBAL",1)~ UNSOLVED_JOURNAL @310040 EXIT
END

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
Global("P_FXsiQuest1","GLOBAL",1)
AreaCheck("P_FAR7")
~ THEN BEGIN 7 // from:
  SAY @9240 /* ~Mortales. Vidomina me ha ordenado el brindarles mis sabios consejos y servicios curativos si as� lo requirieran. Aunque es una nimiedad para mis verdaderas capacidades.~ */
    IF ~~ THEN REPLY @9241 /* Liche, necesitamos curaci�n. */  GOTO 2
	IF ~PartyHasItem ("p_fbook3") PartyHasItem ("p_fbook4") PartyHasItem ("p_fbook5") PartyHasItem ("p_fbook2") PartyHasItem ("p_fbook6") PartyHasItem ("p_fbook7")~ THEN REPLY @92414 /* Xsi, he encontrado los seis tomos que buscabas. */  GOTO 8
    IF ~~ THEN REPLY @9243 /* Por ahora no necesito nada. Adi�s. */  GOTO 4E
END

IF ~~ THEN BEGIN 8 // from:
  SAY @92415 /* ~�Ja! Excelente trabajo, mortal. Tengo este brazo de arco largo. Su encantamiento es muy poderoso aunque no dispongo de su cuerda. Estimo que debe estar por aqu� en el Abismo, ya que su due�o se encarg� de desarmarlo antes de que cayese en manos enemigas. Si la encuentras, habla con Tamika: ella ser� capaz de rearmar el arco.~ */
  IF ~~ THEN DO ~TakePartyItem ("p_fbook3") TakePartyItem ("p_fbook4") TakePartyItem ("p_fbook5") TakePartyItem ("p_fbook2") TakePartyItem ("p_fbook6") TakePartyItem ("p_fbook7")  DestroyItem ("p_fbook3") DestroyItem ("p_fbook4") DestroyItem ("p_fbook5") DestroyItem ("p_fbook2") DestroyItem ("p_fbook6") DestroyItem ("p_fbook7") CreateItem ("P_FITM10",1,2,1) GiveItem ("P_FITM10", LastTalkedToBy)~ UNSOLVED_JOURNAL @310066 EXIT
END

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
AreaCheck("P_FA3B")
~ THEN BEGIN 9 // from:
  SAY @92416 /* ~Bueno, mortal, parece ser que estaremos un tiempo ocultos en este templo. Si a�n necesitas de mis servicios, lo tendr�s. Por un peque�o precio, claro. Incluso un liche necesita algo de riqueza. ~ */
    IF ~~ THEN REPLY @92417 /* Xsi, necesitamos curaci�n. */  GOTO 2
    IF ~~ THEN REPLY @9243 /* Por ahora no necesito nada. Adi�s. */  GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @92418 /* ~Hasta pronto, mortal. ~ */
  IF ~~ THEN DO ~~ EXIT
END

I_C_T P_XSI 5 P_FallJ_P_XSI_1
== P_XSI IF ~~ THEN @9248 /* ~Digo era porque ahora soy un liche. Soy una... aberraci�n a los ojos de mi antiguo dios.~ */
== P_XSI IF ~~ THEN @9249 /* ~Hmpf. Eso a Xsi ya no le interesa. Xsi es m�s poderoso de lo que jam�s so�� (pese a que t� le hayas derrotado).~ */
== P_XSI IF ~~ THEN @92410 /* ~Ahora dedico mi tiempo a estudios y escritura. Llevo un registro de lo que hemos podido averiguar de esta extra�a tierra.~ */
== P_XSI IF ~~ THEN @92411 /* ~De hecho, tengo pensado publicar algunas cosas que he escrito cuando logre volver al Plano Material.~ */
== P_XSI IF ~~ THEN @92412 /* ~Sin embargo, he perdido muchos de mis libros a lo largo de este Abismo.~ */
== P_XSI IF ~~ THEN @92413 /* ~T� eres poderoso. Si los recuperas y me los traes te recompensar�.~ */
END
