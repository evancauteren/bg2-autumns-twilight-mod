// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonDorn1","GLOBAL",0)~ THEN BDORN P_ChonDorn1
@979221 /* Hombre-lagarto, tu fuerza es encomiable. Ur-Gothoz habría hecho un buen uso de ti. */
DO ~SetGlobal("P_ChonDorn1","GLOBAL",1)~
== P_BChon @979222 /* ¿Ur-Gothoz? No creo comprender a lo que te refieres, soldado. */
== BDORN @979223 /* No importa. Aún sin su demoníaca influencia, tu sed de sangre es de temer. */
== P_BChon @979224 /* Sólo cumplo con los comandos de <CHARNAME>. Confío en que su guía me ayudará a encontrar mi lugar en este extraño mundo. */
== BDORN @979225 /* No necesitas de <PRO_HESHE>. Tus capacidades son más que suficientes por sí mismas. */
== P_BChon @979226 /* Sabias palabras, soldado. Las tendré en cuenta. */
EXIT


// Hexxat
CHAIN
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonHexxat1","GLOBAL",0)~ THEN BHEXXAT P_ChonHexxat1
@979227 /* ¿Por qué me observas tanto, hombre-lagarto? */
DO ~SetGlobal("P_ChonHexxat1","GLOBAL",1)~
== P_BChon @979228 /* Me recuerdas un poco a Nimbus, hembra. Tu frialdad, al menos. */
== BHEXXAT @979229 /* ¿Hm? */
== P_BChon @979230 /* Aunque, claramente, no eres como esa vampira. Su piel habrá carecido del calor de la sangre de los mamíferos, pero ciertamente era más... adepta a la belleza de la vida, sea lo que sea que eso signifique. */
== BHEXXAT @979231 /* Ja. Yo encuentro belleza en la vida, general. Sentir la sangre de mis enemigos en la palma de mis manos, por ejemplo. Ahora, déjame en paz. */
EXIT



// Neera
CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonNeera1","GLOBAL",0)~ THEN P_BChon P_ChonNeera1
@979232 /* Te he observado con detenimiento, pequeña hembra. Ciertamente no eres como nuestros chamanes. */
DO ~SetGlobal("P_ChonNeera1","GLOBAL",1)~
== BNEERA @979233 /* ¿Te refieres a que no tengo las suficientes escamas, Cho? */
== P_BChon @979234 /* No, no. Me refiero a lo impredecible de tus conjuros. Son poderosos, sí. Pero no puedo descifrar qué es lo que pasará cuando terminas tus conjuraciones. */
== BNEERA @979235 /* Oh, bueno. Somos dos entonces, Cho. Pero sabes cómo dice el dicho: "Mejor pedir disculpas que pedir permiso." */
== P_BChon @979236 /* Ehm... Claro, claro. */
EXIT

// Rasaad
CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonRasaad1","GLOBAL",0)~ THEN P_BChon P_ChonRasaad1
@979237 /* Para ser tan pequeño, luchas muy bien a puño desnudo, humano. */
DO ~SetGlobal("P_ChonRasaad1","GLOBAL",1)~
== BRASAAD @979238 /* Viniendo de ti es un gran halago, general. Años de dedicación han fortalecido mis músculos y mi fuerza mental son vitales en el momento de la lucha.  */
== P_BChon @979239 /* El entrenamiento es vital. En Dreach-naga las sesiones de combate eran mortíferas, pero aquellos que sobrevivían estaban listos para cualquier guerra abisal. */
== BRASAAD @979240 /* Mi combate es resultado de mi fe en la justicia. No sé si haya sido algo similar para ti. Puede que sí. */
== P_BChon @979241 /* El Pantano era luchar para sobrevivir. Fuimos una gran nación, pero fuimos quebrantados, al fin, por otros que resultaron ser más ambiciosos y sanguinarios.  */
== BRASAAD @979242 /* Lamento oír eso, general. */
== P_BChon @979243 /* Que tu pesar no genere lástima por mí, pequeño humano. Hemos sobrevivido y eso es lo importante. Será mejor que continuemos con nuestro viaje. */
EXIT

