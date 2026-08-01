BEGIN P_AlenJ


////////////////////////////////////////

// Gitana
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Alen",LastTalkedToBy)~ EXTERN TRGYP02 g3
END

CHAIN TRGYP02 g3
@9310 /* Percibo un alma que regresa a este plano. Una mente confundida por los errores de su pasado que aún tiene mucho por resolver sobre sus futuros actos. Sólo puedo recomendar que reflexiones sobre tu pasado, mago. Sin la comprensión del mismo, alcanzar o vislumbrar el horizonte será difícil. */
== P_AlenJ @9311 /* ¿Para esto pagamos con oro, <CHARNAME>? Tal parece que el despilfarro es una de tus mañas, ¿no? */ 
EXIT

// Celvan el Loco
CHAIN IF WEIGHT #-1 
~InParty("P_Alen")
See("P_Alen")
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenReactionCelvan","AR0300",0)~ THEN CELVAN c3
@9312 /* Hubo una vez un elfo hechicero tan audaz,
Sus conjuros eran tan fríos como su corazón.
El Maestro de la Escarcha era su nombre y su clase,
Buscó reparar un amor perdido en el pasado.
En busca de poder, lo dio todo,
Pero al final, consumió su juventud y su vida.

There once was an elven wizard so bold,
His spells were as cold as his heart, we are told.
The Frostmaster was his name and his class,
He sought to mend a love lost in the past.
In pursuit of power, he gave it his all,
But in the end, it consumed his youth and his thrall. */
DO ~SetGlobal("P_AlenReactionCelvan","AR0300",1)~
== P_AlenJ @9313 /* ¿Cómo sabes esas cosas? *suspiro* Estos gnomos y sus misterios... */
END CELVAN 1

// Belmin
CHAIN IF WEIGHT #-1 
~InParty("P_Alen")
See("P_Alen")
!StateCheck("P_Alen",CD_STATE_NOTVALID)
RandomNum(4,2)
Global("P_AlenBelmin","AR0700",0)~ THEN BELMIN belmin2
@93120 /* Tu raza no debería existir. ¡Deberían extinguirse todos! En especial tú, hechicero pagano. Morirás cruelmente algún día. Lo sé. ¡Lo juro! */
DO ~SetGlobal("P_AlenBelmin","AR0700",1)~
== P_AlenJ @93121 /* Hmpf. Ya me ha pasado eso, mequetrefe. (¿Tengo una segunda oportunidad para soportar estas sandeces? Dame fuerzas, Mystra.) <CHARNAME>, vámonos antes de que aviente una ventisca sobre este payaso. */
EXIT


// Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Alen",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_AlenReactionMadam1
@9314 /* Saludos, buenmozo. ¿Os gustaría pasar un buen momento con una de mis muchachas? */
== P_AlenJ @9315 /* Largo, bruja. Mi corazón perteneció sólo a una mujer. Ahora ya no tengo ni corazón, ni mujer. Será mejor que te alejes de mí si no quieres que congele tu cabeza. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Alen",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_AlenReactionMadam2
@9316 /* Saludos, buen señor. ¿Está seguro de que no quiere pasar un buen rato? */
== P_AlenJ @9317 /* *susurro* Si no fuera porque estoy contigo, <CHARNAME>, habría acabado con este lugar en un abrir y cerrar de ojos. */
EXIT
