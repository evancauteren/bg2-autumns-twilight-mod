BEGIN P_XSIRUM


IF ~AreaCheck("P_FAR7")  RandomNum(8,1)
~ THEN BEGIN 1 // from:
  SAY @9290 /* ~No tengo la certeza de que todos los reptiles sean criaturas malignas. De hecho, creo que su General, el guerrero salvaje Cho'Nuja, no sea otra cosa que la paz. Pero es imposible razonar con las arañas.~ */
  IF ~~ THEN EXIT
END

IF ~AreaCheck("P_FAR7")  RandomNum(8,2)
~ THEN BEGIN 2 // from:
  SAY @9291 /* ~La Reina Medusa, Tisiphone, es una criatura vengativa y sedienta de sangre. No se diferencia mucho de la Reina Araña y Vidomina cree que su verdadera intención es invadir el Plano Material una vez que la guerra contra las Arañas llegue a su fin.~ */
  IF ~~ THEN EXIT
END

IF ~AreaCheck("P_FAR7")  RandomNum(8,3)
~ THEN BEGIN 3 // from:
  SAY @9292 /* ~No hay muchos lugares en los que podrás descansar aquí. El Abismo es un lugar sombrío y peligroso. Pero también mágico y misterioso. Sus energías oscuras no dejarán que descanses en paz. Afortunadamente, el Enclave de Vidomina es uno de los pocos lugares en esta capa en la que podrás hallar paz y tranquilidad.~ */
  IF ~~ THEN EXIT
END


IF ~AreaCheck("P_FAR7")  RandomNum(8,4)
~ THEN BEGIN 7 // from:
  SAY @9293 /* ~La mayoría de nosotros no llegamos como muertos vivientes aquí. Éramos mortales, como tú. Vidomina nos acogió y preguntó si queríamos convertirnos. Ella nos asegura que podrá sacar esta condición de muerte viviente si logramos que la guerra acabe. Incluso, puede que podamos volver a casa.~ */
  IF ~~ THEN EXIT
END

IF ~ AreaCheck("P_FAR7") RandomNum(8,5)
~ THEN BEGIN 8 // from:
  SAY @9294 /* ~Yo era un sacerdote hechicero de Curna. El conocimiento era mi pasión, pero terminó siendo, también, mi maldición. Llegué aquí por accidente y fui perseguido por poderosas arañas. Vidomina me salvó y refugió en su Enclave. Ahora trabajo para ella.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,6)
~ THEN BEGIN 11 // from:
  SAY @9295 /* ~Vidomina no es de Faerûn. Su deidad es prueba de ello ya que su influjo llega incluso a estos rincones oscuros. Pero también llegan los de los dioses de mi panteón. El Abismo es un lugar sumamente misterioso.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,7)
~ THEN BEGIN 12 // from:
  SAY @9296 /* ~Tamika viene de Amn. No habla mucho, pero sospecho que, por sus habilidades, era una guerrera de fe. Quizás una paladín. Su habilidad con la espada no tiene igual. Aunque, como verás, también tiene carisma para llevar una tienda de artefactos. Aunque no haya mucha clientela, claro.~ */
  IF ~~ THEN EXIT
END

IF ~RandomNum(8,8)~ THEN BEGIN 13 // from:
  SAY @9297 /* ~Nimbus no requiere de sangre para subsistir. Gracias a Vidomina, su conversión hacia la muerte viviente no fue dolorosa como suele ser por la vía natural. Creo que está bastante contenta con su estado y no sé si quiera volver a ser mortal.~ */
  IF ~~ THEN EXIT
END