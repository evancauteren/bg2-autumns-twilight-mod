// Banter File

BEGIN P_BDusk 

// AERIE ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskAerie1","GLOBAL",0)~ THEN P_BDusk P_DuskAerie1
@10300000 /* *Se queda un largo rato mirando a Aerie* */
DO ~SetGlobal("P_DuskAerie1","GLOBAL",1)~
== BAERIE @10300001 /* ¡Dusk! ¡Te he visto! ¿P-por qué me miras tan fijamente? */
== P_BDusk @10300002 /* Lamento si te he incomodado, Aerie... e-es sólo que m-me recuerdas a... */
== BAERIE @10300003 /* ¡Oh, vaya! ¿El gran Dusk tartamudeando? *risita* */
== P_BDusk @10300004 /* (Rayos...) Adelante, ríete lo que quieras. */
== BAERIE @10300005 /* ¡Y te has sonrojado! *risa* Oh, lo lamento, Dusk. No pretendía burlarme de ti. Dime, ¿a quién te recuerdo? */
== P_BDusk @10300006 /* *sonríe* Quizás te lo cuente en otra ocasión, pequeña. Por ahora, continuemos con el viaje. */
EXIT



// ANOMEN NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_Duskomen1","GLOBAL",0)~ THEN P_BDusk P_Duskomen1
@10300007 /*Debo decirlo, Anomen... me da una cierta tranquilidad el hecho de que Tethyr no haya ido en guerra contra Amn... No hubiera querido tenerte de enemigo en el campo de batalla. */
DO ~SetGlobal("P_Duskomen1","GLOBAL",1)~
== BANOMEN @10300008 /* La paz entre ambas naciones parece mantenerse. Sin embargo, entiendo a lo que te refieres. Tampoco querría tener que despachar a alguien que lucha por lo que es justo. */
== P_BDusk @10300009 /* O ser despachado, ¿no? */
== BANOMEN @10300010 /* ¡Ja! Eres descarado, muchacho. Quizás debamos ponernos a prueba y ver qué es lo que pasa. Aunque para mí, el resultado es obvio. */
== P_BDusk @10300011 /* Quizás, Anomen. Quizás... Pero algo me dice que no te quedaría otra opción más que acudir a las plegarias de Helm, porque el resultado podría no ser tan obvio como crees... */
EXIT



// CERND DUSK GOOD

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskCernd1","GLOBAL",0)~ THEN BCERND P_DuskCernd1
@10300012 /* Dusk, no he podido evitar ver que tienes un profundo aprecio por la naturaleza. Sin embargo, pareces más un hombre de ciudad. */
DO ~SetGlobal("P_DuskCernd1","GLOBAL",1)~
== P_BDusk @10300013 /* Tengo un amor especial por las costumbres élficas. Puede que sea eso a lo que te refieres. */
== BCERND @10300014 /* Ciertamente, los elfos tienen una conexión especial con los bosques y los animales, pero no es algo que sea de su exclusiva pertenencia. */
== BCERND @10300899 /*Los humanos hemos sido primitivos durante milenios, incluso antes que los elfos. Nuestra conciencia de existencia no estaba desarrollada como la de nuestros hermanos elfos, pero teníamos algo innato que ellos también tienen. */
== P_BDusk @10300015 /* Una conexión con la tierra, los mares y los cielos. Sentidos que teníamos y que perdimos con el paso de los tiempos. */
== P_BDusk @10300901 /* Y ahora estamos atrapados en la red de existencia, junto a las plantas y los animales, así como con el resto de los seres pensantes. */
== BCERND @10300016 /* Cierto. Es por ello que algunos humanos hacemos lo posible por recuperar esos sentidos, pese a nuestra corta existencia. */
== P_BDusk @10300017 /* Una corta existencia, como la luz de una estrella fugaz que cruza el firmamento y se pierde en la noche, como lágrimas de un niño. */
== BCERND @10300018 /* Realmente es un placer hablar con alguien que entiende de estas cosas, Dusk. Me alegra que podamos viajar juntos. */
== P_BDusk @10300902 /* El placer es mío, Cernd. */
EXIT

// EDWIN NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskEdwin1","GLOBAL",0)~ THEN P_BDusk P_DuskEdwin1
@10300019 /* ¡Te lo advierto, mago! Debes ser más cuidadoso con tus conjuros. */
DO ~SetGlobal("P_DuskEdwin1","GLOBAL",1)~
== BEDWIN @10300020 /* ¿Me hablas a mí, hombrecito? ¡Qué descarado de tu parte en exigirme eso! ¿Quizás temes a que una bola de fuego te alcance, digamos, "accidentalmente"? */
== P_BDusk @10300021 /* No te confundas, Odesseiron. No temo a tus conjuros. Me refiero a los inocentes que puedan caer por causa de tu insensatez. */
== P_BDusk @10300022 /* No tienes conciencia del alcance y del daño del que eres capaz de provocar. */
== BEDWIN @10300023 /* ¿Conciencia? (¿Pero de qué habla este primate?) ¡Hmpf! Mira, hombre de hojalata, sé muy bien lo que hago. Yo- */
== P_BDusk @10300024 /* Eso es todo lo que tengo para decirte. Me alegra que hayamos aclarado las cosas. */
== BEDWIN @10300025 /* ¡¿Q-qué?! (¿El desvergonzado me interrumpe?) */
== BEDWIN @10301032 /* ¡Hmpf! (Quizás intente, después de todo, arrojarle una bola de fuego a ver si lo resiste...) */
EXIT




// Haer-Dalis NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskHaerDalis1","GLOBAL",0)~ THEN BHAERDA P_DuskHaerDalis1
@10300026 /* ¡Hola, canario! ¿Estás de ánimo para que cantemos una serenata? Además de parecer ser un guerrero, mi corazón me dice que eres también un poeta. */
DO ~SetGlobal("P_DuskHaerDalis1","GLOBAL",1)~
== P_BDusk @10300027 /* ¿Canario? */
== BHAERDA @10300028 /* ¿No te gusta? Me suenas a un canario, lord. Pero, si no te gusta, el otro pajarillo al que me recuerdas es a un chotacabras. */
== BHAERDA @10301033 /* ¿Prefieres que te llame chotacabras, lord? */
== P_BDusk @10300029 /*Hmmm... creo que prefiero "canario". */
== BHAERDA @10300030 /* ¡Canario será entonces! Cuervos divinos y canarios tristes. Este grupo es de los más variopinto. */
== BHAERDA @10301034 /* Y... ¿qué me dices? ¡Es un buen momento para estar vivo! ¿Comenzamos la serenata? */
== P_BDusk @10300031 /* *carraspeo* Quizás... quizás en otro momento, compañero. */
EXIT





// Imoen ALL

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskImoen1","GLOBAL",0)~ THEN P_BDusk P_DuskImoen1
@10300032 /* Hmmm... ¡qué extraño! Creí que había dejado aquí mi bolso con galletas. */
DO ~SetGlobal("P_DuskImoen1","GLOBAL",1)~
== IMOEN2J @10300033 /* ¿Estás seguro? Hay muchos roedores por aquí, puede que algún hámster lo haya tomado prestado. */
== BMINSC IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10301043 /* ¡Oigan, Bubú pregunta por qué lo miran fijamente! */
== P_BDusk @10300034 /* ¿Tomado prestado? Pues no cre-... Oye... un momento. ¡Tienes migajas en tus mejillas! */
== IMOEN2J @10300035 /* ¡¿Qué?! Dusk, es de mala educación mirar fijamente las mejillas de una dama. */
== P_BDusk @10300036 /* ¿Mala educación? Pues lo siento, es que yo... */
== P_BDusk @10301044 /* ¡Oye, no intentes zafar de esto, pequeña! Si tanto querías mis galletas, sólo bastaba con pedirlas. */
== IMOEN2J @10300037 /* Oh, ¿de verdad? Pues gracias, Dusk. (Supongo que no le molestará que haya tomado prestada su bolsa de caramelos) */
EXIT



// JAHEIRA ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\


CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskJaheira1","GLOBAL",0)~ THEN BJAHEIR P_DuskJaheira1
@10300038 /* Dusk, veo algo en tus ojos. Una especie de deseo. ¿O acaso estoy equivocada? */
DO ~SetGlobal("P_DuskJaheira1","GLOBAL",1)~
== P_BDusk @10300039 /* Puede que veas algo en mí que también te identifica a ti, Jaheira. */
== BJAHEIR @10300040 /* Has perdido, también, a alguien querido, ¿no? No comienzo esta charla para hablar de detalles, Dusk... es sólo que... */
== P_BDusk @10300044 /* Lo entiendo, Jaheira. A veces es difícil hablar de estas situaciones. Más aún para nosotros, que difícilmente expresamos lo que sentimos. */
== BJAHEIR @10300045 /* No al menos en palabras... creo que expresamos demasiado, amigo mío. Ya sea en una caminata o en el campo de batalla. */
== P_BDusk @10300046 /* Así es, mi dama. Y debemos seguir adelante, ¿no? Sin importar qué... seguir adelante... */
== P_BDusk @10300041 /* Por los caídos... */
== BJAHEIR @10301045 /* Por los caídos...  */
EXIT


// JAN ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskJan1","GLOBAL",0)~ THEN BJAN P_DuskJan1
@10300047 /* ¡Oye, grandote! */
DO ~SetGlobal("P_DuskJan1","GLOBAL",1)~
== P_BDusk @10300048 /* ¿Grandote? */
== BJAN @10300049 /* Vi cómo observabas mi bolsa de nabos. En casa eso siempre es motivo de charla. */
== P_BDusk @10300050 /* ¿Tu bolsa de qué? */
== BJAN @10300051 /* Una vez, tío Gerardo se quedó mirando fijo la bolsa de patata durante tres días seguidos. Por un momento creímos que estaba a dieta, porque sólo miraba y no quería comer o cocinar y eso mamá Jansen no lo permite. Así que al cuarto día, mamá decidió tocarle el hombro para ponerlo a trabajar en la cocina. En ese momento pegó un salto de tres metros. Resulta ser que estaba dormido. Había estado haciendo experimentos con brebajes mezclados con transpiración de sapo y jugo de cebollas, mezclado con un par de conjuraciones gnómicas. Primero estuvo muy asustado, luego cayó en la cuenta de que el brebaje no había resultado. */
== P_BDusk @10300052 /* Esto... no sé si preguntar por qué no resultó... */
== BJAN @10300053 /* Pues, Dusk, es obvio. Ese tipo de brebajes tiene que ponerte a dormir con los ojos abiertos durante cinco días, no cuatro. Por el trasero sagrado de un mono, Dusk. No puedo estar todo el día disponible para enseñarte cosas. Debes madurar y aprender el valor de los brebajes gnómicos. Especialmente si hablamos del tío Gerardo. */
== P_BDusk @10301046 /* Ehm... De acuerdo, Jan. Lo tendré en cuenta. */
== BJAN @10301047 /* Así me gusta, grandote, así me gusta. Ha sido un placer hablar de negocios contigo. La próxima vez, si quieres que continuemos, vuelve a mirar mi bolsa de nabos, ¿sí? */
== P_BDusk @10301048 /* Oh, no te preocupes, gnomo. Después de todo, tu bolsa de nabos está ahí siempre... a la vista de todos... */
EXIT


// KELDORN NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\


CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskKeldorn1","GLOBAL",0)~ THEN BKELDOR P_DuskKeldorn1
@10300054 /* Tus habilidades en el campo de batalla son admirables, muchacho. Y luchas con honor. Si fuera más joven, te tomaría como pupilo para que seas un digno caballero de la Noble Orden. */
DO ~SetGlobal("P_DuskKeldorn1","GLOBAL",1)~
== P_BDusk @10300055 /* Sir Keldorn, es un honor luchar a tu lado. Con gusto habría aceptado la oferta. Pero la vida ha querido que nuestros caminos se cruzasen más tarde que temprano. */
== BKELDOR @10300056 /* Es cierto, querido amigo. Tu deber con Tethyr es admirable. Pero debo preguntar, ¿por qué has declinado de tus deberes? */
== P_BDusk @10300057 /* Durante años hemos combatido las fuerzas de Zentharim. Durante años hemos resistido. Y por si fuera poco, las tensiones con Amn crecían. */
== P_BDusk @10300058 /* Con la ayuda de los elfos de Weldath, logramos forzar las relaciones aquí, pese a que digan lo contrario. */
== P_BDusk @10300059 /* Pero... como sabrás, algunos canallas se ven beneficiados con la guerra... y hemos tenido varios oponentes en las sombras que tuvimos que soportar... No sin pérdidas... */
== BKELDOR @10300060 /* Entiendo, Dusk... puedo estimar que has perdido a alguien querido en una de esas escaramuzas. */
== P_BDusk @10300061 /* Así es... y es algo que preferiría no hablar. Luego de cumplir con mi misión... simplemente me alejé... y el destino ha querido que Athkatla haya sido el lugar en que conocí a <CHARNAME> e Irenicus. */
== P_BDusk @10301049 /* Y el resto es historia, mi señor... */
== BKELDOR @10300062 /* Ya veo... Dusk, procuraré seguir a tu lado y brindarte toda la ayuda posible. Puede que tus deseos personales no estén claros, pero al menos tu corazón es loable. */
== P_BDusk @10301050 /* Será un gran honor, sir Keldorn. */
EXIT

// KORGAN ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskKorgan1","GLOBAL",0)~ THEN P_BDusk P_DuskKorgan1
@10300063 /* Nunca tuve el placer de combatir al lado de un enano. Debo decir que no decepcionas a tu raza guerrera, Korgan. */
DO ~SetGlobal("P_DuskKorgan1","GLOBAL",1)~
== BKORGAN @10300064 /* ¡Ja! Gracias, patas flacas. Debo decir que tampoco lo haces mal, pese a que manejes un palito. */
== P_BDusk @10300065 /* ¡Je! Viniendo de ti es un halago, piernas gordas. */
== BKORGAN @10300066 /* ¡Pues, claro! He visto cómo destripas con placer a los asquerosos magos. Mi parte favorita es cuando usas la espada bastarda. Un arma bastarda, para un bastardo habilidoso. */
== P_BDusk @10300067 /* La espada es una de mis armas favoritas. Aunque entiendo el valor del bastón y su daño contundente es mortífero. */
== BKORGAN @10300068 /* Pues, no hay nada como una buena hacha. Podríamos seguir hablando sobre qué o quién es mejor, o podríamos tomarnos una cervezas y ver si nos cruzamos con algún dulce trasero de enana. */
== P_BDusk @10301051 /* Creo que me quedo con la opción de la cerveza. Y podemos disfrutar un poco del aire fresco, de paso. */
EXIT



// MAZZY NEUTRAL-GOOD

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskMazzy1","GLOBAL",0)~ THEN P_BDusk P_DuskMazzy1
@10300069 /* Lady Fentan, déjeme expresar mi gran admiración por su valentía en el campo de batalla. Es un honor pelear a su lado. */
DO ~SetGlobal("P_DuskMazzy1","GLOBAL",1)~
== BMAZZY @10300070 /* ¿Lady? Me halagas, Dusk. Pero puedes llamarme Mazzy, como lo hacen todos mis amigos. */
== P_BDusk @10300071 /* De acuerdo, será Mazzy entonces. */
== BMAZZY @10300072 /* ¡Sí que eres obediente! Serías un gran escudero. */
== P_BDusk @10300073 /* ¿Escudero? ¿no crees que apuntaría a algo más alto?*/
== P_BDusk @10301052 /* Hmpf, perdón, no dije la palabra "alto" con ánimos de ofender. */
== BMAZZY @10300074 /* ¡Vaya, vaya! Esa cortesía desaparece rápidamente cuando agarras confianza. Eso me gusta, Dusk. Eso me gusta. */
EXIT



// MINSC NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\


CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskMinsc1","GLOBAL",0)~ THEN P_BDusk P_DuskMinsc1
@10300075 /* Minsc, tu fuerza de voluntad me sorprende. ¿Cuál es tu secreto? */
DO ~SetGlobal("P_DuskMinsc1","GLOBAL",1)~
== BMINSC @10300076 /* Hmmm... esas preguntas serán mejor respondidas por un sabio, ¿no es así, Bubú? */
== BMINSC @10300077 /* Bubú dice que Minsc obtiene su fuerza de voluntad a partir de un deseo por patear traseros malvados. */
== P_BDusk @10300078 /* Ah... Bubú, ¿eh? Es un hámster muy valiente el que tienes allí. */
== BMINSC @10300079 /* Bubú no es mi mascota, Dusk. Es mi amigo. Es un hámster gigante que vino del espacio. Pese a ser gigante, es muy ágil. */
== P_BDusk @10300080 /* (Pues no me parece muy gigante a mi parecer) */
== BMINSC @10300081 /* Bubú pregunta qué es lo que murmuras, buen Dusk. */
== P_BDusk @10300082 /* Ehm... que Bubú parece tan fuerte que no querría que fuese a por mis ojos. */
== BMINSC @10300083 /* ¡Oh, no te preocupes, Dusk! Con Bubú hemos visto que tienes un buen corazón y seremos camaradas de batalla durante el tiempo que viajemos juntos. */
== P_BDusk @10300084 /* Me alegra escuchar eso. */
EXIT






// NALIA NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskNalia1","GLOBAL",0)~ THEN BNALIA P_DuskNalia1
@10300085 /* Dusk, <CHARNAME> me ha comentado que le has conocido en el Paseo de Waukin, ¿es así? */
DO ~SetGlobal("P_DuskNalia1","GLOBAL",1)~
== P_BDusk @10300086 /* Lady De'Arnise, ¿así que usted anda preguntando sobre mí, importunando a nuestro descendiente de Bhaal?~ ~Lady De'Arnise, ¿así que usted anda preguntando sobre mí, importunando a nuestra descendiente de Bhaal? */
== BNALIA @10300087 /* *carraspeo* Perdón, Dusk. No pretendía inmiscuirme- */
== P_BDusk @10300088 /* ¡Ja! Lo lamento, Nalia. Sólo estaba bromeando. No me molesta en absoluto que preguntes sobre mis asuntos. En el peor de los casos, obtendrías una negativa de mi parte. */
== BNALIA @10300089 /* ¡Eres un atrevido! Pero, dejando de lado tu desfachatez, haré caso a lo que dices y preguntaré. ¿Qué hacías allí? */
== P_BDusk @10300090 /* Luego de que terminé mis servicios con Tethyr, decidí venir a la tierra de los mercaderes. Bien podría haber ido a Caravasar, pero por alguna razón, Athkatla llamó mi atención. */
== P_BDusk @10301053 /* Debo confesar que el comercio es algo que me interesa. Una vida simple que quizás algún día lleve a cabo. */
== BNALIA @10301055 /* ¿De verdad? No te hacía un comerciante, Dusk. Pareces más un... */
== P_BDusk @10301056 /* ¿Guerrero? ¿Caballero? */
== BNALIA @10301057 /* Iba a decir mozo de cuadra. */
== P_BDusk @10301058 /* ¡Rayos, lady De'Arnise! Ha pegado justo en el orgullo. */
== BNALIA @10301059 /* Te lo tienes merecido por querer pasarte de listo, hombre. Pero al menos has sido sincero en tu respuesta. */
EXIT 


// VALYGAR NEUTRAL-GOOD

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskValygar1","GLOBAL",0)~ THEN BVALYGA P_DuskValygar1
@10300091 /* Dusk, te he estado observando durante un tiempo. Me gustaría preguntarte algo, si no te molesta. */
DO ~SetGlobal("P_DuskValygar1","GLOBAL",1)~
== P_BDusk @10300092 /* Dime, amigo mío, ¿en qué puedo ayudarte? */
== BVALYGA @10300093 /* Tu... condición, de Asesino de Magos... me intriga. Tengo entendido que has pasado algunos años entrenándote... Resistir conjuros de forma natural es algo formidable, pero me pregunto, ¿cómo lo has logrado? */
== P_BDusk @10300094 /* Hmm... veo adónde quieres llegar, Valygar... Sé que no eres un necio y que no ignoras hechos relacionados a la magia... Sé que sabes que los Asesinos de Magos que no han sido entrenados en las tribus del norte suelen tener intenciones... oscuras. */
== BVALYGA @10300095 /* Lo sé, Dusk... es por eso que te pregunto: ¿cómo es posible que seas un defensor de la justicia cuando has sido entrenado por una secta maléfica? */
== BVALYGA @10301060 /* No confundas mis interrogantes con malicia, pues tengo el juicio lo suficientemente claro como para saber que no eres un farsante... es sólo que... */
== P_BDusk @10300096 /* Sientes curiosidad, ¿eh? Como todo... hechicero... */
== BVALYGA @10300097 /* Una afirmación justa... y merecida, me temo. */
== P_BDusk @10300098 /* Mi intención no era ofenderte, amigo. Sé que aborreces la magia, tanto o más que yo. Por ello también puedo identificar que tienes muchos puntos en común con aquellos que tanto odias... */
== P_BDusk @10301061 /* "Hay que tener cuidado a la hora de elegir a los enemigos... porque uno tiende a parecerse a ellos." dijo un sabio. */
== P_BDusk @10301062 /* Con el debido tiempo volveremos a hablar del tema, Valygar... pero no ahora... no ahora... */
== BVALYGA @10301063 /* Es lo justo, creo. Continuaremos esto en otro momento, Dusk. */
DO ~SetGlobal("P_DuskValygar1","GLOBAL",2)~
EXIT
 
 


// VICONIA ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskViconia1","GLOBAL",0)~ THEN P_BDusk P_DuskViconia1
@10300099 /* Durante las noches percibo tu mirada, Viconia... ¿hay algo que deba saber? */
DO ~SetGlobal("P_DuskViconia1","GLOBAL",1)~
== BVICONI @10300100 /* ¿De verdad, abbil? Puede que sólo sea lujuria, ¿no crees? */
== P_BDusk @10300101 /* Hm. Creo que ocultas tus verdaderas intenciones, drow. Sin embargo, no es algo que me moleste. Tus asuntos son sólo de tu incumbencia. */
== BVICONI @10300102 /* En eso tienes razón, hombrecillo. Aunque, no deberías tomar tan a la ligera mis palabras. Puede que te observe durante las noches porque deseo sentir tu sangre entre mis dedos. Siempre quise probar a un Asesino de Magos. */
== P_BDusk @10300103 /* ¿Debería sentirme amenazado? Pues no lo creo... no percibo odio en tus palabras. */
== BVICONI @10300104 /* Puede que no, rivvil... pero que no te quepan dudas que eso puede cambiar en cualquier momento... Por ahora... simplemente disfruta cuando percibas mi mirada en tu cuerpo. No tienes nada que perder... aún... */
EXIT




// YOSHIMO ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\


CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskYoshimo1","GLOBAL",0)~ THEN P_BDusk P_DuskYoshimo1
@10300105 /* Odio admitirlo, Yoshimo... pero eres todo un misterio. */
DO ~SetGlobal("P_DuskYoshimo1","GLOBAL",1)~
== BYOSHIM @10300106 /* ¿Un misterio, dices? Los misterios relumbran durante el mediodía como estrellas, aunque no seas capaz de verlas por el sol. Espero que hables del buen Yoshimo con buena intención, amigo mío. */
== P_BDusk IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @10301091 /* No me interesa si te ofendo, ladrón. Percibo que sueles actuar con dudas, pese a que tu actitud demuestre lo contrario. */
== P_BDusk IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @10300107 /* Oh, no pretendía ofenderte, compañero. Es sólo que percibo que sueles actuar con dudas, pese a que tu actitud demuestre lo contrario. */
== BYOSHIM @10300108 /* Las dudas son algo natural, incluso en aquellos que tienen confianza en demasía. Yo mismo he visto que tú dudas, Dusk. ¿Qué es lo que opinas al respecto? */
== P_BDusk @10300109 /* Ciertamente eres inteligente... intentas desviar la atención posándola en el receptor... Pero supongo que tendrás tus secretos, así como yo tengo los míos. */
== BYOSHIM @10300110 /* Pues sí... todo guerrero que ha visto demasiado en el campo de batalla los tiene... y sólo a veces se desvelan en la vigilia del sueño. */
== P_BDusk @10300111 /* En los sueños, ¿eh? Pues, supongo, que deberemos tener cuidado, incluso cuando soñemos... No vaya a ser que nos sorprenda la verdad, ¿no lo crees? */
== BYOSHIM @10300112 /* Pues a Yoshimo no lo sorprenderá nada ni nadie, mi querido Dusk. Siempre suele ser Yoshimo quien sorprende a los demás... */
EXIT



// AERIE 2 NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskAerie1","GLOBAL",1)
Global("P_DuskAerie1GOOD","GLOBAL",0)~ THEN P_BDusk P_DuskAerie1GOOD
@10301005 /* Aerie, ¿recuerdas cuando me preguntaste a quien me recordabas? */
DO ~SetGlobal("P_DuskAerie1GOOD","GLOBAL",1)~
== BAERIE @10301006 /* Dusk, claro que lo recuerdo. ¡Te habías puesto rojo como un tomate! *risita* */
== P_BDusk @10301007 /* *carraspeo* Sí, bueno... me recuerdas a una elfa de Shilmista, llamada Celine. */
== BAERIE @10301008 /* ¿Celine? Es un bello nombre. Cuéntame sobre ella. */
== P_BDusk @10301009 /* Era una feroz guerrera, hábil en el uso del arco. Pero tú no me recuerdas a ella por tu fuerza física, de la cual claramente careces. */
== BAERIE @10301010 /* ¡Oye! (Hm... bueno, sí es cierto que debería hacer ejercicio) */
== P_BDusk @10301011 /* No te avergüences por ello, Aerie. Tú eres inteligente y amable, y esas son las características que me recuerdan a Celine. */
== BAERIE @10301012 /* Oh, ya veo. Y, dime, Dusk... ¿hace mucho tiempo que no la ves? */
== P_BDusk @10301013 /* ... */
== P_BDusk @10301014 /* Demasiado... más del que quisiera... A veces sueño con ella. Algún día... algún día volveré a verla. */
== P_BDusk @10301015 /* Será mejor que continuemos con el viaje. Ya sabes cómo se pone <CHARNAME> si nos distraemos charlando. */
== BAERIE @10301016 /* De acuerdo, Dusk. Pero espero con ansias que me sigas contando de ella. */
== P_BDusk @10301017 /* Quizás, Aerie. Quizás... */
EXIT

// ANOMEN 2 EVIL
CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_Duskomen1EVIL","GLOBAL",0)~ THEN P_BDusk P_Duskomen1EVIL
@10301000 /* Deberías mejorar tu actitud, monje. Nunca sabes cuándo te cruzarás con la persona equivocada... */
DO ~SetGlobal("P_Duskomen1EVIL","GLOBAL",1)~
== BANOMEN @10301001 /* ¿Pero qué-? ¡Muchacho! Esas insolencias puede que te cuesten caro. Yo- */
== P_BDusk @10301002 /* ¿Tú qué? ¿Crees que debo temerte porque ladres constantemente tus hazañas? Te he visto en combate... y ciertamente no eres la gran cosa. */
== BANOMEN @10301003 /* Si no fuera porque estoy aquí por <CHARNAME>, te aseguro que ya te habría dado una lección o dos. */
== P_BDusk @10301004 /* ¡Ja! Pagaría por verte intentarlo, monje... */
EXIT

// EDWIN 2 ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskEdwin2","GLOBAL",0)~ THEN P_BDusk P_DuskEdwin2
@10300113 /* Con el paso del tiempo, Edwin, debo admitir que tus habilidades son excepcionales... */
DO ~SetGlobal("P_DuskEdwin2","GLOBAL",1)~
== BEDWIN @10300114 /* (Hm... el primate finalmente admite mi supremacía) ¡Pues, claro! Edwin Odesseiron es el terror de la Costa de la Espada, Dusk. No lo olvides. */
== P_BDusk @10300115 /* Sin embargo... hay algo que no me cierra... */
== BEDWIN @10300116 /* *ejem* ¿Qué estás insinuando? (¿Por qué me mira con esos ojos tan frívolos? Maldito sea, quizás sepa mi secreto) */
== P_BDusk @10300117 /* Durante años me he enfrentado a muchos magos, invocadores, transmutadores, nigromantes... pero nadie se compara contigo en cuando a velocidad y vocalización de conjuros... */
== BEDWIN @10300118 /* Pues claro, es algo innato en mí. No se puede esperar otra cosa de alguien tan habili- */
== P_BDusk @10300119 /* ¿Por qué cubres tu amuleto tan recelosamente, mi querido Edwin? No deberías preocuparte por mí... no soy ningún ladrón... No tengo interés en tu habili- erhm, quiero decir: amuleto. *sonrisa* */
== BEDWIN @10300120 /* (Con un demonio, se está burlando de mí... quizás deba acelerar su partida cuanto antes...) Será mejor que pongas tu mirada en otra cosa, hombre del palito... No vaya a ser que quieras poner a prueba mis... habilidades... */
EXIT

// VALYGAR 2 ALL

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskValygar1","GLOBAL",2)
Global("P_DuskValygar2","GLOBAL",0)~ THEN P_BDusk P_DuskValygar2
@10300130 /* ¿Aún estás interesado en saber cómo es que terminé en esa "secta maléfica", Valygar? */ DO ~SetGlobal("P_DuskValygar2","GLOBAL",1)~
== BVALYGA @10300131 /* Pues... sí, la verdad es que me interesa saberlo, Dusk. ¿Estás dispuesto a hablar? */
== P_BDusk @10300132 /* Siempre y cuando estés dispuesto a escuchar, amigo mío. */
== BVALYGA @10300133 /* Dusk, soy todo oídos. */
== P_BDusk @10300134 /* Hm... de acuerdo... No siempre detesté la magia, ¿sabes? No fue hasta que un traicionero hechicero arrebató a alguien que... estimaba. */
== P_BDusk @10300135 /* Oí rumores de un ejército forjado por una aasimar en las cercanías de Puerta de Baldur. Como debes saber, los aasimar tienen una innata resistencia a la magia debido a su descendencia divina; por lo que asumí que allí tendría Asesinos de Magos dispuestos a luchar por ella. Asesinos de Magos entrenados por ella misma, imbuidos, quizás, con aquella innata resistencia arcana. */
== P_BDusk @10300136 /* No estoy seguro de qué es lo que pasó con esa aasimar, pero cuando llegué, ella y su ejército habían desaparecido... Sin embargo, interrogando a los lugareños, escuché los rumores de un ejército en el sur, agazapados en la oscuridad de los Campos de los Muertos, al suroeste de las Colinas de la Serpiente. */
== P_BDusk @10300137 /* Al cabo de unas semanas pude dar con ellos. No eran más que un grupo de mercenarios que había desertado del ejército de Lanzadragón. Pero había Asesinos de Magos allí... y les convencí de que me aceptaran, luego de tener que salir victorioso de unas pruebas de combate con algunos rufianes. */
== P_BDusk @10301064 /* Probé mi valía y me aceptaron. Lo primero que tuve que hacer fue hablar con el líder de su grupo, un mago llamado Ojos de Serpiente. Se trataba de un humano adivino, con el que tuve muchas lecturas... particulares... */
== BVALYGA @10300138 /* ¿Particulares? */
== P_BDusk @10300139 /* Sí... El adivino leyó mi pasado. Descubrió mi descendencia real y vio cómo mis antepasados lucharon contra las fuerzas oscuras de Aumvor. Vio en mí un odio gutural contra la magia, pero no pudo leer mis verdaderas intenciones. */
== BVALYGA @10301065 /* Tus verdaderas... ¿intenciones? */
== P_BDusk @10301066 /* Hm... ya es un poco tarde, Valygar. ¿Qué te parece si continuamos en otro momento? Prometo terminar mi historia más adelante. */
== BVALYGA @10301067 /* Está bien, Dusk, está bien... te tomo la palabra. */
DO ~SetGlobal("P_DuskValygar2","GLOBAL",2)~
EXIT


// Haer-Dalis 2 EVIL
CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskHaerDalis1","GLOBAL",1)
Global("P_DuskHaerDalis1EVIL","GLOBAL",0)~ THEN BHAERDA P_DuskHaerDalis1EVIL
@10301035 /* ¿Quién lo diría? El canario ha mutado a un gran y terrilbe halcón. */
DO ~SetGlobal("P_DuskHaerDalis1EVIL","GLOBAL",1)~
== P_BDusk @10301036 /* ¿Me hablas a mí, bardo? */
== BHAERDA @10301037 /* ¡Pues, claro! Un halcón ciertamente es más interesante que un canario, ¿no lo crees? */
== BHAERDA @10301038 /* Aunque, es innegable que el canto del canario es más bonito. */
== P_BDusk @10301039 /* Me da igual cómo me llames, tiefling. Sólo, no te vayas a poner a cantar. No estoy de humor. */
== BHAERDA @10301040 /* Pues, el humor es algo que me parece que el halcón no posee, diferente es el caso de un canario. */
== P_BDusk @10301041 /* Vuelve a hacer una analogía de aves una vez más y tu lengua será un alimento para los perros. */
== BHAERDA @10301042 /* ¡Vaya! Definitivamente, el buen humor es algo que también ha mutado... */
EXIT

// IMOEN 2 ALL

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskImoen1","GLOBAL",1)~ THEN P_BDusk P_DuskImoen2
@10300121 /* Imoen, ¿está deliciosa esa manzana? */
DO ~SetGlobal("P_DuskImoen1","GLOBAL",2)~
== IMOEN2J @10300122 /* Hmm... *mastica* ¡Pues, sí! *mastica* */
== P_BDusk @10300123 /* ¡Qué bueno! En especial, porque tenía una exactamente igual en mi mochila... y ahora no la encuentro. */
== IMOEN2J @10300124 /* Oh, Dusk... *mastica* Deberías ser más cuidadoso con tu comida... */
== P_BDusk @10300126 /* No vaya a ser que algún hámster o ratón vaya a robármela, ¿no? */
== IMOEN2J @10300127 /* Je, je... Eso mismo iba a decir. ¿Estás enojado conmigo, Dusk? Oh... no me digas... que sospechas, ¡de mí! */
== P_BDusk @10300128 /* (Rayos, no puedo regañarla si pone ojos de gato abandonado) Hm... No, no, Imoen... es sólo que tenía un poco de hambre y yo- */
== IMOEN2J @10300129 /* ¡Oh, pues haberlo dicho antes! Come un poco, Dusk. */
== P_BDusk @10301082 /* (¿Eh? Pero si sólo me ha dejado el carozo...) Bueno, gracias, Imoen... *suspiro* */
EXIT

// MINSC 2 NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskMinsc1","GLOBAL",1)~ THEN P_BDusk P_DuskMinsc2
@10300140 /* Minsc, tengo estas galletas de jengibre para nuestro amigo en común, Bubú. */
DO ~SetGlobal("P_DuskMinsc1","GLOBAL",2)~
== BMINSC @10300141 /* ¡Oh, tranquilo, Bubú! Pocas veces ha visto Minsc a Bubú tan emocionado. Casi no puedo contener su fuerza. */
== BMINSC @10300142 /* *Chillido de hámster* */
== P_BDusk @10300143 /* ¡Wow! Claramente, se ha fanatizado con el jengibre, ¿no te parece? */
== BMINSC @10300144 /* ¡Bubú, cálmate! Recuerda que estás a dieta. */
== BMINSC @10300145 /* *Gruñido de hámster*  */
== P_BDusk @10300146 /* ¡Ja! Tiene todo un temperamento nuestro peludo compañero. */
== BMINSC @10300147 /* Dusk, Minsc agradece que pienses en nosotros. Pero la próxima vez, recuerda que Bubú no podrá ser tan ágil si tiene la panza llena de galletas de jengibre. */
== P_BDusk @10300148 /* Cierto, cierto. Lo tendré en cuenta. Para la próxima vez, puede que con una manzana baste. */
== BMINSC @10300149 /* ¡Sí! Eso le dará energías y no lo hará tan... *susurro* regordete. Pero... muchas gracias, gran Dusk. Bubú está muy agradecido. Diría algo de no ser porque se ha guardado varias galletas en su buche. */
== P_BDusk @10300150 /* No hay por qué, Minsc. *susurro* Bubú, cuando quieras escaparte unas horas de tu dieta, sabes a dónde encontrarme. */
EXIT


// VICONIA 2 ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskViconia2","GLOBAL",0)~ THEN P_BDusk P_DuskViconia2
@10300151 /* Traje esto para ti. */
DO ~SetGlobal("P_DuskViconia2","GLOBAL",1)~
== BVICONI @10300152 /* ¿Q-qué haces, rivvil? ¿Qué es esto? Es... es un broche. */
== P_BDusk @10300153 /* Así es... representa a la Luna... o al menos, su parte oscura. */
== BVICONI @10300154 /* Pero... ¿por qué? */
== P_BDusk @10300155 /* Porque somos amigos. Los amigos tienden a darse obsequios. Y me pareció que hacía mucho tiempo que nadie te daba algo. */
== BVICONI @10300156 /* P-pues, no necesito que nadie me dé nada, rivvil... Si quiero algo, simplemente lo tomo. */
== BVICONI @10300157 /* Pero dime... ¿en esto has estado trabajando las últimas noches? */
== P_BDusk @10301083 /* *carraspeo* Pues, sí. Ayuda a distraerme. */
== BVICONI @10301084 /* No deberías haberlo hecho, necio... no necesito ser razón para tus distracciones. */
== BVICONI @10301085 /* Sin embargo... gracias. Para ser un rivvil, ciertamente tienes habilidades para tallar en la madera. */
== P_BDusk @10301086 /* No lo menciones, Viconia. Lo quieras o no, estás forjando amistades en este grupo. Y los amigos hacen este tipo de cosas. Estar para ti. */
== BVICONI @10301087 /* ... */
== BVICONI @10301088 /* Pensaré en tus palabras, abbil. Por ahora, déjame sola. */
== P_BDusk @10301089 /* De acuerdo, Vicky. *sonríe burlonamente* */
== BVICONI @10301090 /* No presiones a tu suerte, rivvil. Para tu fortuna, dejaré pasar eso, sólo porque me gustó tu... regalo. */
EXIT

// AERIE 2 EVIL
CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskAerie1","GLOBAL",1)
Global("P_DuskAerie1EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskAerie1EVIL
@10301018 /* ... */
DO ~SetGlobal("P_DuskAerie1EVIL","GLOBAL",1)~
== BAERIE @10301019 /* ¡Dusk! Otra vez estás mirándome... aunque... tus ojos no son como antes... */
== P_BDusk @10301020 /* Me recuerdas a Celine, Aerie. Pero tú no eres fuerte como ella... la visión que tienes del mundo, te llevará a tu perdición. */
== BAERIE @10301021 /* ¿D-de qué estás hablando, Dusk? */
== P_BDusk @10301022 /* Eres inteligente, lo cual es una fortaleza en ti. Pero también eres amable e ingenua... y ello te llevará a la ruina. */
== BAERIE @10301023 /* P-pues no te he pedido opinión al respecto, ¿sabes? Y-yo soy como soy y me gusta ser así. */
== P_BDusk @10301024 /* No te culpo, pequeña. Es más fácil creer en las buenas intenciones de los demás. Pero lo cierto es que todos tenemos un demonio interior, agazapado en las sombras, esperando a tomar control. */
== BAERIE @10301025 /* *escalofrío* D-dusk, no entiendo... n-no eras así antes. Ahora... ya no tienes brillo en tus ojos... s-sólo... sólo percibo frialdad en tus palabras. */
== P_BDusk @10301026 /* Nunca vi las cosas con tanta claridad como ahora. No debes preocuparte por mí. Soy más fuerte que nunca. */
== BAERIE @10301027 /* La fuerza no lo es todo... no entiendo por qué eres así, Dusk...no lo entiendo. */
== P_BDusk @10301028 /* No hay nada que entender, Aerie. Sigo pensando que tu amabilidad será tu perdición... pero no será así mientras yo esté cerca. */
== P_BDusk @10301029 /* Puedes darte el lujo de la ingenuidad. Y si el peligro te acecha, lo detendré mediante sangre y violencia. */
== BAERIE @10301030 /* ¡N-no necesito que mates por mí, Dusk! N-no todo debe terminar en violencia y asesinato. */
== P_BDusk @10301031 /* Pero en verdad sí, pequeña... El mundo en que vivimos fue forjado con sangre y violencia. Y será así hasta que el sol y las estrellas pierdan su brillo... Siempre será así... */
EXIT


// VALYGAR 3 ALL

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskValygar2","GLOBAL",2)
Global("P_DuskValygar3","GLOBAL",0)~ THEN BVALYGA P_DuskValygar3
@10300171 /* Dusk, creo que ya ha pasado un tiempo prudencial desde nuestra última charla, ¿no lo crees? */
DO ~SetGlobal("P_DuskValygar3","GLOBAL",1)~
== P_BDusk @10300172 /* Es verdad, Valygar. Voy a terminar mi relato... */
== P_BDusk @10300173 /* Como te mencioné antes, Ojos de Serpiente tuvo varias sesiones conmigo. Su especialidad era la escuela de la adivinación, por lo que pudo adentrarse en mi pasado mediante ciertas... conjuraciones. No dijo más de lo que ya sabía, porque su verdadera intención era vislumbrar cuál era mi intención, ¿lo captas? */
== BVALYGA @10300174 /* Entiendo. Tu verdadera intención era mejorar tu resistencia natural a la magia para vengarte de los hechiceros que abusan de su poder, ¿o me equivoco? Mi pregunta es... ¿Cómo engañaste a Ojos de Serpiente? */
== P_BDusk @10300175 /* Mi deseo por venganza era demasiado grande... tanto, que deslumbró lo que pretendía hacer después con ellos, con los mercenarios del valle. */
== P_BDusk @10300176 /* Ojos de Serpiente se centró más en mi pasado arcano que en mis futuros y fútiles esfuerzos por darle un uso debido a lo que obtendría con la resistencia mágica innata. Pero no era ningún tonto... le daba igual si vivía o moría, por lo que sus... métodos para despertar dicha resistencia en mí no fueron contenidas. */
== BVALYGA @10300177 /* Tengo una leve sospecha de cómo se entrenaban los Asesinos de Magos en el norte, en las tribus bárbaras... ¿Es lo que creo que es? */
== P_BDusk @10301068 /* Sí: Ojos de Serpiente utilizó conjuraciones contra mí. Lanzó todo tipo de hechizos y luego acudía al clérigo del campamento para curarme. */
== P_BDusk @10301069 /* Estuve incontable cantidad de veces cerca de la muerte... pero mi propósito me mantuvo firme. */
== P_BDusk @10301070 /* Al cabo de unos meses entendí cómo funcionaba la mayoría de los conjuros... al menos de una forma básica. Y fue cuando obtuve este conocimiento que ejecuté la siguiente fase de mi plan. */
== BVALYGA @10301071 /* ¿Qué fue lo que pasó? */
== P_BDusk @10301072 /* Los maté a todos... */
== P_BDusk @10301073 /* Veo que no me juzgas por mis actos... ¿por qué? */
== BVALYGA @10301074 /* Pues, Dusk... creo que se lo tenían merecido. Sé cómo actúan los mercenarios y las sectas que preparan Asesinos de Magos no ostentan buenas intenciones. Sólo buscan la muerte y la conquista. Tú lo sabías y de seguro lo viviste... Y puede que quizás... hasta hayas tenido que hacer cosas que no querías. */
== P_BDusk @10301075 /* Tienes razón... Muchas veces pude esquivar ciertas "obligaciones" para con el campamento. A fin de cuentas, estaba demasiado focalizado en mi objetivo principal. Y cuando lo logré, finalmente obtuve mi venganza contra ellos. */
== P_BDusk @10301076 /* Ojos de Serpiente se vio sorprendido... pero cuando lo enfrenté, al final, me di cuenta de que él sabía que actuaría de esa forma. */
== P_BDusk @10301077 /* De todas formas, no lo pensé demasiado. Asesté contra él un golpe mortífero e incluso resistí una de sus conjuraciones. Ése fue su fin. Y también el comienzo de mi redención. */
== P_BDusk @10301078 /* Dirigí mi camino hacia Athkatla, pues sabía que la gran ciudad apestaba a corrupción y podría usar mis nuevos conocimientos para brindar ayudar a aquellos más necesitados. */
== P_BDusk @10301079 /* Luego pasó lo que pasó en el Paseo. Irenicus, <CHARNAME>, Imoen. El resto... es historia. */
== BVALYGA @10301080 /* Ha sido interesante, Dusk. Gracias por contármelo. Espero que podamos dar un cierre a toda esta cacería contra Irenicus... creo que juntos, podremos dar una buena mano a <CHARNAME>. */
== P_BDusk @10301081 /* Pienso lo mismo, Valygar... pienso lo mismo... */
DO ~SetGlobal("P_DuskValygar3","GLOBAL",2)~
EXIT


// FALL
CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskFall1","GLOBAL",0)~ THEN P_BDusk P_DuskFall1
@10300178 /* Fall, entiendo que seas hábil con la ballesta... pero si algún oponente se te abalanza con un arma cuerpo a cuerpo, deberías echarte atrás. Estarías en desventaja física y tu vida correría peligro. */
DO ~SetGlobal("P_DuskFall1","GLOBAL",1)~
== P_BFall @10300179 /* ¿Por qué insistes en darme órdenes, hombre? Sé muy bien que si eso pasara, el primero en acudir en mi defensa serías tú. */
== P_BDusk @10300180 /* No siempre estaré allí para ti, Fall. Si te doy estos consejos es por tu bienestar. */
== P_BFall @10300181 /* ¿Por qué dices esas cosas, Dusk? No hay necesidad de ser tan pesimista. La vida no es tan cruel como siempre dices. */
== P_BDusk @10300182 /* ¿Como siempre digo? ¿A qué te refieres? */
== P_BFall @10300183 /* *con voz grave* "Recuerda: nadie te golpeará tan fuerte como la vida misma." */
== P_BFall @10300184 /* *risita* Suena muy tétrico. ¿Por qué me miras así? ¿Acaso no te gustó mi intepretación de "Dusk, el serio"? */
== P_BDusk @10300185 /* Mejor continuemos. */
== P_BFall @10300186 /* De acuerdo, de acuerdo... y por cierto: haré caso a tus consejos. Gracias por estar siempre al frente de batalla, Dusk. */
== P_BFall @10300187 /* Y ten en cuenta que pretendo que tu estancia con nosotros sea larga: mi ballesta y yo nos encargaremos de eso. */
== P_BDusk @10300188 /* Es bueno saberlo. */
EXIT


CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskFall2","GLOBAL",0)~ THEN P_BFall P_DuskFall2
@10300189 /* Aún no me lo decido Dusk: No sé si te ves más joven o más viejo con ese aspecto. */
DO ~SetGlobal("P_DuskFall2","GLOBAL",1)~
== P_BDusk @10300190 /* Pues... yo no me siento ni más joven, ni más viejo. ¿Por qué lo dices, Fall? */
== P_BFall @10300191 /* Bueno, ciertamente, después de tu... "absoción" del orbe purificado, has cambiado. Aunque no tanto ahora que lo pienso. */
== P_BFall @10300192 /* Mis lobos te adoran. No es que antes no lo hicieran, pero ahora es como que perciben en ti una conexión más afín a la naturaleza. */
== P_BDusk @10300193 /* Creo que es obra del orbe, Fall. Que Daren y Sinna lo perciban lo confirma aún más. */
== P_BDusk @10300194 /* Y con respecto a tu observación... creo que me siento más viejo. No sé si mi aspecto lo denote o no... pero ciertamente, el orbe ha consumido parte de mi energía vital. */
== P_BFall @10300195 /* Oh... ya veo. */
== P_BDusk @10300196 /* *sonríe* Ánimos, Fall. Aún disponemos de mucho tiempo. Cuando esto termine, podemos viajar juntos por Shilmista, si así lo deseas. */
== P_BFall @10300197 /* ¿De verdad? No hay nada que me gustaría más, Dusk. Es una promesa. */
== P_BDusk @10300198 /* Es una promesa. */
EXIT

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("P_Fall",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskFall1","GLOBAL",1)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskFall3","GLOBAL",0)~ THEN P_BDusk P_DuskFall3
@10300199 /* Hace bastante que me observas a la distancia, Fall. Si tienes algo que decir, simplemente dilo. */
DO ~SetGlobal("P_DuskFall3","GLOBAL",1)~
== P_BFall @10300200 /* *traga saliva* Ehm... No, yo no te he estado observando... Te habrás confundido. */
== P_BDusk @10300201 /* No soy estúpido, niña. ¿Acaso me temes? */
== P_BFall @10300202 /* ¡No soy una niña, Dusk! Y no, ¡no te temo! Es sólo que... has cambiado... */
== P_BDusk @10300203 /* Así es. Ahora albergo un poder mayor que el de antes. Tal es la facultad del Pandemonium. */
== P_BFall @10300204 /* Como si eso importara. ¿Poder? El Dusk que conocí nunca tuvo el poder como prioridad. El Dusk que conocí era amable. Un poco serio, quizás, pero su corazón albergaba amabilidad. */
== P_BFall @10300205 /* En cambio... ahora... es como si... */
== P_BDusk @10300206 /* ¿No existiera? Es porque el Dusk que tú mencionas ya no existe. Sólo estoy yo. */
== P_BFall @10300207 /* No creo que sea así, Dusk... pese a que tu personalidad y aspecto hayan cambiado... Siento que aún eres tú... */
== P_BFall @10300208 /* Dentro de esa oscuridad que emanas... siento que el Dusk que conocí aún existe. */
== P_BDusk @10300209 /* Quizás, niña, quizás... */
== P_BDusk @10300210 /* Será mejor que continuemos. */
EXIT

// ALENDIR - Good Dusk
CHAIN
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("P_Alen",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskAlen1","GLOBAL",0)~ THEN P_BDusk P_DuskAlen1
@979169 /* La vida ha sido demasiado amable contigo, Alendir. Más de lo que mereces. */
DO ~SetGlobal("P_DuskAlen1","GLOBAL",1)~
== P_BAlen @979170 /* Mystra, joven humano. Mystra ha sido la generosa. Y no es necesario que escupas tu veneno conmigo. Sé muy bien que no merezco esta oportunidad. Pero aquí estoy. */
== P_BDusk @979171 /* *gruñido* De todas formas... ¿qué harás ahora? Tu juventud ha sido restaurada también, aunque ello implique una disminución en tu poder arcano. */
== P_BAlen @979172 /* Tú también lo has sentido, ¿verdad? Tu condición de Asesino de Magos puede llegar a percibir ciertos estados en los magos. Pero sé que no lo comprendes del todo. */
== P_BDusk @979173 /* No necesito comprender a mis presas... sólo necesito saber cómo matarlas. */
== P_BAlen @979174 /* *sonríe* Lo sé. He visto lo que eres capaz. Y sé lo que piensas: */
== P_BAlen @979175 /* "El elfo es mucho más débil que antes. Me bastaría un par de movimientos de mi espada para despacharlo. Ni más, ni menos. <CHARNAME> ni siquiera le extrañara." */
== P_BDusk @979176 /* Mi sed de sangre no es tan grande, Alendir. Te das demasiada importancia. */
== P_BAlen @979177 /* Entonces... ¿por qué me molestas? */
== P_BDusk @979178 /* Sólo intentaba analizarte un poco, Maestro de las Escarchas. Puede que sepa cómo penetrar tus defensas mágicas... pero me interesa más dilucidar tus verdaderas intenciones. Saber qué es lo que realmente buscas. */
== P_BAlen @979179 /* Hmpf. Entonces somos dos, joven humano. Somos dos. */
EXIT

// ALENDIR - Evil Dusk
CHAIN
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("P_Alen",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskAlen2","GLOBAL",0)~ THEN P_BDusk P_DuskAlen2
@979180 /* Que <CHARNAME> permita que nos acompañes debe ser una de las decisiones más estúpidas que ha tomado. Si fuera por mí-- */
DO ~SetGlobal("P_DuskAlen2","GLOBAL",1)~
== P_BAlen @979181 /* Tomarías tu espada bastarda y separarías mi cabeza del cuello. ¿Eso ibas a decir, humano? */
== P_BDusk @979182 /* ... */
== P_BAlen @979183 /* <CHARNAME> toma las decisiones, no tú. Si estoy con vosotros es porque <PRO_HESHE> así lo ha querido. */
== P_BDusk @979184 /* Los accidentes suceden en medio del combate. */
== P_BAlen @979185 /* ¿Crees que Mystra ha permitido mi resurrección para que un simple humano tome mi vida? Tu mente es muy simple si cree eso, humano. */
== P_BDusk @979186 /* Tú no conoces el verdadero poder del Pandemonium, elfo. Puede que hayas revivido para pasar de este plano a... otro. */
== P_BAlen @979187 /* No le temo al plano de tus pecados, Ardusk Aldant. */
== P_BDusk @979188 /* Oh... pero deberías... deberías... */
EXIT


// CHO'NUJA - Good Dusk
CHAIN
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("P_Chon",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskChon1","GLOBAL",0)~ THEN P_BDusk P_DuskChon1
@979189 /* General, ¿qué le parece nuestro mundo? La presencia de los míos no parece incomodarte en lo absoluto. */
DO ~SetGlobal("P_DuskChon1","GLOBAL",1)~
== P_BChon @979190 /* Ah, pero si es el mata-chamanes. Los humanos no me molestan en absoluto. De hecho, muchos me parecen interesantes, inofensivos. ¿Cómo es que dominan este plano? Es un misterio para mí. */
== P_BDusk @979191 /* Bueno, no sé si "dominio" sería la palabra que yo elegiría. Creo que es más una cuestión de números. Somos muchos. */
== P_BChon @979192 /* También hay muchos de los míos por aquí, aunque no ha simple vista. ¿Por qué no han forjado alianzas con ustedes? Mira lo que logramos con <CHARNAME> en Rachnidra. Los lagartos y los humanos, juntos, serían imparables. */
== P_BDusk @979193 /* Es un poco más complejo que eso. Los humanos somos complicados, e imagino que las grandes diferencias culturales con los lagartos dificultaría dicha alianza. */
== P_BChon @979194 /* Comprendo. En Rachnidra, luchábamos contra la extinción. No veo que haya un peligro cataclista que inste una alianza de tales magnitudes. */
== P_BChon @979195 /* Supongo que las cosas son como son. */
== P_BDusk @979196 /* Así es... que no haya alianzas entre nuestras razas no tiene nada de malo, general. Quizás algún día. Creo que nosotros dos, peleando codo a codo, es un buen comienzo. */
== P_BChon @979197 /* Ah, bien dicho, mata-chamanes. Bien dicho. */
EXIT

// CHO'NUJA - Evil Dusk
CHAIN
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("P_Chon",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskChon2","GLOBAL",0)~ THEN P_BDusk P_DuskChon2
@979198 /* Tu poder es impresionante, Cho'Nuja. El fuego de tu ira es digno del Pandemonium. */
DO ~SetGlobal("P_DuskChon2","GLOBAL",1)~
== P_BChon @979199 /* ¿Pandemonium? No estoy seguro de comprenderte del todo, mata-chamanes. */
== P_BDusk @979200 /* El plano de donde proviene mi poder. Mi venganza potenciada por los vientos ululantes del Phlegethon y el fuego oscuro de mi corazón en mi espada, obra de la antigua Agathion. */
== P_BChon @979201 /* ¿Obtienes tu poder de otro plano? Entonces, no somos tan diferentes. El fuego de mi escudo proviene de los fuegos manantiales de Dreach-naga. */
== P_BDusk @979202 /* Me gusta eso. Nuestros enemigos no tienen oportunidad alguna ante nosotros. */
== P_BChon @979203 /* Y lo hago con orgullo. Dreach-naga jamás morirá mientras mi fuego siga ardiendo. ¿Tú llevas el fuego del Pandemonium con la frente en alto? */
== P_BDusk @979204 /* No creo que requiera de mi orgullo para ello. Solo debo blandir su poder y que mis enemigos sufran por ello. Eso es todo. */
== P_BChon @979205 /* Interesante, mata-chamanes. */
EXIT
