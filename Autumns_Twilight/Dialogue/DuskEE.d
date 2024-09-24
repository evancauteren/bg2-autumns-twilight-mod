// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskDorn1","GLOBAL",0)~ THEN BDORN P_DuskDorn1
@90100 /* Eres un ser extraño, Dusk. He llegado a preguntarme acerca de tus habilidades naturales. */
DO ~SetGlobal("P_DuskDorn1","GLOBAL",1)~
== P_BDusk @90101 /* ¿Te refieres a la resistencia mágica? */
== BDORN @90102 /* Ajá... tus habilidades en el campo de batalla no son la gran cosa. Sin embargo, me llama la atención que un humano pueda obtener dicha... característica. */
== P_BDusk @90103 /* Bueno... pues... es algo que se logra con mucho entrenamiento... y sobretodo: dolor. */
== BDORN @90104 /* Interesante. Quizás podamos hablar de esto más adelante. */
== P_BDusk @90105 /* Quizás, Dorn.... quizás... */
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskDorn2","GLOBAL",0)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskDorn2
@90106 /* Tus habilidades en combate son increíbles, Dorn. Tu sed por sangre, también lo es. A decir verdad, asusta un poco. */
DO ~SetGlobal("P_DuskDorn2","GLOBAL",1)~
== BDORN @90107 /* Clamar por sangre es algo natural para los Guardias Negros, Dusk. */
== P_BDusk @90108 /* ¿No te cansas de ello?, ¿no ansías una vida de paz? */
== BDORN @90109 /* ¿Paz? Eso es sólo un cuento, muchacho. La guerra es mucho más atractiva. El universo está en completo caos, todo el tiempo. */
== P_BDusk @90110 /* Puede que así lo sea... Es algo desesperanzador, ¿no lo crees? */
== BDORN @90111 /* La verdad suele serlo. No tiene por qué agradarte. */
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
== BDORN25 @90121 /* ¡Ja! Es verdad... Tus ideales cormyreanos ciertamente son algo a erradicar. */
== P_BDus25 @90122 /* Vaya, la amabilidad se ha acabado rápido, ¿eh? */
== BDORN25 @90123 /* Estoy siendo amable, muchacho. Deberías apreciarlo. */
== P_BDus25 @90124 /* Tienes razón... ¡Qué rudo de mi parte! */
EXIT

// Hexxat

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskHexxat1","GLOBAL",0)~ THEN BHEXXAT P_DuskHexxat1
@90125 /* ¿Qué sucede, Dusk? Te ves incómodo... ¿Acaso... es mi presencia? */
DO ~SetGlobal("P_DuskHexxat1","GLOBAL",1)~
== P_BDusk @90126 /* Los muertos vivientes han sido mis enemigos naturales durante mucho tiempo. Que no haga nada al respecto con tu... "presencia", es sólo debido a mi respeto por <CHARNAME>. */
== BHEXXAT @90127 /* Una lástima... me gustaría ver de qué eres capaz... */
== P_BDusk @90128 /* No tientes tu suerte, demonio... */
EXIT

// ToB

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskToBHexxat1","GLOBAL",0)~ THEN BHEXXA25 P_DuskToBHexxat1
@90129 /* ¿Y, Dusk? Aún no te has acostumbrado a mí, ¿verdad? */
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
== BNEERA @90133 /* *ejem* ¿Qué? No me digas... ¿qué hice ahora? */
== P_BDusk @90134 /* Oh, nada, es sólo una expresión, nada en concreto. */
== BNEERA @90135 /* ¡Dusk! Está mal andar asustando a la gente, ¿sabes? */
== P_BDusk @90136 /* Bueno, no era mi intención, yo-- */
== BNEERA @90137 /* ¿Y bien? Soy sorprendente (eso ya lo sabía), pero ¿por qué lo has dicho? */
== P_BDusk @90138 /* Bueno, lo cierto es que soy bastante reacio a compartir el camino con un usuario mágico. */
== BNEERA @90139 /* No digas, Dusk. Verte interrumpir conjuros ajenos con tu bastón no me ha hecho sospechar para nada. */
== P_BDusk @90140 /* Sí, bueno-- */
== BNEERA @90141 /* Ni tampoco he sospechado cuando has cercenado las manos de chamanes trasgos u orcos con tu espada bastarda. No, para nada. */
== P_BDusk @90142 /* *carraspeo* Entiendo tu punto... */
== BNEERA @90143 /* Y yo te soy sorprendente porque no soy alguien que es claramente malvado o que merezca la ira de tu venganza y-- */
== P_BDusk @90144 /* ¡Ya, ya! *suspiro* Oh, hum, parece ser que <CHARNAME> me está llamando. */
== BNEERA @90112 /* ¿En serio? No he escuchado nada. */
== P_BDusk @90113 /* Sí, bueno, ya sabes cómo se pone cuando no le hacen caso. Hablaremos en otra ocasión, ¿sí? */
== BNEERA @90114 /* ¡De acuerdo, Dusk! Siempre es un placer hablar contigo. */
== P_BDusk @90115 /* Hm, sí... lo mismo... digo... */
EXIT



// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskNeeraToB1","GLOBAL",0)~ THEN P_BDus25 P_DuskNeeraToB1
@90162 /* Neera, no estoy seguro de que necesite tus conjuros de protección. */
DO ~SetGlobal("P_DuskNeeraToB1","GLOBAL",1)~
== BNEERA25 @90163 /* ¿Por qué lo dices, Dusk? */
== P_BDus25 @90164 /* Hm... pues, a veces siento... efectos secundarios al cabo de un tiempo. */
== BNEERA25 @90165 /* Oh, no me digas que has comenzado a oler como una vaca. */
== P_BDus25 @90166 /* ¿Cómo una qué? No, no es eso. A veces, mi voz suena algo... diferente. Como si de un gnomo afónico se tratase. */
== BNEERA25 @90167 /* Ha, ya veo. ¿Por eso es que me ignorabas el otro día cuando te pedía que compartieras tus galletas? */
== P_BDus25 @90168 /* Ehm... *carraspeo* Sí, así es. */
== BNEERA25 @90169 /* Bueno, Dusk. Lo lamento. Pero a veces, en el fragor del combate, una se olvida que puede lanzar un conjuro de área. */
== P_BDus25 @90170 /* Ya veo... *susurro* Entonces, seguirá sucediendo... Rayos... */
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskRasaad1","GLOBAL",0)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskRasaad1
@90171 /* Debo decirlo, Rasaad: admiro mucho tu valor al sólo usar tus manos y pies como armas. */
DO ~SetGlobal("P_DuskRasaad1","GLOBAL",1)~
== BRASAAD @90172 /* Gracias, Dusk. Tantos años de entrenamiento han rendido frutos. */
== P_BDusk @90173 /* Así es. La voluntad, el compromiso... son valores que pocos hombres son capaces de mantener. */
== BRASAAD @90174 /* No podríamos ser los guerreros que somos si no fuésemos capaces de poseer dichas aptitudes. Pero sabes que eso no es todo lo que se necesita, ¿verdad? */
== P_BDusk @90175 /* Lo sé... también está el propósito... algo que te lleve hacia adelante. */
== BRASAAD @90176 /* Veo que nos entendemos, Dusk. */
== P_BDusk @90177 /* Así es, Rasaad. Es un placer luchar al lado de alguien como tú. */
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
== BRASAAD @90179 /* Gr-gracias, supongo. Dusk, creo que tú también sigues por alguien que ha caído, ¿no es verdad? */
== P_BDusk @90180 /* Pues... sí... el recuerdo de los que ya no están me hacen seguir adelante... */
== BRASAAD @90181 /* Yo también. Los muertos nos observan... y debemos rendir homenaje a su memoria. */
== P_BDusk @90182 /* Aunque... debo admitir... que a veces cuestiono el propósito de la venganza... Las cosas que uno es capaz de hacer... */
== BRASAAD @90183 /* A veces no te deja dormir, ¿eso ibas a decir? */
== P_BDusk @90184 /* Me entiendes a la perfección, amigo mío. Sigamos adelante... el futuro nos espera. */
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
@90193 /* ¿Qué opinas de nuestras aventuras, Rasaad? */
DO ~SetGlobal("P_DuskToBRasaad1","GLOBAL",1)~
== BRASAA25 @90194 /* ¿Te refieres a los parajes a los que nos ha llevado <CHARNAME>? */
== P_BDus25 @90195 /* Pues, sí. */
== BRASAA25 @90196 /* Ciertamente la senda del engendro de Bhaal va más allá de mi comprensión. Después de todo, soy un simple mortal. */
== P_BDus25 @90197 /* Lo entiendo, pero yo me refería a lo físico. ¿No crees que es extraño el Plano de Bhaal al que nos lleva a descansar? */
== BRASAA25 @90198 /* Ciertamente... aunque uno llega a acostumbrarse. */
== P_BDus25 @90199 /* ¡Eso mismo iba a decir! Uno llega a tomarle cariño incluso. */
== BRASAA25 @901100 /* Bueno, no sé si lo diría de esa forma *ríe*. */
EXIT


// WILSON J

//I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES3_WIL
//== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901199 /* (Wilson mueve sus orejas, demostrando confusión ante el chiste de <CHARNAME>) */
//END

//I_C_T P_DUSKJ 84 P_Dusk_Mission2_Decision_WIL
//== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901201 /* (Gruñido, resoplido) */
//== P_DuskJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901202 /* ¿Qué dices, Wilson? ¿Quieres devorarte a la gnoll? */
//== p_ziben IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901203 /* *gruñido* Será mejor que calmes a tu pulgoso amigo, soldado. */
//== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901204 /* (Gruñido, lamento) */
//== P_DuskJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901205 /* Tranquilo, Wilson, tranquilo... aguarda un instante... en tan sólo un momento veremos cómo se resuelve esto... */
//END

I_C_T NEEBER 10 P_DuskNEEBER8
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901206 /* (Gruñido) (Ves cómo Wilson muestra los dientes a Niber) */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @901207 /* Rayos, Wilson. *Mira para todos lados* Por favor, no vayas a comerte a este individuo. */
END

I_C_T PPCOWLED 1 P_DuskPPCOWLED1
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901208 /* (Lamento) (Ves cómo Wilson baja sus orejas, visiblemente asustado, aunque no entiendes por qué) */
END

I_C_T PPSAEM3 55 P_DuskPPSAEM355
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901209 /* (Gruñido) (Claramente, Wilson estaría más que dispuesto a devorarse a Saemon) */
END

I_C_T C6ELHAN2 8 P_DuskC6ELHAN28
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @901210 /* (Bufido) (Al parecer, Wilson parece incrédulo al ver el frío recibimiento de los elfos) */
END

// Interjects Dusk/Dorn

I_C_T OHDBRIDE 4 P_DuskEE_EVIL_Dorn1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @901211 /* Hmpf... tiempo atrás, me habría parecido sumamente insultante que algo así pasase en los Salones de la Orden... Pero he llegado a aprender que la naturaleza del citadino es... estúpida. */
END

I_C_T DORNJ 5 P_DuskEE_EVIL_Dorn2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @901212 /* ¿Matar civiles? Eso está por debajo de nosotros. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @901213 /* *suspiro* Sin embargo, <CHARNAME>, si crees que es lo apropiado, lo haré. */
END

I_C_T DORNJ 6 P_DuskEE_EVIL_Dorn3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @901212 /* ¿Matar civiles? Eso está por debajo de nosotros. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN @901213 /* *suspiro* Sin embargo, <CHARNAME>, si crees que es lo apropiado, lo haré. */
END