BEGIN P_Vorag

IF ~Global("P_FallMission2","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @9700 /* ~*La criatura se encuentra ante ti y te observa con ojos curiosos.*~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission2","GLOBAL",4)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9701 /* ~*Te parece extra�o que no te ataque. M�s extra�o es que la criatura te observe detenidamente hasta que podr�as jurar escuchar una voz en tu mente*~*/
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9702 /* ~�C�mo has hecho para sacarme de mi letargo, <PRO_RACE>? Mi amigo Verthan se ha encargado de camuflarme para que nadie me moleste.~*/
    IF ~InParty("P_Fall")~ THEN REPLY @9703 /* �Hablas? Debo estar perdiendo la raz�n... Eres un basilisco parlanch�n.~ */  GOTO 8
	IF ~InParty("P_Fall")~ THEN REPLY @9704 /* ~Por Candelero... �c�mo es que puedes hablar en mi mente?~ */  GOTO 8
	IF ~~ THEN REPLY @9705 /* ~�Ha llegado tu hora, monstruo! Tu muerte es inevitable...~ */  GOTO 10
END

IF ~~ THEN BEGIN 8 // from:
  SAY @9707 /* ~Escuchas mi voz en tu mente. S�. �Ves esto? *levanta lentamente una de sus ocho patas* Es una especie de amuleto.~*/
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @9708 /* ~Mi amigo Verthan es un hechicero de la naturaleza... Creo que ustedes lo conocen como druida.~*/
  IF ~~ THEN GOTO 11
END

IF ~ ~ THEN BEGIN 10 // from:
  SAY @9706 /* ~�No he atacado a nadie, <PRO_RACE>! Pero si lo que quieres es morir... que as� sea. Soy uno de los �ltimos de mi familia... �No me ir� sin pelear!~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission2","GLOBAL",9) Enemy()~ 
UNSOLVED_JOURNAL @310007 
EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY @97052 /* ~Ha confeccionado este amuleto para m� para que pueda comunicarme con los seres de dos patas.~*/
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @9709 /* ~Aunque me gusta estar solo. No he atacado a nadie y es la primera vez en a�os que hablo con alguien que no sea en mis sue�os.~*/
  IF ~~ THEN GOTO 13
END


IF ~~ THEN BEGIN 13 // from:
  SAY @97010 /* ~Tus armas... tienes armas... �Has venido a cazarme? Toda mi familia ha sido asesinada por seres como t�: armados y habilidosos.~*/
    IF ~~ THEN REPLY @97011 /* �S�! He venido porque necesito matarte. Eres una monstruosidad y debes perecer. �Muere!~ */  GOTO 10
	IF ~~ THEN REPLY @97012 /* No lo s�... nunca hab�a encontrado a un basilisco tan inteligente. */  GOTO 14
	IF ~~ THEN REPLY @97013 /* He venido porque necesito algo de ti. Quiz�s no sea necesario matarte. */  GOTO 15
END

IF ~~ THEN BEGIN 14 // from:
  SAY @97014 /* ~*mueve la cabeza ligeramente* Nunca nadie me hab�a llamado inteligente. Eso me agrada, <PRO_RACE>. Me has sacado de mi letargo por una raz�n.~*/
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @97015 /* ~�Qu� es lo que necesitas de m�?~*/
    IF ~~ THEN REPLY @97016 /* Debemos llevar a cabo un ritual y necesitamos algo de un basilisco como ingrediente. Una garra, un colmillo o una escama deber�a ser suficiente.~ */  GOTO 16
	IF ~~ THEN REPLY @97017 /* No realizo pactos con monstruos. �Morir�s, basilisco! */  GOTO 10
END

IF ~~ THEN BEGIN 16 // from:
  SAY @97018 /* �Necesitas una parte de mi cuerpo? Ya sea una garra, un colmillo o una escama... sacarme cualquiera de esas cosas me provocar� un dolor terrible. */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @97024 /* Tengo una pregunta para ti, <PRO_RACE>. Si te dijera que no puedo darte lo que pides... �qu� es lo que har�as? Puedes hablar con tus camaradas si as� lo deseas, antes de decidir. */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY @97025 /* ~Dime, <PRO_RACE>... �cu�l es tu respuesta?~*/
    IF ~~ THEN REPLY @97026 /* No... no te matar�, criatura. Por esta vez, mostrar� piedad, ya que no me has dado motivos para atacarte. */  GOTO 19
	IF ~~ THEN REPLY @97027 /* Mi respuesta es que debes morir... Si no te mato, podr�as acabar con la ciudad entera de Umar. No permitir� que sigas existiendo. */  GOTO 10
END

IF ~~ THEN BEGIN 19 // from:
  SAY @97054 /* Es un alivio escuchar eso. �Cu�l es tu nombre, <PRO_RACE>? */
    IF ~~ THEN REPLY @97055 /* Mi nombre es <CHARNAME>. */  GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @97056 /* Gracias, <CHARNAME>. Mi nombre es Voragor. Por tu piedad, creo que puedo arrancarme un colmillo. A decir verdad ya lo ten�a un poco flojo desde hace a�os. Aqu� tienes. */
  IF ~~ THEN DO ~GiveItem("p_bastoo", LastTalkedToBy)~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from:
  SAY @97064 /* ~Ahora... volver� a mi letargo. Espero que tengan suerte en sus aventuras. Adi�s.~ */
IF ~~ THEN DO ~ SetGlobal ("P_FallMission2","GLOBAL",5) AddexperienceParty(20000) ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @310008 EXIT
END

// KAKUTO Quest

IF ~See("P_Fall")
InParty("P_Fall")
!StateCheck("P_Fall",STATE_SLEEPING)
//RandomNum(4,1)
AreaCheck("P_FAR2")
Global ("P_FallMission3","GLOBAL",4)
Global ("P_FallVoragToKakut","GLOBAL",0)~ THEN BEGIN 22 // from:
  SAY @97066 /* ~Por las escamas de mi abuelo, �qu� criatura m�s formidable!~ */
  IF ~~ THEN DO ~SetGlobal("P_FallVoragToKakut","GLOBAL",1)~ EXTERN ~P_FALLJ~ 43
END

IF ~~ THEN BEGIN 23 // from:
  SAY @97067 /* ~Se llama Kakuto.~*/
    IF ~~ THEN REPLY @97068 /* �C�mo es que logras entenderlo? */  GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @97069 /* ~Bueno, gracias al amuleto de mi amigo druida, claro est�.~ */
  IF ~~ THEN EXTERN ~P_KAKUTO~ 5
END

I_C_T P_VORAG 24 P_Fall_VORAG_KAKUT2
== P_VORAG IF ~~ THEN @97070 /* A que es muy �til, �no lo crees? */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @97071 /* ~Laborioso como las hormigas es el buen Verthan. Su influjo recorre hasta estas mismas tierras subterr�neas.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97072 /* �Puedes pedirle que por favor se quite del umbral? �Necesitamos alcanzar a Alendir! */
END

I_C_T P_VORAG 22 P_Fall_VORAG_KAKUT1
== P_KAKUTO IF ~~ THEN @97065 /* *La mirada del escarabajo se centra en Voragor.* */
END

I_C_T P_VORAG 20 P_Fall_VORAG20A
== P_VORAG IF ~~ THEN @97057 /* Espero que pueda ayudarte en tu b�squeda, peque�a elfa. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97058 /* Gracias, Voragor... Jam�s olvidar� tu gesto. Por cierto, mis amigos me llaman Fall. T� tambi�n puedes hacerlo. */
== P_VORAG IF ~~ THEN @97059 /* Amigos... Fall... */
== P_VORAG IF ~~ THEN @97060 /* Quiero darte algo. Es una gema m�gica que me fue obsequiada por un poderoso hechicero de la naturaleza. */
== P_VORAG IF ~~ THEN @97061 /* Estoy... cansado de estar solo. Si logras desentra�ar su misterio, puede que sea capaz de acompa�arte en tus aventuras. */ DO ~ CreateItem ("p_basgem",1,1,0)  GiveItem("p_basgem", "P_Fall") ~
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97062 /* Ser� un honor guardar la gema, Voragor. Intentar� aprender todo lo posible de ella. */
== P_VORAG IF ~~ THEN @97063 /* Cuando la gema haya desaparecido por s� sola, entonces sabr�s que podr�s llamarme, amiga Fall. */
END


I_C_T P_VORAG 17 P_Fall_VORAG17A
== P_VORAG IF ~~ THEN @97028 /* Veo que est�s rodeado de amistades. En cierto sentido te envidio. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97029 /* <CHARNAME>... Alendir recomend� matar a este basilisco... pero no me parece que sea malvado. Creo que lo correcto es dejarle vivir. Por favor, te lo pido. No lo mates. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @97030 /* ~Puede que sea un monstruo, pero Bub� dice que tambi�n es un animal. Si mi h�mster dice que no es malo, �pues Minsc tambi�n lo creer�!~ */
== P_DUSKJ IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0) InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97073 /* Parece tener simpat�a por nosotros. Creo que si le dices que tus intenciones no son agresivas, ceder�. */
== P_DUSKJ IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1) InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97074 /* Tendremos una recompensa mayor si le matamos, <CHARNAME>. Adem�s, un gran basilisco es un buen rival para poner a pr�ctica nuestras habilidades. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @97031 /* ~<CHARNAME>... Yo... n-no creo que sea necesario matarlo. Creo que podemos convencerlo de que nos d� alguna escama o colmillo, �no lo crees?~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @97032 /* ~La iglesia no dudar�a en enviar un destacamento de soldados en acabar con esta bestia, <CHARNAME>. Sin embargo, es la primera vez que escucho a uno hablar. No estoy seguro de que matarlo sea justicia...~ */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @97033 /* ~Tenemos una oportunidad de evitar un combate dif�cil, <CHARNAME>. Yo digo que lo aprovechemos.~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @97034 /* ~No debemos matarlo, <CHARNAME>. No parece que sea una criatura sedienta de sangre. Mucho menos algo mal�fico.~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @97035 /* ~�Por qu� tanto debate? Acabemos con la bestia de una vez por todas. Es un monstruo y no merece seguir viviendo un segundo m�s.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97036 /* ~Conozco la maldad de los monstruos y no parece que �ste lo sea. He visto de primera mano lo que son capaces de hacer las criaturas reptiles sedientas de sangre... pero este... basilisco parece ser una criatura inteligente... y puede que hasta benigna.~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @97037 /* ~El bosque de nuestro Padre Roble alberga centenares de criaturas que muchos humanos considerar�an malvadas... Sin embargo, este basilisco no hace m�s que proteger su territorio. <CHARNAME>, cazarlo ser�a una afrenta al equilibrio.~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @97038 /* ~<CHARNAME>, esta criatura ha logrado comunicarse con uno de los nuestros, Verthan, el druida de Tethyr. As� como la sabidur�a del b�ho trasciende la oscuridad, nosotros debemos hacer lo mismo en esta cueva.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97039 /* ~El tiempo que he pasado aqu�, ni yo ni los exploradores circundantes han tenido inconvenientes con este basilisco. Puedo aseverar sus dichos, <CHARNAME>. Matarlo ser�a lo incorrecto.~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @97040 /* ~�Juzgarlo s�lo por su raza? Entiendo m�s a esta criatura de lo que puedas comprender, abbil.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97041 /* �Bah! �Est�s teniendo segundos pensamientos acerca de matarlo? El elfo anciano dijo que podr�a imbuir un poderoso artefacto con la sangre de este bicho. �Debemos aprovechar la oportunidad! */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97042 /* ~No recuerdo la �ltima vez que clav� mi hacha en las asquerosas escamas de un basilisco. �Env�ame al frente, muchacho, y traer� su cr�neo para vuestro placer!~ ~No recuerdo la �ltima vez que clav� mi hacha en las asquerosas escamas de un basilisco. �Env�ame al frente, muchacha, y traer� su cr�neo para vuestro placer!~*/
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97043 /* Ah, la trama del basilisco parlanch�n. Me he encontrado con algunos en el pasado, �sabes? Aunque no ten�an tantos lujosos collares en sus patas. No, estos basiliscos usaban calzas. S�, calzas para ocho piernecillas. Fue una moda instaurada en el �mbito arcano para las convocaciones, ver�s. Fracas� cuando un mago calvo llamado Farchetto intent� vestir a una de sus ara�as fase convocadas con unas calzas apretadas. El tal Farchetto no se vi� venir aquella horrible picadura en su cabeza reluciente. Buenas �pocas. */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @97044 /* No es extra�o pensar que un basilisco pueda hablar, mi buen cuervo. He viajado por los planos y los artefactos que son capaces de lograr eso existen. Este buen lagarto parece decir la verdad. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @97045 /* <CHARNAME>, si bien hemos tenido nuestras experiencias negativas con basiliscos en el pasado, creo que �ste es una excepci�n. No querr�a tener que... matarlo. */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @97046 /* �Qu� esperas, <CHARNAME>? La piedad es para los d�biles. Debemos matarle ahora que est� distra�do. */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @97047 /* No creo que debamos matarlo, <CHARNAME>. Si bien es verdad que nos hemos enfrentado a los de su raza en el pasado, este basilisco anciano parece no estar sediento por nuestra sangre. */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97048 /* No querr�a tener que enfrentarme a este lagarto. No estoy segura de poder lanzar correctamente el conjuro De la piedra a la carne. �O era de la Carne a la Piedra? Hmm... �lo ves? Ya me tienes confundida. */
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @97049 /* El elfo te ha encomendado matarlo. No entiendo por qu� te cuestionas tanto el hacerlo. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @97050 /* ~(Bufido, lamento).~ */
== P_VORAG IF ~InParty("Wilson") InMyArea("Wilson")~ THEN @97051 /* No, buen oso. No estoy interesado en convertirte en piedra. Entiendo que te guste que tu pelaje tal cual est�. */
END

I_C_T P_VORAG 16 P_Fall_VORAG16A
== P_VORAG IF ~~ THEN @97019 /* Dices que es para un ritual... �Qu� intentan hacer? */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97020 /* Se�or Gran Basilisco... Estamos intentando encontrar a mi madre. Mi amigo es un poderoso hechicero y cree que podr� usar su magia para encontrar a mi madre. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97021 /* Pero para ello necesita de una parte de un basilisco. Lamento... lamento que sea as�, pero no lo pedir�a si no hubiese otra opci�n. */
== P_VORAG IF ~~ THEN @97022 /* Ya veo... Has perdido a tu madre... pero puedes recuperarla si yo te ayudo. */
== P_VORAG IF ~~ THEN @97023 /* Eres una joven muy valiente. Si yo tuviese la oportunidad de volver a ver a cualquier miembro de mi familia... har�a lo mismo. */
END

I_C_T P_VORAG 9 P_Fall_VORAG9A
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @97053 /* ~Verthan es uno de los druidas ancianos de esta �rea, <CHARNAME>. Me parece fascinante que haya logrado interactuar con un basilisco.~ */
END




/* DUSK
I_C_T P_VORAG 17 P_Fall_VORAG17A_DUSK
== P_VORAG IF ~~ THEN @97028 /* Veo que est�s rodeado de amistades. En cierto sentido te envidio. */
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @9704001 /* No le des tantas vueltas al asunto, <CHARNAME>. Acaba con la bestia. Si te es tan dif�cil llevar a cabo la tarea, env�ame y lo har� por ti. */
== P_DuskJ IF ~InParty("P_DuskJ") InMyArea("P_DuskJ") !StateCheck("P_DuskJ",CD_STATE_NOTVALID) Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @9704002 /* <CHARNAME>, hay ocasiones en las que debemos mostrar piedad. �sta es una de esas ocasiones. Por favor, no le ataques. */
END


*/
/* SANDRO
I_C_T P_VORAG 17 P_Fall_VORAG17A_SAND
== P_VORAG IF ~~ THEN @97028 /* Veo que est�s rodeado de amistades. En cierto sentido te envidio. */
== P_SandJ IF ~InParty("P_SandJ") InMyArea("P_SandJ") !StateCheck("P_SandJ",CD_STATE_NOTVALID)~ THEN @9705000 /* <CHARNAME>, la intervenci�n de fuerzas ajenas a nuestro mundo no es normal, de m�s est� decirlo. */
END
*/

