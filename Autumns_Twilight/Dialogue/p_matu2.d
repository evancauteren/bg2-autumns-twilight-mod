BEGIN p_matu2

IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_Dusk_Mat2_hypno","GLOBAL",0)
AreaCheck("AR1506")~ THEN BEGIN 0 // from:
  SAY @9320 /* ~*Notas que su mirada carece de su brillo habitual*~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_Mat2_hypno","GLOBAL",1) 
  ~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @93246 /* ~*Mathyus se mantiene inmutable, pese a que todos perciben la llegada de otro ser.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_Mat2_hypno","GLOBAL",1)~ EXIT
END

// DUSK GOOD 1
I_C_T P_MATU2 0 P_Dusk_matu2a
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9321 /* ~��Mathyus?! �C-c�mo... c�mo es posible?~ */
== p_sornhi IF ~~ THEN @9322 /* ~Ha sido obra m�a, soldado.~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @9323 /* ~�Oh, no! Si es el malvado encantador que intent� inculpar a la bella orco... �Sommier!~ */
== p_sornhi IF ~InParty("Minsc")~ THEN @9324 /* ~Mi nombre es Sornhil, cabeza de hojalata.~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @9325 /* ~Como sea, mago. �Minsc no olvida tus actos malvados! Nos aseguraremos de que ya no ocasiones ning�n mal a los inocentes, �verdad, Bub�?~ */
== p_sornhi IF ~InParty("Minsc")~ THEN @9326 /* ~Ser� interesante verte intentarlo, b�rbaro del norte. Pero mi atenci�n est� ahora con tu compa�ero...~ */
== p_sornhi IF ~~ THEN @9327 /* ~El est�pido elfo shilmista ha venido de antemano, antes que t�. Se me ocurri� r�pidamente controlar su mente y su cuerpo.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9328 /* ~Desgraciado...~ */
== P_ANTHAG IF ~~ THEN @9329 /* ~El poder de Sornhil es un bien preciado para la Orden, as� como la del resto de sus integrantes, fieles servidores de la Cripta Olvidada.~ */
== p_valata IF ~~ THEN @93210 /* ~Que el est�pido de tu amigo est� encantado es el menor de tus preocupaciones, Capit�n.~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @93211 /* ~V-vaya... tambi�n se encuentra ese lun�tico del bosque dru�dico, Dusk.~ */
== p_valata IF ~InParty("Aerie")~ THEN @93212 /* ~Haces bien en temerme, ni�a. Pero t� no eres el centro de mis atenciones... por ahora...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @93213 /* ~Valatar... imagino que debes estar un poco... col�rico por lo que hice con tu "mascota", �no?~ */
== p_valata IF ~~ THEN @93214 /* ~Bastardo... �Pagar�s por lo que has hecho con Puki! Tendr� tu coraz�n en una bandeja...~ */
== P_ANTHAG IF ~~ THEN @93215 /* ~Tranquilo, Valatar. En breve podr�s arrojar tu ira en estos insensatos.~ */
== p_valata IF ~~ THEN @93216 /* ~Est�s en lo cierto, Antaghar. Adem�s, a�n dispongo de otras invocaciones. �Pronto ser�n testigos de c�mo las bestias del inframundo danzan bajo mi influjo!~ */
== p_kaland IF ~~ THEN @93217 /* ~�Tsk! Tanta palabrer�a comienza a cansarme...~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) Global ("P_Dusk_Kalanda_Summon","GLOBAL",2)~ THEN @93218 /* ~Ah, si es el extra�o pajarillo que nos sorprendi� en Brynn Ley, canario. El transmutador.~ */
== p_valata IF ~~ THEN @93219 /* ~��Qu� has dicho, elfo?! Si no fuera porque tenemos un enemigo que aniquilar, ten por seguro que tendr�amos una conversaci�n t� y yo.~ */
== p_kaland IF ~~ THEN @93220 /* ~Di lo que quieras, humano. Todos ustedes son iguales. Si a�n no has recibido una "conversaci�n" de mi parte es por mi respeto hacia Anthagar.~ */
== p_kaland IF ~~ THEN @93221 /* ~Y porque nuestro objetivo final sobrepasa cualquier banalidad terrenal que puedas tener sobre el soldado cormyreano.~ */
== P_ANTHAG IF ~~ THEN @93222 /* ~Bien dicho, Kalanda. Capit�n... como ya lo sabr�s... no podemos dejar que t� y <CHARNAME> sigan deambulando en Faer�n.~ */
== P_ANTHAG IF ~~ THEN @93223 /* ~Este es, como ya debes suponer, nuestro enfrentamiento final.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @93224 /* ~Es verdad, mago... <CHARNAME> y yo hemos pasado por mucho... hemos hecho frente a las fuerzas de Alabarza, combatido en la Prisi�n del Hechicero, atravesado los peligros de la Infraoscuridad...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @93225 /* ~�No creas que nos tienes a tu merced!~ */
== P_ANTHAG IF ~~ THEN @93227 /* ~Muy bien, mis hechiceros, es hora de--- Pero, �qu�?~ */
END

