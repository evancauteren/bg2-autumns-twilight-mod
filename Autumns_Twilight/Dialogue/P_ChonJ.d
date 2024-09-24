BEGIN P_ChonJ

// Quest e interacciones

////////////////////////////////////////

// Gitana
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Chon",LastTalkedToBy)~ EXTERN TRGYP02 g2
END

CHAIN TRGYP02 g2
@9300 /* Veo... que no eres una convocación como intentas convencer a los habitantes de Faerûn. Haces bien, General. Los enemigos pululan aún bajo este sol. Continúa tu aventura, Guardián. Este mundo es rico en contenido y tu corazón dará la bienvenida a todo nuevo conocimiento. */
== P_ChonJ @9301 /* Gratitud por tus palabras, madame. Seguiré con <CHARNAME> pues considero que su compañía enriquecerá mi experiencia. */ 
EXIT

// Celvan el Loco
CHAIN IF WEIGHT #-1 
~InParty("P_Chon")
See("P_Chon")
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonReactionCelvan","AR0300",0)~ THEN CELVAN c2
@9302 /* Hubo una vez un guerrero del Abismo,
cuyo linaje se perdió en un beso arácnido.
El Heredero del Asesinato cargaba la culpa,
pero ahora, curiosamente, son amigos a pesar de todo.
Curioso es el destino de la criatura abisal,
en el mundo de la superficie, tan extraño y real...

Once there was a warrior from the Abyss,
Whose kin were lost in a spider's kiss.
The Heir of Murder bore the blame,
Yet now, oddly, they're friends just the same.
Curious is the fate of the abyssal being,
In the surface world, so strange and seeing... */
DO ~SetGlobal("P_ChonReactionCelvan","AR0300",1)~
== P_ChonJ @9303 /* Tus palabras atraviesan el velo abisal. ¡Insecto, dime! ¿Cómo lo has hecho? */
END CELVAN 1

// Murtlen
CHAIN IF WEIGHT #-1 
~InParty("P_Chon")
See("P_Chon")
!StateCheck("P_Chon",CD_STATE_NOTVALID)
RandomNum(4,2)
Global("P_ChonMurtlen","AR0700",0)~ THEN MURTLEN murtlen2
@93020 /* ¡Tú! ¿Alguna vez te han engañado---? Bah, olvídalo. Tú eres sólo una convocación. Y bien fea al parecer. */
DO ~SetGlobal("P_ChonMurtlen","AR0700",1)~
== P_ChonJ @93021 /* *tose* (Supongo que crean que soy una convocación no es algo tan malo después de todo...) */
EXIT

// Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Chon",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_ChonReactionMadam1
@9304 /* Saludos, erhm... *suspiro* ¿Por qué hablo con una invocación? ¡Fuera de aquí, criatura! Mis negocios son sólo para habitantes de este plano. */
== P_ChonJ @9305 /* *susurro* <CHARNAME>, ¿de qué está hablando esta criatura horrible? Hmpf, mejor me alejo de esta situación. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Chon",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_ChonReactionMadam2
@9306 /* ¿Otra vez tú? ¡Shu, shu! ¡Fuera de aquí! Espantarás a los clientes. */
== P_ChonJ @9307 /* Creo que no soy yo quien espanta a los tuyos, hembra. */
EXIT

// Diálogo por el Árbol de la Vida
EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID) Global("P_ChonTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 pl3
END

CHAIN PLAYER1 pl3
@9308 /* Cho'Nuja, General de Dreach-naga. Sientes que has sido responsable del fin de su mundo y sin embargo se encuentra a tu lado, listo para ayudarte a recuperar tu alma.
Fall, la Dama de las Bestias. Su viaje ha significado un crecimiento en su persona y yace lista a tu lado. */
DO ~SetGlobal("P_ChonTreeOfLife","GLOBAL",1)~
END
++ @9309 /* Cho, esta no es tu pelea. Puedes quedarte aquí si así lo deseas. */ EXTERN P_ChonJ pl3.1
++ @93010 /* Hemos pasado por muchas batallas, Cho. Puedes volver y experimentar el mundo como realmente lo desees. */ EXTERN P_ChonJ pl3.1
++ @93011 /* ¿Estás listo para seguirme, Cho? Te necesito a mi lado para vencer. */ EXTERN P_ChonJ pl3.1

CHAIN P_ChonJ pl3.1
@93012 /* ¡Soldado! La duda es el enemigo. Nunca dudes de mi fidelidad a ti. En Dreach-naga nos enseñaron a morir como guerreros. Con honor. Con gloria. Si hoy fuese ese día, entonces será a tu lado. */
END
COPY_TRANS PLAYER1 33 


// El Ojo Ciego: CHARNAME regresa con el artefacto
I_C_T RIFTM01 28 P_ChonRIFTM0128
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93013 /* ~¿Todos los elfos son así, <CHARNAME>? Esa lloradera no duraría mucho tiempo en el Abismo.~ */
END

// Firkraag: Se posterga el combate
I_C_T FIRKRA02 21 P_ChonFIRKRA21
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93014 /* La criatura es... imponente. No estoy de acuerdo con huir de un combate, pero si es lo que crees correcto, te seguiré, <CHARNAME>. Siempre y cuando volvamos a acabar con este monstruo. */
END

// Firfraag: combate
I_C_T FIRKRA02 25 P_ChonFIRKRA25
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93015 /* Serás una criatura antigua, alado, pero mi estilo de combate también lo es. ¡Siente la furia de mis garras! ¡¡¡Shehad Ibahalii!!! */
END

// Bodhi: Enfrentamiento final
I_C_T C6BODHI 0 P_ChonC6BODHI15_GOOD
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93016 /* Una criatura extraña y repugnante. Será un placer para mí que me envíes a despacharla, <CHARNAME>. */
END

// Árbol de la vida. Irenicus es derrotado.
I_C_T PLAYER1 16 P_ChonIrenicusIsDead1
== P_ChonJ IF ~InParty("P_Chon") Range("P_Chon",15) !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93017 /* La batalla aún no ha terminado, <CHARNAME>. ¡Algo extraño está sucediendo! */
END

// Infierno
I_C_T PLAYER1 25 P_ChonEnteringHell1
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93018 /* Extraño. Siento una especie de nostalgia al estar aquí. Como si sintiera la calidez de Dreach-naga otra vez. Pero... creo que esto no es el Abismo. */
END


// Combatiendo contra Irenicus en el Infierno (Son 4 ICT)
I_C_T HELLJON 7 P_ChonThirdBattleWithIrenicus1
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, chamán. Tu muerte liberará el alma de mi amigo. ¡Siente la furia del Abismo! */
END

I_C_T HELLJON 8 P_ChonThirdBattleWithIrenicus2
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, chamán. Tu muerte liberará el alma de mi amigo. ¡Siente la furia del Abismo! */
END

I_C_T HELLJON 9 P_ChonThirdBattleWithIrenicus3
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, chamán. Tu muerte liberará el alma de mi amigo. ¡Siente la furia del Abismo! */
END

I_C_T HELLJON 10 P_ChonThirdBattleWithIrenicus4
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, chamán. Tu muerte liberará el alma de mi amigo. ¡Siente la furia del Abismo! */
END

