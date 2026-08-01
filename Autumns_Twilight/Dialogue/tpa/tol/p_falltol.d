// Diálogo por el Árbol de la Vida
EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) Global("P_FallTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 fall_p2
END

CHAIN PLAYER1 fall_p2
@10010006 /* Fall, la Dama de las Bestias. Su viaje ha significado un crecimiento en su persona y yace lista a tu lado. */
DO ~SetGlobal("P_FallTreeOfLife","GLOBAL",1)~
END
++ @10010007 /* Fall, esta no es tu pelea. Puedes quedarte aquí si así lo deseas. */ EXTERN P_FallJ fall_p2.1
++ @10010008 /* Hemos pasado por mucho, Fall. Puedes volver a los bosques si así lo deseas. */ EXTERN P_FallJ fall_p2.1
++ @10010009 /* ¿Estás lista para seguirme? Te necesito a mi lado para vencer. */ EXTERN P_FallJ fall_p2.1

CHAIN P_FallJ fall_p2.1
@10010010 /* Nunca creí ver las cosas que vi durante nuestro viaje juntos, <CHARNAME>. Es el momento de recuperar tu alma. ¡A por Irenicus! */
END
COPY_TRANS PLAYER1 33 


// Gitana
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Fall",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
@10010055 /* Tu amor por tu familia es incondicional, mi joven semielfa. Pero cuidado, una misteriosa sombra, amenazante y tenebrosa, os rodea a todos. Tu amor puede ser tu perdición y está en ti decidir si arriesgar tu alma por ello. */
== P_FallJ @10010056 /* Si hay algo por lo que vale la pena morir, mi dama, es por amor. Aceptaré mi destino, sea cual sea. */ 
EXIT

// Celvan el Loco
CHAIN IF WEIGHT #-1 
~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallReactionCelvan","AR0300",0)~ THEN CELVAN c1
@10010000 /* Hubo una vez una ballestera aplicada.
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
== P_FallJ @10010001 /* ¿C-cómo... cómo sabes eso? ¡Gnomo! Habla... */
END CELVAN 1

// Belmin
CHAIN IF WEIGHT #-1 
~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
RandomNum(4,1)
Global("P_FallBelmin","AR0700",0)~ THEN BELMIN belmin1
@10013317 /* ¡Tú! Te he visto rondando por aquí. No eres bienvenida a nuestra civilización, demonio. ¡Fuera! ¡Fuera de aquí! */
DO ~SetGlobal("P_FallBelmin","AR0700",1)~
== P_FallJ @10013318 /* *suspiro* Otra vez este tipejo. Vámonos, <CHARNAME>, simplemente ignorémosle. */
EXIT


// Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Fall",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_FallReactionMadam1
@10010002 /* Saludos, mi señora. Soy la Madame Nin, y estoy aquí para asegurar que su compañía sea placentera. ¿Estás interesada? */
== P_FallJ @10010003 /* ¿Compañía? ¿De qué habla, señora? M-mejor, aléjese de mí. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Fall",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_FallReactionMadam2
@10010004 /* Entonces... ¿deseas compañía para esta noche? */
== P_FallJ @10010005 /* ¡Ya le dije que no! */
EXIT

I_C_T PLAYER1 16 P_TreeOfLifeFight_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010047 /* ¡Ja! Has sido superado en número y en... ¿Q-qué? */
END

// Traición a los svirneblin
I_C_T UDSVIR03 27 P_Fall_Svirn01
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010048 /* By the vineyards of Imnescar! <CHARNAME>, such betrayal is unforgivable... No... I can't conceive it... Our paths end here! I hope I never see you again... */ DO ~SetGlobal("P_Fall_IS_GONE","GLOBAL",1) LeaveParty() EscapeArea()~
END

// Muerte de Kalah
I_C_T KALAH2 4 P_FallKalahDeath01
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010012 /* I feel... a bit of pity for the gnome. The mockery he received triggered all this madness... But... his actions do not justify it. */
END

// Ataque a los esclavistas en la calle de los Slums
I_C_T SLSLAVE 3 P_FallJ_SLSLAVEHELP2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10103528 /* No dejaré que os lleven, señor. ¡Por Imnescar que atacaré a estos esclavistas! Espero que me ayudes, <CHARNAME>. */ DO ~Attack("SLUMSSLAVER3")~
END

I_C_T2 FIRKRA02 25 P_FIRKRA02_25_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @729000 /* ¡Tus crímenes acaban aquí, malvado dragón! Como representante de Imnescar, daré lo mejor de mí en la batalla. */
END

I_C_T YOSHJ 113 P_YOSHJ_113_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010042 /* Fall: ¿Q-qué? ¿Yo-yoshimo? No puede ser cierto... No... */
END

// --- SPELLHOLD: LONK HA MUERTO (LIBERACIÓN DE LOS INTERNOS) ---
I_C_T PLAYER1 15 P_PLAYER1_15_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010044 /* Contar con la alianza de los hechiceros torturados... */
END

I_C_T PLAYER1 25 P_EnteringHell_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010053 /* Esto es perfecto... ¿he muerto y he ido al infierno? ¿Tan mal hice las cosas en vida? Oh, espera... esto me suena a que es obra tuya, <CHARNAME>. */
END

I_C_T HELLJON 7 P_HELLJON7_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010054 /* La batalla final ha llegado, Irenicus. Hemos viajado incansablemente para llegar a este momento. ¡Y habrás de devolver aquello que has arrebatado a <CHARNAME>! Prepárete. ¡Por Imnescar! */
END

I_C_T HELLJON 8 P_HELLJON8_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010054 /* La batalla final ha llegado, Irenicus. Hemos viajado incansablemente para llegar a este momento. ¡Y habrás de devolver aquello que has arrebatado a <CHARNAME>! Prepárete. ¡Por Imnescar! */
END

I_C_T HELLJON 9 P_HELLJON9_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010054 /* La batalla final ha llegado, Irenicus. Hemos viajado incansablemente para llegar a este momento. ¡Y habrás de devolver aquello que has arrebatado a <CHARNAME>! Prepárete. ¡Por Imnescar! */
END

I_C_T HELLJON 10 P_HELLJON10_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010054 /* La batalla final ha llegado, Irenicus. Hemos viajado incansablemente para llegar a este momento. ¡Y habrás de devolver aquello que has arrebatado a <CHARNAME>! Prepárete. ¡Por Imnescar! */
END

I_C_T GAELAN 66 P_GAELAN66_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010029 /* Are we going to meet one of the bigwigs of Athkatla? Wow, I never imagined I'd come to this when I arrived in the city... */
END

I_C_T VICG1 2 P_VICG1_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010018 /* Es injusto, <CHARNAME>. ¡Debemos hacer algo! */
END

I_C_T CERNDJ 69 P_CERNDJ69_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010030 /* Faldorn must fall! I'm sure you can handle her, Cernd. */
END

I_C_T JAHEIRAJ 94 P_JAHEIRAJ94_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010031 /* Faldorn must fall! I'm sure you can handle her, Jaheira. */
END

// Bodhi
I_C_T BODHI 6 P_Bodhi6_FallLead_EvilDusk
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010028 /* Todo su ser emana la más impura antinaturalidad. No me fío de ella. Aunque si optas por seguirla, yo también lo haré. */
END


I_C_T BODHI2 4 P_BODHI2_4_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010041 /* You're cornered and you dare to insult us. You're one step away from being destroyed, vampire! */
END


I_C_T PPBODHI4 14 P_PPBODHI4_14_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010043 /* Si Bodhi hará esto, es porque tiene un sinfín de trampas plantadas para nosotros. ¡Podría dispararle desde aquí! Pero... no sé si eso funcionaría... */
END

I_C_T GAAL 1 P_GAAL1_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010032 /* ¿A qué se refiere con eso? No me digas que es una directiva para... ¿quitarse los ojos? */
END

I_C_T GAAL 22 P_GAAL22_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010032 /* ¿A qué se refiere con eso? No me digas que es una directiva para... ¿quitarse los ojos? */
END

I_C_T RIFTM01 28 P_RIFTM01_28_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010034 /* He conocido a elfos testarudos... y ellos viven por siglos. ¡Pero nunca vi a una criatura tan testaruda como tú! */
END

I_C_T MAEVAR 24 P_MAEVAR24_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010021 /* ~Definitivamente este es el más desagradable de los ladrones que he conocido.~ */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @10010023 /* Pues, corríjame si me equivoco, lady Fall, pero no me parece que haya conocido a muchos. */
== P_FallJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @10010024 /* Hm... buen punto, Yoshimo. Aún así, mantengo mi postura. */
END

I_C_T MAEVAR 29 P_MAEVAR29_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010025 /* ¿Tenemos que seguir asesinando gente, encima por este maníatico? <CHARNAME>, esto se torna cada vez peor. */
END

I_C_T RENAL 5 P_RENAL5_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN  @10010020 /* Sonríe demasiado como para que ello inspire confianza. */
END

I_C_T RENAL 41 P_RENAL41_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010026 /* Esto sonará extraño, pero no oirás quejas de mi parte en tener que matar a ese mentecato. */
END

I_C_T ARAN 49 P_ARAN49_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010039 /* Para ser un líder ladrón, tiene mucho de político. Difícilmente le cuesta mantener una promesa. */
END

I_C_T HENDAK 2 P_Hendak2_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010014 /* ¡Debemos hacer algo al respecto, <CHARNAME>! Lo que sucede aquí es inconcebible */
END

I_C_T HENDAK 41 P_Hendak41_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010015 /* Tenemos más trabajo por hacer. Nunca creí que tendría la oportunidad de hacer el bien de esta manera cuando llegué a Athkatla, <CHARNAME>. Será un honor pelear a tu lado. */
END


I_C_T HENDAK 43 P_Hendak43_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010016 /* Bueno, espero que Hendak se encargue de que algo así no vuelva a surgir. */
END

I_C_T TANNER 8 P_Tanner8_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010017 /* Fall: ¡Bastardo! */
END

I_C_T TOLGER 75 P_TOLGER75_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010027 /* Nunca había oído de aceptar algo sin saber de qué se trata. Imagínate que yo te hubiera dicho algo así cuando nos conocimos, <CHARNAME>. */
END

I_C_T UHOGRE01 5 P_UHOGRE01_5_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010036 /* Es verdad que mi voz no es de la experiencia, <CHARNAME>. Pero no creo que estos ogros sean los responsables de lo que sucede aquí. */
END

I_C_T FIRKRA02 21 P_FIRKRA02_21_FallLead
== P_FALLJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010037 /* Nunca... nunca creí que me sentiría tan feliz de huir de una batalla. No es que sea cobarde, <CHARNAME>. Es sólo que no estamos listos para este... enfrentamiento. */
END

I_C_T NALIA 56 P_NALIA56_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010013 /* Tiene un espíritu combativo. Eso me gusta. Creo que sería una buena camarada. */
END

I_C_T PPSAEM3 2 P_PPSAEM3_2_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010045 /* ¿Otra vez intentas engañarnos? Déjame enviar a Daren para que muerda su trasero, <CHARNAME>, por favor. */
END

I_C_T SAHKNG01 33 P_SAHKNG01_33_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010046 /* ¿Es sabio confiar en la palabra de este rey loco? ... */
END

I_C_T UDSILVER 9 P_UDSILVER9_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010049 /* *traga saliva* ¿Existen criaturas tan bellas en la Infraoscuridad? Espléndido... */
END

I_C_T UDSILVER 35 P_UDSILVER35_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010050 /* *refunfuñeo* Estaba más que bien con mi aspecto. Pero bueno, entiendo que debemos soportar esto por un bien mayor. */
END

I_C_T C6ELHAN2 8 P_C6ELHAN28_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) ~ THEN @10010051 /* *suspiro* Esta tortura parece no tener fin... */
END

I_C_T TRSKIN02 16 P_TRSKIN02_16_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID) ~ THEN @10010035 /* ¡Rejiek! Aquí en Caravasar... Es nuestra oportunidad de acabar lo que no pudimos en Athkatla. */
END

I_C_T C6BODHI 0 P_C6BODHI15_FallLead
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @10010052 /* Estamos cada vez más cerca de acabar con esa demonio de una vez por todas, <CHARNAME>. Avancemos con cautela. */
END

