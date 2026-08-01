BEGIN p_danct3

IF ~See("P_Dusk")
InParty("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_DuskHaveIraTenax","GLOBAL",1)
Global("P_DanctianDusk_CA_001","GLOBAL",0)
~ THEN BEGIN P_DanctianDuskCA_001 // from:
  SAY @11100198 /* ~Veo que te has acostumbrado a Ira, Ardusk.~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianDusk_CA_001","GLOBAL",1)~ GOTO P_DanctianDuskCA_002
END

IF ~~ THEN BEGIN P_DanctianDuskCA_002 // from:
  SAY @11100207 /* ~Lo sé, Ardusk. Lo sé.~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,1)~ THEN BEGIN 1 // from:
  SAY @11100193 /* ~Estoy listo para lo que comandes, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 2 // from:
  SAY @11100194 /* ~¿Deseas algo?~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 3 // from:
  SAY @11100195 /* ~No pierdas el tiempo hablando conmigo, mortal. Mi tiempo para ayudarte es limitado.~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 4 // from:
  SAY @11100196 /* ~Que nuestros enemigos tiemblen ante nuestro poder.~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 5 // from:
  SAY @11100197 /* ~Haré tu voluntad, por ahora.~ */
  IF ~~ THEN EXIT
END


I_C_T P_DANCT3 P_DanctianDuskCA_001 P_DanctianDuskCA_001
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11100199 /* La espada bastarda sienta bien en mis manos, Danctian. Siempre es un placer blandirla ante nuestros enemigos. */
== P_DANCT3 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11100200 /* No hay un instrumento más oportuno para la venganza que Ira Tenax. */
== P_DANCT3 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11100201 /* Por eso creo que deberíamos emplear el poder que el Pandemonium nos ha otorgado. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11100202 /* ¿A qué te refieres? */
== P_DANCT3 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11100203 /* Usemos la energía innata de mi plano para infundir terror en el corazón de aquellos que se oponen a nosotros. */
== P_DANCT3 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11100204 /* El Ocaso del Terror es una técnica apropiada para ambos. */
== P_DANCT3 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11100205 /* Cuando me llames en combate, la usaremos y nuestros enemigos temblarán. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11100206 /* Muy bien, Danctian. Dame tu poder cuando luches a mi lado. No te arrepentirás. */
END