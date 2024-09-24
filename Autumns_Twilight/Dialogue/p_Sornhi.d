BEGIN p_sornhi


IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_DuskEvil","GLOBAL",2)
Global ("P_Dusk_Sornhil_Enc1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9140 /* ~Capitán Ardusk Aldant... al fin nos encontramos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Sornhil_Enc1","GLOBAL",1)
  SetGlobal ("P_DuskEvil","GLOBAL",3)
  ~ EXTERN ~P_DUSKJ~ 99
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9141 /* ~Creo que eres lo suficientemente perspicaz como para adivinarlo, ¿no es así?~ */
    IF ~~ THEN REPLY @9142 /* ~Dusk, ¿conoces a este mendigo? Su aspecto es muy... particular.~ */ EXTERN ~P_DUSKJ~ 100
    IF ~OR (2)
	CheckStatGT([PC],12,WIS)
	CheckStatGT([PC],12,INT)~ THEN REPLY @9143 /* ~¡Dusk, cuidado! Percibo un poder terrible alrededor de este... ser.~ */ EXTERN ~P_DUSKJ~ 100	
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9144 /* ~*risa* No eres tan ingenuo como pensaba... sin embargo, debo decir... que me has soprendido...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9145 /* ~ La forma en que despedazaste a estos humanoides... simplemente ha sido algo... precioso... ~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 101
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9146 /* ~ Los caballeros y soldados tienden, muchas veces, a actuar solemnes frente al mundo... pero la verdad... oh, la verdad, es que a la primera oportunidad... se entregan a su sed de sangre... sin pensarlo... ~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 102
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9147 /* ~ ¿Inocentes? Vamos, Capitán... acababas de superar mis expectativas de ingenuidad sobre tu persona... como para que me vengas con algo tan estúpido como creer que existe alguien inocente en estos tiempos. ~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9148 /* ~ Eran renegados de Sothillis. Estoy seguro de que estos humanoides disfrutaron, en su momento, masacrar soldados amnianos. Si me lo preguntas a mí... se lo tenían merecido. ~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 103
END

IF ~~ THEN BEGIN 7 // from:
  SAY @9149 /* ~ Allí está de nuevo... esa ira de la que tanto habla mi maestro... ~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 104
END

IF ~~ THEN BEGIN 8 // from:
  SAY @91410 /* ~ *suspiro* Creo que hablé de más... ~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @91411 /* ~ No importa... Capitán, mi nombre es Sornhil, un mago especializado en encantamientos.  ~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @91412 /* ~ Lo cierto es que el escudo cormyreano fue plantado en esta tribu de humanoides. Oh, sí... ellos no fueron los responsables del ataque a tu destacamento...  ~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 105
END

IF ~~ THEN BEGIN 11 // from:
  SAY @91413 /* ~ Los verdaderos responsables de la muerte de tus compañeros... siguen ahí fuera...  ~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @91414 /* ~ ¡Pero no te preocupes! Oh, no... Pronto... muy pronto, capitán Aldant... Obtendrás la verdadera ubicación de los culpables...  ~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @91415 /* ~  Sólo tienes que ser paciente... y esperar...  ~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from:
  SAY @91416 /* ~  Mientras tanto... supongo que puedes seguir de aventuras con tu amigo, el hijo de Bhaal.  ~ ~  Mientras tanto... supongo que puedes seguir de aventuras con tu amiga, la hija de Bhaal.  ~ */
    IF ~~ THEN REPLY @91417 /* ~¡Bastardo! ¿Cómo sabes eso? ¡Explícate antes de que te destruya!~ */ GOTO 16
    IF ~~ THEN REPLY @91418 /* ~No sé de qué hablas, sólo soy un simple plebeyo...~ ~No sé de qué hablas, sólo soy una simple plebeya...~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @91419 /* ~Tus artimañas no funcionan conmigo, hijo de Bhaal.~ ~Tus artimañas no funcionan conmigo, hija de Bhaal.~*/
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @91420 /* ~Lo cierto es que hace tiempo que seguimos los pasos del soldado cormyreano... y fue una delicia para nosotros descubrir que se alió con una especie de... semidios...~ ~Lo cierto es que hace tiempo que seguimos los pasos del soldado cormyreano... y fue una delicia para nosotros descubrir que se alió con una especie de... semidiosa...~*/
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @91421 /* ~Sin embargo... creo que ha sido suficiente charla...~*/
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY @91422 /* ~Una última cosa, capitán... tu accionar ha superado nuestras expectativas... con creces...~*/
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @91423 /* ~Creemos que nuestra relación terminará en... conflicto... Pero no necesariamente tiene que ser así.~*/
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @91424 /* ~De superar la prueba con éxito, cosa que tú has hecho... me ordenaron entregarte esto.~*/
  IF ~~ THEN DO ~CreateItem ("p_orbe1",1,1,0)  GiveItem("p_orbe1", "P_Dusk")~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from:
  SAY @91425 /* ~Es un orbe mágico... por sí sólo no es más que una baratija... pero combinado con el arma correspondiente... su poder se liberará.~*/
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from:
  SAY @91426 /* ~Si quieres saber más al respecto... te recomiendo que hables con tu amigo... el patético elfo shilmista.~*/
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @91427 /* ~Oh, sí... también sabemos de él, capitán. Y de su amigo, la criatura mágica.~*/
  IF ~~ THEN EXTERN ~P_DUSKJ~ 106
END

IF ~~ THEN BEGIN 24 // from:
  SAY @91428 /* ~Sobreestimas la amistad, capitán... Cuando llegue el momento indicado tendrás que elegir qué es más valioso para ti... Si la amistad con unas patéticas criaturas o la posibilidad de alcanzar al fin tu venganza...~*/
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @91429 /* ~Porque esto, capitán Aldant... va más allá del asunto de tu destacamento de Cormyr... y creo que sabes a qué me refiero...~*/
  IF ~~ THEN EXTERN ~P_DUSKJ~ 107
END

IF ~~ THEN BEGIN 26 // from:
  SAY @91430 /* ~Esto ha sido todo, capitán... por el momento...~*/
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from:
  SAY @91431 /* ~Ten por seguro... que este no será nuestro último encuentro...~*/
  IF ~~ THEN DO ~ForceSpell(Myself,POOF_GONE)~ EXIT
END

/// GOOD PATH


IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Sornhil_Enc1","GLOBAL",0)
~ THEN BEGIN 28 // from:
  SAY @9140 /* ~Capitán Ardusk Aldant... al fin nos encontramos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Sornhil_Enc1","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 140
END

IF ~~ THEN BEGIN 29 // from:
  SAY @9141 /* ~Creo que eres lo suficientemente perspicaz como para adivinarlo, ¿no es así?~ */
    IF ~~ THEN REPLY @9142 /* ~Dusk, ¿conoces a este mendigo? Su aspecto es muy... particular.~ */ EXTERN ~P_DUSKJ~ 141
    IF ~OR (2)
	CheckStatGT([PC],12,WIS)
	CheckStatGT([PC],12,INT)~ THEN REPLY @9143 /* ~¡Dusk, cuidado! Percibo un poder terrible alrededor de este... ser.~ */ EXTERN ~P_DUSKJ~ 141	
END

IF ~~ THEN BEGIN 30 // from:
  SAY @9144 /* ~*risa* No eres tan ingenuo como pensaba... sin embargo, debo decir... que me has soprendido...~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from:
  SAY @91432 /* ~ Estaba convencido de que acabarías con esos humanoides sin pensarlo... Pero, has decidido perdonar su existencia... Patético... ~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 142
END

IF ~~ THEN BEGIN 32 // from:
  SAY @91433 /* ~ ¿Inocentes? Vamos, Capitán... no me puedo creer que seas tan estúpido como para pensar eso. ¿De verdad eres tan ingenuo como para creer que existe alguien inocente en los tiempos que corren? ~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @91434 /* ~ Eran renegados de Sothillis. Estoy seguro de que estos humanoides disfrutaron, en su momento, masacrar soldados amnianos. Y por si fuera poco... ¡les has enviado como aliados a los humanos de Athkatla! *ríe despiadadamente* ~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 143
END

IF ~~ THEN BEGIN 34 // from:
  SAY @91435 /* ~ Allí está... esa ira de la que tanto habla mi maestro... ~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 144
END

IF ~~ THEN BEGIN 35 // from:
  SAY @91410 /* ~ *suspiro* Creo que hablé de más... ~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from:
  SAY @91411 /* ~ No importa... Capitán, mi nombre es Sornhil, un mago especializado en encantamientos.  ~ */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from:
  SAY @91412 /* ~ Lo cierto es que el escudo cormyreano fue plantado en esta tribu de humanoides. Oh, sí... ellos no fueron los responsables del ataque a tu destacamento...  ~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 145
END

IF ~~ THEN BEGIN 38 // from:
  SAY @91413 /* ~ Los verdaderos responsables de la muerte de tus compañeros... siguen ahí fuera...  ~ */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from:
  SAY @91414 /* ~ ¡Pero no te preocupes! Oh, no... Pronto... muy pronto, capitán Aldant... Obtendrás la verdadera ubicación de los culpables...  ~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from:
  SAY @91415 /* ~  Sólo tienes que ser paciente... y esperar...  ~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from:
  SAY @91416 /* ~  Mientras tanto... supongo que puedes seguir de aventuras con tu amigo, el hijo de Bhaal.  ~ ~  Mientras tanto... supongo que puedes seguir de aventuras con tu amiga, la hija de Bhaal.  ~ */
    IF ~~ THEN REPLY @91417 /* ~¡Bastardo! ¿Cómo sabes eso? ¡Explícate antes de que te destruya!~ */ GOTO 43
    IF ~~ THEN REPLY @91418 /* ~No sé de qué hablas, sólo soy un simple plebeyo...~ ~No sé de qué hablas, sólo soy una simple plebeya...~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from:
  SAY @91419 /* ~Tus artimañas no funcionan conmigo, hijo de Bhaal.~ ~Tus artimañas no funcionan conmigo, hija de Bhaal.~*/
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from:
  SAY @91420 /* ~Lo cierto es que hace tiempo que seguimos los pasos del soldado cormyreano... y fue una delicia para nosotros descubrir que se alió con una especie de... semidios...~ ~Lo cierto es que hace tiempo que seguimos los pasos del soldado cormyreano... y fue una delicia para nosotros descubrir que se alió con una especie de... semidiosa...~*/
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from:
  SAY @91421 /* ~Sin embargo... creo que ha sido suficiente charla...~*/
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from:
  SAY @91436 /* ~Una última cosa, capitán... tu accionar nos ha decepcionado... en gran manera...~*/
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from:
  SAY @91437 /* ~Es inevitable que nuestra relación termine en conflicto...~*/
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from:
  SAY @91438 /* ~Asimismo... me han ordenado darte esto...~*/
  IF ~~ THEN DO ~CreateItem ("p_orbe1",1,1,0)  GiveItem("p_orbe1", "P_Dusk")~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from:
  SAY @91439 /* ~Es un orbe mágico... eso es todo lo que diré.~*/
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from:
  SAY @91426 /* ~Si quieres saber más al respecto... te recomiendo que hables con tu amigo... el patético elfo shilmista.~*/
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from:
  SAY @91427 /* ~Oh, sí... también sabemos de él, capitán. Y de su amigo, la criatura mágica.~*/
  IF ~~ THEN EXTERN ~P_DUSKJ~ 146
END

IF ~~ THEN BEGIN 51 // from:
  SAY @91440 /* ~No es de sorprenderse que sobreestimes el concepto de amistad. Es por eso que nunca podrás vengar a tus seres amados, Capitán...~*/
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from:
  SAY @91429 /* ~Porque esto, capitán Aldant... va más allá del asunto de tu destacamento de Cormyr... y creo que sabes a qué me refiero...~*/
  IF ~~ THEN EXTERN ~P_DUSKJ~ 147
END

IF ~~ THEN BEGIN 53 // from:
  SAY @91430 /* ~Esto ha sido todo, capitán... por el momento...~*/
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @91431 /* ~Ten por seguro... que este no será nuestro último encuentro...~*/
  IF ~~ THEN DO ~ForceSpell(Myself,POOF_GONE)~ EXIT
END

I_C_T P_SORNHI 23 P_Fall_Sornhill_001
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91441 /* ¡Oh, no! Está al tanto de tus amigos shilmistas, Dusk. */
END

I_C_T P_SORNHI 50 P_Fall_Sornhill_002
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @91441 /* ¡Oh, no! Está al tanto de tus amigos shilmistas, Dusk. */
END