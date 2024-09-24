BEGIN P_BDus25

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)
Global("P_DuskAerieToB1","GLOBAL",0)~ THEN BAERIE25 P_DuskAerieToB1
@9660 /* ... */
DO ~SetGlobal("P_DuskAerieToB1","GLOBAL",1)~
== P_BDus25 @9661 /* Aún no te acostumbras a mi presencia, ¿verdad, Aerie? */
== BAERIE25 @9662 /* Y-yo, y-yo... */
== P_BDus25 @9663 /* Descuida. Me da igual si te acostumbras o no. Soy lo que soy. */
== BAERIE25 @9664 /* Pero, Dusk... tú no eras así antes... has cambiado. */
== P_BDus25 @9665 /* Todos lo hacemos. Incluso tú, pequeña. */
== BAERIE25 @9666 /* Sí, p-pero... tú lo has hecho por un factor externo. */
== P_BDus25 @9667 /* Sí... el orbe escarlata. Puede que, simplemente, el orbe haya sacado a relucir mi verdadera personalidad. Mi verdadero ser. */
== BAERIE25 @9668 /* No, no creo que sea así, Dusk. Creo que puedes volver a ser el que eras. No es demasiado tarde. */
== P_BDus25 @9669 /* Para algunas cosas... ya es demasiado tarde, amiga mía... demasiado tarde... */
EXIT

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)
Global("P_DuskAnomenToB1","GLOBAL",0)~ THEN BANOME25 P_DuskAnomenToB1
@96610 /* Si hay algo que quieras decir, dilo, buen Dusk. He notado que intentas sacar conversación sobre algo desde hace ya un buen tiempo. */
DO ~SetGlobal("P_DuskAnomenToB1","GLOBAL",1)~
== P_BDus25 @96611 /* *carraspeo* Lo siento, Anomen. Es verdad, quería preguntarte algo sobre el ejército, si no te molesta. */
== BANOME25 @96612 /* Entiendo. Pregunta, amigo mío. */
== P_BDus25 @96613 /* ¿Qué es lo que hace el ejército de Amn con... los desertores? */
== BANOME25 @96614 /* Hm... cuando era escudero no vi tantas situaciones así. Pero lo que he visto ha sido la expulsión inmediata del ejército. En algunos casos, la cárcel. */
== BANOME25 @96615 /* ¿Por qué lo preguntas? */
== P_BDus25 @96616 /* Oh, no es por nada... básicamente... nunca volví a Cormyr luego de mi enfrentamiento contra los orcos. */
== P_BDus25 @96617 /* Supongo que eso cuenta como... deserción. */
== BANOME25 @96618 /* Oh, ya entiendo... */
== P_BDus25 IF ~ReputationLT([PC],12)~ THEN @96619 /* Sí... bueno, gracias por tu tiempo, Anomen. */
== BANOME25 IF ~ReputationGT([PC],12)~ THEN @96620 /* Pero, junto a <CHARNAME> has forjado una reputación impecable. Sin lugar a dudas, es algo que un superior tendría en cuenta. */
== P_BDus25 IF ~ReputationGT([PC],12)~ THEN @96621 /* ¿De verdad? Gracias, Anomen. Ha sido un placer hablar contigo. */
EXIT

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)
Global("P_DuskSarevokToB2","GLOBAL",0)~ THEN BSAREV25 P_DuskSarevokToB2
@966124 /* ¿Por qué me observas tan fijamente, hombrecito? */
DO ~SetGlobal("P_DuskSarevokToB2","GLOBAL",1)~
== P_BDus25 @966125 /* ¿Hombrecito? Cuidado, cretino. Mi nombre es Ardusk Aldant, Primera Espada de-- */
== BSAREV25 @966126 /* Sí, sí. No me interesa. */
== P_BDus25 @966127 /* *carraspeo* De todas formas... hay algo en ti que no logro comprender. */
== BSAREV25 @966128 /* Seguramente debe haber cosas que no comprendes, muchacho. */
== P_BDus25 @966129 /* ~Tu alianza con <CHARNAME>, para empezar. Él es tu hermano.~ ~Tu alianza con <CHARNAME>, para empezar. Ella es tu hermana.~ */
== P_BDus25 @966130 /* ~¿Cómo has sido capaz de intentar asesinarlo? Yo no tengo hermanos... pero de tenerlos, el asesinato sería el último de mis pensamientos.~ ~¿Cómo has sido capaz de intentar asesinarla? Yo no tengo hermanos... pero de tenerlos, el asesinato sería el último de mis pensamientos.~ */
== BSAREV25 @966131 /* No pretendo que un simple cormyreano entienda el propósito de un engendro de Bhaal. */
== P_BDus25 @966132 /* Seré un simple soldado, Sarevok. Pero sé lo que es la lealtad. Y aquí estás tú, siendo leal a <CHARNAME>. ¿Por qué? */
== BSAREV25 @966133 /* ~Mira a nuestro alrededor, muchacho. Estamos viviendo épocas milagrosas. El poder está ahí para ser tomado. Yo... simplemente quiero ser testigo de lo que haga mi hermano.~ ~Mira a nuestro alrededor, muchacho. Estamos viviendo épocas milagrosas. El poder está ahí para ser tomado. Yo... simplemente quiero ser testigo de lo que haga mi hermana.~ */
== P_BDus25 @966134 /* Tal vez... Incluso tal vez logres hallar la respuesta. */
== BSAREV25  @966135 /* ¿Respuesta? */
== P_BDus25 @966136 /* Eres un hombre de pocas palabras, Sarevok. Pero sé reconocer cuándo un hombre está en busca de algo. Quizás, acompañando a <CHARNAME>, lo encuentres. */
EXIT

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)
Global("P_DuskSarevokToB3","GLOBAL",0)~ THEN BSAREV25 P_DuskSarevokToB3
@966137 /* Tu aura... No proviene de este plano. ¿Qué eres? */
DO ~SetGlobal("P_DuskSarevokToB3","GLOBAL",1)~
== P_BDus25 @966138 /* He obtenido poder a través del Pandemonium, Sarevok. ¿Conoces tal lugar? */
== BSAREV25 @966139 /* Sí, lo conozco, pero no he tenido el placer de estar allí. ¿Cómo lo obtuviste? */
== P_BDus25 @966140 /* Traicioné a mis aliados. Usé su fuerza vital para liberar a un Demonio Sombrío. Actualmente, mi alma está ligada a él. */
== BSAREV25 @966141 /* Ya veo. Un camino comprensible. Aquellos que no nacen con el destino del poder en su interior, están obligados a tomarlo. */
== P_BDus25 @966142 /* No sé si fue obligación lo que sentí... pero sí, entiendo a lo que te refieres. */
== BSAREV25 @966143 /* Lo sé. He visto lo que puedes hacer en el campo de batalla. Sin lugar a dudas, <CHARNAME> se ha conseguido aliados poderosos. */
== P_BDus25 @966144 /* ¿Qué me dices de ti? Pese a no ser más un engendro de Bhaal, el poder en ti es notable. El Caos prácticamente emana de la punta de tus dedos. */
== BSAREV25 @966145 /* He dedicado toda mi vida a tomar el Trono de Bhaal. El arte de la guerra y el engaño eran el pan de cada día. */
== BSAREV25 @966146 /* *suspiro* Eso ahora quedó en el pasado. Sólo quiero atestiguar estos tiempos. <CHARNAME> será protagonista y estaré a su lado para ver cómo termina esta historia. */
== P_BDus25 @966147 /* Un sentimiento que acompañaré, si me es posible. Nuestros enemigos no tendrán ninguna oportunidad. */
== BSAREV25  @966148 /* Tú lo has dicho... */
EXIT


// FALL
CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskFall1","GLOBAL",0)~ THEN P_BDus25 P_DuskFall1
@966178 /* Fall, entiendo que seas hábil con la ballesta... pero si algún oponente se te abalanza con un arma cuerpo a cuerpo, deberías echarte atrás. Estarías en desventaja física y tu vida correría peligro. */
DO ~SetGlobal("P_DuskFall1","GLOBAL",1)~
== P_BFal25 @966179 /* ¿Por qué insistes en darme órdenes, hombre? Sé muy bien que si eso pasara, el primero en acudir en mi defensa serías tú. */
== P_BDus25 @966180 /* No siempre estaré allí para ti, Fall. Si te doy estos consejos es por tu bienestar. */
== P_BFal25 @966181 /* ¿Por qué dices esas cosas, Dusk? No hay necesidad de ser tan pesimista. La vida no es tan cruel como siempre dices. */
== P_BDus25 @966182 /* ¿Como siempre digo? ¿A qué te refieres? */
== P_BFal25 @966183 /* *con voz grave* "Recuerda: nadie te golpeará tan fuerte como la vida misma." */
== P_BFal25 @966184 /* *risita* Suena muy tétrico. ¿Por qué me miras así? ¿Acaso no te gustó mi intepretación de "Dusk, el serio"? */
== P_BDus25 @966185 /* Mejor continuemos. */
== P_BFal25 @966186 /* De acuerdo, de acuerdo... y por cierto: haré caso a tus consejos. Gracias por estar siempre al frente de batalla, Dusk. */
== P_BFal25 @966187 /* Y ten en cuenta que pretendo que tu estancia con nosotros sea larga: mi ballesta y yo nos encargaremos de eso. */
== P_BDus25 @966188 /* Es bueno saberlo. */
EXIT


CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskFall2","GLOBAL",0)~ THEN P_BFal25 P_DuskFall2
@966189 /* Aún no me lo decido Dusk: No sé si te ves más joven o más viejo con ese aspecto. */
DO ~SetGlobal("P_DuskFall2","GLOBAL",1)~
== P_BDus25 @966190 /* Pues... yo no me siento ni más joven, ni más viejo. ¿Por qué lo dices, Fall? */
== P_BFal25 @966191 /* Bueno, ciertamente, después de tu... "absoción" del orbe purificado, has cambiado. Aunque no tanto ahora que lo pienso. */
== P_BFal25 @966192 /* Mis lobos te adoran. No es que antes no lo hicieran, pero ahora es como que perciben en ti una conexión más afín a la naturaleza. */
== P_BDus25 @966193 /* Creo que es obra del orbe, Fall. Que Daren y Sinna lo perciban lo confirma aún más. */
== P_BDus25 @966194 /* Y con respecto a tu observación... creo que me siento más viejo. No sé si mi aspecto lo denote o no... pero ciertamente, el orbe ha consumido parte de mi energía vital. */
== P_BFal25 @966195 /* Oh... ya veo. */
== P_BDus25 @966196 /* *sonríe* Ánimos, Fall. Aún disponemos de mucho tiempo. Cuando esto termine, podemos viajar juntos por Shilmista, si así lo deseas. */
== P_BFal25 @966197 /* ¿De verdad? No hay nada que me gustaría más, Dusk. Es una promesa. */
== P_BDus25 @966198 /* Es una promesa. */
EXIT

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskFall1","GLOBAL",1)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskFall3","GLOBAL",0)~ THEN P_BDus25 P_DuskFall3
@966199 /* Hace bastante que me observas a la distancia, Fall. Si tienes algo que decir, simplemente dilo. */
DO ~SetGlobal("P_DuskFall3","GLOBAL",1)~
== P_BFal25 @966200 /* *traga saliva* Ehm... No, yo no te he estado observando... Te habrás confundido. */
== P_BDus25 @966201 /* No soy estúpido, niña. ¿Acaso me temes? */
== P_BFal25 @966202 /* ¡No soy una niña, Dusk! Y no, ¡no te temo! Es sólo que... has cambiado... */
== P_BDus25 @966203 /* Así es. Ahora albergo un poder mayor que el de antes. Tal es la facultad del Pandemonium. */
== P_BFal25 @966204 /* Como si eso importara. ¿Poder? El Dusk que conocí nunca tuvo el poder como prioridad. El Dusk que conocí era amable. Un poco serio, quizás, pero su corazón albergaba amabilidad. */
== P_BFal25 @966205 /* En cambio... ahora... es como si... */
== P_BDus25 @966206 /* ¿No existiera? Es porque el Dusk que tú mencionas ya no existe. Sólo estoy yo. */
== P_BFal25 @966207 /* No creo que sea así, Dusk... pese a que tu personalidad y aspecto hayan cambiado... Siento que aún eres tú... */
== P_BFal25 @966208 /* Dentro de esa oscuridad que emanas... siento que el Dusk que conocí aún existe. */
== P_BDus25 @966209 /* Quizás, niña, quizás... */
== P_BDus25 @966210 /* Será mejor que continuemos. */
EXIT