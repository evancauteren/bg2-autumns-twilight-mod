BEGIN P_MESO

// Sin Fall -> Habilitación Portal FA3B
IF ~AreaCheck("AR1514")
Global("P_FallMeso1stEnc","GLOBAL",1)
Global("P_FallMission4","GLOBAL",0)
OR(2)
!Global("P_FallMission2","GLOBAL",8)
!InParty("P_Fall")
~ THEN BEGIN 0A // from:
  SAY @97467 /* *chirrido* Ah, finalmente has aparecido, descendiente de Bhaal. */
  IF ~~ THEN DO ~SetGlobal ("P_FallMeso1stEnc","GLOBAL",2)~ GOTO 1A
END

IF ~~ THEN BEGIN 1A // from:
  SAY @97468 /* ~Me han enviado a mí, a Mesothel, a probar tu fuerza. ¿Podrás estar a la altura?~ */
    IF ~~ THEN REPLY @9743 /* ~¡Insecto! ¿Qué diantres haces aquí? Te encuentras en inferioridad numérica. Debes saber que tu destrucción es inminente.~ */  GOTO 3
	IF ~~ THEN REPLY @9744 /* ~Monstruo, veo que los Magos Encapuchados te tenían capturado desde hace un tiempo en sus mazmorras, ¿no es así?~ */  GOTO 4
	IF ~~ THEN REPLY @9745 /* ~Así que eres una de las sorpresas que esa maldita de Bodhi tenía planeado para nosotros...~ */  GOTO 5
END

IF ~AreaCheck("AR1514")
InParty("P_Fall")
Global("P_FallMission4","GLOBAL",0)
Global("P_FallMeso1stEnc","GLOBAL",1)
Global("P_FallMission2","GLOBAL",8)
~ THEN BEGIN 0 // from:
  SAY @9740 /* *chirrido* Ah, finalmente ha aparecido: La hija selu'taar y el Engendro de Bhaal. */
  IF ~~ THEN DO ~SetGlobal ("P_FallMeso1stEnc","GLOBAL",2)~ EXTERN ~P_FALLJ~ 75
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9741 /* ~¿No me recuerdas? Vosotros los primarios sois de memoria frágil, ¿quién lo diría?~*/
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9742 /* ~*chirrido* Ya, ya, pequeña. Veo que el semidios tiene algo para decir...~ ~*chirrido* Ya, ya, pequeña. Veo que la semidiosa tiene algo para decir...~ */
    IF ~~ THEN REPLY @9743 /* ~¡Insecto! ¿Qué diantres haces aquí? Te encuentras en inferioridad numérica. Debes saber que tu destrucción es inminente.~ */  GOTO 3
	IF ~~ THEN REPLY @9744 /* ~Monstruo, veo que los Magos Encapuchados te tenían capturado desde hace un tiempo en sus mazmorras, ¿no es así?~ */  GOTO 4
	IF ~~ THEN REPLY @9745 /* ~Así que eres una de las sorpresas que esa maldita de Bodhi tenía planeado para nosotros...~ */  GOTO 5
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9746 /* ~Pronto verás que mi destrucción no es algo fácil de alcanzar, mortal.~*/
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9747 /* ~Los Magos Encapuchados no tienen ninguna influencia sobre mí, mortal.~*/
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9748 /* ~No te confundas, mortal. Ni yo, ni los míos poseemos relación alguna con aquellos que han arrebatado parte de tu poder.~*/
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9749 /* ~Mi presencia en este plano indica la llegada inminente del Shyntquarra.~*/
    IF ~!PartyHasItem("p_ficero")~ THEN REPLY @97410 /* ~¿De qué estás hablando, monstruo?~ */  GOTO 7
	IF ~PartyHasItem("p_ficero")~ THEN REPLY @97410 /* ~¿De qué estás hablando, monstruo?~ */  GOTO 8
END

IF ~~ THEN BEGIN 7 // from:
  SAY @97412 /* ~Pronto lo descubrirán... aún tienen un largo tramo a recorrer antes de que puedan atisbar su inevitable final.~*/
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8 // from:
  SAY @97413 /* ~Lo debes sospechar, ¿no es así? Después de todo, su aliado selu'taar ha muerto. Sí, me refiero al Maestro de la Escarcha.~*/
  IF ~~ THEN GOTO 10
END

IF ~InParty ("P_Fall") 
Global ("P_FallMesothelNearestDead1","GLOBAL",1)~ THEN BEGIN 9 // from:
  SAY @97414 /* *chirrido* Estás cada vez más cerca de acceder a nuestro plano, mortal. Ten por seguro... Esta no será la última vez que nos veamos... */
  IF ~~ THEN DO ~SetGlobal ("P_FallMesothelNearestDead1","GLOBAL",2) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310034 EXIT
END

IF ~!InParty("P_Fall") 
Global ("P_FallMesothelNearestDead1","GLOBAL",1)~ THEN BEGIN 9A // from:
  SAY @97469 /* *chirrido* Estás cada vez más cerca de acceder a nuestro plano, mortal. Ten por seguro... Esta no será la última vez que nos veamos... Si quieres entrar a mi Reino, busca el Portal en las cloacas de ese asqueroso lugar que ustedes llaman La Corona de Cobre. Hazlo... si deseas evitar que invadamos tu Plano... */
  IF ~~ THEN DO ~SetGlobal ("P_FallMesothelNearestDead1","GLOBAL",2) 
  SetGlobal ("P_OpenPortal_PFA3B","GLOBAL",1) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310070 EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @97415 /* ~¡Vamos! Déjame probar tu fuerza... a cambio, ¡te dejaré atisbar una fracción del poder de Rachnidra!~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMeso1stEnc","GLOBAL",2) Enemy()~EXIT
END

IF ~AreaCheck("P_F12B")
Global("P_FallMeso2ndEnc","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY @97431 /* *chirrido* ¡Ahora, Liphix! */
  IF ~~ THEN DO ~SetGlobal ("P_FallMeso2ndEnc","GLOBAL",1)~ EXIT
END

// CONTINUAR ACA
IF ~AreaCheck("P_F12B")
See("p_cho")
Global ("P_MesoTalk1","GLOBAL",2)~ THEN BEGIN 12 // from:
  SAY @97432 /* Ah, los mortales aliados de Rachnidra, destructores de los reptiles de Dreach-naga. Habéis hecho un trabajo espléndido acabando con nuestros enemigos... Como recompensa, viajaremos a vuestro Plano y devoraremos todo aquello que apreciáis. Será un espectáculo maravilloso: El Shyntquarra ha llegado y marcará el fin de vuestra realidad. */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",3)~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @97433 /* ~Liphix, querida hermana, ¿habéis robado los talismanes y las piedras guarda de vuestros amigos?~*/
  IF ~~ THEN EXTERN ~P_LIPHIX~ 0 
END

IF ~~ THEN BEGIN 14 // from:
  SAY @97434 /* ~Bien, bien.~*/
    IF ~~ THEN REPLY @97435 /* ~¡Monstruo! Por tu vida, habla: ¿qué está pasando?~ */  EXTERN ~P_LIPHIX~ 1 
	IF ~~ THEN REPLY @97436 /* ~¡Nos han robado! Los talismanes... las piedras... ¡han desaparecido!~ */ EXTERN ~P_LIPHIX~ 1
END

IF ~~ THEN BEGIN 15 // from:
  SAY @97437 /* ~<CHARNAME>, ella es Liphix. Es una de las hijas más poderosas de mi Reina y Madre: Morgrath. Gracias a ella, no podrás volver a refugiarte en el Trono de Tisiphone, ni podrás volver al Enclave, pues necesitáis las piedras guarda y los talismanes, ¿no es así? ~*/
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @97438 /* ~Mortales... si quieren llegar al Enclave, deberán encontrar la piedra guarda para volver por el portal. Una de mis Tejedoras será su guardián. Pero me pregunto... ¿cuál de todas ellas? *chirrido* ~*/
  IF ~~ THEN EXTERN ~P_LIPHIX~ 2
END

IF ~~ THEN BEGIN 17 // from:
  SAY @97439 /* Nos veremos pronto, <CHARNAME>. Muy... pronto... */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",3) CreateItem("P_MORRNG",1,1,0) GiveItem("P_MORRNG", Player1) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310053 EXIT
END

IF ~AreaCheck("P_F12B")
!See("p_cho")
Global ("P_MesoTalk1","GLOBAL",2)~ THEN BEGIN 18 // from:
  SAY @97432 /* Ah, los mortales aliados de Rachnidra, destructores de los reptiles de Dreach-naga. Habéis hecho un trabajo espléndido acabando con nuestros enemigos... Como recompensa, viajaremos a vuestro Plano y devoraremos todo aquello que apreciáis. Será un espectáculo maravilloso: El Shyntquarra ha llegado y marcará el fin de vuestra realidad. */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",3)~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @97433 /* ~Liphix, querida hermana, ¿habéis robado los talismanes y las piedras guarda de vuestros amigos?~*/
  IF ~~ THEN EXTERN ~P_LIPHIX~ 3 
END

IF ~~ THEN BEGIN 20 // from:
  SAY @97434 /* ~Bien, bien.~*/
    IF ~~ THEN REPLY @97435 /* ~¡Monstruo! Por tu vida, habla: ¿qué está pasando?~ */  EXTERN ~P_LIPHIX~ 4 
	IF ~~ THEN REPLY @97436 /* ~¡Nos han robado! Los talismanes... las piedras... ¡han desaparecido!~ */ EXTERN ~P_LIPHIX~ 4
END

IF ~~ THEN BEGIN 21 // from:
  SAY @97437 /* ~<CHARNAME>, ella es Liphix. Es una de las hijas más poderosas de mi Reina y Madre: Morgrath. Gracias a ella, no podrás volver a refugiarte en el Trono de Tisiphone, ni podrás volver al Enclave, pues necesitáis las piedras guarda y los talismanes, ¿no es así? ~*/
  IF ~~ THEN GOTO 16
END

//3rd Encounter

IF ~AreaCheck("P_FA6B")
InMyArea("p_cho")
Global ("P_MesoTalk1","GLOBAL",3)~ THEN BEGIN 22 // from:
  SAY @97452 /* La guerra abisal está llegando a su fin, <CHARNAME>. Mis hermanos han muerto por última vez. Cuando revivan, la vida será eterna. */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",4)~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @97453 /* ~Como ya lo debes saber, semidiós, soy el portador del Talismán del Muerto Viviente. Si quieres atravesar el umbral, tendrás que matarme.~ */
    IF ~~ THEN REPLY @97454 /* ~Eso es algo que haré con gusto, Mesothel. Tengo grandes deseos de no ver tu horrible ojo nunca más.~ */  GOTO 24
	IF ~~ THEN REPLY @97455 /* ~Tu ojo es el más grande que he visto, pero no logro entender cómo es que no ves la imninencia de tu derrota.~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @97456 /* Tus insultos no significan nada para mí. Pendes de la telaraña de un destino que fue tejido por fuerzas que no logras comprender. Perece en las oscuridades de la duda, <CHARNAME>. Por Rachnidra, tu sangre alimentará a seres destinados a gobernar tu mundo. */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",4) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ EXIT
END

IF ~AreaCheck("P_FA6B")
!InMyArea("p_cho")
Global ("P_MesoTalk1","GLOBAL",3)~ THEN BEGIN 25 // from:
  SAY @97452 /* La guerra abisal está llegando a su fin, <CHARNAME>. Mis hermanos han muerto por última vez. Cuando revivan, la vida será eterna. */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",4)~ GOTO 23
END

I_C_T P_MESO 25 P_MESO1_7
== P_MESO IF ~~ THEN @97457 /* ~*su gran ojo parece examinar los alrededores*~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97458 /* Mesothel, hazte un favor y entréganos el Talismán. Puede que considere perdonarte la vida. */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97459 /* ~Oh, tú también has sobrevivido, mi dulce alimento. *chirrido* Quieres que entregue el Talismán, ¿no es así?~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97460 /* ~La vida es una constante prueba, hija de la selu'taar. Mi prueba es luchar contra ustedes, una vez más. La tuya: sobrevivir a dicho enfrentamiento.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97461 /* He sobrevivido hasta ahora. Hoy no va a ser la excepción. ¡Por mi madre haré lo que sea! */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97462 /* ~Somos de espíritus afines, mortal. Porque yo haré lo mismo por la mía. Ahora deja que me dirija a tu líder.~ */
END


I_C_T P_MESO 22 P_MESO1_6
== P_MESO IF ~~ THEN @97457 /* ~*su gran ojo parece examinar los alrededores*~ */
== P_CHO IF ~OR(1) InMyArea("p_meso")~ THEN @97463 /* ~Te equivocas, Mesothel. Cuando revivan, será la última vez que lo hagan.~ */
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97464 /* ~General Cho'Nuja. Has sobrevivido no sólo a mis hermanos, sino a los enfrentamientos con mi madre. ¿Por qué te niegas a morir? Entrégate al descanso eterno y deja de lado el sufrimiento.~*/
== P_CHO IF ~OR(1) InMyArea("p_meso")~ THEN @97465 /* ~La guerra es todo lo que conozco. Sólo tengo una más que luchar. Rachnidra caerá y todas tus profecías quedarán en el olvido.~ */ DO ~UseItem("p_fifirc",Myself)~
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97466 /* ~Aún no lo entiendes... pero pronto lo harás...~*/

== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97458 /* Mesothel, hazte un favor y entréganos el Talismán. Puede que considere perdonarte la vida. */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97459 /* ~Oh, tú también has sobrevivido, mi dulce alimento. *chirrido* Quieres que entregue el Talismán, ¿no es así?~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97460 /* ~La vida es una constante prueba, hija de la selu'taar. Mi prueba es luchar contra ustedes, una vez más. La tuya: sobrevivir a dicho enfrentamiento.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97461 /* He sobrevivido hasta ahora. Hoy no va a ser la excepción. ¡Por mi madre haré lo que sea! */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97462 /* ~Somos de espíritus afines, mortal. Porque yo haré lo mismo por la mía. Ahora deja que me dirija a tu líder.~ */
END



I_C_T P_MESO 21 P_MESO1_5
== P_MESO IF ~~ THEN @97440 /* ~...~ */
== P_LIPHIX IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97447 /* ~Hermano...¿ella es... la hija de la selu'taar?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97448 /* Soy Fall de Imnescar, monstruo. He viajado lejos para llegar aquí. Al fin... al fin dan la cara, demonios. */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97449 /* ~Ya la has oído, hermana. Es ella.~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97450 /* ~En cuanto a ti, mi dulce alimento, sé que harás lo posible por cumplir tu promesa. Has llegado hasta aquí, lo sé, porque tu poder se ha incrementado. Así como el de <CHARNAME>.~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97451 /* ~Pero es aquí donde serán testigos del verdadero poder del Shyntquarra, las Legiones que no pueden ser vistas. Este preciso momento será el prólogo del fin de Faerûn. Y ustedes serán los protagonistas de ese prólogo.~ */
END


I_C_T P_MESO 15 P_MESO1_4
== P_MESO IF ~~ THEN @97440 /* ~...~ */
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97441 /* ~Pero... ¿qué es lo que ve mi ojo? General Cho'Nuja... ¿al lado del hijo de Bhaal?~ ~Pero... ¿qué es lo que ve mi ojo? General Cho'Nuja... ¿al lado de la hija de Bhaal?~ */
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97442 /* ~El destino es, en efecto, irónico. ¿Eres rehén de los primarios, General?~ */
== P_CHO IF ~OR(1) InMyArea("p_meso")~ THEN @97443 /* ~Mesothel, morirás por todo lo que has hecho.~ */
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97444 /* ~No he sido yo quien ha condenado a la extinción a tus hermanos y hermanas, General. No. Esa sentencia ha sido dictada por aquel que camina a tu lado. Podría instarte a alzar tus garras contra él, pero sé que tu espíritu carece de la fuerza necesaria. Eres débil, y en tu debilidad yace tu perdición.~  ~No he sido yo quien ha condenado a la extinción a tus hermanos y hermanas, General. No. Esa sentencia ha sido dictada por aquella que camina a tu lado. Podría instarte a alzar tus garras contra ella, pero sé que tu espíritu carece de la fuerza necesaria. Eres débil, y en tu debilidad yace tu perdición.~*/
== P_CHO IF ~OR(1) InMyArea("p_meso")~ THEN @97445 /* ~Eres inteligente, lo reconozco. Sé que intentas meterte en mi cabeza para guiar mi furia contra <CHARNAME>. Pero no funcionará. He perdido todo lo que amo y mis sueños han sido destruidos. Dreach-naga ha caído... ¡pero tú, tus hermanos y tu preciada madre caerán también!~ */
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97446 /* ~*chirrido* Interesante. Vamos a ver si tu nuevo amigo, <CHARNAME>, es capaz de protegerte, General Cho'Nuja.~*/
== P_LIPHIX IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97447 /* ~Hermano...¿ella es... la hija de la selu'taar?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97448 /* Soy Fall de Imnescar, monstruo. He viajado lejos para llegar aquí. Al fin... al fin dan la cara, demonios. */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97449 /* ~Ya la has oído, hermana. Es ella.~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97450 /* ~En cuanto a ti, mi dulce alimento, sé que harás lo posible por cumplir tu promesa. Has llegado hasta aquí, lo sé, porque tu poder se ha incrementado. Así como el de <CHARNAME>.~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97451 /* ~Pero es aquí donde serán testigos del verdadero poder del Shyntquarra, las Legiones que no pueden ser vistas. Este preciso momento será el prólogo del fin de Faerûn. Y ustedes serán los protagonistas de ese prólogo.~ */
END



I_C_T P_MESO 8 P_Fall_MESO1_3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97416 /* ¡¿Cómo...?! Bestia, ¿cómo es que sabes que Alendir ha muerto? */
== P_MESO IF ~~ THEN @97417 /* ~Nada escapa a mi ojo, primaria.~ */
== P_MESO IF ~~ THEN @97418 /* ~Mi madre, mi reina... ha tomado interés por ustedes. Ha extendido su telaraña a través de las estrellas para permitirme llegar y ver de qué son capaces tú y tus aliados.~ */
== P_MESO IF ~~ THEN @97419 /* ~¿Quieres encontrar a la mujer selu'taar? Sí, tu madre. Gemystara.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97420 /* ¿Cómo sé si aún está... viva? ¡No puedo creer nada de lo que digas! */
== P_MESO IF ~~ THEN @97421 /* ~Pero me creerás... Oh, sí. Sé que lo harás.~ */
== P_MESO IF ~~ THEN @97422 /* ~Tantas palabras me han cansado. ¿Quieres estar más cerca de encontrar a tu madre? ¡Ataca!~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97423 /* Sí, eso haré, monstruo. ¡Vamos, <CHARNAME>! */
END

I_C_T P_MESO 7 P_Fall_MESO1_2
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97424 /* ~Tu mano tiembla, niña... ¿tanto anhelas mi muerte?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97425 /* Es hora... es hora de que mueras. ¡Mi padre será vengado! */
END

I_C_T P_MESO 1 P_Fall_MESO1_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97426 /* Tú... tú has estado en el ataque a mi pueblo. */
== P_MESO IF ~~ THEN @97427 /* ~Yo, Mesothel, he sido uno de los comandantes del ataque a tu pueblo, mi dulce alimento.~ */
== P_MESO IF ~~ THEN @97428 /* ~Han pasado varios años desde que ese humano detuvo nuestra invasión.~ */
== P_MESO IF ~~ THEN @97429 /* ~Gerwulf era su nombre. Tu padre, ¿no es así?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97430 /* ¡D-demonio! No... ¡no saldrás con vida de aquí! */
END


