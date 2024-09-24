BEGIN P_Fal25J

// Volo

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("P_Fall") InMyArea("P_Fall")~ + @9180 /* H�blame de Fall. */ + P_FallVoloBio1

END

CHAIN SARVOLO P_FallVoloBio1
@9181 /* La hija de una poderosa elfa hechicera y un valiente explorador humano viaja por tierras que nunca so�� conocer. Como Dama de las Bestias, junto a sus infalibles lobos, se ha hecho un nombre como libertadora de aquellos que no tienen voz. */
== P_Fal25J IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9182 /* Vaya, eso ha sido muy bonito. Gracias, buen se�or. */
EXTERN SARVOLO 9


I_C_T FINSOL01 27 P_FallSolarFriend1
== P_Fal25J IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91831 /* No es una decisi�n f�cil, <CHARNAME>. Pero tengo plena confianza en ti. Has sido capaz de superar dificultades que pocos habr�an sido capaces de siquiera enfrentar. */
END

I_C_T AMMERC02 1 P_FallSaemonMet11
== P_Fal25J IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91832 /* Por el amor de Silvanus, imagino que ya a estas alturas estar�s m�s que despierto a la hora de lidiar con este mentiroso, �no? */
END 



APPEND P_Fal25J


IF ~Global("P_FallTalkToB","GLOBAL",2)~ b1
SAY @9183 /* Esta guerra de los Engendros de Bhaal ser� uno de mis �ltimos asuntos en aventuras divinas, <CHARNAME>. Dar� mi vida por ti si es necesario. Pero una vez que esto finalice, creo que volver� a Imnescar definitivamente. */
++ @9184 /* Entiendo. Puede ser un poco sobrecogedor toda esta situaci�n. No te culpo por querer volver a tus ra�ces. */ + b1.3
++ @9185 /* Nunca cre� que fueses tan cobarde, Fall. Hemos luchado contra peligros constantemente, �y ahora comienzas a flaquear? */ + b1.2
++ @9186 /* No tengo tiempo para abstracciones de ning�n tipo, Fall. */ + b.0
END


IF ~~ b.0
SAY @9187 /* ~*susurro* Siempre tan ocupado...~ ~*susurro* Siempre tan ocupada...~ */
IF ~~ DO ~SetGlobal("P_FallTalkToB","GLOBAL",3)
~ EXIT
END




IF ~~ b1.2
SAY @9188 /* ~�No soy cobarde! Estoy perfectamente consciente de los enemigos que hemos derrotado y llegar a donde hemos llegado, pocos lo habr�an logrado.~ */
= @9189 /* Esa no es la cuesti�n. Haber llevado a tantos amigos al Plano Astral, como Tabitha o Kakuto, haber derrotado a Icelock o viajar a Rachnidra... Mi aventura inicial est� llegando a su fin. */
= @91810 /* Creo haber logrado todo lo que me he propuesto junto a ti. A�n si los resultados no han sido lo que esperaba. */
++ @91811 /* �Te refieres a tu madre? Lamento que no la hayamos podido salvar, Fall. */ + b1.4
++ @91812 /* ~En verdad no tengo tiempo para esto, Fall. Lo dejemos para otra ocasi�n.~ */ + b.0
END

IF ~~ b1.3
SAY @91813 /* Esa no es la cuesti�n. Haber llevado a tantos amigos al Plano Astral, como Tabitha o Kakuto, haber derrotado a Icelock o viajar a Rachnidra... Mi aventura inicial est� llegando a su fin. */
= @91814 /* Creo haber logrado todo lo que me he propuesto junto a ti. A�n si los resultados no han sido lo que esperaba. */
++ @91815 /* �Te refieres a tu madre? Lamento que no la hayamos podido salvar, Fall. */ + b1.4
++ @91816 /* ~En verdad no tengo tiempo para esto, Fall. Lo dejemos para otra ocasi�n.~ */ + b.0
END

IF ~~ b1.4
SAY @91817 /* He estado pensando mucho en ello, <CHARNAME>. Derrotar a Morgrath no habr�a sido posible sin el sacrificio de madre. */
= @91818 /* �Habr�a habido alguna posibilidad de que ella se salvase? Muchas noches esa pregunta me quit� el sue�o. */
= @91819 /* A�n as�, no puedo evitar preguntarme c�mo habr�a sido mi futuro si ella a�n estuviese conmigo. */
++ @91820 /* No soy el mejor ejemplo sobre una vida familiar perfecta, Fall. Pero creo que uno halla consuelo en la familia que elige. Los amigos. Los aliados. O los parientes que a�n est�n con nosotros. */ + b1.5
++ @91821 /* No debes torturarte con preguntas con las cuales no tendr�s certeza en sus respuestas. A veces no tenemos m�s opci�n que seguir adelante. La vida no es f�cil. */ + b1.5
++ @91822 /* No tiene sentido que te hagas preguntas tan puntuales, Fall. As� como no tiene sentido hablar de este tema ahora. Tenemos asuntos m�s urgentes ahora. */ + b.0
END

IF ~~ b1.5
SAY @91823 /* Tienes raz�n, <CHARNAME>. Hemos logrado mucho juntos, a�n si no hemos obtenido reconocimiento por ello. Llegar a este punto con estos cuestionamientos en mi mente... Quiz�s no tenga sentido. */
= @91824 /* Es decir, est� bien preguntarse cosas todo el tiempo. Creo que es un buen paso hacia la madurez. Pero a veces no es necesario presionarse a uno mismo hasta el punto del desvelo. */
= @91825 /* Hablar contigo ha tranquilizado mi coraz�n. Creo que viajar� a Evereska cuando todo esto termine. */
++ @91826 /* �Ir�s al hogar ancestral de tu madre? Cre� que ir�as a Imnescar. */ + b1.6
++ @91827 /* �Y qu� pas� con eso de ir a Imnescar definitivamente? */ + b1.6
END

IF ~~ b1.6
SAY @91828 /* ~Me gustar�a conocer el Reino Oculto. Quiz�s Myth Drannor, aunque he o�do que hay bastantes problemas all� �ltimamente. Seguro que ser� un viaje muy interesante.~ */
= @91829 /* Puede que busque aprender algo de lo que sab�a madre. Perfeccionar mi v�nculo con el Plano Astral, �sabes? */
= @91830 /* ~Gracias, <CHARNAME>. Que me hayas escuchado me da una paz gigantesca.~ */
IF ~~ DO ~SetGlobal("P_FallTalkToB","GLOBAL",3)
SetGlobal("P_Fall_JOURNEY_TO_EVERESKA","GLOBAL",1)~ EXIT
END





END // End to APPEND