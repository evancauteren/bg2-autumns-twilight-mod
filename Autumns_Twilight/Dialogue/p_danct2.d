BEGIN P_DANCT2


IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_Dusk_Danctian2_TalkBegin","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @9690 /* ~Ardusk, <CHARNAME>, han llegado.~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9691 /* ~Falta poco tiempo... ellos est�n llegando...~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9692 /* ~ Yo estar� aqu� esperando... en las sombras... ~ */
  IF ~~ THEN DO ~ SetGlobal("P_Dusk_Danctian2_TalkBegin","GLOBAL",2) ForceSpell(Myself,POOF_GONE)~ EXIT
END

// Reaparici�n de Danctian

IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",2)~ THEN BEGIN 3 // from:
  SAY @9695 /* ~Saludos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",3)
  SetGlobal("P_Dusk_Danc_Multi","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9696 /* ~La compa��a de <CHARNAME> y la Cripta Olvidada finalmente se han reunido...~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @96912 /* ~<CHARNAME>, pareces un poco confundido.~ ~<CHARNAME>, pareces un poco confundida.~ */
    IF ~~ THEN REPLY @96913 /* ~La verdad que s�, demonio. Esperaba que form�semos una alianza con estos magos. �Se me prometi� un gran poder!~ */GOTO 6
	IF ~~ THEN REPLY @96914 /* ~Tal vez, Danctian. Sin embargo, prefiero traicionar a estos malnacidos magos a tener una alianza con ellos. Aunque preferir�a tener el panorama completo de lo que est� sucediendo.~ */GOTO 7
	IF ~~ THEN REPLY @96915 /* ~�Exijo una explicaci�n! No comprendo lo que est� pasando...~ */GOTO 7
END

IF ~~ THEN BEGIN 6 // from:
  SAY @96916 /* ~Quiz�s sea mejor que Ardusk te lo explique...~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from:
  SAY @96916 /* ~Quiz�s sea mejor que Ardusk te lo explique...~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @96927 /* ~ Lo s�, Anthagar, servidor de Mellifleur. Es por eso que... nosotros... tambi�n vinimos preparados... ~ */
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",3)
  SetGlobal("P_Dusk_Danc_Multi","GLOBAL",1)~ EXIT
END

// 4 REPLICAS HAN APARECIDO

IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_Dusk_Danctian2_TalkBegin2","GLOBAL",1)~ THEN BEGIN 9 // from:
  SAY @96928 /* ~Las r�plicas est�n listas para el combate, Ardusk.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Danctian2_TalkBegin2","GLOBAL",2)~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @96929 /* ~Ser�n testigos del poder de las sombras del Pandemonium...~ */
    IF ~Global ("P_Dusk_Valata_Demon_FORGE","GLOBAL",3)~ THEN REPLY @96930 /* ~Vaya, vaya... a fin de cuentas, tendremos que ajustar cuentas, �verdad?~ */GOTO 11
	IF ~Global ("P_Dusk_Valata_Demon_FORGE","GLOBAL",0)~ THEN REPLY @96930 /* ~Vaya, vaya... a fin de cuentas, tendremos que ajustar cuentas, �verdad?~ */GOTO 12
END

//Destruye coraz�n de Puki (mentira a CHARNAME)
IF ~~ THEN BEGIN 11// from:
  SAY @96931 /* ~As� es, <CHARNAME>. No queda otra opci�n...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DUSK_PUKI_SUMMON_FM","GLOBAL",1)~ GOTO 13
END

//NO Destruye coraz�n de Puki
IF ~~ THEN BEGIN 12 // from:
  SAY @96931 /* ~As� es, <CHARNAME>. No queda otra opci�n...~ */
  IF ~~ THEN GOTO 18
END


//Destruye coraz�n de Puki (mentira a CHARNAME)
IF ~~ THEN BEGIN 13 // from:
  SAY @96937 /* ~Una fuerza abisal est� por aparecer, �debemos tener cuidado!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DUSK_PUKI_SUMMON_FM","GLOBAL",1)~ EXIT
END

// APARECE PUKI
IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_DUSK_PUKI_SUMMON_FM","GLOBAL",2)~ THEN BEGIN 14 // from:
  SAY @96940 /* ~Ah... la criatura del Abismo...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DUSK_PUKI_SUMMON_FM","GLOBAL",3)~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @96941 /* ~Su sangre hizo posible que la Espada Carmes� puediera ser mejorada... y en consecuencia, que Ira pueda ser forjada.~ */
    IF ~~ THEN REPLY @96942 /* ~��Qu� diantes?! Dusk, hab�as dicho que el demonio hab�a sido totalmente destruido...~ */GOTO 16
	IF ~~ THEN REPLY @96943 /* ~�Dusk! Me has mentido... �Qu� significa esta traici�n?~ */GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @96944 /* ~*Los orbes de Danctian brillan de una manera inusual y ves que sus garras y las de sus r�plicas crecen peligrosamente ante tu amenazante tono de voz*~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @96954 /* ~*Danctian vuelve a la normalidad, pero sigue expenctante, su mirada ahora hacia los hechiceros de la Cripta Olvidada*~ */
  IF ~~ THEN GOTO 18
END

// FINAL TALK

IF ~~ THEN BEGIN 18 // from:
  SAY @96955 /* ~*Alrededor del demonio sombr�o, un aura amenazante crece. Sabes que la batalla est� a punto de comenzar...*~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @96978 /* ~ R�plicas... �A la carga! ~ */
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Danc_Multi","GLOBAL",2) ForceSpell(Myself,POOF_GONE)~ EXIT
END


// ULT REAPARICION DANCTIAN
IF ~Global("P_DuskDanctiFinalSpawn","GLOBAL",1)~ THEN BEGIN 20 // from:
  SAY @96979 /* ~Finalmente... han triunfado.~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskDanctiFinalSpawn","GLOBAL",2)~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from:
  SAY @96980 /* ~*Sus orbes escarlata parecen examinar el campo de batalla en busca de amenazas*~ */
	// DUSK DEAD
    IF ~Dead("P_Dusk")~ THEN REPLY @96981 /* ~As� es, Danctian... �Hemos vencido!~ */  GOTO 22
	// DUSK ALIVE
	IF ~!Dead("P_Dusk")~ THEN REPLY @96981 /* ~As� es, Danctian... �Hemos vencido!~ */  GOTO 24
END

	// DUSK DEAD
	// TERMINA: 
	//  Global("P_DuskDUSKDIEDFinalMissionVAL","GLOBAL",1) -> Es necesario porque P_DUSKP resetea la otra variable a 0
	
IF ~~ THEN BEGIN 22 // from:
  SAY @96982 /* ~Percibo que Ardusk ha ca�do... lamentablemente no tengo el poder de traerlo a la vida. Si t� puedes hacerlo, que as� sea.~ */
  IF ~~ THEN DO ~~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @96983 /* ~De lo contrario... s�lo vuelve a hablar conmigo para que te regrese a tu plano. Volveremos a Athkatla. Ese... talisman... Lo tomar�. Utilizar� su poder para darte alguna recompensa por lo que han logrado aqu�.~ */
  IF ~~ THEN DO ~TakePartyItem ("p_simvel") DestroyItem ("p_simvel")
  SetGlobal("P_DuskDanctiFinalSpawn","GLOBAL",2)
  SetGlobal("P_DuskDUSKDIEDFinalMission","GLOBAL",1)
  SetGlobal("P_DuskDUSKDIEDFinalMissionVAL","GLOBAL",1) 
  ~ EXIT
END

	// DUSK ALIVE
	// TERMINA:
	//  Global("P_DuskDUSKDIEDFinalMissionVAL","GLOBAL",0)

IF ~~ THEN BEGIN 24 // from:
  SAY @96984 /* ~Finalmente, Ardusk... tu venganza est� completa...~ */
  IF ~~ THEN DO ~~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @96985 /* ~Por lo pronto, vuelvan a hablar conmigo para que los regrese de nuevo a Athkatla.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskDanctiFinalSpawn","GLOBAL",2)
  ~ EXIT
END

IF ~Global("P_DuskDanctiFinalSpawn","GLOBAL",2)
 ~ THEN BEGIN 26 // from:
  SAY @96986 /* ~He completado el ritual para regresar a Athkatla, <CHARNAME>. Conf�o en que han terminado sus asuntos aqu�. Prep�rense, porque regresaremos ahora mismo.~ */
 IF ~~ THEN DO ~SetGlobal("P_DuskDanctiFinalSpawn","GLOBAL",3)
  ~ EXIT
END

IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_Dusk_Danctian2_TalkBegin","GLOBAL",0)
Global("P_DuskDanctiFinalSpawn","GLOBAL",0)~ THEN BEGIN 27 // from:
  SAY @9690 /* ~Ardusk, <CHARNAME>, han llegado.~ */
  IF ~~ THEN GOTO 1
END


I_C_T P_DANCT2 24 P_Dusk_P_DANCT2_9
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96987 /* ~No lo podr�a haber logrado sin ti, ni <CHARNAME>.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @96988 /* ~(Hmpf. Como si Edwin Odesseiron se hubiese quedado quieto sin hacer nada. Este hombre del palito merece una o dos lecciones a mi parecer)~ */
== P_DuskJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @96989 /* ~Ni Edwin. El mago rojo ha demostrado ser uno de los mejores hechiceros de todo Faer�n. Sus talentos m�gicos no tienen nada que envidiar a los siervos de Mellifleur.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @96990 /* ~Erhm. *carraspeo* Bueno, pues eso es obvio, Dusk. Edwin ten�a que darle un escarmiento a esos magos primates. (Vaya, despu�s de todo, este humano tiene algo de... decencia)~ */
== p_danct2 IF ~~ THEN @96991 /* Conf�o en que las fuerzas del Pandemonium cumplieron con su cometido. Ahora... necesito el talism�n, Ardusk. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96992 /* ~Es verdad. Aqu� tienes, Danctian.~ */
== p_danct2 IF ~~ THEN @96993 /* Excelente. Podr� absorber su poder... Ambos nos beneficiaremos de esto. T� tambi�n, <CHARNAME>. */  DO ~TakePartyItem ("p_simvel") DestroyItem ("p_simvel")~
END


// CORREGIR!!!!!!
// Combate inicia
I_C_T P_DANCT2 18 P_Dusk_P_DANCT2_7
== p_anthag IF ~~ THEN @96994 /* ~Que as� sea...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @96995 /* �Ha llegado la hora, nigromante! Deja que te presente a mis lobos. �Ellos me ayudar�n a mantener el orden natural que ustedes pretenden destruir! */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @96956 /* ~�Estos malvados magos deben ser derrotados! Bub� no quiere ser el pe�n de nadie y mucho menos de estos viles nigromantes... �Es hora de patear traseros m�gicos! �A sus ojos, Bub�, a sus ojos!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @96957 /* ~Por Baervan, ustedes nigromantes no llegar�n lejos. Quayle as� lo querr�a. �Estoy lista!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @96958 /* ~Dusk, si bien no estoy de acuerdo con tus motivos, s� que creo que debemos acabar con esta corrupci�n arcana. �Velshar�n no debe levantarse! En el nombre de Torm, mi espada prestar� servicio a tu causa.~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @96959 /* ~Comprendo tus deseos por vengar a tu amada, Dusk. Yo habr�a hecho lo mismo por Patrick... �Cuenta conmigo!~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @96960 /* ~Al fin podremos destajar a estos malnacidos hechiceros. �Dusk, d�jame a ese petulante Encantador!~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @96961 /* ~�Cu�ntos inocentes han ca�do por culpa de estos nigromantes? Es hora de ajustar cuentas. �La magia no debe ser inherentemente malvada, os lo demostrar�! ~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @96962 /* ~La muerte viviente es una afrenta a la naturaleza, Anthagar... por eso es que en nombre de Silvanus, tu camino llegar� hasta aqu�. �Por los ca�dos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @96963 /* ~�Vuestra abominaci�n acaba aqu�, hechicero! Rugiremos como el vendaval de primavera y nuestros actos har�n eco incluso en las penumbras de este p�ramo antinatural. �A la batalla!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @96964 /* ~�No permitir� que surja otro Lavok en Amn! Dusk, cuenta conmigo. �A combatir!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @96965 /* ~Estos "faern" est�n locos. Ser� un deleite derrotarlos para ti, Dusk. Y ser�n una hermosa ofrenda a Shar.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @96966 /* ~Finalmente, hombre del palito. �Mi momento de brillar ha llegado! Estos magos de pacotilla sabr�n que no deben cruzar a Edwin Odesseiron (Os lo demostrar�...).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @96967 /* ~�Basta de ch�chara! Es hora de partir cabezas con mi hacha. Patas largas, d�jame a ese mago elfo afeminado. Su cabeza ser� un hermoso trofeo.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @96968 /* ~Bueno, supongo que no querr�s que te cuente una historia antes de una batalla, �no?~ */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @96969 /* ~No es un buen momento, gnomo. No me provoques...~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @96970 /* ~Eso me gusta, Duskito. Eso me gusta. Ahora, manos a la obra: hay humanos que deben probar la efectividad de mi ballesta.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @96971 /* ~�Vaya, vaya! Combates as� he tenido en otros planos, mi buen Dusk. Pero no de este calibre. �Esto ser� digno de componer una o dos canciones!~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @96972 /* ~No estoy segura de que el camino de la venganza sea el indicado, Dusk. Pero si he acompa�ado a <CHARNAME> por caminos similares, supongo que tambi�n puedo hacerlo por ti.~ */
== p_sornhi IF ~~ THEN @96973 /* ~Ha llegado la hora, soldado... y hablando de soldados... He logrado encantar a un par de guardias de Amn y un Encapuchado... Son de la �lite, como ver�s en tan s�lo unos segundos...~ */ DO~Enemy()~
== p_valata IF ~~ THEN @96974 /* ~Capit�n, Puki ans�a tu cabeza. Ver�s, adem�s, c�mo tengo a m�s fieles servidores bajo mi tutela... est�n... detr�s... de ti... �Ja, ja, ja!~ */ DO~Enemy()~
== p_dempid IF ~~ THEN @96938 /* ~*El demonio abisal muestra sus temibles fauces, lanz�ndose al ataque del grupo*~ */ DO~Enemy()~
== p_kaland IF ~~ THEN @96975 /* ~Finalmente... para esta ocasi�n acudir� a una transformaci�n especial... ser� algo �nico...~ */  DO ~DestroyItem("LICHEL01") CreateItem ("p_kasums",1,1,0)~
== p_anthag IF ~~ THEN @96976 /* ~�Haces esto por venganza? No me hagas re�r... el �nico responsable de la muerte de tu esposa has sido t�... en el fondo lo sabes.~ */ DO~Enemy()~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96977 /* ~No s�lo es venganza, Anthagar... Tambi�n es por placer... El momento de arrancar tu cabeza ha llegado. �Prep�rate!~ */
END


I_C_T P_DANCT2 16 P_Dusk_P_DANCT2_6
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96945 /* ~�Detente, Danctian!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96946 /* ~�<CHARNAME>! S�... es verdad... te he traicionado... Pero lo he hecho por un objetivo mayor.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96947 /* ~�Quer�as poder? He blandido la espada carmes� por ti... he asesinado y destajado a nuestros enemigos, por ti.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96948 /* ~S�... el demonio vuelve a aparecer (debo admitir que no esperaba esto).~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96949 /* ~Pero... le hemos despachado en el pasado... �Y ahora no ser� diferente!~ */
== p_valata IF ~~ THEN @96950 /* ~Eso es lo que t� crees, capit�n...~ */
== p_valata IF ~~ THEN @96951 /* ~Pero ahora mi Puki no se encuentra s�lo. No es el �nico demonio que controlo, como ver�s pr�ximamente...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96952 /* ~�Silencio, cretino! <CHARNAME>, mi espada a�n es tuya. Lucha a mi lado... ay�dame a vengar a mi esposa... y te ser� siempre fiel, hasta mi �ltimo aliento.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96953 /* ~�Por la oscuridad del Pandemonium, as� lo juro!~ */
END


I_C_T P_DANCT2 11 P_Dusk_P_DANCT2_5
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96932 /* ~Buen trabajo, Danctian. Arranquemos los corazones de estos desgraciados.~ */
== p_valata IF ~~ THEN @96933 /* ~No tan r�pido, capit�n. Hay algo que creo que tu l�der deber�a saber.~ */
== p_valata IF ~~ THEN @96934 /* ~*risa maligna* �Qu� pasa? Pareces sorprendido.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96935 /* ~No lo escuches, <CHARNAME>. Intentar� fragmentarnos antes del combate.~ */
== p_valata IF ~~ THEN @96936 /* ~�Ah, s�?~ */
END


I_C_T P_DANCT2 7 P_Dusk_P_DANCT2_4
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96926 /* No temas, <CHARNAME>. Anthagar planeaba asesinarnos con el objetivo de traer a Velshar�n de regreso a este plano. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96918 /* No somos m�s que peones en su juego. Ya lo deber�as saber... lo f�cil que es sacrificar a los peones... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96919 /* �No permitir� que eso suceda! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96920 /* �Nigromante! �De verdad cre�ste que habr�amos de aliarnos a ti? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96921 /* Todas tus pruebas... todos tus esbirros... todos tus hechizos... Nos trajeron aqu�. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96922 /* Aqu�: a tu destino final. A la destrucci�n de todo aquello que adoras. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96923 /* ~Muchacho est�pido... �de verdad crees que eres rival para nosotros? �Ni siquiera el semidi�s que te acompa�a har� la diferencia!~ ~Muchacho est�pido... �de verdad crees que eres rival para nosotros? �Ni siquiera el semidi�s que te acompa�a har� la diferencia!~ */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96924 /* Ni siquiera este... sirviente de la oscuridad podr� detenernos. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96925 /* �Vinimos preparados! Nosotros-- */
END


I_C_T P_DANCT2 6 P_Dusk_P_DANCT2_3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96917 /* La �nica promesa que tendr�amos por parte de este cretino, <CHARNAME>, es una muerte segura en sus manos. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96918 /* No somos m�s que peones en su juego. Ya lo deber�as saber... lo f�cil que es sacrificar a los peones... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96919 /* �No permitir� que eso suceda! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96920 /* �Nigromante! �De verdad cre�ste que habr�amos de aliarnos a ti? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96921 /* Todas tus pruebas... todos tus esbirros... todos tus hechizos... Nos trajeron aqu�. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96922 /* Aqu�: a tu destino final. A la destrucci�n de todo aquello que adoras. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96923 /* ~Muchacho est�pido... �de verdad crees que eres rival para nosotros? �Ni siquiera el semidi�s que te acompa�a har� la diferencia!~ ~Muchacho est�pido... �de verdad crees que eres rival para nosotros? �Ni siquiera el semidi�s que te acompa�a har� la diferencia!~ */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96924 /* Ni siquiera este... sirviente de la oscuridad podr� detenernos. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96925 /* �Vinimos preparados! Nosotros-- */
END

I_C_T P_DANCT2 4 P_Dusk_P_DANCT2_2
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @9697 /* �Qu� significa esto? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9698 /* �Acaso no quer�as conocer al representante del Pandemonium, nigromante? Te presento a Danctian Shadow. */
== P_DANCT2 IF ~~ THEN @9699 /* Estoy listo cuando t� lo ordenes, Ardusk. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96910 /* ��Te atreves a traicionar a la Cripta Olvidada, muchacho?! */
== p_valata IF ~~ THEN @96911 /* ~Lo sab�a, Antaghar. Confiar en estos est�pidos fue un error.~ */
== p_kaland IF ~~ THEN @96939 /* ~Los humanos no son de confiar, Anthagar... y este cormyreano no es la excepci�n.~ */
END


I_C_T P_DANCT2 1 P_Dusk_P_DANCT2_1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9693 /* �Ellos, Danctian? Te refieres a los magos de la Cripta Olvidada... */
== P_DANCT2 IF ~~ THEN @9694 /* As� es... es mejor que os preparen. */
END
