BEGIN ~p_bell2~


IF ~ ~ THEN BEGIN 0 // from:
  SAY @9640 /* ~Dusk tiene razón, mortal. No está sólo.~ */
  IF ~~ THEN DO ~~ GOTO 1
END

IF
~~ THEN BEGIN 1 // from:
  SAY @9641 /* ~(Bellfame desaparece en una etérea nube mágica)~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskM3GOOD_OT_RING","GLOBAL",3) ForceSpell(Myself,POOF_GONE)~ EXIT
END



I_C_T P_BELL2 0 P_Dusk_M3_Bellfame
== P_Alabar IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9642 /* ¡Una ninfa!... ¡¿qué significa esto?! */
== P_Alabar IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9643 /* ¡¿Crees que marcarás alguna diferencia?! El dragón morirá y mi venganza estará completa. */
== P_BELL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9644 /* Dusk ya no es un dragón de Cormyr, mortal. Ahora es un defensor de Shilmista. Un lobo que confía en la fuerza de su manada para luchar contra la adversidad. */
== P_BELL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9645 /* Querido Dusk, he tomado el anillo que me invoca y hecho una ligera modificación. Ahora tú también podrás usarlo.  */ DO ~TakePartyItem ("p_belrng") DestroyItem ("p_belrng") CreateItem ("p_belrn2",1,1,0) GiveItem ("p_belrn2", "P_Dusk") ~
== P_BELL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9646 /* Póntelo e invócame... Juntos, venceremos... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9647 /* Bellfame... g-gracias... */
END

