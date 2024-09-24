BEGIN P_NIMBUS

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
AreaCheck("P_FAR7")
~ THEN BEGIN 0 // from:
  SAY @9250 /* ~Ah, si son los mortales que nos derrotaron. Descuiden, su sangre no me apetece. ¿Necesitan descanso?~ */
    IF ~~ THEN REPLY @9252 /* Vampiro, necesitamos descansar. */  GOTO 2
	IF ~~ THEN REPLY @9254 /* ¿De dónde vienes, Nimbus? */  GOTO 5
    IF ~~ THEN REPLY @9255 /* ¿Por qué elegiste ser un vampiro? */  GOTO 7
    IF ~~ THEN REPLY @9256 /* Por ahora no, Nimbus. Gracias. */  GOTO 4E
END

IF ~~ THEN BEGIN 2
  SAY @9253 /* ~Será un placer. Prepararé sus aposentos. Tobias cuidará sus cosas.~ */
  IF ~~ THEN DO ~StartStore("P_NIMBUS",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 4E
  SAY @9257 /* ~¡Vaya cortesía! *risita*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9258 /* ~Interesado en la historia, ¿eh? *risita*~ ~Interesada en la historia, ¿eh? *risita*~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9259 /* ~No me mires así. Mi prometido era un cobarde. Para nada caballeroso. *suspiro* Ya estoy aburrida. Si necesitas algo de mí, avísame, ¿quieres?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @92510 /* ~¿Has visto a los demás? Por más que admire a Vidomina (tiene un gran sentido por la moda, ¿sabes?) no quiero ser un esqueleto andante.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @92511 /* ~De hecho, yo tejí las ropitas que usa Tobias. ¿No te parecen graciosas? A mí me encantan.~ */
  IF ~~ THEN EXIT
END

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
AreaCheck("P_FA3B")
~ THEN BEGIN 9 // from:
  SAY @92521 /* ~Saludos, dulzura. No puedo ofrecerte estadía, digamos que no hay camas aquí *risita*. Pero siempre es bueno verte. ~ */
    IF ~~ THEN REPLY @92522 /* Gracias, Nimbus. Debo irme, adiós. */  GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @92523 /* ~¡Adiós! Sabes, estaremos aquí así que puedes visitarnos cuando quieras.~ */
  IF ~~ THEN DO ~~ EXIT
END


I_C_T P_NIMBUS 7 P_FallJ_P_NIMBUS_2
== P_NIMBUS IF ~~ THEN @92512 /* ~Todas esas joyas y ropas reales que tiene Xsi no me convencerán de lo contrario: es feo.~ */
== P_NIMBUS IF ~~ THEN @92513 /* ~Y Tamika... ¿qué decir? Ella es una guerrera. Le gusta vestirse como una. Creo que llevará esa armadura hasta el día de su destrucción.~ */
== P_NIMBUS IF ~~ THEN @92514 /* ~En cambio yo soy una belleza, ¿no lo crees? Era hermosa cuando era mortal... y quise seguir siéndolo en mi inmortalidad.~ */
== P_NIMBUS IF ~~ THEN @92515 /* ~Mi condición de mujer y noble me han hecho una víctima de las circunstancias. Ahora es diferente como vampiro. Soy fuerte, rápida.~ */
== P_NIMBUS IF ~~ THEN @92516 /* ~No necesito de sangre para vivir. No sé qué poder sea el que maneje Vidomina, pero ha logrado que no tenga la necesidad de chupar sangre como una desquiciada.~ */
== P_NIMBUS IF ~~ THEN @92517 /* ~Por eso he decidido seguir, también, a Wee Jas. La Hechicera Rubí ama la belleza, ¿sabes? Y yo también.~ */
END

I_C_T P_NIMBUS 5 P_FallJ_P_NIMBUS_1
== P_NIMBUS IF ~~ THEN @92518 /* ~Vengo de Amn, querido. De una familia noble. Me encontraba paseando con mi prometido cuando nos vimos emboscados por una araña de tamaño descomunal.~ ~Vengo de Amn, querida. De una familia noble. Me encontraba paseando con mi prometido cuando nos vimos emboscados por una araña de tamaño descomunal.~ */
== P_NIMBUS IF ~~ THEN @92519 /* Cuando me di cuenta, nos encontrábamos en ese túnel horrendo que se encuentra al este. Mi prometido lo primero que hizo fue intentar huir, abandonándome. */
== P_NIMBUS IF ~~ THEN @92520 /* Sin embargo, el muy idiota fue atrapado por uno de esos arácnidos. El hecho de que esto sucediera me permitió a mí alcanzar el Enclave y ser rescatada por Vidomina. */
END