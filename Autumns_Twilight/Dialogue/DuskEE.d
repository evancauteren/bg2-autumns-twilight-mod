// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskDorn1","GLOBAL",0)~ THEN BDORN P_DuskDorn1
@90100 /* Eres un ser extra�o, Dusk. He llegado a preguntarme acerca de tus habilidades naturales. */
DO ~SetGlobal("P_DuskDorn1","GLOBAL",1)~
== P_BDusk @90101 /* �Te refieres a la resistencia m�gica? */
== BDORN @90102 /* Aj�... tus habilidades en el campo de batalla no son la gran cosa. Sin embargo, me llama la atenci�n que un humano pueda obtener dicha... caracter�stica. */
== P_BDusk @90103 /* Bueno... pues... es algo que se logra con mucho entrenamiento... y sobretodo: dolor. */
== BDORN @90104 /* Interesante. Quiz�s podamos hablar de esto m�s adelante. */
== P_BDusk @90105 /* Quiz�s, Dorn.... quiz�s... */
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskDorn2","GLOBAL",0)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskDorn2
@90106 /* Tus habilidades en combate son incre�bles, Dorn. Tu sed por sangre, tambi�n lo es. A decir verdad, asusta un poco. */
DO ~SetGlobal("P_DuskDorn2","GLOBAL",1)~
== BDORN @90107 /* Clamar por sangre es algo natural para los Guardias Negros, Dusk. */
== P_BDusk @90108 /* �No te cansas de ello?, �no ans�as una vida de paz? */
== BDORN @90109 /* �Paz? Eso es s�lo un cuento, muchacho. La guerra es mucho m�s atractiva. El universo est� en completo caos, todo el tiempo. */
== P_BDusk @90110 /* Puede que as� lo sea... Es algo desesperanzador, �no lo crees? */
== BDORN @90111 /* La verdad suele serlo. No tiene por qu� agradarte. */
EXIT

// ToB

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskToBDorn1","GLOBAL",0)~ THEN BDORN25 P_DuskToBDorn1
@90117 /* Has avanzado mucho como guerrero, humano.  */
DO ~SetGlobal("P_DuskToBDorn1","GLOBAL",1)~
== P_BDus25 @90118 /* Gracias, supongo. */
== BDORN25 @90119 /* Tienes suerte de que estemos del mismo lado de la vereda. */
== P_BDus25 @90120 /* No estoy seguro de que por estar en el mismo grupo, quiera decir que estamos en la "misma vereda". */
== BDORN25 @90121 /* �Ja! Es verdad... Tus ideales cormyreanos ciertamente son algo a erradicar. */
== P_BDus25 @90122 /* Vaya, la amabilidad se ha acabado r�pido, �eh? */
== BDORN25 @90123 /* Estoy siendo amable, muchacho. Deber�as apreciarlo. */
== P_BDus25 @90124 /* Tienes raz�n... �Qu� rudo de mi parte! */
EXIT

// Hexxat

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskHexxat1","GLOBAL",0)~ THEN BHEXXAT P_DuskHexxat1
@90125 /* �Qu� sucede, Dusk? Te ves inc�modo... �Acaso... es mi presencia? */
DO ~SetGlobal("P_DuskHexxat1","GLOBAL",1)~
== P_BDusk @90126 /* Los muertos vivientes han sido mis enemigos naturales durante mucho tiempo. Que no haga nada al respecto con tu... "presencia", es s�lo debido a mi respeto por <CHARNAME>. */
== BHEXXAT @90127 /* Una l�stima... me gustar�a ver de qu� eres capaz... */
== P_BDusk @90128 /* No tientes tu suerte, demonio... */
EXIT

// ToB

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskToBHexxat1","GLOBAL",0)~ THEN BHEXXA25 P_DuskToBHexxat1
@90129 /* �Y, Dusk? A�n no te has acostumbrado a m�, �verdad? */
DO ~SetGlobal("P_DuskToBHexxat1","GLOBAL",1)~
== P_BDus25 @90130 /* Claramente no, Hexxat. */
== BHEXXA25 @90131 /* Vaya... al menos has dicho mi nombre... Claramente es un avance. */
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskNeera1","GLOBAL",0)~ THEN P_BDusk P_DuskNeera1
@90132 /* Debo decir que me sorprendes, Neera. */
DO ~SetGlobal("P_DuskNeera1","GLOBAL",1)~
== BNEERA @90133 /* *ejem* �Qu�? No me digas... �qu� hice ahora? */
== P_BDusk @90134 /* Oh, nada, es s�lo una expresi�n, nada en concreto. */
== BNEERA @90135 /* �Dusk! Est� mal andar asustando a la gente, �sabes? */
== P_BDusk @90136 /* Bueno, no era mi intenci�n, yo-- */
== BNEERA @90137 /* �Y bien? Soy sorprendente (eso ya lo sab�a), pero �por qu� lo has dicho? */
== P_BDusk @90138 /* Bueno, lo cierto es que soy bastante reacio a compartir el camino con un usuario m�gico. */
== BNEERA @90139 /* No digas, Dusk. Verte interrumpir conjuros ajenos con tu bast�n no me ha hecho sospechar para nada. */
== P_BDusk @90140 /* S�, bueno-- */
== BNEERA @90141 /* Ni tampoco he sospechado cuando has cercenado las manos de chamanes trasgos u orcos con tu espada bastarda. No, para nada. */
== P_BDusk @90142 /* *carraspeo* Entiendo tu punto... */
== BNEERA @90143 /* Y yo te soy sorprendente porque no soy alguien que es claramente malvado o que merezca la ira de tu venganza y-- */
== P_BDusk @90144 /* �Ya, ya! *suspiro* Oh, hum, parece ser que <CHARNAME> me est� llamando. */
== BNEERA @90112 /* �En serio? No he escuchado nada. */
== P_BDusk @90113 /* S�, bueno, ya sabes c�mo se pone cuando no le hacen caso. Hablaremos en otra ocasi�n, �s�? */
== BNEERA @90114 /* �De acuerdo, Dusk! Siempre es un placer hablar contigo. */
== P_BDusk @90115 /* Hm, s�... lo mismo... digo... */
EXIT



// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskNeeraToB1","GLOBAL",0)~ THEN P_BDus25 P_DuskNeeraToB1
@90162 /* Neera, no estoy seguro de que necesite tus conjuros de protecci�n. */
DO ~SetGlobal("P_DuskNeeraToB1","GLOBAL",1)~
== BNEERA25 @90163 /* �Por qu� lo dices, Dusk? */
== P_BDus25 @90164 /* Hm... pues, a veces siento... efectos secundarios al cabo de un tiempo. */
== BNEERA25 @90165 /* Oh, no me digas que has comenzado a oler como una vaca. */
== P_BDus25 @90166 /* �C�mo una qu�? No, no es eso. A veces, mi voz suena algo... diferente. Como si de un gnomo af�nico se tratase. */
== BNEERA25 @90167 /* Ha, ya veo. �Por eso es que me ignorabas el otro d�a cuando te ped�a que compartieras tus galletas? */
== P_BDus25 @90168 /* Ehm... *carraspeo* S�, as� es. */
== BNEERA25 @90169 /* Bueno, Dusk. Lo lamento. Pero a veces, en el fragor del combate, una se olvida que puede lanzar un conjuro de �rea. */
== P_BDus25 @90170 /* Ya veo... *susurro* Entonces, seguir� sucediendo... Rayos... */
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskRasaad1","GLOBAL",0)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskRasaad1
@90171 /* Debo decirlo, Rasaad: admiro mucho tu valor al s�lo usar tus manos y pies como armas. */
DO ~SetGlobal("P_DuskRasaad1","GLOBAL",1)~
== BRASAAD @90172 /* Gracias, Dusk. Tantos a�os de entrenamiento han rendido frutos. */
== P_BDusk @90173 /* As� es. La voluntad, el compromiso... son valores que pocos hombres son capaces de mantener. */
== BRASAAD @90174 /* No podr�amos ser los guerreros que somos si no fu�semos capaces de poseer dichas aptitudes. Pero sabes que eso no es todo lo que se necesita, �verdad? */
== P_BDusk @90175 /* Lo s�... tambi�n est� el prop�sito... algo que te lleve hacia adelante. */
== BRASAAD @90176 /* Veo que nos entendemos, Dusk. */
== P_BDusk @90177 /* As� es, Rasaad. Es un placer luchar al lado de alguien como t�. */
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskRasaad2","GLOBAL",0)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskRasaad2
@90178 /* Admiro la voluntad que tienes de seguir adelante... me refiero a tu hermano, Rasaad.*/
DO ~SetGlobal("P_DuskRasaad2","GLOBAL",1)~
== BRASAAD @90179 /* Gr-gracias, supongo. Dusk, creo que t� tambi�n sigues por alguien que ha ca�do, �no es verdad? */
== P_BDusk @90180 /* Pues... s�... el recuerdo de los que ya no est�n me hacen seguir adelante... */
== BRASAAD @90181 /* Yo tambi�n. Los muertos nos observan... y debemos rendir homenaje a su memoria. */
== P_BDusk @90182 /* Aunque... debo admitir... que a veces cuestiono el prop�sito de la venganza... Las cosas que uno es capaz de hacer... */
== BRASAAD @90183 /* A veces no te deja dormir, �eso ibas a decir? */
== P_BDusk @90184 /* Me entiendes a la perfecci�n, amigo m�o. Sigamos adelante... el futuro nos espera. */
EXIT

// ToB

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskToBRasaad1","GLOBAL",0)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)
~ THEN P_BDus25 P_DuskToBRasaad1
@90193 /* �Qu� opinas de nuestras aventuras, Rasaad? */
DO ~SetGlobal("P_DuskToBRasaad1","GLOBAL",1)~
== BRASAA25 @90194 /* �Te refieres a los parajes a los que nos ha llevado <CHARNAME>? */
== P_BDus25 @90195 /* Pues, s�. */
== BRASAA25 @90196 /* Ciertamente la senda del engendro de Bhaal va m�s all� de mi comprensi�n. Despu�s de todo, soy un simple mortal. */
== P_BDus25 @90197 /* Lo entiendo, pero yo me refer�a a lo f�sico. �No crees que es extra�o el Plano de Bhaal al que nos lleva a descansar? */
== BRASAA25 @90198 /* Ciertamente... aunque uno llega a acostumbrarse. */
== P_BDus25 @90199 /* �Eso mismo iba a decir! Uno llega a tomarle cari�o incluso. */
== BRASAA25 @901100 /* Bueno, no s� si lo dir�a de esa forma *r�e*. */
EXIT


// WILSON J

//I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES3_WIL
//== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901199 /* (Wilson mueve sus orejas, demostrando confusi�n ante el chiste de <CHARNAME>) */
//END

//I_C_T P_DUSKJ 84 P_Dusk_Mission2_Decision_WIL
//== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901201 /* (Gru�ido, resoplido) */
//== P_DuskJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901202 /* �Qu� dices, Wilson? �Quieres devorarte a la gnoll? */
//== p_ziben IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901203 /* *gru�ido* Ser� mejor que calmes a tu pulgoso amigo, soldado. */
//== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901204 /* (Gru�ido, lamento) */
//== P_DuskJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901205 /* Tranquilo, Wilson, tranquilo... aguarda un instante... en tan s�lo un momento veremos c�mo se resuelve esto... */
//END

I_C_T NEEBER 10 P_DuskNEEBER8
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901206 /* (Gru�ido) (Ves c�mo Wilson muestra los dientes a Niber) */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @901207 /* Rayos, Wilson. *Mira para todos lados* Por favor, no vayas a comerte a este individuo. */
END

I_C_T PPCOWLED 1 P_DuskPPCOWLED1
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901208 /* (Lamento) (Ves c�mo Wilson baja sus orejas, visiblemente asustado, aunque no entiendes por qu�) */
END

I_C_T PPSAEM3 55 P_DuskPPSAEM355
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901209 /* (Gru�ido) (Claramente, Wilson estar�a m�s que dispuesto a devorarse a Saemon) */
END

I_C_T C6ELHAN2 8 P_DuskC6ELHAN28
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901210 /* (Bufido) (Al parecer, Wilson parece incr�dulo al ver el fr�o recibimiento de los elfos) */
END

// Interjects Dusk/Dorn

I_C_T OHDBRIDE 4 P_DuskEE_EVIL_Dorn1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @901211 /* Hmpf... tiempo atr�s, me habr�a parecido sumamente insultante que algo as� pasase en los Salones de la Orden... Pero he llegado a aprender que la naturaleza del citadino es... est�pida. */
END

I_C_T DORNJ 5 P_DuskEE_EVIL_Dorn2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @901212 /* �Matar civiles? Eso est� por debajo de nosotros. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @901213 /* *suspiro* Sin embargo, <CHARNAME>, si crees que es lo apropiado, lo har�. */
END

I_C_T DORNJ 6 P_DuskEE_EVIL_Dorn3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @901212 /* �Matar civiles? Eso est� por debajo de nosotros. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @901213 /* *suspiro* Sin embargo, <CHARNAME>, si crees que es lo apropiado, lo har�. */
END