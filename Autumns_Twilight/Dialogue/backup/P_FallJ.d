I_C_T P_FALLJ 2 P_FallJ_QUEST1_b
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3009 /* Nadie merece estar encerrado para el entretenimiento de los demás... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3010 /* Creo que Fall tiene razón, <CHARNAME>. Debemos honrar a la madre tierra y devolver estas bestias a la naturaleza. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3011 /* ¡La ballestera tiene razón! Es nuestro deber hacer el bien y esta misión lo requiere. ¡Bubú piensa como yo!*/
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4000 /* Admito que nunca me ha gustado ver esas jaulas. Estoy con Fall en esto. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4001 /* El dinero va y viene, <CHARNAME>. Entiendo que lo necesitamos, pero siempre podemos encontrar la forma de ganar más. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3012/* ~No me gusta la idea de emplear tanto dinero, <CHARNAME>. Estoy seguro de que lo necesitaremos en algún momento. Hablamos de una cantidad considerable.~ */
END