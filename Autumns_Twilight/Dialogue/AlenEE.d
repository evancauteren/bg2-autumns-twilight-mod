// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenDorn1","GLOBAL",0)~ THEN BDORN P_AlenDorn1
@979244 /* �Por qu� sigas con vida, elfo? */
DO ~SetGlobal("P_AlenDorn1","GLOBAL",1)~
== P_BAlen @979245 /* �Es una pregunta filos�fica, Dorn? Aunque, seg�n tus hostiles facciones, estimo que debe venir un ataque de tu parte. */
== BDORN @979246 /* Entregaste tu alma a un prop�sito mayor. Fracasaste. Y ahora aqu� est�s, de nuevo, como si nada hubiese pasado. En mi opini�n, los d�biles no merecen una segunda oportunidad. */
== P_BAlen @979247 /* Tu opini�n es intrascendente a los ojos de Mystra, semi-orco. Poco importan tus inocuos sentimientos ante la Gran Trama. */
== BDORN @979248 /* Cuida tu lengua, hechicero. Podr�a enviarte de nuevo al otro mundo si as� lo quisiera. */
== P_BAlen @979249 /* Podr�as intentarlo, Dorn. Eres bienvenido a hacerlo. */
EXIT


// Hexxat
CHAIN
IF ~InParty("P_Alen")
See("P_Alen")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenHexxat1","GLOBAL",0)~ THEN BHEXXAT P_AlenHexxat1
@979250 /* Tu sangre es caliente, Alendir. Bien podr�as haber regresado como lo he hecho yo. */
DO ~SetGlobal("P_AlenHexxat1","GLOBAL",1)~
== P_BAlen @979251 /* �Como un muerto-vivo? No, gracias. Siempre he encontrado repulsi�n hacia los de tu clase. */
== BHEXXAT @979252 /* Y sin embargo, han sido los de mi clase aquellos que te han tra�do de nuevo a la vida. */
== P_BAlen @979253 /* Lady Vidomina no es como t�. No podr�as ser como ella ni con todos los milenios acumulados en la palma de tu mano. */
== BHEXXAT @979254 /* No busco ser una liche, Alendir. Estoy muy bien conmigo misma, as� como estoy. Ahora y siempre. */
== P_BAlen @979255 /* Hmpf. Como digas. Ahora, al�jate de m�. */
EXIT



// Neera
CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenNeera1","GLOBAL",0)~ THEN P_BAlen P_AlenNeera1
@979256 /* �Por lo t�mpanos de Frostfell, Neera! �C�mo es que has sobrevivido tanto tiempo? Tu magia salvaje es un desastre. */
DO ~SetGlobal("P_AlenNeera1","GLOBAL",1)~
== BNEERA @979257 /* *se rasca la cabeza* Lo lamento, Alendir. Prometo no ser tan destructiva en nuestro pr�ximo combate. */
== P_BAlen @979258 /* No hagas promesas que no puedes cumplir, peque�a. */
== BNEERA @979259 /* Me atrapaste. Vamos, anciano, s� muy bien que puedes manejar cualquier contingente. */
== P_BAlen @979260 /* Contigo, uno nunca se sabe. */
EXIT

// Rasaad
CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenRasaad1","GLOBAL",0)~ THEN P_BAlen P_AlenRasaad1
@979261 /* Para ser un humano, tu deidad es acorde a los estratos b�sicos de la vida, Rasaad. Eres uno entre muchos. */
DO ~SetGlobal("P_AlenRasaad1","GLOBAL",1)~
== BRASAAD @979262 /* Gracias, Alendir. Sel�ne es una aliada natural de Mystra, as� que es natural que tengas el respeto que le tienes a la Doncella de la Luna. */
== P_BAlen @979263 /* "Bajo la luz plateada de Sel�ne, caminamos sin miedo, pues su claridad gu�a a los perdidos y protege a los sue�os de los mortales." */
== BRASAAD @979264 /* "Los lobos a�llan en su nombre, los magos estudian sus secretos, y los viajeros rezan por su protecci�n. �Acaso t� no ves su influencia?" */
== P_BAlen @979265 /* Ja. Nunca cre� que ser�a interesante hablar con un humano. */
== BRASAAD @979266 /* Acepto el cumplido, Alendir. */
EXIT

