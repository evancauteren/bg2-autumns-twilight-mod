
// Diálogo por el Árbol de la Vida
EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID) Global("P_AlenTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 alen_p2
END

CHAIN PLAYER1 alen_p2
@9318 /* Alendir, el Maestro de la Escarcha. Hace poco tiempo ha vuelto a la vida y recuperado su juventud. Que esté a tu lado significa que está dispuesto a arriesgarlo todo por tu empresa. */
DO ~SetGlobal("P_AlenTreeOfLife","GLOBAL",1)~
END
++ @9319 /* Alendir, acabas de recuperar tu vida. Puedes irte de aquí si lo deseas. */ EXTERN P_AlenJ alen_p2.1
++ @93110 /* Entendería a la perfección que decidas no arriesgar tu vida en esto, Alendir. Será muy peligroso. */ EXTERN P_AlenJ alen_p2.1
++ @93111 /* Necesito tu poder para vencer, Alendir. ¿Estás listo? */ EXTERN P_AlenJ alen_p2.1

CHAIN P_AlenJ alen_p2.1
@93112 /* <CHARNAME>, hemos llegado hasta aquí. ¿Y tu primera reacción es ponerte sentimental? Avancemos. Necesito lanzar mis conjuros contra ese malnacido Exiliado. */
END
COPY_TRANS PLAYER1 33 


// Tree of Life Fight
I_C_T PLAYER1 16 P_TreeOfLifeFight_AlenLead
== P_ALENJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93117 /* El Exiliado no ha sido derrotado del todo, <CHARNAME>. Hazme caso, no te confíes aún. */
END

I_C_T2 FIRKRA02 25 P_FIRKRA02_25_AlenLead
== P_ALENJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93115 /* <CHARNAME>, procura que ninguno de sus ataques de fuego me toque, ¿sí? No estoy de humor para ser calcinado. */
END

// Infierno
I_C_T PLAYER1 25 P_EnteringHell_AlenLead
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93118 /* Un plano divino, similar al Abismo. Posiblemente un dominio de Bhaal. Esto no me gusta nada, <CHARNAME>. */
END

I_C_T HELLJON 7 P_HELLJON7_AlenLead
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93119 /* ¡Exiliado! Estos son tus momento finales. ¡El frío de mi poder vengará a aquellos que mataste en Suldanessellar! */
END


I_C_T HELLJON 8 P_HELLJON8_AlenLead
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93119 /* ¡Exiliado! Estos son tus momento finales. ¡El frío de mi poder vengará a aquellos que mataste en Suldanessellar! */
END


I_C_T HELLJON 9 P_HELLJON9_AlenLead
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93119 /* ¡Exiliado! Estos son tus momento finales. ¡El frío de mi poder vengará a aquellos que mataste en Suldanessellar! */
END


I_C_T HELLJON 10 P_HELLJON10_AlenLead
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93119 /* ¡Exiliado! Estos son tus momento finales. ¡El frío de mi poder vengará a aquellos que mataste en Suldanessellar! */
END

I_C_T RIFTM01 28 P_RIFTM01_28_AlenLead
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93113 /* Tantos sentimientos cobardes me abruman, <CHARNAME>. Quizás uno de mis Conos de Frío le hagan cambiar de parecer... */
END

I_C_T FIRKRA02 21 P_FIRKRA02_21_AlenLead
== P_ALENJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93114 /* Una decisión inteligente, <CHARNAME>. La verdad no estaba de humor de tener que esquivar bolas de fuego de un dragón rojo anciano. Quizás la próxima. */
END

I_C_T C6BODHI 0 P_C6BODHI15_AlenLead
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93116 /* Estas inmundicias son inmunes a los conjuros de frío. Sin embargo, tengo otros hechizos bajo la manga. */
END

