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




