// Pai'Na

// Dusk Neutral
CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskPaina","GLOBAL",0)~ THEN P_BDusk P_DuskPaina
@979154 /* Hmpf, Pai'Na... ¿podrías comandar a tus protegidas que no se acerquen tanto a mí? */
DO ~SetGlobal("P_DuskPaina","GLOBAL",1)~
== BC0Paina @979155 /* ¿Por qué? Ellas siempre se lanzan contra nuestros enemigos. Tú no les interesas. */
== P_BDusk @979156 /* Lo sé, pero es que... */
== BC0Paina @979157 /* *suspiro* ¿Qué pasa, humano? ¿Les temes? */
== P_BDusk @979158 /* Una cosa es tener que luchar contra ellas... y otra muy diferente es tener que convivir con ellas todo el tiempo. */
== BC0Paina @979159 /* *resoplido* Muy bien, trataré de que no se acerquen a ti. Sólo porque puedes lastimarlas con tu torpeza. */
== P_BDusk @9079160 /* *carraspeo* Bueno, tu consideración es agradecida, Pai'Na. */
EXIT

// Dusk Good
CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskGPaina","GLOBAL",0)~ THEN P_BDusk P_DuskGPaina
@9079161 /* Debo decir que a medida que ha pasado el tiempo, Pai'Na, me he ido acostumbrando más y más a tus protegidas. */
DO ~SetGlobal("P_DuskGPaina","GLOBAL",1)~
== BC0Paina @9079162 /* Ha tomado su tiempo, pero al menos el prejuicio a desaparecido de tu corazón, humano. Es un avance. */
== P_BDusk @9079163 /* Mielikki insta a proteger la vida del bosque. A defenderla. Las arañas son parte, también, de la naturaleza. */
== BC0Paina @9079164 /* Me importa poco tu dogma, humano. Sin embargo, esas palabras son sabias. */
== P_BDusk @9079165 /* Puedes llamarme Dusk, Pai'Na, como lo hacen todos mis amigos. */
== BC0Paina @9079166 /* *resoplido* Muy bien, Dusk será. Ahora, deja de importunarme. */
== P_BDusk @9079167 /* Como desees. */
EXIT

// Dusk Evil
CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskEPaina","GLOBAL",0)~ THEN P_BDusk P_DuskEPaina
@9079168 /* El Pandemonium ansía aliados como tú, Pai'Na. Tus protegidas serían los depredadores naturales en vez de las víctimas que son aquí, en la tierra de los hombres. */
DO ~SetGlobal("P_DuskEPaina","GLOBAL",1)~
== BC0Paina @9079169 /* ¿Pandemonium? No tengo interés en un lugar así y dudo que mis protegidas lo estén. */
== P_BDusk @9079170 /* ¿Por qué? Piensas que no existe un lugar seguro, ¿verdad? Hay una cierta sabiduría en pensar ello. Pero en verdad te digo, los túneles y las cavernas del Pandemonium serían un hogar bienvenido por tus hijas. */
== BC0Paina @9079171 /* ¿Por qué insistes, hombre? Te dije que ni mis hijas ni yo estamos interesadas. */
== P_BDusk @9079172 /* Piénsalo, Pai'Na. Tú y yo seríamos aliados formidables una vez que nuestro viaje con <CHARNAME> haya finalizado. */
== BC0Paina @9079173 /* *resoplido* Lo dudo mucho. */
EXIT

// Fall 1
CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallPaina1","GLOBAL",0)~ THEN P_BFall P_FallPaina1
@9079174 /* Yo... No comprendo tu amor por las arañas, Pai'Na. Debe... debe ser algo inherente a los drows, imagino. */
DO ~SetGlobal("P_FallPaina1","GLOBAL",1)~
== BC0Paina @9079175 /* Semi-drow, elfa. Y no, no es porque yo sea parte drow que las arañas me atraen. Es mi deber protegerlas como Maestra del Enjambre.  */
== P_BFall @9079176 /* Pues yo no soy 'elfa', Pai'Na. Soy semielfa. */
== BC0Paina @9079177 /* Hmph. Como si eso me importara. ¿Piensas que eso debería hacerme congeniar contigo? Tu mezcla es aceptada, como son aceptados los elfos y humanos en casi todo Faerûn. */
== P_BFall @9079178 /* Sólo buscaba conocerte un poco más... Pero veo que eso no será tarea fácil... */
EXIT

// Fall 2
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallPaina1","GLOBAL",1)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
Global("P_FallPaina2","GLOBAL",0)~ THEN BC0PAINA P_FallPaina2
@9079179 /* He notado que no disfrutas estar cerca de mis protegidas, semielfa. Para ser una exploradora, eres decepcionante. */
DO ~SetGlobal("P_FallPaina2","GLOBAL",1)~
== P_BFall @9079180 /* ¡Cuidado con lo que insinúas, Pai'Na! Tus protegidas... lo sé... no tienen la culpa. */
== BC0PAINA @9079181 /* ¿Y por qué habrían de tener culpa de algo? No te han hecho nada. */
== P_BFall @9079182 /* Y aún así... fueron los de su clase los que arrasaron con mi aldea. */
== BC0PAINA @9079183 /* ¿Dices... que fueron arañas las que destruyeron un asentamiento en la superficie? Explícate. */
== P_BFall @9079184 /* Cuando era niña, vivía en Imnescar junto a mis padres y mis lobos. Rodeado por bosques, la región era protegida por druidas y exploradores... hasta que las arañas llegaron. */
== P_BFall @9079185 /* Debo... debo ser justa contigo, Pai'Na. Mi madre, una poderosa hechicera de Evereska, llegó a la conclusión que las arañas venían de otro plano, posiblemente de uno demoníaco. */
== BC0PAINA @9079186 /* ¿Arañas demoníacas? Mi maestra me ha hablado de criaturas así. Un ejemplo claro son los bebilith. Son depredadores formidables... Es sumamente extraño que busquen atacar, de la nada, un asentamiento elfo o humano. */
== P_BFall @9079187 /* Y sin embargo, lo hicieron. Veo... veo que la historia te interesa. */
== BC0PAINA @9079188 /* Involucra arañas, después de todo. Por supuesto que me interesa. Sin embargo... entiendo que no es fácil para ti hablarlo. Entenderé si no quieres hacerlo, Fall. */
== P_BFall @9079189 /* No, está bien... te contaré lo que recuerdo del ataque, de la fisionomía y de las criaturas que recuerdo haber visto, Pai'Na. Puede... puede que eso nos ayude en un futuro. */
EXIT

// Fall 3
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallPaina2","GLOBAL",1)
Global("P_FallPaina3","GLOBAL",0)~ THEN BC0PAINA P_FallPaina3
@9079190 /* Has mejorado en tu trato hacia mis protegidas, Fall. Eso es digno de respeto. */
DO ~SetGlobal("P_FallPaina3","GLOBAL",1)~
== P_BFall @9079191 /* Supongo que hablar contigo ha hecho que mi relación con ellas sea más llevadera. */
== BC0PAINA @9079192 /* Serías una buena Maestra del Enjambre, mujer. Quizás debas considerar dejar de tontear con tantos lobos y osos. */
== P_BFall @9079193 /* *carraspeo* Espero que estés bromeando, Pai'Na. Jamás sería capaz de dejar a mis amados animales de lado. */
== BC0PAINA @9079194 /* La superioridad arácnida es evidente ante los 'peludos' que tú sueles comandar. Aunque el tiempo me ha demostrado que incluso los lupinos han sido útiles en el combate. Son un buen complemento junto a mis hijas. */
== P_BFall @9079195 /* Bueno, coincidimos en ello, sí. */
EXIT

// Cho'Nuja

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonPaina","GLOBAL",0)~ THEN P_BChon P_ChonPaina
@9079196 /* Chamán-hembra, ¿tienes algún insecto pequeño de sobra? Tengo hambre. */
DO ~SetGlobal("P_ChonPaina","GLOBAL",1)~
== BC0PAINA @9079197 /* ¡¿Q-qué?! Aléjate de mis hijas, inmundo lagarto. */
== P_BChon @9079198 /* ¿Hijas? No veo ninguna semejanza contigo. Es decir, tú eres fea, pero tus hijas lo son aún más.  */
== BC0PAINA @9079199 /* ¿Te has visto en un espejo? Das dolor de cabeza de sólo verte. */
== P_BChon @9079200 /* En Dreach-naga era muy popular. Muchas hembras se mataban entre sí sólo por la oportunidad de hablar conmigo. */
== BC0PAINA @9079201 /* Hmpf. Como sea, ni se te ocurra acercarte a mis protegidas o sentirás mi ira. */
== P_BChon @9079202 /* *gruñido* De acuerdo... supongo que tendré que conformarme con alguna rana que encuentre por ahí...  */
EXIT

// Alendir 
CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenPaina","GLOBAL",0)
OR (3)
!AreaCheck("P_FA3B")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR1")~ THEN P_BAlen P_AlenPaina
@9079203 /* Hm. Dime, semi-drow, ¿cómo es que has dominado tan bien la invocación de criaturas arácnidas? Hasta donde sé, los Engendros Arácnidos son una maestría dominada por poderes arcanos, no divinos. */
DO ~SetGlobal("P_AlenPaina","GLOBAL",1)~
== BC0PAINA @9079204 /* Los Maestros del Enjambre tenemos una afinidad innata con los arácnidos, elfo. Por eso nos es tan fácil llamarlos como formidables aliados. */
== P_BAlen @9079205 /* Interesante. Quizás pueda aprender algo de ti, después de todo. Existen arañas árticas que pueden ser llamadas en combate, aunque todavía no he dominado del todo dicha preparación de conjuro. */
== BC0PAINA @9079206 /* ¿Arañas árticas? ¿Algo así es posible de aprender? */
== P_BAlen @9079207 /* Quizás. El tiempo lo dirá. Por ahora, me concentraré en mis estudios. Cuando obtenga resultados, los compartiré contigo. */
== BC0PAINA @9079208 /* *resoplido* De acuerdo, Maestro de la Escarcha. Esperaré. Espero que valga la pena. */
EXIT


