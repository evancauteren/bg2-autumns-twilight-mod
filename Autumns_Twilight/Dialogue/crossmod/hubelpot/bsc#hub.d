//bsc#hub.d

// Pai'Na

// Dusk Neutral
CHAIN
IF ~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskHubelpot","GLOBAL",0)~ THEN P_BDusk P_DuskHubelpot
@10000135 /* Entonces, Hubelpot, ¿por qué estás tan seguro de que comerciar vegetales es lo que me conviene? */
DO ~SetGlobal("P_DuskHubelpot","GLOBAL",1)~
== BSC#HUB @10000136 /* Joven Dusk, los vegetales es algo de lo que tengo conocimiento y puedo pasártelo para que, a su vez, tú lo mantengas por generaciones. */
== P_BDusk @10000137 /* Bueno, mi idea no era precisamente esa. Estaba más interesado en el comercio de artefactos, como lo hace Ribald. */
== BSC#HUB @10000138 /* Ribald no es más que un elfo refinado. Tú estás para más, joven Dusk. */
== P_BDusk @10000139 /* Hm... aún así, me lo pensaré, buen Hubelpot. */
== BSC#HUB @10000140 /* Quizás pueda convencerte con una buena sopa de tomates y espárragos. Entenderás que no todos necesitan "buenos artefactos" y sí necesitan un estómago lleno de rica comida. */
== P_BDusk @10000141 /* *sonríe* Gracias, Hubelpot. Estoy seguro de que estará delicioso. */
EXIT

// Dusk Good
CHAIN
IF ~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskGHubelpot","GLOBAL",0)~ THEN P_BDusk P_DuskGHubelpot
@10000151 /* Hubelpot, debo decir que tu devoción hacia Chauntea es inspiradora. */
DO ~SetGlobal("P_DuskGHubelpot","GLOBAL",1)~
== BSC#HUB @10000152 /* ¿Inspirador? Debo confesar que es la primera vez que le dicen algo así al buen Hubelpot. Sí bien es, y lo que voy a decir no es por presumir, normal que alaben mi cocina, son pocas las veces que elogian a este buen comerciante por algo que no sea relacionado al arte culinario. */
== P_BDusk @10000153 /* La vida espiritual no debería ser compleja ni tampoco reservada para unos pocos. Lo que haces es, a mi parecer, la forma correcta de adoración divina. */
== BSC#HUB @10000154 /* ~Bueno, hago lo que puedo con lo poco que tengo. Debo decir que nuestro buen líder, el bueno de <CHARNAME>, tiene una forma particular de hacer las cosas y para mí mucho de lo que veo es nuevo. Pero, mi amor por la Señora de Todo lo que Crece viene de hace más tiempo.~ ~Bueno, hago lo que puedo con lo poco que tengo. Debo decir que nuestra buena líder, la buena de <CHARNAME>, tiene una forma particular de hacer las cosas y para mí mucho de lo que veo es nuevo. Pero, mi amor por la Señora de Todo lo que Crece viene de hace más tiempo.~ */
== P_BDusk @10000155 /* La bendición puede encontrarse en el más simple de los platos de comida, ¿verdad? */
== BSC#HUB @10000156 /* ¡Así se habla, buen Dusk! Venga, ¿qué quieres comer? En agradecimiento por tus constantes magulladuras yendo al frente de batalla, ¿eh? */
== P_BDusk @10000157 /* *risas* Lo que quieras preparar estoy seguro que estará bien, Hubelpot. */
EXIT

// Dusk Evil
CHAIN
IF ~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskEHubelpot","GLOBAL",0)~ THEN P_BDusk P_DuskEHubelpot
@10000158 /* Te lo he dicho ya varias veces, Hubelpot. No soy viejo. Mi cabello blanco no son canas (al menos eso creo). */
DO ~SetGlobal("P_DuskEHubelpot","GLOBAL",1)~
== BSC#HUB @10000159 /* Mira, Dusk. No tienes de qué avergonzarte, ¿sabes? Cuando uno va envejeciendo, uno va notando ciertos cambios en su cuerpo. Mira al buen Hubelpot, mi cabellera se tomó vacaciones permanentes. */
== P_BDusk @10000160 /* *suspiro* No tenemos ni de cerca la misma edad, viejo. Mi cambio se debe al orbe escarlata del Pandemonium. Lo tuyo es más una cuestión de... no sé, vida sedentaria de verdulero. */
== BSC#HUB @10000161 /* Todos piensan eso, mi buen viejo Dusk, pero lo cierto es que el tiempo a todos nos pasa y no serás tú el que sea inmune a ello, ¿sabes? Ahora que lo pienso, tener canas es mejor a no tener nada. */
== P_BDusk @10000162 /* Hmpf. Lo que digas, anciano. */
EXIT

// Fall 1
CHAIN
IF ~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallHubelpot1","GLOBAL",0)~ THEN P_BFall P_FallHubelpot1
@10000163 /* ¿Estás seguro, Hubelpot? */
DO ~SetGlobal("P_FallHubelpot1","GLOBAL",1)~
== BSC#HUB @10000164 /* Te lo digo, niña, los conejos que puedo evocar no son más que criaturas de lo que tú llamas el Plano Callejero. */
== P_BFall @10000165 /* Plano Astral. */
== BSC#HUB @10000166 /* Bueno, son casi lo mismo. Mi punto es que tus lobos pueden cazarlos y no morirán, ya que puedo volver a llamarlos, ¿sabes? */
== P_BFall @10000167 /* Hm. Bueno, haremos lo que tú dices y veremos cómo va, ¿sí? */
== BSC#HUB @10000168 /* ¡Bien! Se me está haciendo costumbre ver a tus peludos amigos en acción, ¿sabes? */
EXIT

// Fall 2
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Hubelpot",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallHubelpot1","GLOBAL",1)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
Global("P_FallHubelpot2","GLOBAL",0)~ THEN BSC#HUB P_FallHubelpot2
@10000169 /* ¡Niña! Recuerda comer todas tus zanahorias la próxima vez. Ya sabes lo que te he dicho. Son buenas para la vista y tú necesitas buenos ojos si quieres seguir disparando a lo loco con tu ballesta. */
DO ~SetGlobal("P_FallHubelpot2","GLOBAL",1)~
== P_BFall @10000170 /* *suspiro* ¿Es necesario, tío Hubelpot? */
== BSC#HUB @10000171 /* ¡Házme caso! ¿Acaso no te gusta cómo preparo mis guisos? */
== P_BFall @10000172 /* La verdad es que eres un gran cocinero. Y sí, es mejor tener la panza llena a la hora de combatir. De acuerdo, tío Hubelpot, te haré caso. */
== BSC#HUB @10000173 /* Así me gusta, niña. Hazlo y te recompensaré con un buen postre: galletas de miel y almendra. */
== P_BFall @10000174 /* ¡Oh, eso suena delicioso! */
EXIT


// Cho'Nuja

CHAIN
IF ~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonHubelpot","GLOBAL",0)~ THEN P_BChon P_ChonHubelpot
@10000175 /* Te lo digo de verdad, mi amigo peludo. No existen verduleros o cocineros en Dreach-naga. Nuestras presas, por lo general, son devoradas de manera rápida y fresca. */
DO ~SetGlobal("P_ChonHubelpot","GLOBAL",1)~
== BSC#HUB @10000176 /* Vaya, mi buen viejo general, no tienes idea de lo que se pierden. ¿Tienes idea del manjar que son las ranas pasadas por harina y huevo, fritas en mantequilla y sasonadas con ajo, vino y finas hierbas? */
== P_BChon @10000177 /* No tengo idea de lo que estás hablando. */
== BSC#HUB @10000178 /* Ya verás. Cuando pueda, te prepararé un plato digno de reyes. Reyes lagarto *risa*. */
== P_BChon @10000179 /* De acuerdo, humano. Esperaré con ansias el resultado de tu exótico trabajo. */
EXIT

// Alendir 
CHAIN
IF ~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenHubelpot","GLOBAL",0)
OR (3)
!AreaCheck("P_FA3B")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR1")~ THEN P_BAlen P_AlenHubelpot
@10000180 /* Nunca entenderé cómo es que has llegado tan lejos, humano. */
DO ~SetGlobal("P_AlenHubelpot","GLOBAL",1)~
== BSC#HUB @10000181 /* Bueno, si vamos al caso, elfo misterioso, yo tampoco entiendo cómo es que has vuelto a la vida. Pero este mundo es extraño y mágico, tanto que Mystra quiso traerte de nuevo. Me pregunto si Chauntea haría lo mismo por el buen viejo Hubelpot. */
== P_BAlen @10000182 /* Hace un tiempo te habría dicho que no y habría hecho algún comentario sobre tu pobre condición de verdulero y humano. Pero hoy... no sabría qué responderte. */
== BSC#HUB @10000183 /* Sea como fuere, la buena de Mystra te quitó todas las arrugas. Lo que no daría yo por tener cabello de nuevo. Bueno, en realidad creo que prefiero una vida de paz y estabilidad. Con cabello estaría bien. */
== P_BAlen @10000184 /* Hay pelucas, ¿sabes? */
== BSC#HUB @10000185 /* Nah, mucho dinero, no sé si mi esposa lo aceptaría. */
== P_BAlen @10000186 /* Creo que entiendo... */
EXIT


