// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenDorn1","GLOBAL",0)~ THEN BDORN P_AlenDorn1
@979244 /* ¿Por qué sigas con vida, elfo? */
DO ~SetGlobal("P_AlenDorn1","GLOBAL",1)~
== P_BAlen @979245 /* ¿Es una pregunta filosófica, Dorn? Aunque, según tus hostiles facciones, estimo que debe venir un ataque de tu parte. */
== BDORN @979246 /* Entregaste tu alma a un propósito mayor. Fracasaste. Y ahora aquí estás, de nuevo, como si nada hubiese pasado. En mi opinión, los débiles no merecen una segunda oportunidad. */
== P_BAlen @979247 /* Tu opinión es intrascendente a los ojos de Mystra, semi-orco. Poco importan tus inocuos sentimientos ante la Gran Trama. */
== BDORN @979248 /* Cuida tu lengua, hechicero. Podría enviarte de nuevo al otro mundo si así lo quisiera. */
== P_BAlen @979249 /* Podrías intentarlo, Dorn. Eres bienvenido a hacerlo. */
EXIT


// Hexxat
CHAIN
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenHexxat1","GLOBAL",0)~ THEN BHEXXAT P_AlenHexxat1
@979250 /* Tu sangre es caliente, Alendir. Bien podrías haber regresado como lo he hecho yo. */
DO ~SetGlobal("P_AlenHexxat1","GLOBAL",1)~
== P_BAlen @979251 /* ¿Como un muerto-vivo? No, gracias. Siempre he encontrado repulsión hacia los de tu clase. */
== BHEXXAT @979252 /* Y sin embargo, han sido los de mi clase aquellos que te han traído de nuevo a la vida. */
== P_BAlen @979253 /* Lady Vidomina no es como tú. No podrías ser como ella ni con todos los milenios acumulados en la palma de tu mano. */
== BHEXXAT @979254 /* No busco ser una liche, Alendir. Estoy muy bien conmigo misma, así como estoy. Ahora y siempre. */
== P_BAlen @979255 /* Hmpf. Como digas. Ahora, aléjate de mí. */
EXIT



// Neera
CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenNeera1","GLOBAL",0)~ THEN P_BAlen P_AlenNeera1
@979256 /* ¡Por lo témpanos de Frostfell, Neera! ¿Cómo es que has sobrevivido tanto tiempo? Tu magia salvaje es un desastre. */
DO ~SetGlobal("P_AlenNeera1","GLOBAL",1)~
== BNEERA @979257 /* *se rasca la cabeza* Lo lamento, Alendir. Prometo no ser tan destructiva en nuestro próximo combate. */
== P_BAlen @979258 /* No hagas promesas que no puedes cumplir, pequeña. */
== BNEERA @979259 /* Me atrapaste. Vamos, anciano, sé muy bien que puedes manejar cualquier contingente. */
== P_BAlen @979260 /* Contigo, uno nunca se sabe. */
EXIT

// Rasaad
CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenRasaad1","GLOBAL",0)~ THEN P_BAlen P_AlenRasaad1
@979261 /* Para ser un humano, tu deidad es acorde a los estratos básicos de la vida, Rasaad. Eres uno entre muchos. */
DO ~SetGlobal("P_AlenRasaad1","GLOBAL",1)~
== BRASAAD @979262 /* Gracias, Alendir. Selûne es una aliada natural de Mystra, así que es natural que tengas el respeto que le tienes a la Doncella de la Luna. */
== P_BAlen @979263 /* "Bajo la luz plateada de Selûne, caminamos sin miedo, pues su claridad guía a los perdidos y protege a los sueños de los mortales." */
== BRASAAD @979264 /* "Los lobos aúllan en su nombre, los magos estudian sus secretos, y los viajeros rezan por su protección. ¿Acaso tú no ves su influencia?" */
== P_BAlen @979265 /* Ja. Nunca creí que sería interesante hablar con un humano. */
== BRASAAD @979266 /* Acepto el cumplido, Alendir. */
EXIT

