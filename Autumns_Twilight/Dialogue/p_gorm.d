BEGIN P_GORM


IF ~Global("P_Fall_Kitoch_Charname","GLOBAL",8)~ THEN BEGIN 0 // from:
  SAY @9470 /* *gruñido* ¿Qué huelo? Alimento fresco... */
  IF ~~ THEN DO ~Enemy() SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",10)~ EXTERN ~P_KITOCH~ 63
END


IF ~~ THEN BEGIN 1 // from:
  SAY @9471 /* ~¿Quién es esta criatura que me habla con tanta confianza? Hay algo familiar en ti...~*/
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9473 /* Tú también morirás, mortal. */
    IF ~~ THEN REPLY @9474 /* ~No tienes idea de a quién le hablas, monstruo. Tu existencia acaba aquí, ahora.~ */  GOTO 3
    IF ~~ THEN REPLY @9475 /* ~Eso lo veremos, Gorm. Es la hora de tu destrucción. ¡Muere!~ */  GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9472 /* ~¡Suficiente! Sus huesos serán un trofeo para mi señora. ¡Hijos míos! Es la hora de comer...~ */
  IF ~~ THEN DO ~Enemy() SetGlobal ("P_Fall_Kitoch_Charname","GLOBAL",10)~ EXIT
END

I_C_T P_GORM 1 P_Fall_1GORM_1
== P_KITOCH IF ~~ THEN @9476 /* ~Soy Kitochi Celestrial de Imnescar y he venido a vengar la muerte de Aeris de Wéldazh.~ */
== P_GORM IF ~~ THEN @9477 /* ~Ah, eres el plano exterior... me sorprende que hayas logrado entrar a mis aposentos.~ */
== P_GORM IF ~~ THEN @9478 /* ~Ahora recuerdo... el mortal que mencionas era ese hechicero de la naturaleza que acabó con mis crías usando sus rayos.~ */
== P_GORM IF ~~ THEN @9479 /* ~Una proeza notable. Pocos pueden escapar de la telaraña de mi señora.~ */
== P_GORM IF ~~ THEN @94710 /* ~Bueno... "Escapar" no es la palabra que usaría para tu mortal.~ */
== P_GORM IF ~~ THEN @94711 /* ~Mis dientes penetraron en su piel... y con ellos mi hiel.~ */
== P_GORM IF ~~ THEN @94712 /* ~Dime, Kitochi Celestrial... ¿cómo fue ver morir a tu hechicero de la naturaleza?~ */
== P_KITOCH IF ~~ THEN @94713 /* ~Ahorra tus ponzoñosas palabras, inmundicia. Pronto serán tú quien se ahogue en su propia hiel.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @94714 /* Me gustaría saber más sobre tu "señora", bestia. ¿A quién sirves? */
== P_GORM IF ~~ THEN @94715 /* ~*siseo* Sirvo a la Oscuridad, mortal. Sirvo a la Legión que no se puede ver. Porque mi señora son muchos. Mi señora, como la oscuridad, es infinita.~ */
== P_GORM IF ~~ THEN @94716 /* ~No diré más... mis hijos tienen hambre. Es hora de comer.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @94717 /* ¡Kitochi! Estoy contigo en esto. Es hora de vengar a Aeris. */
END


