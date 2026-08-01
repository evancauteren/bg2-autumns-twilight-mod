// Diálogo por el Árbol de la Vida

EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DuskTreeOfLife","GLOBAL",0) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ EXTERN PLAYER1 duskgood_p2
END

CHAIN PLAYER1 duskgood_p2
@10100017 /* Dusk, el bravo guerrero. Su mirada es severa y determinada. Sabes que no dudaría en morir por sus ideales, ni por sus camaradas. */
DO ~SetGlobal("P_DuskTreeOfLife","GLOBAL",1)~
END
++ @10100018 /* Dusk, esta no es tu pelea. No es necesario que me sigas. */ EXTERN P_DuskJ duskgood_p2.1
++ @10100019 /* Has hecho mucho por mí, Dusk. Puedes irte a casa si así lo deseas. */ EXTERN P_DuskJ duskgood_p2.1
++ @10100020 /* ¿Estás listo para seguirme? Te necesito a mi lado para vencer. */ EXTERN P_DuskJ duskgood_p2.1

CHAIN P_DuskJ duskgood_p2.1
@10100021 /* Hemos recorrido un largo camino para llegar aquí. La única opción es el combate, <CHARNAME>. Lo haremos juntos... ¡lo haremos por los caídos! */
END
COPY_TRANS PLAYER1 33 

// Comentario Dusk Circo
EXTEND_BOTTOM CIRCG1 3
  IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ 
  EXTERN P_DUSKJ P_Dusk_CircusGuard_Fixed
END

CHAIN P_DUSKJ P_Dusk_CircusGuard_Fixed
@10103377
END
// Salidas manuales respetando el original de BioWare
IF ~IsValidForPartyDialog("Minsc")~ DO ~SetGlobal("NoEntry","AR0700",2) MoveToPoint([3037.1566]) Face(0)~ EXTERN ~MINSCJ~ 69
IF ~!IsValidForPartyDialog("Minsc") IsValidForPartyDialog("Yoshimo")~ DO ~SetGlobal("NoEntry","AR0700",2) MoveToPoint([3037.1566]) Face(0)~ EXTERN ~YOSHJ~ 25
IF ~!IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Yoshimo")~ DO ~SetGlobal("NoEntry","AR0700",2) MoveToPoint([3037.1566]) Face(0) SetGlobal("NoEntry","AR0700",2)~ UNSOLVED_JOURNAL #34110 EXIT


////////////////////////////////////////////////////////////
//////////  DUSK SIN CONDICIONAL DE ALINEAMIENTO //////////
////////////////////////////////////////////////////////////
I_C_T PLAYER1 16 P_TreeOfLifeFight_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100027 /* ¡Le hemos vencido! Pero... algo no está bien... ¿qué sucede? */
END



// NEERA Quest2
I_C_T OHNTELAN 12 P_DuskNeeraQ2_1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10103490 /* *suspiro* Parece ser que el Paseo se ha convertido en el epicentro de magia corrupta.  */
END


I_C_T MINSCJ 79 P_Dusk_Minscj1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10103380 /*  ~Concuerdo contigo, Minsc. Aunque lo de arrancarse los ojos me parece un tanto... exagerado.~ */
END

// Muerte de Kalah
I_C_T KALAH2 4 P_DuskKalahDeath01
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10103378 /* ~Well, after all, it wasn't an ogre mage, but an illusionist gnome. Everything makes sense now...~ */ 
END

////////////////////////////////////////////////////////////
   //////////      DUSK GOOD/NEUTRAL         //////////
////////////////////////////////////////////////////////////


// --- SULDANESSALAR: ENFRENTAMIENTO FINAL CONTRA JON IRENICUS EN EL ÁRBOL DE LA VIDA ---
I_C_T2 SUJON 14 P_SUJON_14_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10103442 /* Es hora de que pagues por lo que has hecho, Jon Irenicus. ¡Por la justicia de Athkatla, caerás! */
END

// Bodhi narra de enfrentamiento de Irenicus con Ladrones
I_C_T BODHI 90 P_DuskBODHI902
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10103504 /* Y en dicha confrontación, muchos murieron por su culpa. Fui testigo de ello. No merece piedad alguna. */
END


// Bodhi pide asesinar a Aran
I_C_T BODHI 72 P_DuskBODHI721
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10103485 /* Supongo que ya estamos metidos en el barro. Dudo que este Aran sea alguien de buena calaña, así que no tendrás objeciones por mi parte. */
END

I_C_T BODHI 45 P_Dusk_BODHI_MISSION2E
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0)~ THEN @10103484 /* De por sí trabajar para esta alimaña ya es malo. Preferiría algo que no sea maléfico, <CHARNAME>. */
END


// Traición a los svirneblin
I_C_T UDSVIR03 27 P_DuskGood_Svirn01
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0)~ THEN @10103404 /* ¡¿Qué?! <CHARNAME>, ¿qué demonios estás haciendo? ¡Es una vil traición! No... ¡No lo consentiré! Espero... espero que nuestros caminos no vuelvan a cruzarse... */ DO ~SetGlobal("P_Dusk_IS_GONE","GLOBAL",1) LeaveParty() EscapeArea()~
END

// Ataque a los esclavistas en la calle de los Slums
I_C_T SLSLAVE 3 P_DuskJ_SLSLAVEHELP
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0)~ THEN @10103527 /* <CHARNAME>, esto no quedará impune. ¿Tráfico de esclavos tan libremente en las calles? Es hora de hacer pagar a estos sucios esclavistas. */ DO ~Attack("SLUMSSLAVER2")~
END



///////////////////////////////////

// Gitana
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Dusk",LastTalkedToBy)~ EXTERN TRGYP02 g4
END

CHAIN TRGYP02 g4
@10100000 /* Aún cuando ya no eres un mensajero de la paz, puedes lograr mucho si tu <LADYLORD> <CHARNAME> encamina su destino hacia la luz. Pero ten en cuenta, aún en la oscuridad puedes encontrar el camino que tanto buscas... */
== P_DuskJ @10100001 /* Un poco ambiguo, mi dama. Sin embargo, no haré oídos sordos a lo que me ha dicho. */ 
EXIT

// Boy1
EXTEND_BOTTOM BOY1 1
IF ~~ EXTERN P_DUSKJ p_g4
END

CHAIN P_DUSKJ p_g4
@10120000 /* Rayos, <CHARNAME>. Que tengas tu propia búsqueda no implica que no puedas ayudar a los demás, en especial a un niño que ha perdido a su madre... */
EXIT

EXTEND_BOTTOM OHNQUAID 10
IF ~~ EXTERN P_DUSKJ p_g2
END

CHAIN P_DUSKJ p_g2
@10103489 /* ¡<CHARNAME>, cuidado! */
EXIT





// Celvan el Loco
CHAIN IF WEIGHT #-1 
~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskReactionCelvan","AR0300",0)~ THEN CELVAN c4
@10100002 /* Hubo una vez un valiente guerrero,
aunque soñaba con la paz su porte era severo.
Fue entonces que al amor de su vida conoció un día:
una elfa de cabellos dorados le correspondía.
Le acompañó en su gesta por la paz
y su rostro severo ahora era un disfraz,
pues el amor le cegó como a un tonto
ajeno a la tragedia que le golpearía pronto... */
DO ~SetGlobal("P_DuskReactionCelvan","AR0300",1)~
== P_DuskJ @10100003 /* ¿Me hablas a mí? ¡¿Cómo sabes eso?! ¡Explícate! */
END CELVAN 1


// Murtlen
CHAIN IF WEIGHT #-1 
~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
RandomNum(4,1)
Global("P_DuskMurtlen","AR0700",0)~ THEN MURTLEN murtlen1
@10103531 /* ¡Tú! ¿Alguna vez te han engañado aquí? ¡Apuesto a que sí! */
DO ~SetGlobal("P_DuskMurtlen","AR0700",1)~
== P_DuskJ @10103532 /* Hm. Creo que no, señor. No todos los mercaderes son estafadores, ¿sabes? Puede que incluso algún día yo pueda establecer mi propia tienda. ¿Quién sabe? */
EXIT


CHAIN IF WEIGHT #-1 
~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskReactionRibald","AR0702",0)~ THEN RIBALD P_DuskRibald1
@10103515 /* Ribald el Truequista a vuestro servicio. El Mercado del Aventurero es la mejor tienda del ramo en toda Faerûn. La mejor selección, los precios asequibles y no son cantos de sirena. Tan solo buenas mercancías, simple y llanamente... Hmmm... ¿Por qué anotas a medida que voy hablando, muchacho? */
DO ~SetGlobal("P_DuskReactionRibald","AR0702",1)~
== P_DuskJ @10103375 /* "Tan solo buenas mercancías, simple y..." (deja de escribir cuando todos posan su atención en él) */
== P_DuskJ @10103376 /* Ehm... Perdón, señor Ribald, es sólo que usted tiene buena labia para estas cosas. Y he pensado que podría aprender una o dos cosas de su discurso. */
== RIBALD @10103516 /* Ah, ya veo. Un futuro competidor, ¿eh? Ah, no hay necesidad de esa cara, mi estimado humano. Puedes aprender todo lo que quieras. Y, de paso, harías bien en comprarme una o dos baratijas, ¿no lo crees? Ahora, déjame comenzar de nuevo: */
END RIBALD 0

// Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Dusk",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_DuskReactionMadam1
@10100004 /* Saludos, mi señor. Soy la Madame Nin, y estoy aquí para asegurar que su compañía sea placentera. ¿Estás interesado? */
== P_DuskJ @10100005 /* No, gracias. <CHARNAME>, será mejor que encontremos una solución a esto. Claramente, aquí trabajan en contra de su voluntad. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Dusk",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_DuskReactionMadam2
@10100006 /* Entonces... ¿deseas compañía para esta noche? */
== P_DuskJ @10100007 /* Rayos, deje de molestar, señora. */
EXIT

I_C_T2 FIRKRA02 25 P_FIRKRA02_25_DuskLead
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10120011 /* ¡El día de tu juicio ha llegado, dragón! ¡¡¡Prepárate a sentir nuestra ira!!! */
END

I_C_T YOSHJ 113 P_YOSHJ_113_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100008 /* Dusk: No, Yoshimo... no... ¿cómo has podido vender tu alma a este ser desgraciado? Maldito seas, Yoshimo... maldito seas... */
END


// Prisión del Hechicero, luego de perder el alma

INTERJECT Player1 3 P_DuskSpellholdDizzy0
== P_DuskJ IF ~InParty("P_Dusk") Range("P_Dusk",15) !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN
@10100009 /* ¿Te encuentras bien? Estuviste un buen tiempo inconsciente. */
END
++ @10100010 /* Estoy bien, no te preocupes. */ EXTERN P_DuskJ pl11.1
++ @10100011 /* Mi cuerpo se siente extraño, como si no estuviera en total control... */ EXTERN P_DuskJ pl11.2

CHAIN P_DuskJ pl11.1
@10100013 /* De acuerdo, pero no dudes en acudir a tus amigos si lo necesitas. Debemos estar juntos en esto si queremos salir de aquí con vida. */
EXIT

CHAIN P_DuskJ pl11.2
@10100014 /* Es muy probable que el mago haya lanzado algo permanente contra ti... o tal vez, quitado algo. Pensar en las almas me estremece, pero si la tuya fue arrebatada, la recuperaremos. Es una promesa, <CHARNAME>. */
EXIT

// Slayer Transformation
I_C_T PLAYER1 5 P_PLAYER1_5_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100015 /* ¿Qué diantres fue eso? Te convertiste en una criatura sediente de sangre... */
END

// --- SPELLHOLD: LONK HA MUERTO (LIBERACIÓN DE LOS INTERNOS) ---
I_C_T PLAYER1 15 P_PLAYER1_15_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100016 /* No me sentiría muy a gusto con tantos hechiceros... */
END

I_C_T PLAYER1 25 P_EnteringHell_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100028 /* Una visión extraña, <CHARNAME>. ¿Me has traído a tu infierno personal? Si salimos de aquí con vida, puede que acepte que me compres una cerveza. */
END

I_C_T HELLJON 7 P_HELLJON7_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100029 /* Desde el Paseo de Waukin no has hecho más que dejar un regadero de cadáveres en tu camino, Irenicus... tu egoísmo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los caídos tendrán su venganza. ¡Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 8 P_HELLJON8_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100029 /* Desde el Paseo de Waukin no has hecho más que dejar un regadero de cadáveres en tu camino, Irenicus... tu egoísmo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los caídos tendrán su venganza. ¡Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 9 P_HELLJON9_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100029 /* Desde el Paseo de Waukin no has hecho más que dejar un regadero de cadáveres en tu camino, Irenicus... tu egoísmo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los caídos tendrán su venganza. ¡Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 10 P_HELLJON10_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100029 /* Desde el Paseo de Waukin no has hecho más que dejar un regadero de cadáveres en tu camino, Irenicus... tu egoísmo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los caídos tendrán su venganza. ¡Vamos, camaradas, a las armas! */
END


// GAELAN BAYLE
I_C_T GAELAN 12 P_DuskGAELAN1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10120001 /* Debemos ser cuidadosos. Estos son los Barrios Bajos, por lo que confiar en un extraño es algo potencialmente peligroso. Aún así, confío en mi fuerza. Si este pelmazo intenta algo raro, mi bastón le hará ver las estrellas. */
END

// Party conocerá a Aran Linvail (Gaelan dlg)
I_C_T GAELAN 66 P_GAELAN66_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10120002 /* Finalmente... conoceremos al líder de los Ladrones de las Sombras. Más vale que haga valer nuestros esfuerzos... */
END

// Viconia está por ser quemada
I_C_T VICG1 2 P_VICG1_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100060 /* ¿Van a quemarla viva?... No... ¿sólo por ser una drow? <CHARNAME>, esto es inconcebible. ¡Debemos hacer algo! */
END

// Xzar
I_C_T LYROS 5 P_LYROS5_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100061 /* (susurro) <CHARNAME>, claramente fuimos nosotros los que irrumpimos en su casa y matamos a esas viles criaturas. No es que me esté quejando, pero creo que aquí hay gato encerrado... Debemos estar atentos. */
END

// --- INTERJECCIONES EN EL BOSQUE DE LOS DRUIDAS (CERND DESAFÍA A FALDORN) ---
I_C_T CERNDJ 69 P_CERNDJ69_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100062 /* Incluso yo puedo entender que esta Faldorn es una afrenta para la naturaleza. Usar a los animales para el asesinato por venganza es una maniobra soez y cobarde. Cernd, espero que puedas patearle el trasero. */
END

// --- INTERJECCIONES EN EL BOSQUE DE LOS DRUIDAS (JAHEIRA DESAFÍA A FALDORN) ---

I_C_T JAHEIRAJ 94 P_JAHEIRAJ94_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120003 /* Incluso yo puedo entender que esta Faldorn es una afrenta para la naturaleza. Usar a los animales para el asesinato por venganza es una maniobra soez y cobarde. Jaheira, espero que puedas patearle el trasero. */
END

I_C_T BODHI 6 P_Bodhi6_GoodDuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10103385 /* Al parecer está al tanto de nuestros movimientos, <CHARNAME>. Sabe hasta de cuánto oro disponemos. Err... un dato incómodo si a mí me lo preguntas... */
END

I_C_T BODHI 10 P_DuskBODHI102
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100063 /* <CHARNAME>, aliarnos con esta criatura supondrá inmiscuirnos directamente en una guerra abierta contra los Ladrones de las Sombras. Debemos ser cautos en nuestras próximas decisiones... puede que la vida de muchos inocentes estén en nuestras manos... Si hay una guerra, querría evitarla (aunque a estas alturas, parece casi imposible). */
END


// --- PRIMER COMBATE CONTRA BODHI EN LAS CATACUMBAS ---
// Bodhi
I_C_T BODHI2 4 P_BODHI2_4_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100065 /* Mide tus palabras, criatura. Puede que <CHARNAME> sea un fastidio (sin ánimos de ofender) pero al menos tiene claridad en sus palabras, a diferencia tuya. */
END

// --- CAPÍTULO 4: BODHI ANUNCIA LA CAZA EN SPELLHOLD (LABERINTO) ---
I_C_T PPBODHI4 14 P_PPBODHI4_14_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100066 /* Parece ser que Irenicus aún puede ser alcanzado. <CHARNAME>, debemos superar los obstáculos que nos ponga esta criatura si queremos lograrlo. */
END

I_C_T C6BODHI 15 P_DuskC6BODHI15
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100067 /* Finalmente la criatura demuestra sentimientos. La sola mención de los elfos casi le hace perder la cabeza. */
END

// El Ojo Ciego
I_C_T GAAL 1 P_GAAL1_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100068 /* Fanáticos... presiento que algo malo está por ocurrir aquí, <CHARNAME>... */
END

I_C_T GAAL 22 P_GAAL22_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100069 /* ¡La hora del juicio ha llegado, Gaal! ¡Pagarás con sangre por aquellos inocentes que han muerto por tu culpa! */
END

I_C_T CTRAITOR 2 P_DuskCTRAITOR2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100070 /* Al parecer, el dios va tomando forma de bestia. Debemos tener cuidado, los contempladores no son criaturas para tomar a la ligera. */
END

I_C_T RIFTM01 6 P_DuskRIFTM016
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100071 /* ~¡¿Casi cada siglo?! Rayos...~ */
END

// --- EL OJO CIEGO: CHARNAME REGRESA CON EL ARTEFACTO AL SUMO SACERDOTE ---
I_C_T RIFTM01 28 P_RIFTM01_28_DuskGoodLead
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100072 /* El artefacto no nos pertenece. <CHARNAME> está haciendo lo correcto, al menos deberías darle el beneficio de la duda. */
END

// Maevar, Renal, Aran Linvail
// --- MA'VAR ASIGNA AL GRUPO A EDWIN (PRIMER ENCUENTRO) ---
I_C_T MAEVAR 24 P_MAEVAR24_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100073 /* Este tipo es un pelmazo, <CHARNAME>. Sin duda espero que nuestros esfuerzos valgan la pena. */
END

// --- MA'VAR PIDE ASESINAR A UN TRAIDOR (EMARK) ---
I_C_T MAEVAR 29 P_MAEVAR29_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100074 /* Si hay algo que me gustaría evitar, es asesinar en nombre de este idiota, <CHARNAME>. Espero que puedas encontrar la sabiduría de hacer lo correcto. */
END

I_C_T EDWIN 3 P_DuskEDWIN3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100075 /* Claramente, esta es una Cofradía de Zopencos, <CHARNAME>. ¿Asesinar por este... este tipejo de rojo? (suspiro) Creo que puedo encargarme de ello, si es necesario. */
END

I_C_T EDWIN 16 P_DuskEDWIN16
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100076 /* <CHARNAME>, espero que no lleguemos al extremo del asesinato en esta ocasión. Sin duda creo que podremos llegar a ser un tanto más... diplomáticos, ¿verdad? */
END

I_C_T EDWIN 16 P_DuskEDWIN162
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100522 /* <CHARNAME>, creo poder estar a la altura de la tarea. Si quieres, envíame a mí. Le amenazaré y haré que suelte esos papeles que tanto quiere este... infeliz de rojo. */
END

// --- RENAL CABELLOROJO (INTRODUCCIÓN Y PRIMER ENCUENTRO) ---
I_C_T RENAL 5 P_RENAL5_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100077 /* Es bastante carismático para ser un ladrón. Veremos qué tiene para decir... */
END

// --- RENAL RECIBE LAS PRUEBAS CONTRA MAE'VAR (ORDEN DE ASESINATO) ---
I_C_T RENAL 41 P_RENAL41_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100078 /* Finalmente, alguien a quien vale la pena matar. Quizás te sorprenda lo que voy a decir, pero espero que nos asignen la tarea de matar a ese bastardo. */
END

// --- ARAN LINVAIL EXPLICA EL RETRASO EN EL RESCATE ---
I_C_T ARAN 49 P_ARAN49_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100079 /* Este tipo es tan carismático como Renal. Sin embargo, no puedo evitar pensar que puede que estemos siendo estafados... */
END

I_C_T ARAN 53 P_DuskARAN53
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100080 /* Creo que la criatura del cementerio entra en juego aquí, <CHARNAME>... De seguro le está dando por los pelos a estos ladronzuelos. */
END

I_C_T ARAN 12 P_DuskARAN12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100081 /* Todo apunta a un enfrentamiento definitivo con la criatura, ¿verdad? No veo las horas de armar un alboroto entre los muertos. */
END

I_C_T ARAN 66 P_DuskARAN66
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100082 /* Y todo culminó en la tragedia del Paseo y en la muerte de decenas de personas inocentes. Debo decir que fue una lástima que no hayas podido resolver esto antes, Aran. */
END

// Hendak y Lehtinian

// --- CORONA DE COBRE: LEHTIN (SOLUCIÓN DINÁMICA REAL) ---
I_C_T2 LEHTIN 17 P_DuskLehtin_Interject
  == P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN 
  @10100083 /* Qué desagradable es este tipejo, <CHARNAME>. Sin embargo, será mejor que le sigas preguntando al respecto. Presiento que aquí pasa algo más de lo que vemos. */
END

I_C_T HENDAK 2 P_Hendak2_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100084 /* ¡Me hierve la sangre de ira, <CHARNAME>! Hagamos lo posible por liberar a estos esclavos y hagamos pagar a los culpables. Cuenta conmigo. */
END

// --- HENDAK PIDE ACABAR CON LOS ESCLAVISTAS (SLUMS) ---
I_C_T HENDAK 41 P_Hendak41_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100085 /* La esclavitud es un negocio muy redituable. El precio que pagamos por la libertad no es visible, pero cuesta y mucho. Acabar con los asquerosos esclavistas es lo mejor que podemos hacer. */
END

// --- HENDAK AGRADECE LA LIBERACIÓN DE LOS ESCLAVOS (MISIÓN FINALIZADA) ---
I_C_T HENDAK 43 P_Hendak43_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100086 /* Hemos hecho algo bueno aquí, <CHARNAME>. Estoy seguro de que Hendak hará lo posible para mejorar la calidad de vida de aquellos que fueron esclavos. */
END

I_C_T MURDGIRL 8 P_DuskMURDGIRL8
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100087 /* Muchachita, el hecho de que hayas escapado por los pelos, ¿no te dice algo? Campoescudo hizo lo correcto al darnos tu nombre. */
END

I_C_T TANNER 8 P_Tanner8_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100088 /* Dusk Bueno: Así que lo admites... */
END

I_C_T INSPECT 43 P_DuskINSPECT43
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100089 /* Debes ir con cuidado, teniente. El bastardo había plantado un montón de trampas mortales, puede que aún quede alguna. Oh, y si fuera tú, llevaría mascarilla... El hedor allí es... insoportable. */
END

I_C_T MEKRAT 11 P_DuskMEKRAT11
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN 
@10100090 /* No tengo quejas en realizar esta búsqueda, sin embargo, este elfo hechicero parece algo inestable... Recomendaría ir con cuidado, tanto si tenemos éxito, cómo si no. */
== P_DuskJ IF ~InParty("P_Dusk")~ THEN @10103324 /* Tampoco tendría quejas si decidieras, de repente, que le dé un bastonazo por la cabeza. Dilo y se hará realidad. */
END

I_C_T RAELIS 17 P_DuskRAELIS17
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100091 /* Ha sido una aventura extraña, <CHARNAME>, aunque siempre es bueno enfrentarse a esclavistas. Espero que Raelis no tenga inconvenientes para abrir ese portal... */
END

I_C_T EDWINJ 58 P_DuskEDWINJ58
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100092 /* ¿Estás loco, hechicero? En ningún momento mencionó que teníamos permiso para usar tus cochinos conjuros a diestra y siniestra. ¡No creas que me quedaré de brazos cruzados si tienes la intención de lastimar a inocentes con tu magia! */
== VALYGARJ IF ~InParty("P_Dusk") InParty("Valygar") InMyArea("Valygar") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120007 /* No lo podría haber dicho mejor, Dusk. */
== EDWINJ IF ~InParty("P_Dusk") InParty("Edwin") InMyArea("Edwin") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120008 /* ¿Qué es esto? ¿El hombre del palito intenta darme advertencias? Puedes intentar detenerme, hombre del palito... Sólo inténtalo... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120009 /* Ya lo veremos, mago... ya lo veremos... */
END

I_C_T KAYPAL02 16 P_DuskKAYPAL0216
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100093 /* No soy nadie para juzgar los errores ajenos. Más aún de aquellos que intentan redimirse pese a no tener lugar en el mundo... Espero que estemos haciendo lo correcto, <CHARNAME>. */
END

// Valle de Inmes

I_C_T TOLGER 75 P_TOLGER75_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100094 /* ¿Te pide aceptar un trato sin siquiera conocer los detalles de antemano? Uff... típica actitud de un mago cobarde... */
END


// --- VALLE DE IMNES: MADULF (EL OGRO) DECLARA SU INOCENCIA ---
I_C_T UHOGRE01 5 P_UHOGRE01_5_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100096 /* No me pinta que ellos sean los responsables de este misterio, <CHARNAME>. Cazarlos sin que hayan hecho nada malo sería un error. Creo que es mejor que sigamos indagando. */
END

// Ventolanza

I_C_T VAELASA 7 P_DuskVAELASA7
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100097 /* Es raro... pero siento una extraña nostalgia con sólo verlas... Son criaturas hermosas. 
Has hecho bien en liberarlas, <CHARNAME>. Pertenecen al bosque. Y a la libertad. */
END

I_C_T FIRKRA02 7 P_DuskFIRKRA02
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100098 /* Cada vez me convenzo más, amigo mío, que lo de tu linaje divino no es un secreto tan bien guardado... */ /* Cada vez me convenzo más, amiga mía, que lo de tu linaje divino no es un secreto tan bien guardado... */
END

// --- GUARIDA DE FIRKRAAG: EL DRAGÓN POSTERGA EL COMBATE (ENCUENTRO INICIAL) ---
I_C_T FIRKRA02 21 P_FIRKRA02_21_DuskLead
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10120010 /* Una criatura imponente... Dicen que los dragones ancianos se encuentran entre las criaturas más poderosas de los Reinos... Creo que es oportuno que posterguemos este combate... Creo... */
END

// --- CASTILLO DE'ARNISE: NALIA SE OFRECE A UNIRSE AL GRUPO ---
I_C_T NALIA 56 P_NALIA56_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100099 /* La muchacha no carece de coraje, <CHARNAME>. Creo que sería una buena adición al grupo. Sin embargo, también comprendería que decidas no arriesgar su cuello en esta empresa. */
END

I_C_T KPCAPT01 3 P_DuskKPCAPT0103
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10120012 /* ¿Bestias excavadoras? Se me ocurre que pueden tratarse de Moles Sombrías... Eso o... Topos gigantes. */
== MINSCJ IF ~InParty("P_Dusk") InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10120013 /* ¿Topos gigantes? Bubú se estremece de sólo pensarlo. */
== JAHEIRAJ IF ~InParty("P_Dusk") InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10120014 /* ¿Topos? Vaya imaginación que tienes, Dusk. */
== P_DuskJ IF ~ OR (2) InMyArea("Jaheira") InMyArea("Minsc") ~ @10120015 /* *carraspeo* Creo que me quedo con la teoría de las Moles Sombrías... */
END

// Caravasar 
 
I_C_T NEEBER 10 P_DuskNEEBER8
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100103 /* Claramente, este tipejo no cuenta con todas sus luces. */
END

I_C_T CELOGAN 40 P_DuskCELOGAN40
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100104 /* Tiene sentido... ¿Puede que se trate de un druida? */
== JAHEIRAJ IF ~ InParty("P_Dusk") InMyArea("Jaheira") ~ THEN @10120016 /* Es posible, aunque no veo por qué haría algo así. Provocar una guerra abierta contra las ciudades no es la forma de preservar el equilibrio. */
== VALYGARJ IF ~ InParty("P_Dusk") InMyArea("Valygar") ~ THEN @10120017 /* He conocido a algunos druidas. Si bien suelen ser extraños, no veo razones para que comiencen una guerra sin sentido. Pero, de nuevo, es muy probable que se trate de un druida. */
== CELOGAN IF ~InParty("P_Dusk")~ THEN @10120018 /* Quizás, pero espera a que continúe con mi relato. */
END

I_C_T TRGENI01 24 P_DuskTRGENI0124
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120019 /* No sé si podamos confiar en los djinn, <CHARNAME>. Nada garantiza que cumplan con su palabra. */
== TRGENI01 @10120020 /* ¿Pero qué oigo? Un pequeño mortal dudando de las palabras del gran Khan Zahra. Debería mandarte a otro plano por tal insolencia... pero te diré qué: Si me traes lo que pido, os daré un artefacto digno para alguien de tu... clase. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120021 /* No actuamos por la recompensa, criatura. Lo hacemos para ayudar al pueblo que asolas. Si no cumples con la promesa de irte, ten por seguro que te las verás con nosotros... */
== TRGENI01 @10120022 /* (risa) ¡Qué divertidos son ustedes los humanos! */
END

I_C_T TRGENI01 24 P_DuskTRGENI01242
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103388 /* No se puede confiar en un djinn, <CHARNAME>. Si optas por perseguir a su presa, supongo que puedo ponerme detrás de eso. Pero si fuera por mí, los exterminaría aquí mismo. */
== TRGENI01 @10120020 /* ¿Pero qué oigo? Un pequeño mortal dudando de las palabras del gran Khan Zahra. Debería mandarte a otro plano por tal insolencia... pero te diré qué: Si me traes lo que pido, os daré un artefacto digno para alguien de tu... clase. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100514 /* ¿Un artefacto dices? Aunque suene tentador, ello no me convence de lo que me dices, monstruo. Sin embargo, seguiré a <CHARNAME> y si nos traicionas... lo pagarás con tu vida. */
== TRGENI01 @10120022 /* (risa) ¡Qué divertidos son ustedes los humanos! */
END



I_C_T TRGENI01 35 P_DuskTRGENI0135 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120023 /* Supongo que te debo una disculpa, genio. Después de todo, has cumplido con tu palabra. */
== TRGENI01  @10120024 /* Ah, pero si es el mortal desconfiado. Así es, caminante, no creas que me he olvidado de ti. Este fajín es muy extraño y presiento que puedes encontrarle más utilidad que yo. */ DO ~CreateItem ("p_wsash",1,1,1) GiveItem("p_wsash", "P_Dusk")~
END

///

I_C_T TRGENI01 40 P_DuskTRGENI0140 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120023 /* Supongo que te debo una disculpa, genio. Después de todo, has cumplido con tu palabra. */
== TRGENI01  @10120024 /* Ah, pero si es el mortal desconfiado. Así es, caminante, no creas que me he olvidado de ti. Este fajín es muy extraño y presiento que puedes encontrarle más utilidad que yo. */ DO ~CreateItem ("p_wsash",1,1,1) GiveItem("p_wsash", "P_Dusk")~
END


I_C_T TRGENI01 35 P_DuskTRGENI01352 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103389 /* ¡Ja! ¿Quién lo diría? El djinn está dispuesto a cumplir con su palabra. Espero que también lo hagas con lo que me has prometido, ¿eh? */
== TRGENI01  @10120024 /* Ah, pero si es el mortal desconfiado. Así es, caminante, no creas que me he olvidado de ti. Este fajín es muy extraño y presiento que puedes encontrarle más utilidad que yo. */ DO ~CreateItem ("p_wsash",1,1,1) GiveItem("p_wsash", "P_Dusk")~
END

I_C_T TRGENI01 40 P_DuskTRGENI01402 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10103389 /* ¡Ja! ¿Quién lo diría? El djinn está dispuesto a cumplir con su palabra. Espero que también lo hagas con lo que me has prometido, ¿eh? */
== TRGENI01  @10120024 /* Ah, pero si es el mortal desconfiado. Así es, caminante, no creas que me he olvidado de ti. Este fajín es muy extraño y presiento que puedes encontrarle más utilidad que yo. */ DO ~CreateItem ("p_wsash",1,1,1) GiveItem("p_wsash", "P_Dusk")~
END

// Prisión del Hechicero

I_C_T PPCOWLED 1 P_DuskPPCOWLED1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100107 /* (susurro) Algo va mal... mantén la guardia en alto, sólo por si las dudas... */
END

// --- BRYNNLAW: SAEMON HAVARIAN OFRECE UN NUEVO TRATO (Y OTRO BARCO) ---
I_C_T PPSAEM3 2 P_PPSAEM3_2_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100108 /* De tres palabras que dice este tipo, cuatro son mentiras. Sin embargo, <CHARNAME>, (pese a arriesgarnos a ser nuevamente traicionados por este batracio) creo que deberíamos escucharlo. */
END

I_C_T PPSAEM3 55 P_DuskPPSAEM355
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100109 /* Con un demonio, Saemon... */
END

I_C_T PPSAEM3 52 P_DuskPPSAEM352
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100110 /* El bastardo nos ha engañado de nuevo... */
END

I_C_T ELEARB01 2 P_DuskELEARB012
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100111 /* Estos lugares arcanos... tienen un aire de corrupción por doquier... */
== VALYGARJ IF ~InParty("P_Dusk") InParty("Valygar")~ THEN @10120025 /* Coincido, Dusk. Típica treta, viniendo de los Magos Encapuchados... */
END

I_C_T PPTIAX 1 P_DuskPPTIAX1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100112 /* Es extraño, no percibo energía mágica en este tipejo. Sin embargo, está claro que no está en sus cabales. Pobre... */
END

I_C_T PPTIAX 1 P_DuskPPTIAX12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100529 /* Es extraño, no percibo energía mágica en este tipejo. Sin embargo, está claro que no está en sus cabales. */
END

I_C_T PPIRENI1 4 P_DuskPPIRENI14
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100114 /* Está claro que no dejará marchar a tu amiga de aquí así como así, <CHARNAME>. Creo que debemos prepararnos para un inevitable combate... */
END

// --- CIUDAD SAHUAGIN: EL REY DE LA CIUDAD EXIGE EL CORAZÓN DEL REBELDE ---
I_C_T SAHKNG01 33 P_SAHKNG01_33_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") InParty("Minsc") InMyArea("Minsc") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100116 /* Ciertamente, este hombre-pez es muy cabeza dura. Me recuerda a alguien... */
== MINSCJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120026 /* Bubú pregunta... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") InParty("Minsc") InMyArea("Minsc") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120027 /* (carraspeo) Oh, no, mi querido Minsc... */
== MINSCJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120028 /* ¿Munsc? ¡Qué gran nombre!... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") InParty("Minsc") InMyArea("Minsc") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120029 /* De los mejores. */
END

I_C_T SAHPR1 1 P_DuskSAHPR11
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100117 /* Esta civilización es increíble. Parece ser sumamente antigua. No creo que muchos hombres hayan pisado estas... pegajosas baldosas. */
END

I_C_T SAHPR1 1 P_DuskSAHPR112
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10100530 /* Este lugar es asqueroso. El hedor a pescado abunda. Las baldosas están pegajosas... Rayos, <CHARNAME>, estos lugares a los que nos traes... */
END

I_C_T SAHPR2 12 P_DuskSAHPR1123
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100118 /* No me sorprende. <CHARNAME>, tu linaje de Bhaal seguro que tiene algo que ver. */
END

I_C_T SAHBEH01 26 P_DuskSAHBEH0126
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100119 /* (susurro) Quizás puedas convencerlo con cierta perspicacia, <CHARNAME>. Si no me comprendes, envíame a hablar con él directamente. Creo que la clave está en la palabra *arcón*... */
END

// Infraoscuridad
I_C_T UDSVIR01 3 P_DuskUDSVIR013
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100120 /* He leído sobre los svirfneblin. En general, son criaturas benévolas. Si necesitan de nuestra ayuda, no deberíamos dudarlo, <CHARNAME>. Puede que incluso en este lugar podamos hacer algo de bien. */
== VICONIJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0) ~ THEN @10120030 /* Incluso en la Oscuridad buscas ayudar a los demás, rivvil. Deberías saber que ese accionar tuyo, en la Infraoscuridad, te llevará a una muerte dolorosa. */
== P_DuskJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120031 /* Si fueras tú la que estuviese en apuros, Viconia, no dudaría en ayudarte. Para eso están los compañeros. */
== VICONIJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ @10120032 /* Hmm... ¿intentas seducirme, abbil? ¡Oh, Dusk, protégeme, soy una damisela en apuros! */
== VICONIJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120033 /* ¡Ja! ¿Así conquistas a tus hembras? Te lo advierto, necesitarás mucho más que dulces palabras para tenerme satisfecha, mi querido abbil. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0) ~ @10120034 /* (suspiro) ¿Para qué habré hablado? */
END

// --- INFRAOSCURIDAD: ENCUENTRO CON ADALON (LA DRAGONA DE PLATA) ---
I_C_T UDSILVER 9 P_UDSILVER9_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100121 /* Aún no salgo de mi asombro. Esta dragona es sumamente hermosa... */
END

// --- INFRAOSCURIDAD: ADALON TRANSFORMA AL GRUPO EN DROWS (ILUSIÓN) ---
I_C_T UDSILVER 35 P_UDSILVER35_DuskLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100122 /* Rayos... nunca creí que algún día habría de convertirme en un... drow... */
== AERIEJ IF ~InParty("P_Dusk") InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10120035 /* N-no te ves tan mal, Dusk. No pongas esa cara. A fin de cuentas, así es como lucirías si hubieses nacido como un elfo. U-uno de piel oscura. */
== P_DUSKJ IF ~InParty("P_Dusk") InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10120036 /* Sí, bueno... tú no has cambiado mucho. Sólo tu tono de piel se ha oscurecido, pero con claridad aún puedo ver que eres Aerie. */
== P_DUSKJ IF ~InParty("P_Dusk") InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10120037 /* Hasta puedo ver que tienes un parecido a Viconia, je. */
== VICONIJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10120038 /* Escuché eso, rivvil. Tus bromas pueden costarte caro. */
== AERIEJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10120039 /* En esta ocasión estoy de acuerdo con Viconia. Dusk, retráctate. */
== P_DUSKJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @10120040 /* Bueno, bueno. Dejen de mirarme así. (suspiro) Creo que abro mucho la boca últimamente... */
END

I_C_T UDSOLA01 56 P_DuskUDSOLA0156
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10100123 /* ¡Vaya! Con que hay problemas en el paraíso, ¿eh? */
END

// Cap 6 y 7
I_C_T C6ELHAN2 8 P_C6ELHAN28_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10100126 /* Hubiera esperado una bienvenida más cálida por parte de los elfos de la superficie... aunque puedo llegar a comprender su alto nivel de desconfianza. */
END


I_C_T C6ELHAN2 23 P_DuskC6ELHAN223
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120041 /* ¿Condena? <CHARNAME>, no podemos permitir que le hagan daño a Viconia. ¡Otra vez es juzgada sólo por su raza! */
== VICONIJ IF ~InParty("P_Dusk") InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10120042 /* Tranquilízate, abbil. Sé cuidarme sola. */
END

I_C_T VICONIJ 119 P_DuskVICONIJ119
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10120043 /* Ahora tranquilízate tú, Viconia. Estoy seguro de que <CHARNAME> bromeaba. Tiene un sentido del humor bastante extraño... */
END

I_C_T SUELHAN 6 P_DuskSUELHAN6
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0) Global("P_Dusk_T12","GLOBAL",3) ~ THEN @10100127 /* ¡Debemos apresurarnos, <CHARNAME>! La ciudad de los elfos corre peligro. ¡Por la memoria de Celine protegeré a los suyos! */
END


// Agregados

// --- CARAVASAR: TIRIS REVELA QUE REJIEK (EL DESPELLEJADOR) ESTÁ ALLÍ ---
I_C_T TRSKIN02 16 P_TRSKIN02_16_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10103382 /* <CHARNAME>, aparentemente hemos dado con el curtidor... */
END

// GOOD/NEUTRAL
I_C_T PPIRENI2 35 P_Dusk_WIZARD_PRISON1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10103390 /* ¡Irenicus! Pagarás por las muertes que has causado en el Paseo de Waukin. La muerte de los inocentes no quedarán en el olvido. ¡Por Cormyr! */
END

// Agregados v0.9

I_C_T C6BODHI 0 P_C6BODHI15_DuskGoodLead
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10103440 /* Debemos tener cuidado, <CHARNAME>. Sabemos cuán fanática es Bodhi de las trampas mortales... */
END
