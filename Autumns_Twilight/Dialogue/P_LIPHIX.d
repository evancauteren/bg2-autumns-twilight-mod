BEGIN P_LIPHIX

IF ~~ THEN BEGIN 0 // from:
  SAY @9330 /* ~As� es, hermano. Sus talismanes y piedras guarda est�n en mi poder.~*/
  IF ~~ THEN EXTERN ~P_MESO~ 14
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9331 /* ~*chirrido* Me temo que yo he sido la responsable, mortal. He usado mis poderes de v�rtice para buscar estos objetos tan importantes. Deber�as haberlos cuidado mejor. *chirrido* ~*/
  IF ~~ THEN EXTERN ~P_MESO~ 15
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9332 /* ~Debemos seguir con la siguiente parte del plan, hermano m�o. La piedra ser� entregada a uno de tus Tejedores y el resto a nuestros hermanos. �Larga vida a la Reina!~*/
  IF ~~ THEN DO ~ForceSpell (Myself, POOF_GONE)~ EXTERN ~P_MESO~ 17
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9330 /* ~As� es, hermano. Sus talismanes y piedras guarda est�n en mi poder.~*/
  IF ~~ THEN EXTERN ~P_MESO~ 20
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9331 /* ~*chirrido* Me temo que yo he sido la responsable, mortal. He usado mis poderes de v�rtice para buscar estos objetos tan importantes. Deber�as haberlos cuidado mejor. *chirrido* ~*/
  IF ~~ THEN EXTERN ~P_MESO~ 21
END

IF ~AreaCheck("P_FA8B")
InMyArea("p_cho")
Global ("P_LiphixTalk1","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY @9333 /* *chirrido* Arthrom y Kankra est�n muertos. Lo s�. Est�s aqu� y tienes sus piedras. */
  IF ~~ THEN DO ~SetGlobal ("P_LiphixTalk1","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9334 /* ~�<CHARNAME>! Prep�rate. Ante el monumento de mi madre, vengar� la ca�da de mis hermanos.~*/
    IF ~~ THEN REPLY @9335 /* ~�Cu�l es el punto de tu ira? Cre�a que ustedes eran revividos por su preciada madre.~ */  GOTO 7
	IF ~~ THEN REPLY @9336 /* ~Me preocupan bien poco tus sentimientos, alima�a. Hoy caer�s y eso es todo lo que tendr�a que importarte.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from:
  SAY @9337 /* ~Puede que Kankra sea un imb�cil o que Arthrom sea muy peculiar, pero son mis hermanos. �Es una cuesti�n de principios que no deba dejar pasar tama�a impertinencia!~*/
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @9338 /* �Suficiente! El Talism�n de Dreach-naga es m�o. S�lo m�o. Madre, observa lo que he de hacer por ti. */
  IF ~~ THEN DO ~SetGlobal ("P_LiphixTalk1","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ EXIT
END

IF ~AreaCheck("P_FA8B")
!InMyArea("p_cho")
Global ("P_LiphixTalk1","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY @9333 /* *chirrido* Arthrom y Kankra est�n muertos. Lo s�. Est�s aqu� y tienes sus piedras. */
  IF ~~ THEN DO ~SetGlobal ("P_LiphixTalk1","GLOBAL",1)~ GOTO 6
END

I_C_T P_LIPHIX 5 P_LIPHIX1_0
== P_CHO IF ~~ THEN @9339 /* ~No eran sus piedras, Liphix. Pertenec�an a Qyl'tar y a Vreshnak. S� muy bien que conoces a esta �ltima, �no?~ */
== P_LIPHIX IF ~~ THEN @93310 /* ~General. Vreshnak y yo hemos combatido en muchas ocasiones, es verdad.~ */
== P_LIPHIX IF ~~ THEN @93311 /* ~Sin embargo, y a diferencia de mis hermanos, no forj� una enemistad contra ella, ni ella contra m�.~ */
== P_LIPHIX IF ~~ THEN @93312 /* ~No tiene sentido la enemistad cuando una de las dos partes supera ampliamente en fuerza a la otra. Sabes que Rachnidra prevalecer� por sobre Dreach-naga. As� es el designio de mi madre.~ */
== P_CHO IF ~~ THEN @93313 /* ~Es probable. Pero ten por seguro lo siguiente: Rachnidra no tardar� en caer. Mis garras colaborar�n en esa empresa.~ */ DO ~UseItem("p_fifirc",Myself)~
== P_LIPHIX IF ~~ THEN @93314 /* ~Est� por verse, General. Est� por verse...~*/
END

