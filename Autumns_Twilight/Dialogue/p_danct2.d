BEGIN P_DANCT2


IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_Dusk_Danctian2_TalkBegin","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @9690 /* ~Ardusk, <CHARNAME>, han llegado.~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9691 /* ~Falta poco tiempo... ellos están llegando...~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9692 /* ~ Yo estaré aquí esperando... en las sombras... ~ */
  IF ~~ THEN DO ~ SetGlobal("P_Dusk_Danctian2_TalkBegin","GLOBAL",2) ForceSpell(Myself,POOF_GONE)~ EXIT
END

// Reaparición de Danctian

IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",2)~ THEN BEGIN 3 // from:
  SAY @9695 /* ~Saludos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",3)
  SetGlobal("P_Dusk_Danc_Multi","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9696 /* ~La compañía de <CHARNAME> y la Cripta Olvidada finalmente se han reunido...~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @96912 /* ~<CHARNAME>, pareces un poco confundido.~ ~<CHARNAME>, pareces un poco confundida.~ */
    IF ~~ THEN REPLY @96913 /* ~La verdad que sí, demonio. Esperaba que formásemos una alianza con estos magos. ¡Se me prometió un gran poder!~ */GOTO 6
	IF ~~ THEN REPLY @96914 /* ~Tal vez, Danctian. Sin embargo, prefiero traicionar a estos malnacidos magos a tener una alianza con ellos. Aunque preferiría tener el panorama completo de lo que está sucediendo.~ */GOTO 7
	IF ~~ THEN REPLY @96915 /* ~¡Exijo una explicación! No comprendo lo que está pasando...~ */GOTO 7
END

IF ~~ THEN BEGIN 6 // from:
  SAY @96916 /* ~Quizás sea mejor que Ardusk te lo explique...~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from:
  SAY @96916 /* ~Quizás sea mejor que Ardusk te lo explique...~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @96927 /* ~ Lo sé, Anthagar, servidor de Mellifleur. Es por eso que... nosotros... también vinimos preparados... ~ */
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",3)
  SetGlobal("P_Dusk_Danc_Multi","GLOBAL",1)~ EXIT
END

// 4 REPLICAS HAN APARECIDO

IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_Dusk_Danctian2_TalkBegin2","GLOBAL",1)~ THEN BEGIN 9 // from:
  SAY @96928 /* ~Las réplicas están listas para el combate, Ardusk.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Danctian2_TalkBegin2","GLOBAL",2)~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @96929 /* ~Serán testigos del poder de las sombras del Pandemonium...~ */
    IF ~Global ("P_Dusk_Valata_Demon_FORGE","GLOBAL",3)~ THEN REPLY @96930 /* ~Vaya, vaya... a fin de cuentas, tendremos que ajustar cuentas, ¿verdad?~ */GOTO 11
	IF ~Global ("P_Dusk_Valata_Demon_FORGE","GLOBAL",0)~ THEN REPLY @96930 /* ~Vaya, vaya... a fin de cuentas, tendremos que ajustar cuentas, ¿verdad?~ */GOTO 12
END

//Destruye corazón de Puki (mentira a CHARNAME)
IF ~~ THEN BEGIN 11// from:
  SAY @96931 /* ~Así es, <CHARNAME>. No queda otra opción...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DUSK_PUKI_SUMMON_FM","GLOBAL",1)~ GOTO 13
END

//NO Destruye corazón de Puki
IF ~~ THEN BEGIN 12 // from:
  SAY @96931 /* ~Así es, <CHARNAME>. No queda otra opción...~ */
  IF ~~ THEN GOTO 18
END


//Destruye corazón de Puki (mentira a CHARNAME)
IF ~~ THEN BEGIN 13 // from:
  SAY @96937 /* ~Una fuerza abisal está por aparecer, ¡debemos tener cuidado!~ */
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
  SAY @96941 /* ~Su sangre hizo posible que la Espada Carmesí puediera ser mejorada... y en consecuencia, que Ira pueda ser forjada.~ */
    IF ~~ THEN REPLY @96942 /* ~¡¿Qué diantes?! Dusk, habías dicho que el demonio había sido totalmente destruido...~ */GOTO 16
	IF ~~ THEN REPLY @96943 /* ~¡Dusk! Me has mentido... ¿Qué significa esta traición?~ */GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @96944 /* ~*Los orbes de Danctian brillan de una manera inusual y ves que sus garras y las de sus réplicas crecen peligrosamente ante tu amenazante tono de voz*~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @96954 /* ~*Danctian vuelve a la normalidad, pero sigue expenctante, su mirada ahora hacia los hechiceros de la Cripta Olvidada*~ */
  IF ~~ THEN GOTO 18
END

// FINAL TALK

IF ~~ THEN BEGIN 18 // from:
  SAY @96955 /* ~*Alrededor del demonio sombrío, un aura amenazante crece. Sabes que la batalla está a punto de comenzar...*~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @96978 /* ~ Réplicas... ¡A la carga! ~ */
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
    IF ~Dead("P_Dusk")~ THEN REPLY @96981 /* ~Así es, Danctian... ¡Hemos vencido!~ */  GOTO 22
	// DUSK ALIVE
	IF ~!Dead("P_Dusk")~ THEN REPLY @96981 /* ~Así es, Danctian... ¡Hemos vencido!~ */  GOTO 24
END

	// DUSK DEAD
	// TERMINA: 
	//  Global("P_DuskDUSKDIEDFinalMissionVAL","GLOBAL",1) -> Es necesario porque P_DUSKP resetea la otra variable a 0
	
IF ~~ THEN BEGIN 22 // from:
  SAY @96982 /* ~Percibo que Ardusk ha caído... lamentablemente no tengo el poder de traerlo a la vida. Si tú puedes hacerlo, que así sea.~ */
  IF ~~ THEN DO ~~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @96983 /* ~De lo contrario... sólo vuelve a hablar conmigo para que te regrese a tu plano. Volveremos a Athkatla. Ese... talisman... Lo tomaré. Utilizaré su poder para darte alguna recompensa por lo que han logrado aquí.~ */
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
  SAY @96984 /* ~Finalmente, Ardusk... tu venganza está completa...~ */
  IF ~~ THEN DO ~~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @96985 /* ~Por lo pronto, vuelvan a hablar conmigo para que los regrese de nuevo a Athkatla.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskDanctiFinalSpawn","GLOBAL",2)
  ~ EXIT
END

IF ~Global("P_DuskDanctiFinalSpawn","GLOBAL",2)
 ~ THEN BEGIN 26 // from:
  SAY @96986 /* ~He completado el ritual para regresar a Athkatla, <CHARNAME>. Confío en que han terminado sus asuntos aquí. Prepárense, porque regresaremos ahora mismo.~ */
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
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96987 /* ~No lo podría haber logrado sin ti, ni <CHARNAME>.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @96988 /* ~(Hmpf. Como si Edwin Odesseiron se hubiese quedado quieto sin hacer nada. Este hombre del palito merece una o dos lecciones a mi parecer)~ */
== P_DuskJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @96989 /* ~Ni Edwin. El mago rojo ha demostrado ser uno de los mejores hechiceros de todo Faerûn. Sus talentos mágicos no tienen nada que envidiar a los siervos de Mellifleur.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @96990 /* ~Erhm. *carraspeo* Bueno, pues eso es obvio, Dusk. Edwin tenía que darle un escarmiento a esos magos primates. (Vaya, después de todo, este humano tiene algo de... decencia)~ */
== p_danct2 IF ~~ THEN @96991 /* Confío en que las fuerzas del Pandemonium cumplieron con su cometido. Ahora... necesito el talismán, Ardusk. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96992 /* ~Es verdad. Aquí tienes, Danctian.~ */
== p_danct2 IF ~~ THEN @96993 /* Excelente. Podré absorber su poder... Ambos nos beneficiaremos de esto. Tú también, <CHARNAME>. */  DO ~TakePartyItem ("p_simvel") DestroyItem ("p_simvel")~
END


// CORREGIR!!!!!!
// Combate inicia
I_C_T P_DANCT2 18 P_Dusk_P_DANCT2_7
== p_anthag IF ~~ THEN @96994 /* ~Que así sea...~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @96995 /* ¡Ha llegado la hora, nigromante! Deja que te presente a mis lobos. ¡Ellos me ayudarán a mantener el orden natural que ustedes pretenden destruir! */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @96956 /* ~¡Estos malvados magos deben ser derrotados! Bubú no quiere ser el peón de nadie y mucho menos de estos viles nigromantes... ¡Es hora de patear traseros mágicos! ¡A sus ojos, Bubú, a sus ojos!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @96957 /* ~Por Baervan, ustedes nigromantes no llegarán lejos. Quayle así lo querría. ¡Estoy lista!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @96958 /* ~Dusk, si bien no estoy de acuerdo con tus motivos, sí que creo que debemos acabar con esta corrupción arcana. ¡Velsharún no debe levantarse! En el nombre de Torm, mi espada prestará servicio a tu causa.~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @96959 /* ~Comprendo tus deseos por vengar a tu amada, Dusk. Yo habría hecho lo mismo por Patrick... ¡Cuenta conmigo!~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @96960 /* ~Al fin podremos destajar a estos malnacidos hechiceros. ¡Dusk, déjame a ese petulante Encantador!~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @96961 /* ~¿Cuántos inocentes han caído por culpa de estos nigromantes? Es hora de ajustar cuentas. ¡La magia no debe ser inherentemente malvada, os lo demostraré! ~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @96962 /* ~La muerte viviente es una afrenta a la naturaleza, Anthagar... por eso es que en nombre de Silvanus, tu camino llegará hasta aquí. ¡Por los caídos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @96963 /* ~¡Vuestra abominación acaba aquí, hechicero! Rugiremos como el vendaval de primavera y nuestros actos harán eco incluso en las penumbras de este páramo antinatural. ¡A la batalla!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @96964 /* ~¡No permitiré que surja otro Lavok en Amn! Dusk, cuenta conmigo. ¡A combatir!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @96965 /* ~Estos "faern" están locos. Será un deleite derrotarlos para ti, Dusk. Y serán una hermosa ofrenda a Shar.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @96966 /* ~Finalmente, hombre del palito. ¡Mi momento de brillar ha llegado! Estos magos de pacotilla sabrán que no deben cruzar a Edwin Odesseiron (Os lo demostraré...).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @96967 /* ~¡Basta de cháchara! Es hora de partir cabezas con mi hacha. Patas largas, déjame a ese mago elfo afeminado. Su cabeza será un hermoso trofeo.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @96968 /* ~Bueno, supongo que no querrás que te cuente una historia antes de una batalla, ¿no?~ */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @96969 /* ~No es un buen momento, gnomo. No me provoques...~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @96970 /* ~Eso me gusta, Duskito. Eso me gusta. Ahora, manos a la obra: hay humanos que deben probar la efectividad de mi ballesta.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @96971 /* ~¡Vaya, vaya! Combates así he tenido en otros planos, mi buen Dusk. Pero no de este calibre. ¡Esto será digno de componer una o dos canciones!~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @96972 /* ~No estoy segura de que el camino de la venganza sea el indicado, Dusk. Pero si he acompañado a <CHARNAME> por caminos similares, supongo que también puedo hacerlo por ti.~ */
== p_sornhi IF ~~ THEN @96973 /* ~Ha llegado la hora, soldado... y hablando de soldados... He logrado encantar a un par de guardias de Amn y un Encapuchado... Son de la élite, como verás en tan sólo unos segundos...~ */ DO~Enemy()~
== p_valata IF ~~ THEN @96974 /* ~Capitán, Puki ansía tu cabeza. Verás, además, cómo tengo a más fieles servidores bajo mi tutela... están... detrás... de ti... ¡Ja, ja, ja!~ */ DO~Enemy()~
== p_dempid IF ~~ THEN @96938 /* ~*El demonio abisal muestra sus temibles fauces, lanzándose al ataque del grupo*~ */ DO~Enemy()~
== p_kaland IF ~~ THEN @96975 /* ~Finalmente... para esta ocasión acudiré a una transformación especial... será algo único...~ */  DO ~DestroyItem("LICHEL01") CreateItem ("p_kasums",1,1,0)~
== p_anthag IF ~~ THEN @96976 /* ~¿Haces esto por venganza? No me hagas reír... el único responsable de la muerte de tu esposa has sido tú... en el fondo lo sabes.~ */ DO~Enemy()~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96977 /* ~No sólo es venganza, Anthagar... También es por placer... El momento de arrancar tu cabeza ha llegado. ¡Prepárate!~ */
END


I_C_T P_DANCT2 16 P_Dusk_P_DANCT2_6
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96945 /* ~¡Detente, Danctian!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96946 /* ~¡<CHARNAME>! Sí... es verdad... te he traicionado... Pero lo he hecho por un objetivo mayor.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96947 /* ~¿Querías poder? He blandido la espada carmesí por ti... he asesinado y destajado a nuestros enemigos, por ti.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96948 /* ~Sí... el demonio vuelve a aparecer (debo admitir que no esperaba esto).~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96949 /* ~Pero... le hemos despachado en el pasado... ¡Y ahora no será diferente!~ */
== p_valata IF ~~ THEN @96950 /* ~Eso es lo que tú crees, capitán...~ */
== p_valata IF ~~ THEN @96951 /* ~Pero ahora mi Puki no se encuentra sólo. No es el único demonio que controlo, como verás próximamente...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96952 /* ~¡Silencio, cretino! <CHARNAME>, mi espada aún es tuya. Lucha a mi lado... ayúdame a vengar a mi esposa... y te seré siempre fiel, hasta mi último aliento.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96953 /* ~¡Por la oscuridad del Pandemonium, así lo juro!~ */
END


I_C_T P_DANCT2 11 P_Dusk_P_DANCT2_5
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96932 /* ~Buen trabajo, Danctian. Arranquemos los corazones de estos desgraciados.~ */
== p_valata IF ~~ THEN @96933 /* ~No tan rápido, capitán. Hay algo que creo que tu líder debería saber.~ */
== p_valata IF ~~ THEN @96934 /* ~*risa maligna* ¿Qué pasa? Pareces sorprendido.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96935 /* ~No lo escuches, <CHARNAME>. Intentará fragmentarnos antes del combate.~ */
== p_valata IF ~~ THEN @96936 /* ~¿Ah, sí?~ */
END


I_C_T P_DANCT2 7 P_Dusk_P_DANCT2_4
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96926 /* No temas, <CHARNAME>. Anthagar planeaba asesinarnos con el objetivo de traer a Velsharún de regreso a este plano. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96918 /* No somos más que peones en su juego. Ya lo deberías saber... lo fácil que es sacrificar a los peones... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96919 /* ¡No permitiré que eso suceda! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96920 /* ¡Nigromante! ¿De verdad creíste que habríamos de aliarnos a ti? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96921 /* Todas tus pruebas... todos tus esbirros... todos tus hechizos... Nos trajeron aquí. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96922 /* Aquí: a tu destino final. A la destrucción de todo aquello que adoras. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96923 /* ~Muchacho estúpido... ¿de verdad crees que eres rival para nosotros? ¡Ni siquiera el semidiós que te acompaña hará la diferencia!~ ~Muchacho estúpido... ¿de verdad crees que eres rival para nosotros? ¡Ni siquiera el semidiós que te acompaña hará la diferencia!~ */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96924 /* Ni siquiera este... sirviente de la oscuridad podrá detenernos. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96925 /* ¡Vinimos preparados! Nosotros-- */
END


I_C_T P_DANCT2 6 P_Dusk_P_DANCT2_3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96917 /* La única promesa que tendríamos por parte de este cretino, <CHARNAME>, es una muerte segura en sus manos. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96918 /* No somos más que peones en su juego. Ya lo deberías saber... lo fácil que es sacrificar a los peones... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96919 /* ¡No permitiré que eso suceda! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96920 /* ¡Nigromante! ¿De verdad creíste que habríamos de aliarnos a ti? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96921 /* Todas tus pruebas... todos tus esbirros... todos tus hechizos... Nos trajeron aquí. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96922 /* Aquí: a tu destino final. A la destrucción de todo aquello que adoras. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96923 /* ~Muchacho estúpido... ¿de verdad crees que eres rival para nosotros? ¡Ni siquiera el semidiós que te acompaña hará la diferencia!~ ~Muchacho estúpido... ¿de verdad crees que eres rival para nosotros? ¡Ni siquiera el semidiós que te acompaña hará la diferencia!~ */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96924 /* Ni siquiera este... sirviente de la oscuridad podrá detenernos. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96925 /* ¡Vinimos preparados! Nosotros-- */
END

I_C_T P_DANCT2 4 P_Dusk_P_DANCT2_2
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @9697 /* ¿Qué significa esto? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9698 /* ¿Acaso no querías conocer al representante del Pandemonium, nigromante? Te presento a Danctian Shadow. */
== P_DANCT2 IF ~~ THEN @9699 /* Estoy listo cuando tú lo ordenes, Ardusk. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @96910 /* ¡¿Te atreves a traicionar a la Cripta Olvidada, muchacho?! */
== p_valata IF ~~ THEN @96911 /* ~Lo sabía, Antaghar. Confiar en estos estúpidos fue un error.~ */
== p_kaland IF ~~ THEN @96939 /* ~Los humanos no son de confiar, Anthagar... y este cormyreano no es la excepción.~ */
END


I_C_T P_DANCT2 1 P_Dusk_P_DANCT2_1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9693 /* ¿Ellos, Danctian? Te refieres a los magos de la Cripta Olvidada... */
== P_DANCT2 IF ~~ THEN @9694 /* Así es... es mejor que os preparen. */
END
