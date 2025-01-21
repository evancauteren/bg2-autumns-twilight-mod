BEGIN P_Dusk 


CHAIN IF ~Global("P_DuskMet","GLOBAL",0)~ THEN P_Dusk b1 
@9350 /* Mis o�dos a�n retumban con esa explosi�n. Muchas personas han perecido debido a la imprudencia de ese mago... Todo pas� demasiado r�pido, no he podido reaccionar a tiempo... */
DO ~SetGlobal("P_DuskMet","GLOBAL",1)~ 
= @93520005 /* Sin embargo, veo que no he sido el �nico afectado por la par�lisis, mi <LADYLORD>. Mi nombre es Dusk, y soy un mensajero de la paz... o al menos lo era... Veo que t� no est�s en relaci�n amistosa con ese hechicero homicida. �C�mo es tu nombre? Puede que tenga algo que proponerte. */
END 
++ @9356 /* Un placer, Dusk. Mi nombre es <CHARNAME>. Y est�s en lo cierto... ese hechicero ha secuestrado a mi amiga, Imoen.*/ EXTERN P_Dusk b1.1 
++ @9357 /* Ahora no tengo tiempo para hablar. */  EXTERN P_Dusk b1.2

CHAIN P_Dusk b1.1

@9358 /* Si bien fueron esos magos encapuchados los que se llevaron a ambos, entiendo que ese maligno hechicero es quien tiene de reh�n a tu amiga. Nunca vi un poder tan inmenso... */
= @93520006 /* <CHARNAME>, imagino que ahora emplear�s una b�squeda por tu amiga... o una cacer�a contra ese mago... Por favor, perm�teme acompa�arte. */
END
++ @93520008 /* �Y qu� puedes aportar al grupo, Dusk? Esta misi�n es peligrosa, debo saber si puedes valerte por ti mismo. */ EXTERN P_Dusk b1.3 
++ @93520007 /* Quiz�s m�s tarde, Dusk. Ahora debo atender otros asuntos. */  EXTERN P_Dusk b1.2

CHAIN P_Dusk b1.3
@93520009 /* Soy un guerrero, h�bil con el bast�n y la espada bastarda. He tenido un entrenamiento especial en la lucha contra los lanzadores de hechizos. Creo que alguien as� puede serte �til en tu b�squeda, <CHARNAME>. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @93520010 /* <CHARNAME>, Boo y yo opinamos que el guerrero del bast�n nos acompa�e, parece ser que tiene sed de justicia, �justo como nosotros! */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @93520011 /* Pues, no s� si nos ser� �til o no, <CHARNAME>, dejo que eso sea a tu criterio. Lo �nico que me interesa es perseguir a Irenicus y vengar a Khalid. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @93520012 /* Creo que nos vendr�a bien su ayuda, <CHARNAME>. Cualquier aliado, a estas alturas, nos vendr�a bien. */
== P_Dusk @93520014 /* �Y bien? Espero que al menos consideres mi oferta. */
END
++ @93520013 /* De acuerdo, me has convencido. En marcha. */ EXTERN P_Dusk b1.4 
++ @93520007 /* Quiz�s m�s tarde, Dusk. Ahora debo atender otros asuntos. */  EXTERN P_Dusk b1.2

CHAIN P_Dusk b1.2
@93512 /* Como quieras... estar� aqu� si cambias de opini�n. */
EXIT

CHAIN P_Dusk b1.4
@93513 /* Gracias... Ser� un placer viajar contigo. Creo que lo m�s pertinente ser� pedir informaci�n a los ciudadanos. Puede que en los Barrios Bajos encontremos la respuesta. */
END
IF ~~ EXTERN P_Dusk b1.join 

CHAIN P_Dusk b1.join
@93515 /* (suspiro) Viajar me vendr� bien... �En marcha, mi <LADYLORD>, tenemos amigos que rescatar y magos que ajusticiar! */
DO ~JoinParty()~ 
EXIT

APPEND P_Dusk

IF ~Global("P_DuskMet","GLOBAL",1)~ b2 
SAY @93516 /* Have you changed your mind? The proposal is to join you, my <LADYLORD>. I feel that the injustice that has happened on Waukeen's Promenade must not go unpunished. */
++ @93517 /* Actually yes. Welcome aboard, Dusk. */ + b1.join
++ @93518 /* At the moment, no. */ + b1.2
END 

END
