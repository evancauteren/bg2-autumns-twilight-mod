BEGIN P_KAKUT2

IF
~RandomNum(5,1)~ THEN BEGIN 0 // from:
  SAY @10000028 /* ~*Kakuto te observa fijamente. Sus ojos brillan y si tuvieras que adivinar, parece estar admirándote.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 1 // from:
  SAY @10000029 /* ~*Kakuto deja escapar algunos chirridos. No estás seguro de qué signifique, pero parece algo amigable ya que, pese a su gran tamaño, parece esforzarse para no molestarte.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 2 // from:
  SAY @10000030 /* ~*Kakuto se mueve muy lentamente, como si quisiera evitar pisar algo que no debiera. Sin embargo, la sutileza no es algo inherente a él y hace más ruido que silencio, provocando estruendos a su alrededor.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 3 // from:
  SAY @10000031 /* ~*Kakuto mueve su cabeza mientras te observa. ¿Querrá que lo alimentes?*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 4 // from:
  SAY @10000032 /* ~*Kakuto muestra su gran cuerno con orgullo. Está más que dispuesto a seguir tus órdenes, sean cuales sean.*~ */
  IF ~~ THEN EXIT
END

