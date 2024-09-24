BEGIN p_alabar

IF ~Global("P_DuskMatMission3","GLOBAL",7)~ THEN BEGIN 0 // from:
  SAY @9730 /* ~*gruñido* Ha funcionado...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",8)~ EXIT
END

//!PartyHasItem("p_orbet1")
//Global("P_Bellfame_Dusk1","GLOBAL",2)
//CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()
IF ~
Global("P_DuskMatMission3","GLOBAL",8)
~ THEN BEGIN 1 // from:
  SAY @9731 /* ~Era lo que esperaba.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 286
END

IF ~
Global("P_DuskMatMission3","GLOBAL",8)
~ THEN BEGIN 2 // from:
  SAY @9732 /* ~¡Humano! Has venido, como el mago ha dicho. Directo... a mis fauces...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9734 /* ~No tengo idea de cómo se llama ese elfo hechicero, ni tampoco me interesa.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @97311 /* ~¡Silencio, idiotas! El soldado y yo estamos tratando de dialogar. No es que esto vaya a terminar en otra cosa que no sea una matanza...~ */
	// EVIL
    IF ~Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @97312 /* ~Dusk, no quiero alarmarte, pero estamos rodeados.~ */  GOTO 5
	
	
	// GOOD con ORBET y con ANILLO OK
    IF ~Global ("P_DUSK_IS_GOOD","GLOBAL",1) Global("P_Bellfame_Dusk1","GLOBAL",2)
	PartyHasItem("p_orbet1") PartyHasItem ("p_belrng") ~ THEN REPLY @97312 /* ~Dusk, no quiero alarmarte, pero estamos rodeados.~ */  GOTO 7
	
	
	// GOOD con ORBET y sin ANILLO
    IF ~Global ("P_DUSK_IS_GOOD","GLOBAL",1) PartyHasItem("p_orbet1") 
	OR (3)
	Global("P_Bellfame_Dusk1","GLOBAL",0)
	Global("P_Bellfame_Dusk1","GLOBAL",1)
	!PartyHasItem ("p_belrng")~ THEN REPLY @97312 /* ~Dusk, no quiero alarmarte, pero estamos rodeados.~ */  GOTO 11
	
	
	// GOOD SIN ORBET y con ANILLO OK
    IF ~Global ("P_DUSK_IS_GOOD","GLOBAL",1) Global("P_Bellfame_Dusk1","GLOBAL",2) PartyHasItem ("p_belrng")
	!PartyHasItem("p_orbet1") ~ THEN REPLY @97312 /* ~Dusk, no quiero alarmarte, pero estamos rodeados.~ */  GOTO 12
	
		
	
	// GOOD SIN ORBET y SIN ANILLO
    IF ~Global ("P_DUSK_IS_GOOD","GLOBAL",1)
	!PartyHasItem("p_orbet1")
	OR (3)
	Global("P_Bellfame_Dusk1","GLOBAL",0)
	Global("P_Bellfame_Dusk1","GLOBAL",1)
	!PartyHasItem ("p_belrng")~ THEN REPLY @97312 /* ~Dusk, no quiero alarmarte, pero estamos rodeados.~ */  GOTO 14
END

// EVIL

IF ~~ THEN BEGIN 5 // from:
  SAY @97313 /* ~¡Ja! Conque tú debes ser el hijo de Bhaal: <CHARNAME>. Matarte a ti también será un beneficio extra para mi clan.~ ~¡Ja! Conque tú debes ser la hija de Bhaal, <CHARNAME>. Matarte a ti también será un beneficio extra para mi clan.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3EVIL","GLOBAL",1)~ EXTERN ~P_DuskJ~ 333 //GOTO 6
END


IF ~~ THEN BEGIN 6 // from:
  SAY @97358 /* ~¡Vamos, guerreros! Somos los Asesinos de Dragones... y sólo nos queda un dragón por asesinar.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DuskJ~ 287
END

// GOOD con ORBET y con ANILLO OK

IF ~~ THEN BEGIN 7 // from:
  SAY @97313 /* ~¡Ja! Conque tú debes ser el hijo de Bhaal: <CHARNAME>. Matarte a ti también será un beneficio extra para mi clan.~ ~¡Ja! Conque tú debes ser la hija de Bhaal, <CHARNAME>. Matarte a ti también será un beneficio extra para mi clan.~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskM3GOOD","GLOBAL",1)
  SetGlobal("P_DuskM3GOOD_OT_RING","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @973104 /* ~Será mejor que despabiles, soldado... Aún te encuentras rodeado y superado en número. Mis guerreros se harán un festín con tus huesos.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3LLAMA_ORBET","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @97373 /* ~Pero ¡¿qué--?!~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DuskJ~ 332 //GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @973103 /* ~¡Vamos, guerreros! Somos los Asesinos de Dragones... pero en esta ocasión... Supongo que tendremos que conformarnos con matar a este... perro.~ */
  IF ~~ THEN DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy() Attack("P_Dusk")~ EXTERN ~P_DuskJ~ 292
END


// GOOD con ORBET y sin ANILLO

IF ~~ THEN BEGIN 11 // from:
  SAY @97313 /* ~¡Ja! Conque tú debes ser el hijo de Bhaal: <CHARNAME>. Matarte a ti también será un beneficio extra para mi clan.~ ~¡Ja! Conque tú debes ser la hija de Bhaal, <CHARNAME>. Matarte a ti también será un beneficio extra para mi clan.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3GOOD","GLOBAL",1) SetGlobal("P_DuskM3LLAMA_ORBET","GLOBAL",1) ~ EXIT
END

// GOOD SIN ORBET y con ANILLO OK

IF ~~ THEN BEGIN 12 // from:
  SAY @97313 /* ~¡Ja! Conque tú debes ser el hijo de Bhaal: <CHARNAME>. Matarte a ti también será un beneficio extra para mi clan.~ ~¡Ja! Conque tú debes ser la hija de Bhaal, <CHARNAME>. Matarte a ti también será un beneficio extra para mi clan.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3GOOD","GLOBAL",1) SetGlobal("P_DuskM3GOOD_OT_RING","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY @973104 /* ~Será mejor que despabiles, soldado... Aún te encuentras rodeado y superado en número. Mis guerreros se harán un festín con tus huesos.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 332 //GOTO 10
END

// GOOD SIN ORBET y SIN ANILLO OK

IF ~~ THEN BEGIN 14 // from:
  SAY @97313 /* ~¡Ja! Conque tú debes ser el hijo de Bhaal: <CHARNAME>. Matarte a ti también será un beneficio extra para mi clan.~ ~¡Ja! Conque tú debes ser la hija de Bhaal, <CHARNAME>. Matarte a ti también será un beneficio extra para mi clan.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3GOOD","GLOBAL",1)~ EXTERN ~P_DuskJ~ 332 //GOTO 15
END

//IF ~~ THEN BEGIN 15 // from:
//  SAY @97358 /* ~¡Vamos, guerreros! Somos los Asesinos de Dragones... y sólo nos queda un dragón por asesinar.~ */
//  IF ~~ THEN DO ~~ EXTERN ~P_DuskJ~ 292
//END

// GOOD SIN ORBET y SIN ANILLO OK

I_C_T P_ALABAR 14 P_Dusk_AlabarGOOD8
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97314 /* ~¡Escoria! No te dirijas a él. Tu sucia boca no es digna de nombrarlo.~ ~¡Escoria! No te dirijas a ella. Tu sucia boca no es digna de nombrarla.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97315 /* *gruñido* Aún tienes esa ira, soldado. Pero no será como la última vez... No... Alabarza el Mutilador acabará contigo... de una vez y para siempre. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97368 /* Te he derrotado una vez, Alabarza. Puedo volver a hacerlo. */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97317 /* *risa gutural* Parece ser que no estás consciente de la situación, soldado.  */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97369 /* No estoy sólo en esto, monstruo. */
END


I_C_T P_ALABAR 12 P_Dusk_AlabarGOOD6
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97314 /* ~¡Escoria! No te dirijas a él. Tu sucia boca no es digna de nombrarlo.~ ~¡Escoria! No te dirijas a ella. Tu sucia boca no es digna de nombrarla.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97315 /* *gruñido* Aún tienes esa ira, soldado. Pero no será como la última vez... No... Alabarza el Mutilador acabará contigo... de una vez y para siempre. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97368 /* Te he derrotado una vez, Alabarza. Puedo volver a hacerlo. */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97317 /* *risa gutural* Parece ser que no estás consciente de la situación, soldado.  */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97369 /* No estoy sólo en esto, monstruo. */
END


// GOOD con ORBET y sin ANILLO

I_C_T P_ALABAR 11 P_Dusk_AlabarGOOD5
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97314 /* ~¡Escoria! No te dirijas a él. Tu sucia boca no es digna de nombrarlo.~ ~¡Escoria! No te dirijas a ella. Tu sucia boca no es digna de nombrarla.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97315 /* *gruñido* Aún tienes esa ira, soldado. Pero no será como la última vez... No... Alabarza el Mutilador acabará contigo... de una vez y para siempre. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97368 /* Te he derrotado una vez, Alabarza. Puedo volver a hacerlo. */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97317 /* *risa gutural* Parece ser que no estás consciente de la situación, soldado.  */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97369 /* No estoy sólo en esto, monstruo. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97371 /* ~(Dusk eleva el orbe teletransportador y éste se ilumina. Varios portales se abren a su alrededor)~ */
END






////// GOOD con ORBET y con ANILLO OK

I_C_T P_ALABAR 7 P_Dusk_AlabarGOOD1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97314 /* ~¡Escoria! No te dirijas a él. Tu sucia boca no es digna de nombrarlo.~ ~¡Escoria! No te dirijas a ella. Tu sucia boca no es digna de nombrarla.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97315 /* *gruñido* Aún tienes esa ira, soldado. Pero no será como la última vez... No... Alabarza el Mutilador acabará contigo... de una vez y para siempre. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97368 /* Te he derrotado una vez, Alabarza. Puedo volver a hacerlo. */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97317 /* *risa gutural* Parece ser que no estás consciente de la situación, soldado.  */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97369 /* No estoy sólo en esto, monstruo. */
END

I_C_T P_ALABAR 8 P_Dusk_AlabarGOOD2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97370 /* ~¿Superados en número? En eso te equivocas, Alabarza. ¡Orbe, trae a mis amigos!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97371 /* ~(Dusk eleva el orbe teletransportador y éste se ilumina. Varios portales se abren a su alrededor)~ */
END

I_C_T P_ALABAR 9 P_Dusk_AlabarGOOD3
== P_KAYL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97374 /* ~¡En el nombre de la Noble Orden del Radiante Corazón: presentaremos batalla!~ */
== P_FALO2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97375 /* ~Vaya, no creí que el hechizo del hombrecito verde funcionara.~ */
== P_COC2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97376 /* ~¡Wow, qué mareos!~ */
== P_ZIBE2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97377 /* ~¡Atenta, Coco! No demuestres debilidad ante el enemigo.~ */
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97378 /* ~Cufa: ¡Yuju! Viaje ser muy divertido. ¿Poder hacerlo de nuevo, Tima?~ */
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97379 /* ~Tima: Es fácil para ti decirlo, Cufa. Creo que he sido yo el que se ha llevado los efectos del mareo.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97380 /* *gruñido* Así que tienes tu propio ejército, soldado... */ 
== P_KAYL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97381 /* ~Ha sido una gran idea, Dusk. Parece ser que ahora el juego se ha equiparado.~ */
== P_FALO2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97382 /* ~¡Dusk! Estaremos bajo tus órdenes y las de <CHARNAME>. El pequeño hombrecito verde dijo que no te preocupes si alguno de nosotros cae en combate. Él se encargará de revivir a los muertos, sin importar la gravedad de la herida.~ */
== P_KAYL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97383 /* ~Pero para que eso funcione, Dusk, debemos vencer en esta batalla. Debo admitir que el amiguito del elfo de cabello verde es bastante poderoso.~ */
== P_Tongas IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97384 /* Interesante, mi señor. Nunca antes había sido testigo de tanto poder estos últimos días. Entre el transmutador y el orbe mágico que sacó de su manga el soldado, estoy anonadado. */
== P_KOCHA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97385 /* Lo cierto es que tú te sorprendes de cualquier cosa, Tongas. */ 
== P_XEB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97386 /* *siseo* ¿Hombrecito verde? Si viene, quiero torturarlo. */
== P_SERRA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97387 /* Haz lo que quieras, lagartija. Yo creo que me conformo con esa gnoll. *Se relame* */
== P_ZIBE2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97388 /* ~*gruñido* Eso está por verse, asqueroso orog.~ */
== P_COC2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97389 /* ~¿Es necesario que esto termine en pelea? ¡Podríamos ser todos amigos y felices!~ */
== P_KOMAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97390 /* ¡Jefe, una trasgo con voz de niñita! Trasgo, tú servirás como mi mascota. */ 
== P_COC2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97391 /* ~Ugh... eres muy maleducado, ogro. Ni en tus sueños.~ */
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97392 /* ~Cufa: Tima, ¿ver eso? ¡Otro ettin!~ */
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97393 /* ~Tima: Sí, eso veo, Cufa. También veo a sus... mascotas...~ */
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97394 /* Toxsan: No puedo creer lo que veo. Un ettin peleando al lado de humanos y paladines... */ 
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97395 /* Chimi: ¿Cómo es que no puedes creerlo? ¡Lo estás viendo con nuestros ojos, Toxsan! */ 
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97396 /* Toxsan: *suspiro* Ya lo sé, Chimi. Es una expresión. */ 
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97397 /* Toxsan: No creo que podamos ser amigos de esos brutos, Chimi. Creo que tendríamos que presentarles a nuestras mascotas, ¿no lo crees? */ 
== P_BOB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97398 /* (Bob prepara sus brazos, ansioso por recibir las órdenes de su amo y lanzarle al ataque) */ 
== P_MIKE IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97399 /* (Mike hace lo mismo, centrando sus ojos en las presas que tiene enfrente) */ 
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @973100 /* ~Cufa: Tima, tener que conseguir mascotas así, ¿no creer?~ */
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @973101 /* ~Tima: Cufa, ya tienes mascotas. Y dudo que estas moles se lleven bien con los caballos de la Orden.~ */
END


I_C_T P_ALABAR 10 P_Dusk_AlabarGOOD4
== P_Tongas IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97359 /* ~¡Señor, no te decepcionaré!~ */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy() ~
== P_KOCHA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97360 /* ¡Khjjjiii! Construiré un altar con sus huesos. */ DO~Enemy()~
== P_KOMAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97361 /* Jefe, demostraré mi fuerza. ¡Por nuestro clan! */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_SERRA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97362 /* Haré un banquete con la carne de nuestros enemigos. Será un delicioso festín... */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_XEB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97363 /* *siseo* Al fin... dejemosss a alguno con vida... ¡Quiero experimentar con sus cuerposss! */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97364 /* Chimi: Vamos, Bob... Compite con tu hermano, ¡a ver quien machaca más a estos debiluchos! */
== P_BOB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97365 /* (Ante las palabras de Chimi, la Mole prepara sus terribles garras para lanzarse al ataque) */ DO~Enemy()~
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97366 /* Toxsan: ¿Has escuchado, Mike? Toxsan ha lanzado un desafío. ¡No me decepciones! */ DO~Enemy()~
== P_MIKE IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97367 /* (Mike golpea sus puños entre sí y se lanza al ataque tras las palabras de Toxsan) */ DO~Enemy()~
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @973105 /* Capitán... prepárate... ¡Iré a por ti!  */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy() Attack("P_Dusk")~
END


////// EVIL

I_C_T P_ALABAR 5 P_Dusk_AlabarEVIL
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97314 /* ~¡Escoria! No te dirijas a él. Tu sucia boca no es digna de nombrarlo.~ ~¡Escoria! No te dirijas a ella. Tu sucia boca no es digna de nombrarla.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97315 /* *gruñido* Aún tienes esa ira, soldado. Pero no será como la última vez... No... Alabarza el Mutilador acabará contigo... de una vez y para siempre. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97316 /* Parece ser que has olvidado quién te ha arrancado tu ojo, monstruo. ¿Quieres que acabe el trabajo y te arranque el otro? Lo haré con gusto. */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97317 /* *risa gutural* Parece ser que no estás consciente de la situación, soldado.  */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97318 /* Mis guerreros acabarán con los tuyos... y yo lo haré contigo... */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()Attack("P_Dusk")~
END


// REVELACIÓN DEL ATAQUE AL DESTACAMENTO CUANDO LA VICTORIA DE DUSK SEA EVIDENTE

I_C_T P_ALABAR 6 P_Dusk_AlabarEVIL2
== P_Tongas IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97359 /* ~¡Señor, no te decepcionaré!~ */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy() ~
== P_KOCHA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97360 /* ¡Khjjjiii! Construiré un altar con sus huesos. */ DO~Enemy()~
== P_KOMAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97361 /* Jefe, demostraré mi fuerza. ¡Por nuestro clan! */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_SERRA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97362 /* Haré un banquete con la carne de nuestros enemigos. Será un delicioso festín... */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_XEB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97363 /* *siseo* Al fin... dejemosss a alguno con vida... ¡Quiero experimentar con sus cuerposss! */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97364 /* Chimi: Vamos, Bob... Compite con tu hermano, ¡a ver quien machaca más a estos debiluchos! */
== P_BOB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97365 /* (Ante las palabras de Chimi, la Mole prepara sus terribles garras para lanzarse al ataque) */ DO~Enemy()~
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97366 /* Toxsan: ¿Has escuchado, Mike? Toxsan ha lanzado un desafío. ¡No me decepciones! */ DO~Enemy()~
== P_MIKE IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97367 /* (Mike golpea sus puños entre sí y se lanza al ataque tras las palabras de Toxsan) */ DO~Enemy()~
END

//INTRO GENERAL
I_C_T P_ALABAR 2 P_Dusk_Alabar1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9733 /* ¿Mago? Sabía que Valatar o Sornhil estaban involucrados... */
END

I_C_T P_ALABAR 3 P_Dusk_Alabar2
== P_Tongas IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9735 /* Kalanda era su nombre, mi señor. Su hechizo de transmutación es increíble. No creí que perdurara tanto. */
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9736 /* Chimi: Ya me había acostumbrado a verlo como una ardilla, jefecito. */ 
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9737 /* Toxsan: Que no era una ardilla, Chimi. Era un hurón. */
== P_KOCHA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9738 /* Insisto en que creo que un tejón hubiera sido una mejor elección. */ 
== P_SERRA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9739 /* Eso es porque tú tienes una obsesión por los tejones, Kocha. */ 
== P_KOMAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97310 /* Yo creo que hay asuntos más importantes que discutir, compañeros. */ 
END



