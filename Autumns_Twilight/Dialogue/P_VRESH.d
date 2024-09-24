BEGIN P_VRESH

IF ~~ THEN BEGIN 0 // from:
  SAY @9390 /* ~Tiene... tiene la piedra guarda de Qyl'tar. Eso quiere decir...~*/
  IF ~~ THEN EXTERN ~P_CHO~ 15
END

IF ~Global("P_ChocRevivalFriends","GLOBAL",5)
AreaCheck("P_FAR7")
~ THEN BEGIN 1 // from:
  SAY @9397 /* ~Tus hazañas me impresionan, <CHARNAME>. Luchar a tu lado será un honor.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
AreaCheck("P_FA3B")
~ THEN BEGIN 2 // from:
  SAY @9398 /* ~Nos quedaremos un tiempo por aquí, <CHARNAME>. Luego, creo que partiremos con Vidomina. Aún lo estamos debatiendo con Gassthon y Qyl'tar. En cuanto a Cho, creo que decidirá quedarse indefinidamente. Yo no puedo hacerlo, verás, alguien tiene que cuidar las espaldas de Qyl.~ */ IF ~~ THEN DO ~~ EXIT
END


I_C_T P_VRESH 0 P_FallJ_Vresh_Fall_F10_1
== P_CHO IF ~~ THEN @9391 /* Que Qyl'tar ha muerto. Me lo suponía... estos no son simples aventureros de la superficie.  */
== P_VRESH IF ~~ THEN @9392 /* Qyl'tar... ha muerto... */
== P_CHO IF ~~ THEN @9393 /* Comandante Vreshnak, espabila. Sí, Qyl'tar ha caído, pero está en nosotros vengarlo.  */
== P_CHO IF ~~ THEN @9394 /* Recuerda: debemos proteger a nuestra Reina a toda costa. Como os dije-  */
== P_VRESH IF ~~ THEN @9395 /* Ellos... buscan su sangre. Lo sé, mi general. Protegeré los límites del Reino. Usted debe proteger el portal al Pantano. */
== P_VRESH IF ~~ THEN @9396 /* ¡Vengaré a Qyl'tar! Por nuestra Reina... ¡Por Dreach-naga! */ DO ~DestroyItem("MINHP1")DestroyItem("IMMUNE1") Enemy()~
END

