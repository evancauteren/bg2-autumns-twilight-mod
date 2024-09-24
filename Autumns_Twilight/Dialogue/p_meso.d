BEGIN P_MESO

// Sin Fall -> Habilitaci�n Portal FA3B
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
  SAY @97468 /* ~Me han enviado a m�, a Mesothel, a probar tu fuerza. �Podr�s estar a la altura?~ */
    IF ~~ THEN REPLY @9743 /* ~�Insecto! �Qu� diantres haces aqu�? Te encuentras en inferioridad num�rica. Debes saber que tu destrucci�n es inminente.~ */  GOTO 3
	IF ~~ THEN REPLY @9744 /* ~Monstruo, veo que los Magos Encapuchados te ten�an capturado desde hace un tiempo en sus mazmorras, �no es as�?~ */  GOTO 4
	IF ~~ THEN REPLY @9745 /* ~As� que eres una de las sorpresas que esa maldita de Bodhi ten�a planeado para nosotros...~ */  GOTO 5
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
  SAY @9741 /* ~�No me recuerdas? Vosotros los primarios sois de memoria fr�gil, �qui�n lo dir�a?~*/
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9742 /* ~*chirrido* Ya, ya, peque�a. Veo que el semidios tiene algo para decir...~ ~*chirrido* Ya, ya, peque�a. Veo que la semidiosa tiene algo para decir...~ */
    IF ~~ THEN REPLY @9743 /* ~�Insecto! �Qu� diantres haces aqu�? Te encuentras en inferioridad num�rica. Debes saber que tu destrucci�n es inminente.~ */  GOTO 3
	IF ~~ THEN REPLY @9744 /* ~Monstruo, veo que los Magos Encapuchados te ten�an capturado desde hace un tiempo en sus mazmorras, �no es as�?~ */  GOTO 4
	IF ~~ THEN REPLY @9745 /* ~As� que eres una de las sorpresas que esa maldita de Bodhi ten�a planeado para nosotros...~ */  GOTO 5
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9746 /* ~Pronto ver�s que mi destrucci�n no es algo f�cil de alcanzar, mortal.~*/
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9747 /* ~Los Magos Encapuchados no tienen ninguna influencia sobre m�, mortal.~*/
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9748 /* ~No te confundas, mortal. Ni yo, ni los m�os poseemos relaci�n alguna con aquellos que han arrebatado parte de tu poder.~*/
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9749 /* ~Mi presencia en este plano indica la llegada inminente del Shyntquarra.~*/
    IF ~!PartyHasItem("p_ficero")~ THEN REPLY @97410 /* ~�De qu� est�s hablando, monstruo?~ */  GOTO 7
	IF ~PartyHasItem("p_ficero")~ THEN REPLY @97410 /* ~�De qu� est�s hablando, monstruo?~ */  GOTO 8
END

IF ~~ THEN BEGIN 7 // from:
  SAY @97412 /* ~Pronto lo descubrir�n... a�n tienen un largo tramo a recorrer antes de que puedan atisbar su inevitable final.~*/
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8 // from:
  SAY @97413 /* ~Lo debes sospechar, �no es as�? Despu�s de todo, su aliado selu'taar ha muerto. S�, me refiero al Maestro de la Escarcha.~*/
  IF ~~ THEN GOTO 10
END

IF ~InParty ("P_Fall") 
Global ("P_FallMesothelNearestDead1","GLOBAL",1)~ THEN BEGIN 9 // from:
  SAY @97414 /* *chirrido* Est�s cada vez m�s cerca de acceder a nuestro plano, mortal. Ten por seguro... Esta no ser� la �ltima vez que nos veamos... */
  IF ~~ THEN DO ~SetGlobal ("P_FallMesothelNearestDead1","GLOBAL",2) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310034 EXIT
END

IF ~!InParty("P_Fall") 
Global ("P_FallMesothelNearestDead1","GLOBAL",1)~ THEN BEGIN 9A // from:
  SAY @97469 /* *chirrido* Est�s cada vez m�s cerca de acceder a nuestro plano, mortal. Ten por seguro... Esta no ser� la �ltima vez que nos veamos... Si quieres entrar a mi Reino, busca el Portal en las cloacas de ese asqueroso lugar que ustedes llaman La Corona de Cobre. Hazlo... si deseas evitar que invadamos tu Plano... */
  IF ~~ THEN DO ~SetGlobal ("P_FallMesothelNearestDead1","GLOBAL",2) 
  SetGlobal ("P_OpenPortal_PFA3B","GLOBAL",1) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310070 EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @97415 /* ~�Vamos! D�jame probar tu fuerza... a cambio, �te dejar� atisbar una fracci�n del poder de Rachnidra!~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMeso1stEnc","GLOBAL",2) Enemy()~EXIT
END

IF ~AreaCheck("P_F12B")
Global("P_FallMeso2ndEnc","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY @97431 /* *chirrido* �Ahora, Liphix! */
  IF ~~ THEN DO ~SetGlobal ("P_FallMeso2ndEnc","GLOBAL",1)~ EXIT
END

// CONTINUAR ACA
IF ~AreaCheck("P_F12B")
See("p_cho")
Global ("P_MesoTalk1","GLOBAL",2)~ THEN BEGIN 12 // from:
  SAY @97432 /* Ah, los mortales aliados de Rachnidra, destructores de los reptiles de Dreach-naga. Hab�is hecho un trabajo espl�ndido acabando con nuestros enemigos... Como recompensa, viajaremos a vuestro Plano y devoraremos todo aquello que apreci�is. Ser� un espect�culo maravilloso: El Shyntquarra ha llegado y marcar� el fin de vuestra realidad. */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",3)~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @97433 /* ~Liphix, querida hermana, �hab�is robado los talismanes y las piedras guarda de vuestros amigos?~*/
  IF ~~ THEN EXTERN ~P_LIPHIX~ 0 
END

IF ~~ THEN BEGIN 14 // from:
  SAY @97434 /* ~Bien, bien.~*/
    IF ~~ THEN REPLY @97435 /* ~�Monstruo! Por tu vida, habla: �qu� est� pasando?~ */  EXTERN ~P_LIPHIX~ 1 
	IF ~~ THEN REPLY @97436 /* ~�Nos han robado! Los talismanes... las piedras... �han desaparecido!~ */ EXTERN ~P_LIPHIX~ 1
END

IF ~~ THEN BEGIN 15 // from:
  SAY @97437 /* ~<CHARNAME>, ella es Liphix. Es una de las hijas m�s poderosas de mi Reina y Madre: Morgrath. Gracias a ella, no podr�s volver a refugiarte en el Trono de Tisiphone, ni podr�s volver al Enclave, pues necesit�is las piedras guarda y los talismanes, �no es as�? ~*/
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @97438 /* ~Mortales... si quieren llegar al Enclave, deber�n encontrar la piedra guarda para volver por el portal. Una de mis Tejedoras ser� su guardi�n. Pero me pregunto... �cu�l de todas ellas? *chirrido* ~*/
  IF ~~ THEN EXTERN ~P_LIPHIX~ 2
END

IF ~~ THEN BEGIN 17 // from:
  SAY @97439 /* Nos veremos pronto, <CHARNAME>. Muy... pronto... */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",3) CreateItem("P_MORRNG",1,1,0) GiveItem("P_MORRNG", Player1) ForceSpell (Myself, POOF_GONE)~ UNSOLVED_JOURNAL @310053 EXIT
END

IF ~AreaCheck("P_F12B")
!See("p_cho")
Global ("P_MesoTalk1","GLOBAL",2)~ THEN BEGIN 18 // from:
  SAY @97432 /* Ah, los mortales aliados de Rachnidra, destructores de los reptiles de Dreach-naga. Hab�is hecho un trabajo espl�ndido acabando con nuestros enemigos... Como recompensa, viajaremos a vuestro Plano y devoraremos todo aquello que apreci�is. Ser� un espect�culo maravilloso: El Shyntquarra ha llegado y marcar� el fin de vuestra realidad. */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",3)~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @97433 /* ~Liphix, querida hermana, �hab�is robado los talismanes y las piedras guarda de vuestros amigos?~*/
  IF ~~ THEN EXTERN ~P_LIPHIX~ 3 
END

IF ~~ THEN BEGIN 20 // from:
  SAY @97434 /* ~Bien, bien.~*/
    IF ~~ THEN REPLY @97435 /* ~�Monstruo! Por tu vida, habla: �qu� est� pasando?~ */  EXTERN ~P_LIPHIX~ 4 
	IF ~~ THEN REPLY @97436 /* ~�Nos han robado! Los talismanes... las piedras... �han desaparecido!~ */ EXTERN ~P_LIPHIX~ 4
END

IF ~~ THEN BEGIN 21 // from:
  SAY @97437 /* ~<CHARNAME>, ella es Liphix. Es una de las hijas m�s poderosas de mi Reina y Madre: Morgrath. Gracias a ella, no podr�s volver a refugiarte en el Trono de Tisiphone, ni podr�s volver al Enclave, pues necesit�is las piedras guarda y los talismanes, �no es as�? ~*/
  IF ~~ THEN GOTO 16
END

//3rd Encounter

IF ~AreaCheck("P_FA6B")
InMyArea("p_cho")
Global ("P_MesoTalk1","GLOBAL",3)~ THEN BEGIN 22 // from:
  SAY @97452 /* La guerra abisal est� llegando a su fin, <CHARNAME>. Mis hermanos han muerto por �ltima vez. Cuando revivan, la vida ser� eterna. */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",4)~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @97453 /* ~Como ya lo debes saber, semidi�s, soy el portador del Talism�n del Muerto Viviente. Si quieres atravesar el umbral, tendr�s que matarme.~ */
    IF ~~ THEN REPLY @97454 /* ~Eso es algo que har� con gusto, Mesothel. Tengo grandes deseos de no ver tu horrible ojo nunca m�s.~ */  GOTO 24
	IF ~~ THEN REPLY @97455 /* ~Tu ojo es el m�s grande que he visto, pero no logro entender c�mo es que no ves la imninencia de tu derrota.~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @97456 /* Tus insultos no significan nada para m�. Pendes de la telara�a de un destino que fue tejido por fuerzas que no logras comprender. Perece en las oscuridades de la duda, <CHARNAME>. Por Rachnidra, tu sangre alimentar� a seres destinados a gobernar tu mundo. */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",4) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ EXIT
END

IF ~AreaCheck("P_FA6B")
!InMyArea("p_cho")
Global ("P_MesoTalk1","GLOBAL",3)~ THEN BEGIN 25 // from:
  SAY @97452 /* La guerra abisal est� llegando a su fin, <CHARNAME>. Mis hermanos han muerto por �ltima vez. Cuando revivan, la vida ser� eterna. */
  IF ~~ THEN DO ~SetGlobal ("P_MesoTalk1","GLOBAL",4)~ GOTO 23
END

I_C_T P_MESO 25 P_MESO1_7
== P_MESO IF ~~ THEN @97457 /* ~*su gran ojo parece examinar los alrededores*~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97458 /* Mesothel, hazte un favor y entr�ganos el Talism�n. Puede que considere perdonarte la vida. */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97459 /* ~Oh, t� tambi�n has sobrevivido, mi dulce alimento. *chirrido* Quieres que entregue el Talism�n, �no es as�?~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97460 /* ~La vida es una constante prueba, hija de la selu'taar. Mi prueba es luchar contra ustedes, una vez m�s. La tuya: sobrevivir a dicho enfrentamiento.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97461 /* He sobrevivido hasta ahora. Hoy no va a ser la excepci�n. �Por mi madre har� lo que sea! */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97462 /* ~Somos de esp�ritus afines, mortal. Porque yo har� lo mismo por la m�a. Ahora deja que me dirija a tu l�der.~ */
END


I_C_T P_MESO 22 P_MESO1_6
== P_MESO IF ~~ THEN @97457 /* ~*su gran ojo parece examinar los alrededores*~ */
== P_CHO IF ~OR(1) InMyArea("p_meso")~ THEN @97463 /* ~Te equivocas, Mesothel. Cuando revivan, ser� la �ltima vez que lo hagan.~ */
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97464 /* ~General Cho'Nuja. Has sobrevivido no s�lo a mis hermanos, sino a los enfrentamientos con mi madre. �Por qu� te niegas a morir? Entr�gate al descanso eterno y deja de lado el sufrimiento.~*/
== P_CHO IF ~OR(1) InMyArea("p_meso")~ THEN @97465 /* ~La guerra es todo lo que conozco. S�lo tengo una m�s que luchar. Rachnidra caer� y todas tus profec�as quedar�n en el olvido.~ */ DO ~UseItem("p_fifirc",Myself)~
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97466 /* ~A�n no lo entiendes... pero pronto lo har�s...~*/

== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97458 /* Mesothel, hazte un favor y entr�ganos el Talism�n. Puede que considere perdonarte la vida. */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97459 /* ~Oh, t� tambi�n has sobrevivido, mi dulce alimento. *chirrido* Quieres que entregue el Talism�n, �no es as�?~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97460 /* ~La vida es una constante prueba, hija de la selu'taar. Mi prueba es luchar contra ustedes, una vez m�s. La tuya: sobrevivir a dicho enfrentamiento.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97461 /* He sobrevivido hasta ahora. Hoy no va a ser la excepci�n. �Por mi madre har� lo que sea! */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97462 /* ~Somos de esp�ritus afines, mortal. Porque yo har� lo mismo por la m�a. Ahora deja que me dirija a tu l�der.~ */
END



I_C_T P_MESO 21 P_MESO1_5
== P_MESO IF ~~ THEN @97440 /* ~...~ */
== P_LIPHIX IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97447 /* ~Hermano...�ella es... la hija de la selu'taar?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97448 /* Soy Fall de Imnescar, monstruo. He viajado lejos para llegar aqu�. Al fin... al fin dan la cara, demonios. */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97449 /* ~Ya la has o�do, hermana. Es ella.~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97450 /* ~En cuanto a ti, mi dulce alimento, s� que har�s lo posible por cumplir tu promesa. Has llegado hasta aqu�, lo s�, porque tu poder se ha incrementado. As� como el de <CHARNAME>.~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97451 /* ~Pero es aqu� donde ser�n testigos del verdadero poder del Shyntquarra, las Legiones que no pueden ser vistas. Este preciso momento ser� el pr�logo del fin de Faer�n. Y ustedes ser�n los protagonistas de ese pr�logo.~ */
END


I_C_T P_MESO 15 P_MESO1_4
== P_MESO IF ~~ THEN @97440 /* ~...~ */
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97441 /* ~Pero... �qu� es lo que ve mi ojo? General Cho'Nuja... �al lado del hijo de Bhaal?~ ~Pero... �qu� es lo que ve mi ojo? General Cho'Nuja... �al lado de la hija de Bhaal?~ */
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97442 /* ~El destino es, en efecto, ir�nico. �Eres reh�n de los primarios, General?~ */
== P_CHO IF ~OR(1) InMyArea("p_meso")~ THEN @97443 /* ~Mesothel, morir�s por todo lo que has hecho.~ */
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97444 /* ~No he sido yo quien ha condenado a la extinci�n a tus hermanos y hermanas, General. No. Esa sentencia ha sido dictada por aquel que camina a tu lado. Podr�a instarte a alzar tus garras contra �l, pero s� que tu esp�ritu carece de la fuerza necesaria. Eres d�bil, y en tu debilidad yace tu perdici�n.~  ~No he sido yo quien ha condenado a la extinci�n a tus hermanos y hermanas, General. No. Esa sentencia ha sido dictada por aquella que camina a tu lado. Podr�a instarte a alzar tus garras contra ella, pero s� que tu esp�ritu carece de la fuerza necesaria. Eres d�bil, y en tu debilidad yace tu perdici�n.~*/
== P_CHO IF ~OR(1) InMyArea("p_meso")~ THEN @97445 /* ~Eres inteligente, lo reconozco. S� que intentas meterte en mi cabeza para guiar mi furia contra <CHARNAME>. Pero no funcionar�. He perdido todo lo que amo y mis sue�os han sido destruidos. Dreach-naga ha ca�do... �pero t�, tus hermanos y tu preciada madre caer�n tambi�n!~ */
== P_MESO IF ~OR(1) InMyArea("p_cho")~ THEN @97446 /* ~*chirrido* Interesante. Vamos a ver si tu nuevo amigo, <CHARNAME>, es capaz de protegerte, General Cho'Nuja.~*/
== P_LIPHIX IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97447 /* ~Hermano...�ella es... la hija de la selu'taar?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97448 /* Soy Fall de Imnescar, monstruo. He viajado lejos para llegar aqu�. Al fin... al fin dan la cara, demonios. */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97449 /* ~Ya la has o�do, hermana. Es ella.~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97450 /* ~En cuanto a ti, mi dulce alimento, s� que har�s lo posible por cumplir tu promesa. Has llegado hasta aqu�, lo s�, porque tu poder se ha incrementado. As� como el de <CHARNAME>.~ */
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97451 /* ~Pero es aqu� donde ser�n testigos del verdadero poder del Shyntquarra, las Legiones que no pueden ser vistas. Este preciso momento ser� el pr�logo del fin de Faer�n. Y ustedes ser�n los protagonistas de ese pr�logo.~ */
END



I_C_T P_MESO 8 P_Fall_MESO1_3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97416 /* ��C�mo...?! Bestia, �c�mo es que sabes que Alendir ha muerto? */
== P_MESO IF ~~ THEN @97417 /* ~Nada escapa a mi ojo, primaria.~ */
== P_MESO IF ~~ THEN @97418 /* ~Mi madre, mi reina... ha tomado inter�s por ustedes. Ha extendido su telara�a a trav�s de las estrellas para permitirme llegar y ver de qu� son capaces t� y tus aliados.~ */
== P_MESO IF ~~ THEN @97419 /* ~�Quieres encontrar a la mujer selu'taar? S�, tu madre. Gemystara.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97420 /* �C�mo s� si a�n est�... viva? �No puedo creer nada de lo que digas! */
== P_MESO IF ~~ THEN @97421 /* ~Pero me creer�s... Oh, s�. S� que lo har�s.~ */
== P_MESO IF ~~ THEN @97422 /* ~Tantas palabras me han cansado. �Quieres estar m�s cerca de encontrar a tu madre? �Ataca!~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97423 /* S�, eso har�, monstruo. �Vamos, <CHARNAME>! */
END

I_C_T P_MESO 7 P_Fall_MESO1_2
== P_MESO IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97424 /* ~Tu mano tiembla, ni�a... �tanto anhelas mi muerte?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97425 /* Es hora... es hora de que mueras. �Mi padre ser� vengado! */
END

I_C_T P_MESO 1 P_Fall_MESO1_1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97426 /* T�... t� has estado en el ataque a mi pueblo. */
== P_MESO IF ~~ THEN @97427 /* ~Yo, Mesothel, he sido uno de los comandantes del ataque a tu pueblo, mi dulce alimento.~ */
== P_MESO IF ~~ THEN @97428 /* ~Han pasado varios a�os desde que ese humano detuvo nuestra invasi�n.~ */
== P_MESO IF ~~ THEN @97429 /* ~Gerwulf era su nombre. Tu padre, �no es as�?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97430 /* �D-demonio! No... �no saldr�s con vida de aqu�! */
END


