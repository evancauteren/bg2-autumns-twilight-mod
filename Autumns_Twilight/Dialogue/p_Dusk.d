BEGIN P_Dusk 


CHAIN IF ~Global("P_DuskMet","GLOBAL",0)~ THEN P_Dusk b1 
@9350 /* Mis oídos aún retumban con esa explosión. Muchas personas han perecido debido a la imprudencia de ese mago... Todo pasó demasiado rápido, no he podido reaccionar a tiempo... */
DO ~SetGlobal("P_DuskMet","GLOBAL",1)~ 
= @93520005 /* Sin embargo, veo que no he sido el único afectado por la parálisis, mi <LADYLORD>. Mi nombre es Dusk, y soy un mensajero de la paz... o al menos lo era... Veo que tú no estás en relación amistosa con ese hechicero homicida. ¿Cómo es tu nombre? Puede que tenga algo que proponerte. */
END 
++ @9356 /* Un placer, Dusk. Mi nombre es <CHARNAME>. Y estás en lo cierto... ese hechicero ha secuestrado a mi amiga, Imoen.*/ EXTERN P_Dusk b1.1 
++ @9357 /* Ahora no tengo tiempo para hablar. */  EXTERN P_Dusk b1.2

CHAIN P_Dusk b1.1

@9358 /* Si bien fueron esos magos encapuchados los que se llevaron a ambos, entiendo que ese maligno hechicero es quien tiene de rehén a tu amiga. Nunca vi un poder tan inmenso... */
= @93520006 /* <CHARNAME>, imagino que ahora emplearás una búsqueda por tu amiga... o una cacería contra ese mago... Por favor, permíteme acompañarte. */
END
++ @93520008 /* ¿Y qué puedes aportar al grupo, Dusk? Esta misión es peligrosa, debo saber si puedes valerte por ti mismo. */ EXTERN P_Dusk b1.3 
++ @93520007 /* Quizás más tarde, Dusk. Ahora debo atender otros asuntos. */  EXTERN P_Dusk b1.2

CHAIN P_Dusk b1.3
@93520009 /* Soy un guerrero, hábil con el bastón y la espada bastarda. He tenido un entrenamiento especial en la lucha contra los lanzadores de hechizos. Creo que alguien así puede serte útil en tu búsqueda, <CHARNAME>. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @93520010 /* <CHARNAME>, Boo y yo opinamos que el guerrero del bastón nos acompañe, parece ser que tiene sed de justicia, ¡justo como nosotros! */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @93520011 /* Pues, no sé si nos será útil o no, <CHARNAME>, dejo que eso sea a tu criterio. Lo único que me interesa es perseguir a Irenicus y vengar a Khalid. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @93520012 /* Creo que nos vendría bien su ayuda, <CHARNAME>. Cualquier aliado, a estas alturas, nos vendría bien. */
== P_Dusk @93520014 /* ¿Y bien? Espero que al menos consideres mi oferta. */
END
++ @93520013 /* De acuerdo, me has convencido. En marcha. */ EXTERN P_Dusk b1.4 
++ @93520007 /* Quizás más tarde, Dusk. Ahora debo atender otros asuntos. */  EXTERN P_Dusk b1.2

CHAIN P_Dusk b1.2
@93512 /* Como quieras... estaré aquí si cambias de opinión. */
EXIT

CHAIN P_Dusk b1.4
@93513 /* Gracias... Será un placer viajar contigo. Creo que lo más pertinente será pedir información a los ciudadanos. Puede que en los Barrios Bajos encontremos la respuesta. */
END
IF ~~ EXTERN P_Dusk b1.join 

CHAIN P_Dusk b1.join
@93515 /* (suspiro) Viajar me vendrá bien... ¡En marcha, mi <LADYLORD>, tenemos amigos que rescatar y magos que ajusticiar! */
DO ~JoinParty()~ 
EXIT

APPEND P_Dusk

IF ~Global("P_DuskMet","GLOBAL",1)~ b2 
SAY @93516 /* Have you changed your mind? The proposal is to join you, my <LADYLORD>. I feel that the injustice that has happened on Waukeen's Promenade must not go unpunished. */
++ @93517 /* Actually yes. Welcome aboard, Dusk. */ + b1.join
++ @93518 /* At the moment, no. */ + b1.2
END 

END
