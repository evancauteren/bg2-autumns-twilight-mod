BEGIN P_SKEL

IF ~AreaCheck("P_FA15")
InMyArea("p_cho")
Global ("P_SkelTalk1","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @9150 /* �M�s ofrendas para Skel'Tharant? Llegan a tiempo. Estaba comenzando a sentir un poco de aburrimiento.  */
  IF ~~ THEN DO ~SetGlobal ("P_SkelTalk1","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9151 /* ~Hm... T� tienes un aura particular. Un poder creciente en tu interior, pese a que carezcas de lo que llaman "alma". Sabes, no necesitas de eso para conquistar los planos. ~*/
    IF ~~ THEN REPLY @9152 /* ~�Qu� sabes t� de mi alma? Un bastardo llamado Jon Irenicus me la arrebat�. Cuando termine mis asuntos aqu�, sellar� ese asunto y la recuperar�.~ */  GOTO 3
	IF ~~ THEN REPLY @9153 /* ~No sab�a que un monstruo estaba al tanto de algo tan divino como un alma. No creo que eso importe, ya que vine aqu� a acabar contigo.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9154 /* ~"Intentar acabar" querr�s decir. Muchos lo han intentado. Nadie lo ha logrado. Eres un semidi�s y hace mucho tiempo que no hablo con seres tan poderosos como t�. Que mis palabras sean las �ltimas que oigas, <PRO_RACE>.~ ~"Intentar acabar" querr�s decir. Muchos lo han intentado. Nadie lo ha logrado. Eres un semidiosa y hace mucho tiempo que no hablo con seres tan poderosos como t�. Que mis palabras sean las �ltimas que oigas, <PRO_RACE>.~ */
  IF ~~ THEN GOTO 3
END


IF ~~ THEN BEGIN 3 // from:
  SAY @9155 /* ~�Qu� es lo que s� yo sobre las almas? Durante milenios he visto c�mo las almas han debilitado a los mortales. Los hace fr�giles, pasionales. Mortales. Los de mi clase no tenemos almas. Pero tenemos algo mucho m�s poderoso: Una esencia interior, que es el centro de nuestro poder.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9156 /* ~Nuestra esencia nos moldea. Nos forma. Nos alimenta.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9157 /* ~Oh, s�... nosotros no nos alimentamos para sustentar una necesidad b�sica como ustedes. No. Nosotros nos alimentamos porque lo disfrutamos. Disfrutamos el sometimiento de criaturas d�biles y pat�ticas que s�lo sirven de enlace a nuestra Esencia interior.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9158 /* ~Es nuestro destino: Someter a los de tu mundo.~*/
    IF ~~ THEN REPLY @9159 /* ~Entonces, �por eso sigues a Morgrath? �Qu� es lo que te prometi�?~ */  GOTO 7
	IF ~~ THEN REPLY @91510 /* ~No eres m�s que el lacayo de un monstruo, Skel'Tharant. En el momento en que dejases de ser �til a Morgrath, de seguro te despachar�a.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from:
  SAY @91511 /* ~Nosotros estamos m�s all� de promesas o de cualquier asunto que pueda asemejarse a ustedes, los mortales. Nuestra b�squeda es recuperar lo que se nos arrebat�. �Cu�l es el derecho de que criaturas d�biles posean una tierra que apenas pueden gobernar? Es s�lo cuesti�n de tiempo para que ustedes mismos saboteen la naturaleza misma de la tierra que pisan.~ */
  IF ~~ THEN GOTO 7_5
END

IF ~~ THEN BEGIN 7_5 // from:
  SAY @91512 /* ~Nosotros llevaremos pureza a tu mundo. Llevaremos la m�s absoluta Oscuridad y en la negrura del cosmos, todos seremos iguales.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @91513 /* ~Ves mi forma y ves a un monstruo. Ves a mi Reina y ves en m� a un simple lacayo. Pero eso no es as�. Emito sonidos que son comprensibles para ti s� que entender�s este idioma, pero nuestro objetivo va m�s all� de las palabras que mi sagrada fauce pueda expulsar.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @91514 /* Eres mi alimento, <CHARNAME>. Las palabras, a partir de ahora, sobran. Vamos. Abraza tu muerte. */
  IF ~~ THEN DO ~SetGlobal ("P_SkelTalk1","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") Enemy()~ EXIT
END

IF ~AreaCheck("P_FA15")
!InMyArea("p_cho")
Global ("P_SkelTalk1","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY @9150 /* �M�s ofrendas para Skel'Tharant? Llegan a tiempo. Estaba comenzando a sentir un poco de aburrimiento. */
  IF ~~ THEN DO ~SetGlobal ("P_SkelTalk1","GLOBAL",1)~ GOTO 1
END


// Regeneraci�n inmediata en SKEL

IF ~AreaCheck("P_FA15")
Global ("P_FallSkelNearestDead1","GLOBAL",1)~ THEN BEGIN 11 // from:
  SAY @91515 /* �Est�s sorprendido, <CHARNAME>? Hay mucho que no sabes de nosotros. La duda te acompa�ar� en la eterna oscuridad. */
  IF ~~ THEN DO ~SetGlobal ("P_FallSkelNearestDead1","GLOBAL",2) Enemy()~ EXIT
END

IF ~AreaCheck("P_FA15") 
Global ("P_FallSkelNearestDead1","GLOBAL",3)~ THEN BEGIN 12 // from:
  SAY @91516 /* Esto es divertido. Hac�a mucho tiempo que nadie me obligaba a luchar en serio. Disfrutar� limpiar la carne de tus huesos. */
  IF ~~ THEN DO ~SetGlobal ("P_FallSkelNearestDead1","GLOBAL",4) Enemy()~ EXIT
END

IF ~AreaCheck("P_FA15")
Global ("P_FallSkelNearestDead1","GLOBAL",5)~ THEN BEGIN 13 // from:
  SAY @91517 /* *chirrido* Ahora comprendo c�mo es que has derrotado a los hijos de Morgrath e incluso llegado hasta a m�. Vamos, <CHARNAME>... Vida o muerte, no hay m�s alternativas. */
  IF ~~ THEN DO ~SetGlobal ("P_FallSkelNearestDead1","GLOBAL",6) DestroyItem("MINHP1") Enemy() ~ EXIT
END

// CON PHILLIPE
IF ~AreaCheck("P_FA15") 
Global ("P_FallSkelNearestDead2","GLOBAL",1)~ THEN BEGIN 14 // from:
  SAY @91518 /* No comprendes lo que est� sucediendo, �verdad? Es el preludio a tu destrucci�n, <CHARNAME>. �Muere! */
  IF ~~ THEN DO ~SetGlobal("P_FallSkelNearestDead2","GLOBAL",2) ChangeEnemyAlly(Myself,NEUTRAL)~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY @91519 /* ~�T�? Te recuerdo, ameba. Eres uno de los pocos que pudo escapar a mis redes. �Has regresado para morir?~ */
  IF ~~ THEN EXTERN ~P_PHILLI~ 45
END

IF ~AreaCheck("P_FA15") 
Global ("P_PhillipeBravery","GLOBAL",6)~ THEN BEGIN 16 // from:
  SAY @91524 /* La rata ha logrado herir mis facultades curativas... no importa, <CHARNAME>. �A�n tienes que derrotarme! */
  IF ~~ THEN DO ~SetGlobal ("P_PhillipeBravery","GLOBAL",7) DestroyItem("MINHP1") Enemy() ~ EXIT
END

I_C_T P_SKEL 15 P_PHILLIP_SKEL_1
== P_PHILLI IF ~~ THEN @91520 /* Phillipe venir en ayuda de sus amigos. �<CHARNAME>! Aceite de la Dama estar listo.  */
== P_SKEL IF ~~ THEN @91521 /* �Aceite? Criatura est�pida, �de verdad crees que puedes hacerme da�o con eso?  */
== P_PHILLI IF ~~ THEN @91522 /* Phillipe vengar a sus hermanos. Phillipe hacer pagar a Skel'Tharant el da�o que ha hecho.  */
== P_SKEL IF ~~ THEN @91523 /* Ser insignificante. Apenas puedes moverte. El miedo carcome tu coraz�n, lo puedo sentir.  */
END