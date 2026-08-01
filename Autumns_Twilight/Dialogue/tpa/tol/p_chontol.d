// Diálogo por el Árbol de la Vida
EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID) Global("P_ChonTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 chon_p2
END

CHAIN PLAYER1 chon_p2
@9308 /* Cho'Nuja, General de Dreach-naga. Sientes que has sido responsable del fin de su mundo y sin embargo se encuentra a tu lado, listo para ayudarte a recuperar tu alma.
Fall, la Dama de las Bestias. Su viaje ha significado un crecimiento en su persona y yace lista a tu lado. */
DO ~SetGlobal("P_ChonTreeOfLife","GLOBAL",1)~
END
++ @9309 /* Cho, esta no es tu pelea. Puedes quedarte aquí si así lo deseas. */ EXTERN P_ChonJ chon_p2.1
++ @93010 /* Hemos pasado por muchas batallas, Cho. Puedes volver y experimentar el mundo como realmente lo desees. */ EXTERN P_ChonJ chon_p2.1
++ @93011 /* ¿Estás listo para seguirme, Cho? Te necesito a mi lado para vencer. */ EXTERN P_ChonJ chon_p2.1

CHAIN P_ChonJ chon_p2.1
@93012 /* ¡Soldado! La duda es el enemigo. Nunca dudes de mi fidelidad a ti. En Dreach-naga nos enseñaron a morir como guerreros. Con honor. Con gloria. Si hoy fuese ese día, entonces será a tu lado. */
END
COPY_TRANS PLAYER1 33 

I_C_T PLAYER1 16 P_TreeOfLifeFight_ChonLead
== P_CHONJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93017 /* La batalla aún no ha terminado, <CHARNAME>. ¡Algo extraño está sucediendo! */
END

I_C_T2 FIRKRA02 25 P_FIRKRA02_25_ChonLead
== P_CHONJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93015 /* Serás una criatura antigua, alado, pero mi estilo de combate también lo es. ¡Siente la furia de mis garras! ¡¡¡Shehad Ibahalii!!! */
END

I_C_T PLAYER1 25 P_EnteringHell_ChonLead
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93018 /* Extraño. Siento una especie de nostalgia al estar aquí. Como si sintiera la calidez de Dreach-naga otra vez. Pero... creo que esto no es el Abismo. */
END

I_C_T HELLJON 7 P_HELLJON7_ChonLead
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, chamán. Tu muerte liberará el alma de mi amigo. ¡Siente la furia del Abismo! */
END

I_C_T HELLJON 8 P_HELLJON8_ChonLead
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, chamán. Tu muerte liberará el alma de mi amigo. ¡Siente la furia del Abismo! */
END

I_C_T HELLJON 9 P_HELLJON9_ChonLead
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, chamán. Tu muerte liberará el alma de mi amigo. ¡Siente la furia del Abismo! */
END

I_C_T HELLJON 10 P_HELLJON10_ChonLead
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, chamán. Tu muerte liberará el alma de mi amigo. ¡Siente la furia del Abismo! */
END

I_C_T RIFTM01 28 P_RIFTM01_28_ChonLead
== P_CHONJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93013 /* ¿Todos los elfos son así, <CHARNAME>? Esa lloradera no duraría mucho tiempo en el Abismo. */
END

I_C_T FIRKRA02 21 P_FIRKRA02_21_ChonLead
== P_CHONJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93014 /* La criatura es... imponente. No estoy de acuerdo con huir de un combate, pero si es lo que crees correcto, te seguiré, <CHARNAME>. Siempre y cuando volvamos a acabar con este monstruo. */
END

I_C_T C6BODHI 0 P_C6BODHI15_ChonLead
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93016 /* Una criatura extraña y repugnante. Será un placer para mí que me envíes a despacharla, <CHARNAME>. */
END


