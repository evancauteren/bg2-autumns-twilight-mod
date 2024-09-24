BEGIN P_ale25J

// Volo

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("P_alen") InMyArea("P_alen")~ + @9020 /* H�blame de Alendir. */ + P_alenVoloBio1

END

CHAIN SARVOLO P_alenVoloBio1
@9021 /* Selu'taar de Evereska que sobrevivi� a los poderosos esbirros de Cryonax. Aunque m�s que sobrevivir se dice que volvi� de los muertos gracias a magia de planar de una poderosa hechicera rub�. Ahora busca la gloria junto a <CHARNAME>, �o quiz�s redenci�n? Se dice que el Maestro de la Escarcha es un tema recurrente en las lejanas tierras de los Altos Elfos. */
== P_ale25J IF ~InParty("P_alen") InMyArea("P_alen") !StateCheck("P_alen",CD_STATE_NOTVALID)~ THEN @9022 /* �Se supone que debo creer las palabras de un humano mequetrefe? Aunque debo admitir... hay algo extra�o en ti. Puede que lo que digas no sea un sinsentido despu�s de todo. */
EXTERN SARVOLO 9






APPEND P_ale25J

IF ~Global("P_AlenTalkToB","GLOBAL",2)~ b1
SAY @9023 /* <CHARNAME>, s� que t� y yo no hemos tenido la mejor de las interacciones. As� y todo, creo que es mi deber mencionar que eres uno de los pocos amigos que he tenido. No es que eso sea un gran consuelo para m�, pero eres mejor que nada, supongo. */
++ @9024 /* Gracias, Alendir. Supongo... */ + b1.2
++ @9025 /* �Qui�n dijo que yo te considero un amigo, elfo? Est�s aqu� porque eres �til a mis fines, nada m�s. */ + b1.2
++ @9026 /* No tengo tiempo para sentimentalismos, Alendir. Estoy muy ocupado, �sabes? */ + b.0
END

IF ~~ b.0
SAY @9027 /* ~Para ser un mortal joven con ascendencia divina eres muy altanero, �lo sab�as? Eso me agrada.~ */
IF ~~ DO ~SetGlobal("P_AlenTalkToB","GLOBAL",3)
~ EXIT
END

IF ~~ b1.2
SAY @9028 /* ~No me interesa si me consideras de la misma forma o no. Rara vez expreso mis sentimientos y no espero nada a cambio. Las emociones suelen ser la condena de los d�biles.~ */
++ @9029 /* �Por qu� lo dices? Las emociones nos son �tiles, Alendir. */ + b1.3
++ @90210 /* En eso estoy de acuerdo contigo, Alendir. Las emociones no son m�s que bagaje innecesario en nuestra mente y coraz�n. */ + b1.4
END

IF ~~ b1.3
SAY @90211 /* ~S�, s� lo que dir�s. Gemystara sol�a decir lo mismo. Quiz�s fue por ello que se enamor� de un humano.~ */
= @90212 /* *suspiro* Quiz�s haya estado equivocado en mis creencias. Mi odio era irracional hacia dicha raza. S�lo odiaba a los humanos porque la mujer que yo am� se enamor� de uno de ellos. */
= @90213 /* He sido testigo de la decadencia de los hombres, <CHARNAME>. Su maldad, arrogancia e inutilidad pululan por doquier. Pero... ahora que he vuelto a vivir he podido pensar un poco m�s sobre recuerdos del pasado. */
= @90214 /* Existe tambi�n la valent�a, la inteligencia y el aprecio por lo bello en los corazones humanos. Pese a su corta existencia, son capaces de dejar una marca profunda en los anales de la historia en Faer�n. */
= @90215 /* Gorion, tu padre, era un humano, �no es as�? */
++ @90216 /* S�, Gorion era un h�bil lanzador de conjuros. Me crio en Candelero-- */ + b1.5
END

IF ~~ b1.4
SAY @90218 /* ~Pero la ausencia total de ellas es tambi�n un signo de debilidad. No puedo creer que estoy por decir algo que un insulso arpista dir�a, pero en el equilibrio est� la respuesta.~ */
= @90219 /* �Sabes por qu� hablo de esto? Estoy haciendo referencia a mi odio pasado hacia la raza humana. */
= @90212 /* *suspiro* Quiz�s haya estado equivocado en mis creencias. Mi odio era irracional hacia dicha raza. S�lo odiaba a los humanos porque la mujer que yo am� se enamor� de uno de ellos. */
= @90213 /* He sido testigo de la decadencia de los hombres, <CHARNAME>. Su maldad, arrogancia e inutilidad pululan por doquier. Pero... ahora que he vuelto a vivir he podido pensar un poco m�s sobre recuerdos del pasado. */
= @90214 /* Existe tambi�n la valent�a, la inteligencia y el aprecio por lo bello en los corazones humanos. Pese a su corta existencia, son capaces de dejar una marca profunda en los anales de la historia en Faer�n. */
= @90215 /* Gorion, tu padre, era un humano, �no es as�? */
++ @90216 /* S�, Gorion era un h�bil lanzador de conjuros. Me crio en Candelero-- */ + b1.5
END

IF ~~ b1.5
SAY @90220 /* ~Lo s�, <CHARNAME>. Los detalles de tu pasado no se me han pasado por alto. Pude averiguar todo sobre Puerta de Baldur y Lanzadrag�n.~ */
= @90221 /* Cuando apareciste por primera vez con Caraneth ya ten�a idea de qui�n eras. Para bien o para mal, tu reputaci�n no pasa desapercibida para aquellos que est�n alertas al poder que se debate en Faer�n. */
= @90222 /* La profec�a de Alaundo habl� de tu llegada y es un tema importante de donde vengo. Sin embargo, no esperes intervenci�n de los Altos Elfos, <CHARNAME>. Evereska, Myth Drannor... los antiguos baluartes de Corellon Larethian tienen asuntos de gravedad de gran magnitud como para centrarse en la Guerra de los Cinco. */
= @90223 /* Por ahora, conmigo deber� bastar. Har� lo posible para que tu destino se cumpla, heredero de Bhaal. Ahora, ser� mejor que continuemos. Ya seguiremos hablando m�s adelante, si lo deseas. */
IF ~~ DO ~SetGlobal("P_AlenTalkToB","GLOBAL",3)~ EXIT
END


// Talk 2

IF ~Global("P_AlenTalkToB","GLOBAL",4)~ b2
SAY @90224 /* <CHARNAME>, �tienes un momento para hablar? */
++ @90225 /* Por supuesto, Alendir. Dime, �qu� es lo que tienes en mente? */ + b2.1
++ @90226 /* No, Alendir. Estamos en medio de algo muy importante. �No puede esperar? */ + b2.0
END

IF ~~ b2.0
SAY @90227 /* ~*suspiro* No te preocupes. No es nada que no pueda lidiar con mi propia mente...~ */
IF ~~ DO ~SetGlobal("P_AlenTalkToB","GLOBAL",5)
~ EXIT
END


IF ~~ b2.1
SAY @90228 /* ~Si alcanzas el poder de Bhaal, alcanzar�s la inmortalidad y un poder inimaginable. Tienes consciencia de ello, �no?~ */
++ @90229 /* A decir verdad no lo he pensado a profundidad, Alendir. Estamos en medio de esta guerra y el resultado es a�n incierto. Pensar tan a futuro no parece algo prudente para m�. */ + b2.2
++ @90230 /* Debo admitir que he pensado en ello, Alendir. Cuando tenga que hacer esa elecci�n lo har� pensando en las posibles consecuencias que tenga. */ + b2.2
++ @90231 /* Ni la inmortalidad ni el poder es algo que sea una prioridad (o deseo) para m�, Alendir. �Por qu� lo preguntas? */ + b2.2
END

IF ~~ b2.2
SAY @90232 /* ~Interesante respuesta. Dudas, certezas, deseos. Las sensaciones fluyen como un oc�ano en la mente y el coraz�n, �no es verdad?~ */
= @90233 /* <CHARNAME>, pregunto porque he estado pensando mucho en Gemystara. Debes comprender que hablar de ella no es algo que yo haya hecho con otra criatura mortal o inmortal. Mis confesiones s�lo han sido volcadas en papel a trav�s de tinta y desvelos. */
= @90234 /* Y esta ser� la primera y �ltima vez que hable de ella con alguien. Creo que t� eres la criatura indicada para ello, <CHARNAME>. A riesgo de parecer un idiota al decir lo que voy a decir, �me har�as el honor de escuchar mis palabras? */
++ @90235 /* Alendir, por supuesto. Ser� un honor escucharte. */ + b2.3
++ @90236 /* No, para nada elfo. Si no has hablado con nadie sobre ello, no creo que yo sea la persona indicada justamente ahora. */ + b2.0
END

IF ~~ b2.3
SAY @90237 /* ~Mi ambici�n fue lo que conden� mi juventud. Perd� vigor y pericia en pos de un poder que apenas pude mantener. Adem�s, perd� tambi�n mi amistad con Gemystara.~ */
= @90238 /* Sin embargo, gan� odio. Un odio hacia los humanos. No ser� redundante, no te preocupes. No volver� a hablar de lo mismo otra vez. */
= @90239 /* La muerte a manos de Icelock, esos momentos antes de ser derrotado por �l... esos momentos fueron uno de los mejores momentos de mi vida. Y fue gracias a ti, <CHARNAME>.  */
= @90240 /* Cualquiera podr�a pensar que rogaste por mi ayuda en ese entonces... pero s� que no fue esa tu intenci�n. No necesitabas mi ayuda para derrotar al G�lem de Hielo, lo s�. Lo s� porque mencionaste a Fall, lo m�s querido para lo que era m�s querido para m�.  */
= @90241 /* Fuiste lo suficientemente perspicaz para decir las palabras justas. Siempre lo has sido. Lo que me lleva a pensar...  */
= @90242 /* Esta nueva oportunidad que tengo. Esta nueva vida que fluye a trav�s de mis venas. �Qu� debo hacer con ella?  */
= @90244 /* Viajar contigo como aventurero, como hechicero y como elfo es mi motivo primordial para seguir adelante. Pero tengo consciencia de que cuando esto termine, debo resolver qu� hacer. */
= @90245 /* Por primera vez, siento esperanza sobre el futuro. S�lo... s�lo quer�a compartir eso contigo. */
= @90246 /* Gracias por escucharme. Ser� mejor que continuemos. Y no menciones a nadie lo que te he contado. De lo contrario, congelar� los dedos de tus pies, �est� claro? Muy bien, adelante... */
IF ~~ DO ~SetGlobal("P_AlenTalkToB","GLOBAL",5) SetGlobal("P_AlenFINDING_HIS_DESTINY","GLOBAL",1)~ EXIT
END



END // End to APPEND