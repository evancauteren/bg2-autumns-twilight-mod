BEGIN P_AlenJ

// Quest e interacciones

////////////////////////////////////////

// Gitana
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Alen",LastTalkedToBy)~ EXTERN TRGYP02 g3
END

CHAIN TRGYP02 g3
@9310 /* Percibo un alma que regresa a este plano. Una mente confundida por los errores de su pasado que a�n tiene mucho por resolver sobre sus futuros actos. S�lo puedo recomendar que reflexiones sobre tu pasado, mago. Sin la comprensi�n del mismo, alcanzar o vislumbrar el horizonte ser� dif�cil. */
== P_AlenJ @9311 /* �Para esto pagamos con oro, <CHARNAME>? Tal parece que el despilfarro es una de tus ma�as, �no? */ 
EXIT

// Celvan el Loco
CHAIN IF WEIGHT #-1 
~InParty("P_Alen")
See("P_Alen")
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenReactionCelvan","AR0300",0)~ THEN CELVAN c3
@9312 /* Hubo una vez un elfo hechicero tan audaz,
Sus conjuros eran tan fr�os como su coraz�n.
El Maestro de la Escarcha era su nombre y su clase,
Busc� reparar un amor perdido en el pasado.
En busca de poder, lo dio todo,
Pero al final, consumi� su juventud y su vida.

There once was an elven wizard so bold,
His spells were as cold as his heart, we are told.
The Frostmaster was his name and his class,
He sought to mend a love lost in the past.
In pursuit of power, he gave it his all,
But in the end, it consumed his youth and his thrall. */
DO ~SetGlobal("P_AlenReactionCelvan","AR0300",1)~
== P_AlenJ @9313 /* �C�mo sabes esas cosas? *suspiro* Estos gnomos y sus misterios... */
END CELVAN 1

// Belmin
CHAIN IF WEIGHT #-1 
~InParty("P_Alen")
See("P_Alen")
!StateCheck("P_Alen",CD_STATE_NOTVALID)
RandomNum(4,2)
Global("P_AlenBelmin","AR0700",0)~ THEN BELMIN belmin2
@93120 /* Tu raza no deber�a existir. �Deber�an extinguirse todos! En especial t�, hechicero pagano. Morir�s cruelmente alg�n d�a. Lo s�. �Lo juro! */
DO ~SetGlobal("P_AlenBelmin","AR0700",1)~
== P_AlenJ @93121 /* Hmpf. Ya me ha pasado eso, mequetrefe. (�Tengo una segunda oportunidad para soportar estas sandeces? Dame fuerzas, Mystra.) <CHARNAME>, v�monos antes de que aviente una ventisca sobre este payaso. */
EXIT


// Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Alen",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_AlenReactionMadam1
@9314 /* Saludos, buenmozo. �Os gustar�a pasar un buen momento con una de mis muchachas? */
== P_AlenJ @9315 /* Largo, bruja. Mi coraz�n perteneci� s�lo a una mujer. Ahora ya no tengo ni coraz�n, ni mujer. Ser� mejor que te alejes de m� si no quieres que congele tu cabeza. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Alen",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_AlenReactionMadam2
@9316 /* Saludos, buen se�or. �Est� seguro de que no quiere pasar un buen rato? */
== P_AlenJ @9317 /* *susurro* Si no fuera porque estoy contigo, <CHARNAME>, habr�a acabado con este lugar en un abrir y cerrar de ojos. */
EXIT

// Di�logo por el �rbol de la Vida
EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID) Global("P_AlenTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 pl4
END

CHAIN PLAYER1 pl4
@9318 /* Alendir, el Maestro de la Escarcha. Hace poco tiempo ha vuelto a la vida y recuperado su juventud. Que est� a tu lado significa que est� dispuesto a arriesgarlo todo por tu empresa. */
DO ~SetGlobal("P_AlenTreeOfLife","GLOBAL",1)~
END
++ @9319 /* Alendir, acabas de recuperar tu vida. Puedes irte de aqu� si lo deseas. */ EXTERN P_AlenJ pl4.1
++ @93110 /* Entender�a a la perfecci�n que decidas no arriesgar tu vida en esto, Alendir. Ser� muy peligroso. */ EXTERN P_AlenJ pl4.1
++ @93111 /* Necesito tu poder para vencer, Alendir. �Est�s listo? */ EXTERN P_AlenJ pl4.1

CHAIN P_AlenJ pl4.1
@93112 /* <CHARNAME>, hemos llegado hasta aqu�. �Y tu primera reacci�n es ponerte sentimental? Avancemos. Necesito lanzar mis conjuros contra ese malnacido Exiliado. */
END
COPY_TRANS PLAYER1 33 


// El Ojo Ciego: CHARNAME regresa con el artefacto
I_C_T RIFTM01 28 P_AlenRIFTM0128
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93113 /* ~Tantos sentimientos cobardes me abruman, <CHARNAME>. Quiz�s uno de mis Conos de Fr�o le hagan cambiar de parecer...~ */
END

// Firkraag: Se posterga el combate
I_C_T FIRKRA02 21 P_AlenFIRKRA21
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93114 /* Una decisi�n inteligente, <CHARNAME>. La verdad no estaba de humor de tener que esquivar bolas de fuego de un drag�n rojo anciano. Quiz�s la pr�xima. */
END

// Firfraag: combate
// I_C_T FIRKRA02 25 P_AlenFIRKRA25
//== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ //THEN @93115 /* <CHARNAME>, procura que ninguno de sus ataques de fuego me toque, �s�? No estoy //de humor para ser calcinado. */ DO ~ActionOverride("firmag01",Enemy()) //ActionOverride("FIRKRA02",Enemy())~
//END

// Bodhi: Enfrentamiento final
I_C_T C6BODHI 0 P_AlenC6BODHI15_GOOD
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93116 /* Estas inmundicias son inmunes a los conjuros de fr�o. Sin embargo, tengo otros hechizos bajo la manga. */
END

// �rbol de la vida. Irenicus es derrotado.
I_C_T PLAYER1 16 P_AlenIrenicusIsDead1
== P_AlenJ IF ~InParty("P_Alen") Range("P_Alen",15) !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93117 /* El Exiliado no ha sido derrotado del todo, <CHARNAME>. Hazme caso, no te conf�es a�n. */
END

// Infierno
I_C_T PLAYER1 25 P_AlenEnteringHell1
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93118 /* Un plano divino, similar al Abismo. Posiblemente un dominio de Bhaal. Esto no me gusta nada, <CHARNAME>. */
END


// Combatiendo contra Irenicus en el Infierno (Son 4 ICT)
I_C_T HELLJON 7 P_AlenThirdBattleWithIrenicus1
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93119 /* �Exiliado! Estos son tus momento finales. �El fr�o de mi poder vengar� a aquellos que mataste en Suldanessellar! */
END

I_C_T HELLJON 8 P_AlenThirdBattleWithIrenicus2
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93119 /* �Exiliado! Estos son tus momento finales. �El fr�o de mi poder vengar� a aquellos que mataste en Suldanessellar! */
END

I_C_T HELLJON 9 P_AlenThirdBattleWithIrenicus3
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93119 /* �Exiliado! Estos son tus momento finales. �El fr�o de mi poder vengar� a aquellos que mataste en Suldanessellar! */
END

I_C_T HELLJON 10 P_AlenThirdBattleWithIrenicus4
== P_AlenJ IF ~InParty("P_Alen") InMyArea("P_Alen") !StateCheck("P_Alen",CD_STATE_NOTVALID)~ THEN @93119 /* �Exiliado! Estos son tus momento finales. �El fr�o de mi poder vengar� a aquellos que mataste en Suldanessellar! */
END

