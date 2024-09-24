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
== P_BDus25 @9661 /* A�n no te acostumbras a mi presencia, �verdad, Aerie? */
== BAERIE25 @9662 /* Y-yo, y-yo... */
== P_BDus25 @9663 /* Descuida. Me da igual si te acostumbras o no. Soy lo que soy. */
== BAERIE25 @9664 /* Pero, Dusk... t� no eras as� antes... has cambiado. */
== P_BDus25 @9665 /* Todos lo hacemos. Incluso t�, peque�a. */
== BAERIE25 @9666 /* S�, p-pero... t� lo has hecho por un factor externo. */
== P_BDus25 @9667 /* S�... el orbe escarlata. Puede que, simplemente, el orbe haya sacado a relucir mi verdadera personalidad. Mi verdadero ser. */
== BAERIE25 @9668 /* No, no creo que sea as�, Dusk. Creo que puedes volver a ser el que eras. No es demasiado tarde. */
== P_BDus25 @9669 /* Para algunas cosas... ya es demasiado tarde, amiga m�a... demasiado tarde... */
EXIT

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)
Global("P_DuskAnomenToB1","GLOBAL",0)~ THEN BANOME25 P_DuskAnomenToB1
@96610 /* Si hay algo que quieras decir, dilo, buen Dusk. He notado que intentas sacar conversaci�n sobre algo desde hace ya un buen tiempo. */
DO ~SetGlobal("P_DuskAnomenToB1","GLOBAL",1)~
== P_BDus25 @96611 /* *carraspeo* Lo siento, Anomen. Es verdad, quer�a preguntarte algo sobre el ej�rcito, si no te molesta. */
== BANOME25 @96612 /* Entiendo. Pregunta, amigo m�o. */
== P_BDus25 @96613 /* �Qu� es lo que hace el ej�rcito de Amn con... los desertores? */
== BANOME25 @96614 /* Hm... cuando era escudero no vi tantas situaciones as�. Pero lo que he visto ha sido la expulsi�n inmediata del ej�rcito. En algunos casos, la c�rcel. */
== BANOME25 @96615 /* �Por qu� lo preguntas? */
== P_BDus25 @96616 /* Oh, no es por nada... b�sicamente... nunca volv� a Cormyr luego de mi enfrentamiento contra los orcos. */
== P_BDus25 @96617 /* Supongo que eso cuenta como... deserci�n. */
== BANOME25 @96618 /* Oh, ya entiendo... */
== P_BDus25 IF ~ReputationLT([PC],12)~ THEN @96619 /* S�... bueno, gracias por tu tiempo, Anomen. */
== BANOME25 IF ~ReputationGT([PC],12)~ THEN @96620 /* Pero, junto a <CHARNAME> has forjado una reputaci�n impecable. Sin lugar a dudas, es algo que un superior tendr�a en cuenta. */
== P_BDus25 IF ~ReputationGT([PC],12)~ THEN @96621 /* �De verdad? Gracias, Anomen. Ha sido un placer hablar contigo. */
EXIT

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)
Global("P_DuskSarevokToB2","GLOBAL",0)~ THEN BSAREV25 P_DuskSarevokToB2
@966124 /* �Por qu� me observas tan fijamente, hombrecito? */
DO ~SetGlobal("P_DuskSarevokToB2","GLOBAL",1)~
== P_BDus25 @966125 /* �Hombrecito? Cuidado, cretino. Mi nombre es Ardusk Aldant, Primera Espada de-- */
== BSAREV25 @966126 /* S�, s�. No me interesa. */
== P_BDus25 @966127 /* *carraspeo* De todas formas... hay algo en ti que no logro comprender. */
== BSAREV25 @966128 /* Seguramente debe haber cosas que no comprendes, muchacho. */
== P_BDus25 @966129 /* ~Tu alianza con <CHARNAME>, para empezar. �l es tu hermano.~ ~Tu alianza con <CHARNAME>, para empezar. Ella es tu hermana.~ */
== P_BDus25 @966130 /* ~�C�mo has sido capaz de intentar asesinarlo? Yo no tengo hermanos... pero de tenerlos, el asesinato ser�a el �ltimo de mis pensamientos.~ ~�C�mo has sido capaz de intentar asesinarla? Yo no tengo hermanos... pero de tenerlos, el asesinato ser�a el �ltimo de mis pensamientos.~ */
== BSAREV25 @966131 /* No pretendo que un simple cormyreano entienda el prop�sito de un engendro de Bhaal. */
== P_BDus25 @966132 /* Ser� un simple soldado, Sarevok. Pero s� lo que es la lealtad. Y aqu� est�s t�, siendo leal a <CHARNAME>. �Por qu�? */
== BSAREV25 @966133 /* ~Mira a nuestro alrededor, muchacho. Estamos viviendo �pocas milagrosas. El poder est� ah� para ser tomado. Yo... simplemente quiero ser testigo de lo que haga mi hermano.~ ~Mira a nuestro alrededor, muchacho. Estamos viviendo �pocas milagrosas. El poder est� ah� para ser tomado. Yo... simplemente quiero ser testigo de lo que haga mi hermana.~ */
== P_BDus25 @966134 /* Tal vez... Incluso tal vez logres hallar la respuesta. */
== BSAREV25  @966135 /* �Respuesta? */
== P_BDus25 @966136 /* Eres un hombre de pocas palabras, Sarevok. Pero s� reconocer cu�ndo un hombre est� en busca de algo. Quiz�s, acompa�ando a <CHARNAME>, lo encuentres. */
EXIT

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)
Global("P_DuskSarevokToB3","GLOBAL",0)~ THEN BSAREV25 P_DuskSarevokToB3
@966137 /* Tu aura... No proviene de este plano. �Qu� eres? */
DO ~SetGlobal("P_DuskSarevokToB3","GLOBAL",1)~
== P_BDus25 @966138 /* He obtenido poder a trav�s del Pandemonium, Sarevok. �Conoces tal lugar? */
== BSAREV25 @966139 /* S�, lo conozco, pero no he tenido el placer de estar all�. �C�mo lo obtuviste? */
== P_BDus25 @966140 /* Traicion� a mis aliados. Us� su fuerza vital para liberar a un Demonio Sombr�o. Actualmente, mi alma est� ligada a �l. */
== BSAREV25 @966141 /* Ya veo. Un camino comprensible. Aquellos que no nacen con el destino del poder en su interior, est�n obligados a tomarlo. */
== P_BDus25 @966142 /* No s� si fue obligaci�n lo que sent�... pero s�, entiendo a lo que te refieres. */
== BSAREV25 @966143 /* Lo s�. He visto lo que puedes hacer en el campo de batalla. Sin lugar a dudas, <CHARNAME> se ha conseguido aliados poderosos. */
== P_BDus25 @966144 /* �Qu� me dices de ti? Pese a no ser m�s un engendro de Bhaal, el poder en ti es notable. El Caos pr�cticamente emana de la punta de tus dedos. */
== BSAREV25 @966145 /* He dedicado toda mi vida a tomar el Trono de Bhaal. El arte de la guerra y el enga�o eran el pan de cada d�a. */
== BSAREV25 @966146 /* *suspiro* Eso ahora qued� en el pasado. S�lo quiero atestiguar estos tiempos. <CHARNAME> ser� protagonista y estar� a su lado para ver c�mo termina esta historia. */
== P_BDus25 @966147 /* Un sentimiento que acompa�ar�, si me es posible. Nuestros enemigos no tendr�n ninguna oportunidad. */
== BSAREV25  @966148 /* T� lo has dicho... */
EXIT


// FALL
CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskFall1","GLOBAL",0)~ THEN P_BDus25 P_DuskFall1
@966178 /* Fall, entiendo que seas h�bil con la ballesta... pero si alg�n oponente se te abalanza con un arma cuerpo a cuerpo, deber�as echarte atr�s. Estar�as en desventaja f�sica y tu vida correr�a peligro. */
DO ~SetGlobal("P_DuskFall1","GLOBAL",1)~
== P_BFal25 @966179 /* �Por qu� insistes en darme �rdenes, hombre? S� muy bien que si eso pasara, el primero en acudir en mi defensa ser�as t�. */
== P_BDus25 @966180 /* No siempre estar� all� para ti, Fall. Si te doy estos consejos es por tu bienestar. */
== P_BFal25 @966181 /* �Por qu� dices esas cosas, Dusk? No hay necesidad de ser tan pesimista. La vida no es tan cruel como siempre dices. */
== P_BDus25 @966182 /* �Como siempre digo? �A qu� te refieres? */
== P_BFal25 @966183 /* *con voz grave* "Recuerda: nadie te golpear� tan fuerte como la vida misma." */
== P_BFal25 @966184 /* *risita* Suena muy t�trico. �Por qu� me miras as�? �Acaso no te gust� mi intepretaci�n de "Dusk, el serio"? */
== P_BDus25 @966185 /* Mejor continuemos. */
== P_BFal25 @966186 /* De acuerdo, de acuerdo... y por cierto: har� caso a tus consejos. Gracias por estar siempre al frente de batalla, Dusk. */
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
@966189 /* A�n no me lo decido Dusk: No s� si te ves m�s joven o m�s viejo con ese aspecto. */
DO ~SetGlobal("P_DuskFall2","GLOBAL",1)~
== P_BDus25 @966190 /* Pues... yo no me siento ni m�s joven, ni m�s viejo. �Por qu� lo dices, Fall? */
== P_BFal25 @966191 /* Bueno, ciertamente, despu�s de tu... "absoci�n" del orbe purificado, has cambiado. Aunque no tanto ahora que lo pienso. */
== P_BFal25 @966192 /* Mis lobos te adoran. No es que antes no lo hicieran, pero ahora es como que perciben en ti una conexi�n m�s af�n a la naturaleza. */
== P_BDus25 @966193 /* Creo que es obra del orbe, Fall. Que Daren y Sinna lo perciban lo confirma a�n m�s. */
== P_BDus25 @966194 /* Y con respecto a tu observaci�n... creo que me siento m�s viejo. No s� si mi aspecto lo denote o no... pero ciertamente, el orbe ha consumido parte de mi energ�a vital. */
== P_BFal25 @966195 /* Oh... ya veo. */
== P_BDus25 @966196 /* *sonr�e* �nimos, Fall. A�n disponemos de mucho tiempo. Cuando esto termine, podemos viajar juntos por Shilmista, si as� lo deseas. */
== P_BFal25 @966197 /* �De verdad? No hay nada que me gustar�a m�s, Dusk. Es una promesa. */
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
== P_BFal25 @966200 /* *traga saliva* Ehm... No, yo no te he estado observando... Te habr�s confundido. */
== P_BDus25 @966201 /* No soy est�pido, ni�a. �Acaso me temes? */
== P_BFal25 @966202 /* �No soy una ni�a, Dusk! Y no, �no te temo! Es s�lo que... has cambiado... */
== P_BDus25 @966203 /* As� es. Ahora albergo un poder mayor que el de antes. Tal es la facultad del Pandemonium. */
== P_BFal25 @966204 /* Como si eso importara. �Poder? El Dusk que conoc� nunca tuvo el poder como prioridad. El Dusk que conoc� era amable. Un poco serio, quiz�s, pero su coraz�n albergaba amabilidad. */
== P_BFal25 @966205 /* En cambio... ahora... es como si... */
== P_BDus25 @966206 /* �No existiera? Es porque el Dusk que t� mencionas ya no existe. S�lo estoy yo. */
== P_BFal25 @966207 /* No creo que sea as�, Dusk... pese a que tu personalidad y aspecto hayan cambiado... Siento que a�n eres t�... */
== P_BFal25 @966208 /* Dentro de esa oscuridad que emanas... siento que el Dusk que conoc� a�n existe. */
== P_BDus25 @966209 /* Quiz�s, ni�a, quiz�s... */
== P_BDus25 @966210 /* Ser� mejor que continuemos. */
EXIT