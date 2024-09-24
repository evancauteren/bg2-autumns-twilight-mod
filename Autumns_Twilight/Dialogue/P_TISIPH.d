BEGIN P_TISIPH

IF ~Global("P_FMeetingTis","GLOBAL",0)
AreaCheck("P_FA13")
~ THEN BEGIN 0 // from:
  SAY @9100 /* ~General, ¿estos son las criaturas de la superficie que destruyeron a tu ejército? Patético...~ */
  IF ~~ THEN DO ~SetGlobal("P_FMeetingTis","GLOBAL",1)~ EXTERN ~P_CHO~ 25
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9102 /* ~Y tú, enemigo mío. ¿A qué habéis venido? Eres aliado de Morgrath, la Usurpadora, ¿no es así?~ */
    IF ~~ THEN REPLY @9103 /* Mi Reina, mi nombre es- */  GOTO 2
	IF ~~ THEN REPLY @9104 /* ¡Bruja, hemos venido para-! */ GOTO 2
	IF ~~ THEN REPLY @9105 /* Tisiphone, no somos enemigos, de hecho-- */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9106 /* ~¡Silencio! Ahora no me interesa escuchar las palabras de seres inferiores. Pero presenciarás cómo lidio con aquellos que no están a la altura de mis expectativas...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9107 /* ~¡General Cho'Nuja! Tu incompetencia ha traído desgracias a nuestro Reino. No has logrado derrotar a las arañas y mucho menos has evitado que los enemigos alcancen la Sala Real. Por lo tanto: te sentencio a muerte.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9108 /* Cho'Nuja. Que tu carne alimente a los pantanos de Dreach-naga... */
  IF ~~ THEN DO ~SetGlobal ("P_FMeetingTis","GLOBAL",1)~ EXIT
END

IF ~Global ("P_TisiphoneAttCho","GLOBAL",1)
AreaCheck("P_FA13")
Dead("p_rask")
~ THEN BEGIN 5 // from:
  SAY @91014 /* ~*suspiro* Parece que Cho'Nuja es más resistente de lo que esperaba. No importa, en cuestión de minutos morirá.~ */
  IF ~~ THEN DO ~SetGlobal("P_TisiphoneAttCho","GLOBAL",2)~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @91015 /* ~¿Qué veis? Dreach-naga no es un lugar para los débiles.~ */
    IF ~~ THEN REPLY @91016 /* ¿Por qué buscas la destrucción de los tuyos? Cho'Nuja no ha hecho más que servirte. */  GOTO 7
	IF ~~ THEN REPLY @91017 /* Me importan bien poco sus costumbres, monstruo. Estamos aquí para destruirte. ¡Tu corazón será mío! */ GOTO 8
	IF ~~ THEN REPLY @91018 /* Su Alteza, no buscamos conflictos. De hecho, somos enemigos de la que llamas Morgrath. */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from:
  SAY @91019 /* ~¿Cómo puedo esperar que unos simples foráneos entiendan nuestras costumbres? Mi paciencia se está agotando.~ */
	IF ~~ THEN REPLY @91017 /* Me importan bien poco sus costumbres, monstruo. Estamos aquí para destruirte. ¡Tu corazón será mío! */ GOTO 8
	IF ~~ THEN REPLY @91018 /* Su Alteza, no buscamos conflictos. De hecho, somos enemigos de la que llamas Morgrath. */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from:
  SAY @91022 /* ¡Criatura estúpida! Gassthon, activa la trampa. Los intrusos morirán aquí y ahora. Matad. ¡Matad por vuestra Reina! */
  IF ~~ THEN DO ~SetGlobal ("P_TisiphoneAttCho","GLOBAL",2) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ UNSOLVED_JOURNAL @310047 EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @91023 /* ¿Enemigos de la Usurpadora? La llegada de la Reina Araña no ha hecho más que dañar mis tierras al punto del emponzoñamiento total. Es sólo cuestión de tiempo para que todo Dreach-naga, incluyendo el Enclave de esa bruja Vidomina, sea rebasado por la oscuridad de Rachnidra. */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @91024 /* ~Sin embargo, la gran Tisiphone no necesita aliados. Dreach-naga es fuerte y no caerá ante Rachnidra.~ */
	IF ~OR (2) !InParty("P_Fall") !InMyArea("P_Fall")~ THEN REPLY @91025 /* No creo que sea así. De hecho, necesitamos de tu sangre para poder invadir el cubículo de Morgrath y así derrotarla. Nuestro enemigo es común. */ GOTO 11
	IF ~OR (2) InParty("P_Fall") InMyArea("P_Fall")~ THEN REPLY @91025 /* No creo que sea así. De hecho, necesitamos de tu sangre para poder invadir el cubículo de Morgrath y así derrotarla. Nuestro enemigo es común. */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from:
  SAY @91026 /* ¡Mi sangre es de la realeza, escoria! *risa* ¿Seres inferiores vienen a exigirme a mí? Gassthon, me he cansado de ellos. ¡Activa la trampa y matadlos! Matad. ¡Matad por vuestra Reina! */
  IF ~~ THEN DO ~SetGlobal ("P_TisiphoneAttCho","GLOBAL",2) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ UNSOLVED_JOURNAL @310048 EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @91027 /* ¡Mi sangre es de la realeza, escoria! *risa* ¿Seres inferiores vienen a exigirme a mí? Gassthon, me he cansado de ellos-- */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @91020 /* ¡Activa la trampa y matadlos! Matad. ¡Matad por vuestra Reina! */
  IF ~~ THEN DO ~SetGlobal ("P_TisiphoneAttCho","GLOBAL",2) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ UNSOLVED_JOURNAL @310048 EXIT
END

////////////////////////////////////////////////

IF ~Global ("P_TisiphoneAttCho","GLOBAL",1)
AreaCheck("P_FA13")
!Dead("p_rask")
~ THEN BEGIN 14 // from:
  SAY @91014 /* ~*suspiro* Parece que Cho'Nuja es más resistente de lo que esperaba. No importa, en cuestión de minutos morirá.~ */
  IF ~~ THEN DO ~SetGlobal("P_TisiphoneAttCho","GLOBAL",2)~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @91015 /* ~¿Qué veis? Dreach-naga no es un lugar para los débiles.~ */
    IF ~~ THEN REPLY @91016 /* ¿Por qué buscas la destrucción de los tuyos? Cho'Nuja no ha hecho más que servirte. */  GOTO 16
	IF ~~ THEN REPLY @91017 /* Me importan bien poco sus costumbres, monstruo. Estamos aquí para destruirte. ¡Tu corazón será mío! */ GOTO 17
	IF ~~ THEN REPLY @91018 /* Su Alteza, no buscamos conflictos. De hecho, somos enemigos de la que llamas Morgrath. */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from:
  SAY @91019 /* ~¿Cómo puedo esperar que unos simples foráneos entiendan nuestras costumbres? Mi paciencia se está agotando.~ */
	IF ~~ THEN REPLY @91017 /* Me importan bien poco sus costumbres, monstruo. Estamos aquí para destruirte. ¡Tu corazón será mío! */ GOTO 17
	IF ~~ THEN REPLY @91018 /* Su Alteza, no buscamos conflictos. De hecho, somos enemigos de la que llamas Morgrath. */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from:
  SAY @91037 /* ¡Criatura estúpida! Gassthon, activa la trampa. Los intrusos morirán aquí y ahora. Liberad a Rask'tar Krathiss. Matad. ¡Matad por vuestra Reina! */
  IF ~~ THEN DO ~SetGlobal ("P_TisiphoneAttCho","GLOBAL",2) SetGlobal ("P_ReleaseTheHydra","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ UNSOLVED_JOURNAL @310047 EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY @91023 /* ¿Enemigos de la Usurpadora? La llegada de la Reina Araña no ha hecho más que dañar mis tierras al punto del emponzoñamiento total. Es sólo cuestión de tiempo para que todo Dreach-naga, incluyendo el Enclave de esa bruja Vidomina, sea rebasado por la oscuridad de Rachnidra. */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @91024 /* ~Sin embargo, la gran Tisiphone no necesita aliados. Dreach-naga es fuerte y no caerá ante Rachnidra.~ */
	IF ~OR (2) !InParty("P_Fall") !InMyArea("P_Fall")~ THEN REPLY @91025 /* No creo que sea así. De hecho, necesitamos de tu sangre para poder invadir el cubículo de Morgrath y así derrotarla. Nuestro enemigo es común. */ GOTO 20
	IF ~OR (2) InParty("P_Fall") InMyArea("P_Fall")~ THEN REPLY @91025 /* No creo que sea así. De hecho, necesitamos de tu sangre para poder invadir el cubículo de Morgrath y así derrotarla. Nuestro enemigo es común. */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from:
  SAY @91035 /* ¡Mi sangre es de la realeza, escoria! *risa* ¿Seres inferiores vienen a exigirme a mí? Gassthon, me he cansado de ellos. ¡Activa la trampa y matadlos! Liberad a Rask'tar Krathiss. Matad. ¡Matad por vuestra Reina! */
  IF ~~ THEN DO ~SetGlobal ("P_TisiphoneAttCho","GLOBAL",2) SetGlobal ("P_ReleaseTheHydra","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ UNSOLVED_JOURNAL @310048 EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY @91027 /* ¡Mi sangre es de la realeza, escoria! *risa* ¿Seres inferiores vienen a exigirme a mí? Gassthon, me he cansado de ellos-- */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from:
  SAY @91036 /* ¡Activa la trampa y matadlos! Liberad a Rask'tar Krathiss. Matad. ¡Matad por vuestra Reina! */
  IF ~~ THEN DO ~SetGlobal ("P_TisiphoneAttCho","GLOBAL",2) SetGlobal ("P_ReleaseTheHydra","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ UNSOLVED_JOURNAL @310048 EXIT
END


I_C_T P_TISIPH 21 P_FallJ_Tis_Fall_F13_3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91021 /* ¡Espera, Tisiphone! */
== P_TISIPH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91028 /* ¿Quién es la criaturita que osa interrumpirme? Hm, me resultas familiar. Tus vestimentas... */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91029 /* Soy Fall, hija de Gemystara. Mi madre se enfrenta a Morgrath mientras hablamos. <CHARNAME> y yo intentamos rescatarla, lo que implica terminar con esta guerra abisal, Su Alteza. */
== P_TISIPH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91030 /* ¡Lo sé, lo he descubierto! Tú... tú eres la hija de esa hechicera que osó lastimarme. ¡Fui mutilada por una de sus artimañas! */ 
== P_GASS IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91031 /* (De hecho, sólo fue un pequeño corte...) */
== P_TISIPH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91032 /* ¡¿Crees que osaré brindar ayuda a unos insensatos como ustedes?! Mi odio hacia ustedes es igual de intenso que el que tengo hacia La Usurpadora. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91033 /* Pero nosotros-- */
== P_TISIPH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91034 /* ¡Silencio! Capitán Gassthon... */ 
END


I_C_T P_TISIPH 12 P_FallJ_Tis_Fall_F13_2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91021 /* ¡Espera, Tisiphone! */
== P_TISIPH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91028 /* ¿Quién es la criaturita que osa interrumpirme? Hm, me resultas familiar. Tus vestimentas... */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91029 /* Soy Fall, hija de Gemystara. Mi madre se enfrenta a Morgrath mientras hablamos. <CHARNAME> y yo intentamos rescatarla, lo que implica terminar con esta guerra abisal, Su Alteza. */
== P_TISIPH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91030 /* ¡Lo sé, lo he descubierto! Tú... tú eres la hija de esa hechicera que osó lastimarme. ¡Fui mutilada por una de sus artimañas! */ 
== P_GASS IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91031 /* (De hecho, sólo fue un pequeño corte...) */
== P_TISIPH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91032 /* ¡¿Crees que osaré brindar ayuda a unos insensatos como ustedes?! Mi odio hacia ustedes es igual de intenso que el que tengo hacia La Usurpadora. */ 
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91033 /* Pero nosotros-- */
== P_TISIPH IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91034 /* ¡Silencio! Capitán Gassthon... */ 
END


I_C_T P_TISIPH 3 P_FallJ_Tis_F13_1
== P_GASS IF ~~ THEN @9109 /* ¡Su Alteza! Por favor... no lo haga. Cho ha sido leal al Reino durante décadas. ¡Nos ha liderado batallas tras batallas contra las arañas! Por favor-- */
== P_CHO IF ~~ THEN @91010 /* ¡Capitán Gassthon! No pongas en duda a los dictámenes de nuestra Reina. Estoy listo para afrontar mi destino. */
== P_GASS IF ~~ THEN @91011 /* General... */
== P_CHO IF ~~ THEN @91012 /* Sé valiente, amigo mío. Defiende a nuestra Reina hasta las últimas fuerzas. */
== P_TISIPH IF ~~ THEN @91013 /* ~¡Suficiente! Capitán, no os ordenaré que lleves a cabo la ejecución. Es algo que haré yo misma.~ */
END