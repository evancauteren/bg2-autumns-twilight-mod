BEGIN ~p_bell2~


IF ~ ~ THEN BEGIN 0 // from:
  SAY @9640 /* ~Dusk tiene raz�n, mortal. No est� s�lo.~ */
  IF ~~ THEN DO ~~ GOTO 1
END

IF
~~ THEN BEGIN 1 // from:
  SAY @9641 /* ~(Bellfame desaparece en una et�rea nube m�gica)~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskM3GOOD_OT_RING","GLOBAL",3) ForceSpell(Myself,POOF_GONE)~ EXIT
END



I_C_T P_BELL2 0 P_Dusk_M3_Bellfame
== P_Alabar IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9642 /* �Una ninfa!... ��qu� significa esto?! */
== P_Alabar IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9643 /* ��Crees que marcar�s alguna diferencia?! El drag�n morir� y mi venganza estar� completa. */
== P_BELL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9644 /* Dusk ya no es un drag�n de Cormyr, mortal. Ahora es un defensor de Shilmista. Un lobo que conf�a en la fuerza de su manada para luchar contra la adversidad. */
== P_BELL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9645 /* Querido Dusk, he tomado el anillo que me invoca y hecho una ligera modificaci�n. Ahora t� tambi�n podr�s usarlo.  */ DO ~TakePartyItem ("p_belrng") DestroyItem ("p_belrng") CreateItem ("p_belrn2",1,1,0) GiveItem ("p_belrn2", "P_Dusk") ~
== P_BELL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9646 /* P�ntelo e inv�came... Juntos, venceremos... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9647 /* Bellfame... g-gracias... */
END

