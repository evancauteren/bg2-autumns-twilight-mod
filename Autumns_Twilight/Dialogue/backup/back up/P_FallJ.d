BEGIN P_FallJ

// Quest e interacciones

// Quest 1
IF ~~ THEN BEGIN 1 // from:
  SAY @3000 /* ~Gracias, <CHARNAME>. Puede que encuentres la forma de gastar menos recursos. Aunque primero deberemos... *suspiro* reunir esas 7500 piezas de oro.~ */
IF ~~ THEN DO ~ SetGlobal ("P_FallMission1","GLOBAL",3)~ UNSOLVED_JOURNAL @210002 EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3001 /* ~<CHARNAME>, por favor. Esto va más allá de lo material. Me propuse liberar a esos animales. ¡Aún pretendo hacerlo!~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @3003 /* ~¿Y bien? Con tu ayuda será más fácil. ¿Qué dices?~*/
    IF ~~ THEN REPLY @3004 /* ~De acuerdo, de acuerdo. Reuniré la cantidad necesaria y luego hablaré con Andrew Oliva.~ */  GOTO 1
	IF ~~ THEN REPLY @3005 /* ~No, Fall. No pienso emplear dinero en esto. Es una pérdida de tiempo.~ */  GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @3006 /* ~¡Eres insensible! Nadie... nadie debería vivir enjaulado para el entretenimiento de los demás.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @3007 /* ~No puedes verlo... Quizás algún día lo hagas... Pero yo no estaré para verlo.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @3008 /* ~Adiós, <CHARNAME>. Dudo que nuestros caminos vuelvan a cruzarse.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission1","GLOBAL",9) EraseJournalEntry (@210001) LeaveParty() EscapeArea()~ SOLVED_JOURNAL @210003 EXIT
 END
 
IF ~~ THEN BEGIN 7 // from:
  SAY @3013 /* ¡Andrew! No seas descortés. Mis nuevos amigos no provocaron nada. */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @3015 /* ~Además, estoy aquí para presentarte a <CHARNAME>. De él vendrá la solución al problema que te planteé.~ ~Además, estoy aquí para presentarte a <CHARNAME>. De ella vendrá la solución al problema que te planteé.~*/
  IF ~~ THEN EXTERN ~P_ANDREW~ 5
END



/*I_C_T P_ANDREW 4 P_Fall_ANDREW4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) Global("P_Fall_ANDREW4","GLOBAL",0)~ THEN @3015 /* ¡¿Qué?! E-eres un descarado, Andrew. ¡Ese no era el trato! */ 
END*/

I_C_T P_FALLJ 2 P_FallJ_QUEST1_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @3009 /* Nadie merece estar encerrado para el entretenimiento de los demás... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3010 /* Creo que Fall tiene razón, <CHARNAME>. Debemos honrar a la madre tierra y devolver estas bestias a la naturaleza. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3011 /* ¡La ballestera tiene razón! Es nuestro deber hacer el bien y esta misión lo requiere. ¡Bubú piensa como yo!*/
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4000 /* Admito que nunca me ha gustado ver esas jaulas. Estoy con Fall en esto. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4001 /* El dinero va y viene, <CHARNAME>. Entiendo que lo necesitamos, pero siempre podemos encontrar la forma de ganar más. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3012/* ~No me gusta la idea de emplear tanto dinero, <CHARNAME>. Estoy seguro de que lo necesitaremos en algún momento. Hablamos de una cantidad considerable.~ */
END

/////////////////////////////////////////

// Gitana
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Fall",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
@55 /* Tu amor por tu familia es incondicional, mi joven semielfa. Pero cuidado, una misteriosa sombra, amenazante y tenebrosa, os rodea a todos. Tu amor puede ser tu perdición y está en ti decidir si arriesgar tu alma por ello. */
== P_FallJ @56 /* Si hay algo por lo que vale la pena morir, mi dama, es por amor. Aceptaré mi destino, sea cual sea. */ 
EXIT

// Celvan el Loco
CHAIN IF WEIGHT #-1 
~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallReactionCelvan","AR0300",0)~ THEN CELVAN c1
@0 /* Hubo una vez una ballestera aplicada.
Su padre cayó en la frontera de su hogar
cuando un monstruo de ocho patas atacó sin cesar.
Ella su legado tomó y sus virotes letales
vuelan como el veneno de sus rivales fatales.
Ahora debe terminar lo que sus enemigos empezaron,
y llevar a su familia a la paz que siempre buscaron.

Once there was a skilled crossbow half-elf with grace,
Whose father fell defending their home,
Against monsters with eight legs and chrome.
She took up his legacy and aims with precision,
Her bolts as deadly as poison with a fateful decision.
Now she must finish what her enemies began,
And bring her family the peace of their land. */
DO ~SetGlobal("P_FallReactionCelvan","AR0300",1)~
== P_FallJ @1 /* ¿C-cómo... cómo sabes eso? ¡Gnomo! Habla... */
END CELVAN 1

// Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Fall",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_FallReactionMadam1
@2 /* Saludos, mi señora. Soy la Madame Nin, y estoy aquí para asegurar que su compañía sea placentera. ¿Estás interesada? */
== P_FallJ @3 /* ¿Compañía? ¿De qué habla, señora? M-mejor, aléjese de mí. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Fall",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_FallReactionMadam2
@4 /* Entonces... ¿deseas compañía para esta noche? */
== P_FallJ @5 /* ¡Ya le dije que no! */
EXIT

// Diálogo por el Árbol de la Vida
EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) Global("P_FallTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
@6 /* Fall, la Dama de las Bestias. Su viaje ha significado un crecimiento en su persona y yace lista a tu lado. */
DO ~SetGlobal("P_FallTreeOfLife","GLOBAL",1)~
END
++ @7 /* Fall, esta no es tu pelea. Puedes quedarte aquí si así lo deseas. */ EXTERN P_FallJ pl2.1
++ @8 /* Hemos pasado por mucho, Fall. Puedes volver a los bosques si así lo deseas. */ EXTERN P_FallJ pl2.1
++ @9 /* ¿Estás lista para seguirme? Te necesito a mi lado para vencer. */ EXTERN P_FallJ pl2.1

CHAIN P_FallJ pl2.1
@10 /* Nunca creí ver las cosas que vi durante nuestro viaje juntos, <CHARNAME>. Es el momento de recuperar tu alma. ¡A por Irenicus! */
END
COPY_TRANS PLAYER1 33 

// Firfraag: combate
/*I_C_T FIRKRA02 25 P_FallFIRKRA25
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @38 /* ¡Tus crímenes acaban aquí, malvado dragón! Como representante de Imnescar, daré lo mejor de mí en la batalla. */ DO ~ActionOverride("firmag01",Enemy()) ActionOverride("FIRKRA02",Enemy())~
END*/

// Firkraag
EXTEND_BOTTOM FIRKRA02 25
IF ~~ EXTERN P_FALLJ P_FallFIRKRA25
END

CHAIN P_FALLJ P_FallFIRKRA25
@38 /* ~¡El día de tu juicio ha llegado, dragón! ¡¡¡Prepárate a sentir nuestra ira!!!~ */ DO ~ActionOverride("firmag01",Enemy()) ActionOverride("FIRKRA02",Enemy())~
== P_DuskJ @20011 /* ¡Tus crímenes acaban aquí, malvado dragón! Como representante de Imnescar, daré lo mejor de mí en la batalla. */ DO ~ActionOverride("firmag01",Enemy()) ActionOverride("FIRKRA02",Enemy())~
EXIT



// GAELAN BAYLE
//I_C_T GAELAN 12 P_DuskGAELAN1
//== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11 /* Debemos ser cuidadosos. Estos son los Barrios Bajos, por lo que confiar en un extraño es algo potencialmente peligroso. Aún así, confío en mi fuerza. Si este pelmazo intenta algo raro, mi bastón le hará ver las estrellas. */
//END

// Kalah muere (se descubre que no era un ogro mago, sino un gnomo ilusionista)
I_C_T KALAH2 4 P_FallJ_KALAH2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @12 /* Siento... un poco de pena por el gnomo. Las burlas que recibió desencadenaron toda esta locura... Pero... su accionar no lo justifica. */
END

// Nalia se ofrece a unirse al grupo para la misión de De'Arnise
I_C_T NALIA 56 P_FallP_Nalia56
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @13 /* Tiene un espíritu combativo. Eso me gusta. Creo que sería una buena camarada. */
END

// Hendak pide que liberen a los gladiadores/esclavos
I_C_T HENDAK 2 P_FallHendakInt2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @14 /* ¡Debemos hacer algo al respecto, <CHARNAME>! Lo que sucede aquí es inconcebible */
END

// Hendak pide que se liberen a los esclavos del barco en los Slums
I_C_T HENDAK 41 P_FallHendakInt41
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) ~ THEN @15 /* Tenemos más trabajo por hacer. Nunca creí que tendría la oportunidad de hacer el bien de esta manera cuando llegué a Athkatla, <CHARNAME>. Será un honor pelear a tu lado. */
END

// Hendak indica se ha cumplido la misión de liberación de esclavos
I_C_T HENDAK 43 P_FallHendakInt43
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @16 /* Bueno, espero que Hendak se encargue de que algo así no vuelva a surgir. */
END

// Se descubre a Rejiek como el asesino
I_C_T TANNER 8 P_FallTanner8
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @17 /* ¡Bastardo! Asesinar a los desamparados... por un... ¿cruel experimento? */
END

// Viconia, antes de ser quemada
I_C_T vicg1 2 P_FallVICONI13
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @18 /* Es injusto, <CHARNAME>. ¡Debemos hacer algo! */
END

// Xzar está a punto de ser asesinado
//I_C_T LYROS 5 P_FallLYROS5
//== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @19 /* (susurro) <CHARNAME>, claramente fuimos nosotros los que irrumpimos en su casa y matamos a esas viles criaturas. No es que me esté quejando, pero creo que aquí hay gato encerrado... Debemos estar atentos. */
//END

// Renal Cabellorojo Intro
I_C_T RENAL 5 P_FallRENAL5
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @20 /* Sonríe demasiado como para que ello inspire confianza. */
END

// Maevar intro
I_C_T MAEVAR 24 P_FallMAEVAR24
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @21 /* ~Definitivamente este es el más desagradable de los ladrones que he conocido.~ */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @23 /* Pues, corríjame si me equivoco, lady Fall, pero no me parece que haya conocido a muchos. */
== P_FallJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @24 /* Hm... buen punto, Yoshimo. Aún así, mantengo mi postura. */
END

// Edwin pide asesinar a Rayic Gethras
//I_C_T EDWIN 3 P_FallEDWIN3
//== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @22 /* Claramente, esta es una Cofradía de Zopencos, <CHARNAME>. ¿Asesinar por este... este tipejo de rojo? (suspiro) Creo que puedo encargarme de ello, si es necesario. */
//END

// Maevar pide asesinar a un 'traidor'
I_C_T MAEVAR 29 P_FallMAEVAR29
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @25 /* ~¿Tenemos que seguir asesinando gente, encima por este maníatico? <CHARNAME>, esto se torna cada vez peor.~ */
END

// Renal pide asesinar a Maevar
I_C_T RENAL 41 P_FallRENAL41
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @26 /* Esto sonará extraño, pero no oirás quejas de mi parte en tener que matar a ese mentecato. */
END

// Tolgerias te pide aceptar el trabajo sin conocer los detalles
I_C_T TOLGER 75 P_FallTOLGER75
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @27 /* Nunca había oído de aceptar algo sin saber de qué se trata. Imagínate que yo te hubiera dicho algo así cuando nos conocimos, <CHARNAME>. */
END

// Bodhi ofrece un trato por 15 mil po
I_C_T BODHI 6 P_FallBODHI10
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @28 /* Todo su ser emana la más impura antinaturalidad. No me fío de ella. Aunque si optas por seguirla, yo también lo haré. */
END

// GAELAN indica que conoceremos a Aran Linvail
I_C_T GAELAN 87 P_FallGAELAN2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @29 /* ¿Conoceremos a uno de los mandamás de Athkatla? Vaya, nunca me imaginé llegar a esto cuando arribé a la ciudad... */
END

// Faldorn (Jaheira)
I_C_T CERNDJ 69 P_FallCEFALDOR9
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @30 /* ¡Faldorn debe caer! Estoy segura de que tú puedes con ella, Cernd. */
END

// Faldorn (Cernd)
I_C_T JAHEIRAJ 94 P_FallCEFALDOR10
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @31 /* ¡Faldorn debe caer! Estoy segura de que tú puedes con ella, Jaheira. */
END


// El Ojo Ciego: Gaal dice que los discípulos deben deshacerse de todo lo que limita y es ofensivo
I_C_T GAAL 1 P_FallGAAL1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @32 /* ¿A qué se refiere con eso? No me digas que es una directiva para... ¿quitarse los ojos? */
END

// El Ojo Ciego: Combate contra Gaal
I_C_T GAAL 22 P_FallGAAL22
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @33 /* ¡Abominación! Finalemente la justicia te ha alcanzado. ¡Caerás por tus crímenes! */
END

// El Ojo Ciego: CHARNAME regresa con el artefacto
I_C_T RIFTM01 28 P_FallRIFTM0128
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @34 /* ~He conocido a elfos testarudos... y ellos viven por siglos. ¡Pero nunca vi a una criatura tan testaruda como tú!~ */
END

// Tiris: Rejiek es encontrado en Caravasar
I_C_T TRSKIN02 16 P_FallTRSKIN021
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @35 /* ¡Rejiek! Aquí en Caravasar... Es nuestra oportunidad de acabar lo que no pudimos en Athkatla. */
END

// Valle de Imnes: El mago ogro dice que es inocente
I_C_T UHOGRE01 5 P_FallUHOGRE01
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @36 /* Es verdad que mi voz no es de la experiencia, <CHARNAME>. Pero no creo que estos ogros sean los responsables de lo que sucede aquí. */
END

// Firkraag: Se posterga el combate
I_C_T FIRKRA02 21 P_FallFIRKRA21
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @37 /* Nunca... nunca creí que me sentiría tan feliz de huir de una batalla. No es que sea cobarde, <CHARNAME>. Es sólo que no estamos listos para este... enfrentamiento. */
END



// Aran dice que el encargo del rescate se atrasará
I_C_T ARAN 49 P_FallARAN49
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @39 /* Para ser un líder ladrón, tiene mucho de político. Difícilmente le cuesta mantener una promesa. */
END

// Aran encarga enfrentamiento contra Bodhi
//I_C_T ARAN 12 P_FallARAN12
//== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @40 /* Todo apunta a un enfrentamiento definitivo con la criatura, ¿verdad? No veo las horas de armar un alboroto entre los muertos. */
//END

// Bodhi 1er combate en las catacumbas
I_C_T BODHI2 4 P_FallBODHI24
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @41 /* Estás acorralada y te atreves a insultarnos. ¡Estás a un paso de ser destruida, vampiresa!  */
END

// Traición de Yoshimo
I_C_T YOSHJ 113 P_FallYOSHJ113
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @42 /* ¿Q-qué? ¿Yo-yoshimo? No puede ser cierto... No... */
END

// Capítulo 4: Bodhi anuncia que cazará a CHARNAME
I_C_T PPBODHI4 14 P_FallPPBODHI414
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @43 /* Si Bodhi hará esto, es porque tiene un sinfín de trampas plantadas para nosotros. ¡Podría dispararle desde aquí! Pero... no sé si eso funcionaría... */
END

// Lonk ha muerto. Momentos antes del enfrentamiento contra Irenicus
I_C_T PLAYER1 15 P_FallLonkIsDead1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @44 /* Contar con la alianza de los hechiceros torturados ha sido la decisión correcta, <CHARNAME>. Así, tendremos una oportunidad de derrotar a Irenicus. */
END

// Saemon aparece para ofrecer un trato
I_C_T PPSAEM3 2 P_FallPPSAEM32
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @45 /* ¿Otra vez intentas engañarnos? Déjame enviar a Daren para que muerda su trasero, <CHARNAME>, por favor. */
END

// Ciudad Sahuagin: Rey Loco demuestra ser obtuso
I_C_T SAHKNG01 33 P_FallSAHKNG0133
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @46 /* ¿Es sabio confiar en la palabra de este rey loco? ¡Es muy probable que se olvide de que nos conoce e intente comernos! */
END

// Svirneblin en la entrada de la ciudad svirneblin
//I_C_T UDSVIR01 3 P_FallUDSVIR013
//== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @47 /* He leído sobre los svirfneblin. En general, son criaturas benévolas. Si necesitan de nuestra ayuda, no deberíamos dudarlo, <CHARNAME>. Puede que incluso en este lugar podamos hacer algo de bien. */
//END

// CHARNAME decide traicionar a los svirneblin
I_C_T UDSVIR03 27 P_Fall_SVIRN1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @48 /* ¡Por los viñedos de Imnescar! <CHARNAME>, tal traición es imperdonable... No... no puedo concebirlo... ¡Nuestros caminos llegan hasta aquí! Espero no verte nunca más... */
DO ~SetGlobal("P_Fall_IS_GONE","GLOBAL",1) LeaveParty() EscapeArea()~
END

// Adalon, la Dragona de Plata
I_C_T UDSILVER 9 P_FallUDSILVER122
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @49 /* *traga saliva* ¿Existen criaturas tan bellas en la Infraoscuridad? Espléndido... */
END

// Fall se convierte en drow
I_C_T UDSILVER 35 P_FallUDSILVER35
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @50 /* *refunfuñeo* Estaba más que bien con mi aspecto. Pero bueno, entiendo que debemos soportar esto por un bien mayor. */
END

// Elfos de la superficie reciben con frialdad al grupo
I_C_T C6ELHAN2 8 P_FallC6ELHAN28
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) ~ THEN @51 /* *suspiro* Esta tortura parece no tener fin... */
END

// Bodhi: Enfrentamiento final
I_C_T C6BODHI 0 P_FallC6BODHI15_GOOD
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @52 /* Estamos cada vez más cerca de acabar con esa demonio de una vez por todas, <CHARNAME>. Avancemos con cautela. */
END

// Árbol de la vida. Irenicus es derrotado.
I_C_T PLAYER1 16 P_FallIrenicusIsDead1
== P_FallJ IF ~InParty("P_Fall") Range("P_Fall",15) !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @47 /* ¡Ja! Has sido superado en número y en... ¿Q-qué? */
END

// Infierno
I_C_T PLAYER1 25 P_FallEnteringHell1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @53 /* Esto es perfecto... ¿he muerto y he ido al infierno? ¿Tan mal hice las cosas en vida? Oh, espera... esto me suena a que es obra tuya, <CHARNAME>. */
END

// Combatiendo contra Irenicus en el Infierno (Son 4 ICT)
I_C_T HELLJON 7 P_FallThirdBattleWithIrenicus1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @54 /* La batalla final ha llegado, Irenicus. Hemos viajado por incontables lugares para llegar a este momento. ¡Y habrás de devolver aquello que has arrebatado a <CHARNAME>! Prepárete. ¡Por Imnescar! */
END

I_C_T HELLJON 8 P_FallThirdBattleWithIrenicus2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @54 /* La batalla final ha llegado, Irenicus. Hemos viajado por incontables lugares para llegar a este momento. ¡Y habrás de devolver aquello que has arrebatado a <CHARNAME>! Prepárete. ¡Por Imnescar! */
END

I_C_T HELLJON 9 P_FallThirdBattleWithIrenicus3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @54 /* La batalla final ha llegado, Irenicus. Hemos viajado por incontables lugares para llegar a este momento. ¡Y habrás de devolver aquello que has arrebatado a <CHARNAME>! Prepárete. ¡Por Imnescar! */
END

I_C_T HELLJON 10 P_FallThirdBattleWithIrenicus4
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @54 /* La batalla final ha llegado, Irenicus. Hemos viajado por incontables lugares para llegar a este momento. ¡Y habrás de devolver aquello que has arrebatado a <CHARNAME>! Prepárete. ¡Por Imnescar! */
END

APPEND P_FallJ

IF ~Global("P_FallTalk","GLOBAL",2)~ t1
SAY @129 /* Empecemos una conversación (ocurrirá 100 segundos después de que Fall se haya unido al grupo) */
++ @130 /* Player 1: Respuesta 1 */ + t1.1
++ @131 /* Player 1: Respuesta 2 */ + t1.2
++ @132 /* Player 1: Respuesta 4 Que corta la conversación */ + t.0
END

IF ~~ t.0
SAY @144 /* Respuesta 4: Fin de la conversación -> Timer 3600 segundos (.d file) */
= @144 /*  */
IF ~~ DO ~IncrementGlobal("P_FallTalk","GLOBAL",1)
SetGlobal("P_FallMatMission1","GLOBAL",1) ~ UNSOLVED_JOURNAL @210001 EXIT
END 
//RealSetGlobalTimer("P_FallTimer","GLOBAL",60)

// NOTA: el t.0 puede utilizarla para finalizar varias conversaciones

// t.1.1, .2 y .3 Son Ramas Loop. Sea cual sea la opción que el Player elija, el resultado será el mismo.

IF ~~ t1.1
SAY @133 /* Fall: Respuesta 1.1 -> Se va a la 1.4 */
= @144 /*  */
= @134 /*  */
++ @135 /* Player 1: Respuesta 1 */ + t1.11
++ @136 /* Player 1: Respuesta 2 */ + t.0
END

IF ~~ t1.11
SAY @137 /* Fall: Respuesta 1.2 -> Se va a la 1.4 */
= @138 /*  */
= @139 /*  */
++ @140 /* Player 1: Respuesta 1 */ + t.0
++ @141 /* Player 1: Respuesta 2 */ + t1.12
END

IF ~~ t1.12
SAY @142 /* Fall: Respuesta 1.3 -> Se va a la 1.4 */
= @144 /*  */
= @144 /*  */
= @144 /*  */
IF ~~ DO ~IncrementGlobal("P_FallTalk","GLOBAL",1)
SetGlobal("P_FallMatMission1","GLOBAL",1)~ UNSOLVED_JOURNAL @210001 EXIT
END 
//RealSetGlobalTimer("P_FallTimer","GLOBAL",60)

IF ~~ t1.2
SAY @143 /* Fall: Respuesta 1.1 -> Se va a la 1.4 */
= @139 /*  */
++ @140 /* Player 1: Respuesta 1 */ + t.0
++ @141 /* Player 1: Respuesta 2 */ + t1.12
END

END
