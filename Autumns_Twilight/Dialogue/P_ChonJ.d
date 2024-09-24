BEGIN P_ChonJ

// Quest e interacciones

////////////////////////////////////////

// Gitana
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Chon",LastTalkedToBy)~ EXTERN TRGYP02 g2
END

CHAIN TRGYP02 g2
@9300 /* Veo... que no eres una convocaci�n como intentas convencer a los habitantes de Faer�n. Haces bien, General. Los enemigos pululan a�n bajo este sol. Contin�a tu aventura, Guardi�n. Este mundo es rico en contenido y tu coraz�n dar� la bienvenida a todo nuevo conocimiento. */
== P_ChonJ @9301 /* Gratitud por tus palabras, madame. Seguir� con <CHARNAME> pues considero que su compa��a enriquecer� mi experiencia. */ 
EXIT

// Celvan el Loco
CHAIN IF WEIGHT #-1 
~InParty("P_Chon")
See("P_Chon")
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonReactionCelvan","AR0300",0)~ THEN CELVAN c2
@9302 /* Hubo una vez un guerrero del Abismo,
cuyo linaje se perdi� en un beso ar�cnido.
El Heredero del Asesinato cargaba la culpa,
pero ahora, curiosamente, son amigos a pesar de todo.
Curioso es el destino de la criatura abisal,
en el mundo de la superficie, tan extra�o y real...

Once there was a warrior from the Abyss,
Whose kin were lost in a spider's kiss.
The Heir of Murder bore the blame,
Yet now, oddly, they're friends just the same.
Curious is the fate of the abyssal being,
In the surface world, so strange and seeing... */
DO ~SetGlobal("P_ChonReactionCelvan","AR0300",1)~
== P_ChonJ @9303 /* Tus palabras atraviesan el velo abisal. �Insecto, dime! �C�mo lo has hecho? */
END CELVAN 1

// Murtlen
CHAIN IF WEIGHT #-1 
~InParty("P_Chon")
See("P_Chon")
!StateCheck("P_Chon",CD_STATE_NOTVALID)
RandomNum(4,2)
Global("P_ChonMurtlen","AR0700",0)~ THEN MURTLEN murtlen2
@93020 /* �T�! �Alguna vez te han enga�ado---? Bah, olv�dalo. T� eres s�lo una convocaci�n. Y bien fea al parecer. */
DO ~SetGlobal("P_ChonMurtlen","AR0700",1)~
== P_ChonJ @93021 /* *tose* (Supongo que crean que soy una convocaci�n no es algo tan malo despu�s de todo...) */
EXIT

// Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Chon",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_ChonReactionMadam1
@9304 /* Saludos, erhm... *suspiro* �Por qu� hablo con una invocaci�n? �Fuera de aqu�, criatura! Mis negocios son s�lo para habitantes de este plano. */
== P_ChonJ @9305 /* *susurro* <CHARNAME>, �de qu� est� hablando esta criatura horrible? Hmpf, mejor me alejo de esta situaci�n. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Chon",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_ChonReactionMadam2
@9306 /* �Otra vez t�? �Shu, shu! �Fuera de aqu�! Espantar�s a los clientes. */
== P_ChonJ @9307 /* Creo que no soy yo quien espanta a los tuyos, hembra. */
EXIT

// Di�logo por el �rbol de la Vida
EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID) Global("P_ChonTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 pl3
END

CHAIN PLAYER1 pl3
@9308 /* Cho'Nuja, General de Dreach-naga. Sientes que has sido responsable del fin de su mundo y sin embargo se encuentra a tu lado, listo para ayudarte a recuperar tu alma.
Fall, la Dama de las Bestias. Su viaje ha significado un crecimiento en su persona y yace lista a tu lado. */
DO ~SetGlobal("P_ChonTreeOfLife","GLOBAL",1)~
END
++ @9309 /* Cho, esta no es tu pelea. Puedes quedarte aqu� si as� lo deseas. */ EXTERN P_ChonJ pl3.1
++ @93010 /* Hemos pasado por muchas batallas, Cho. Puedes volver y experimentar el mundo como realmente lo desees. */ EXTERN P_ChonJ pl3.1
++ @93011 /* �Est�s listo para seguirme, Cho? Te necesito a mi lado para vencer. */ EXTERN P_ChonJ pl3.1

CHAIN P_ChonJ pl3.1
@93012 /* �Soldado! La duda es el enemigo. Nunca dudes de mi fidelidad a ti. En Dreach-naga nos ense�aron a morir como guerreros. Con honor. Con gloria. Si hoy fuese ese d�a, entonces ser� a tu lado. */
END
COPY_TRANS PLAYER1 33 


// El Ojo Ciego: CHARNAME regresa con el artefacto
I_C_T RIFTM01 28 P_ChonRIFTM0128
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93013 /* ~�Todos los elfos son as�, <CHARNAME>? Esa lloradera no durar�a mucho tiempo en el Abismo.~ */
END

// Firkraag: Se posterga el combate
I_C_T FIRKRA02 21 P_ChonFIRKRA21
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93014 /* La criatura es... imponente. No estoy de acuerdo con huir de un combate, pero si es lo que crees correcto, te seguir�, <CHARNAME>. Siempre y cuando volvamos a acabar con este monstruo. */
END

// Firfraag: combate
I_C_T FIRKRA02 25 P_ChonFIRKRA25
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93015 /* Ser�s una criatura antigua, alado, pero mi estilo de combate tambi�n lo es. �Siente la furia de mis garras! ���Shehad Ibahalii!!! */
END

// Bodhi: Enfrentamiento final
I_C_T C6BODHI 0 P_ChonC6BODHI15_GOOD
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93016 /* Una criatura extra�a y repugnante. Ser� un placer para m� que me env�es a despacharla, <CHARNAME>. */
END

// �rbol de la vida. Irenicus es derrotado.
I_C_T PLAYER1 16 P_ChonIrenicusIsDead1
== P_ChonJ IF ~InParty("P_Chon") Range("P_Chon",15) !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93017 /* La batalla a�n no ha terminado, <CHARNAME>. �Algo extra�o est� sucediendo! */
END

// Infierno
I_C_T PLAYER1 25 P_ChonEnteringHell1
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93018 /* Extra�o. Siento una especie de nostalgia al estar aqu�. Como si sintiera la calidez de Dreach-naga otra vez. Pero... creo que esto no es el Abismo. */
END


// Combatiendo contra Irenicus en el Infierno (Son 4 ICT)
I_C_T HELLJON 7 P_ChonThirdBattleWithIrenicus1
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, cham�n. Tu muerte liberar� el alma de mi amigo. �Siente la furia del Abismo! */
END

I_C_T HELLJON 8 P_ChonThirdBattleWithIrenicus2
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, cham�n. Tu muerte liberar� el alma de mi amigo. �Siente la furia del Abismo! */
END

I_C_T HELLJON 9 P_ChonThirdBattleWithIrenicus3
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, cham�n. Tu muerte liberar� el alma de mi amigo. �Siente la furia del Abismo! */
END

I_C_T HELLJON 10 P_ChonThirdBattleWithIrenicus4
== P_ChonJ IF ~InParty("P_Chon") InMyArea("P_Chon") !StateCheck("P_Chon",CD_STATE_NOTVALID)~ THEN @93019 /* Este es tu fin, cham�n. Tu muerte liberar� el alma de mi amigo. �Siente la furia del Abismo! */
END

