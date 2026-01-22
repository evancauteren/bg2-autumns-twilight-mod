BEGIN p_arcont

IF ~~ THEN BEGIN 0 // from:
  SAY @980047 /* Amo, comprendo. */
  IF ~~ THEN EXTERN ~P_ALENJ~ 27
END

IF ~!See("P_ALEN")
OR(2)
AreaCheck("P_FA3B")
AreaCheck("P_BR14")~ THEN BEGIN 1 // from:
  SAY @980048 /* ~Mortal, Arconti os da la bienvenida. ¿En qué os puedo ayudar?~ */
    IF ~~ THEN REPLY @980049 /* Hola, Arconti. ¿Podrías llevarnos al Plano de Hielo? */  GOTO 2
	IF ~~ THEN REPLY @980050 /* Gólem, ¿tienes alguna otra utilidad para mí además de servir como recipiente interplanar? */  GOTO 3
    IF ~~ THEN REPLY @980051 /* Por ahora no necesito nada, Arconti. Adiós. */  GOTO 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY @980052 /* ~Adiós, mortal.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @980053 /* ~Adiós, mortal.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @980054 /* ~Adiós, mortal.~ */
  IF ~~ THEN DO ~
    CutSceneId(Player1)
    CreateVisualEffectObject("SPDIMNDR",Player1)
    CreateVisualEffectObject("SPDIMNDR",Player2)
    CreateVisualEffectObject("SPDIMNDR",Player3)
    CreateVisualEffectObject("SPDIMNDR",Player4)
    CreateVisualEffectObject("SPDIMNDR",Player5)
    CreateVisualEffectObject("SPDIMNDR",Player6)
    FadeToColor([20.0],0)
	Wait(1)
	ActionOverride(Player1,LeaveAreaLUA("P_FAR4","",[506.430],N))
    ActionOverride(Player2,LeaveAreaLUA("P_FAR4","",[505.391],N))
    ActionOverride(Player3,LeaveAreaLUA("P_FAR4","",[562.428],N))
    ActionOverride(Player4,LeaveAreaLUA("P_FAR4","",[537.477],N))
    ActionOverride(Player5,LeaveAreaLUA("P_FAR4","",[470.471],N))
    ActionOverride(Player6,LeaveAreaLUA("P_FAR4","",[439.423],N))
    MultiPlayerSync()
    Wait(1)
    FadeFromColor([20.0],0)
    CreateVisualEffectObject("SPDIMNDR",Myself)
    ActionOverride(Player2,CreateVisualEffectObject("SPDIMNDR",Myself))
    ActionOverride(Player3,CreateVisualEffectObject("SPDIMNDR",Myself))
    ActionOverride(Player4,CreateVisualEffectObject("SPDIMNDR",Myself))
    ActionOverride(Player5,CreateVisualEffectObject("SPDIMNDR",Myself))
    ActionOverride(Player6,CreateVisualEffectObject("SPDIMNDR",Myself))
    Wait(5)
    EndCutSceneMode()
~ EXIT
END

IF ~See("P_ALEN")
OR(2)
AreaCheck("P_FA3B")
AreaCheck("P_BR14")~ THEN BEGIN 1 // from:
  SAY @980048 /* ~Mortal, Arconti os da la bienvenida. ¿En qué os puedo ayudar?~ */
    IF ~~ THEN REPLY @980049 /* Hola, Arconti. ¿Podrías llevarnos al Plano de Hielo? */  GOTO 2
	IF ~~ THEN REPLY @980050 /* Gólem, ¿tienes alguna otra utilidad para mí además de servir como recipiente interplanar? */  GOTO 3
    IF ~~ THEN REPLY @980051 /* Por ahora no necesito nada, Arconti. Adiós. */  GOTO 4
END