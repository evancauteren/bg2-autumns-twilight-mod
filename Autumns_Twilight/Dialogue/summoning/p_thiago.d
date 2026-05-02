BEGIN ~p_thiago~

IF ~See("Wilson")
InParty("Wilson")
!StateCheck("Wilson",STATE_SLEEPING)
//RandomNum(5,5)
Global("P_Bellfame_Wilson1","GLOBAL",1)
Global("P_Thiago_ITC_Wilson1","GLOBAL",0)
Global("P_ThiagoWilson_CombatCount","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY @91633 /* ~*Thiago se acerca a Wilson y ambos se ponen a lamentarse.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Thiago_ITC_Wilson1","GLOBAL",1)~ GOTO 14
END

IF 
~~ THEN BEGIN 14 // from:
  SAY @91641 /* ~*Thiago emite, también, un bufido, demostrando acuerdo con la ninfa y recibiendo de muy buena gana las bayas que ha creado. Se mira cómplice con Wilson quien también está engullendo las suyas.*~ */
  IF ~~ THEN EXIT
END

IF ~See("P_Dusk")
InParty("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
//RandomNum(5,1)
Global("P_Thiago_ITC_Dusk1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @9160 /* ~*Thiago se acerca a Dusk disimuladamente. Olfatea su mochila en busca de comida.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Thiago_ITC_Dusk1","GLOBAL",1)~ GOTO 1
END

IF 
~~ THEN BEGIN 1 // from:
  SAY @9166 /* ~*Thiago ignora las palabras de Dusk mientras engulle sus galletas.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Neera")
InParty("Neera")
!StateCheck("Neera",STATE_SLEEPING)
//RandomNum(5,2)
Global("P_Thiago_ITC_Neera1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @9167 /* ~*Thiago se encuentra rascándose una de sus orejas cerca de Neera.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Thiago_ITC_Neera1","GLOBAL",1)~ GOTO 3
END

IF 
~~ THEN BEGIN 3 // from:
  SAY @91615 /* ~*Thiago observa confundido a Neera. Al cabo de unos segundos, continúa su labor de rascarse la oreja.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Viconia")
InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
//RandomNum(5,3)
Global("P_Thiago_ITC_Viconia1","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @91616 /* ~*Thiago se acerca tímidamente a Viconia.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Thiago_ITC_Viconia1","GLOBAL",1)~ GOTO 5
END

IF 
~~ THEN BEGIN 5 // from:
  SAY @91622 /* ~*Thiago toma con su hocico el pan de esporas que le ofrece Viconia. No pasan dos segundos que ya ha sido engullido. Luego, se echa a los pies de la drow esperando algunas caricias. Viconia lo ignora, pero permite que se quede echado a su lado.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Jan")
InParty("Jan")
!StateCheck("Jan",STATE_SLEEPING)
//RandomNum(5,4)
Global("P_Thiago_ITC_Jan1","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY @91623 /* ~*Thiago está sentado al lado de Jan mientras devora, lo que parece ser, un pastel de nabos.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Thiago_ITC_Jan1","GLOBAL",1)~ GOTO 7
END

IF 
~~ THEN BEGIN 7 // from:
  SAY @91627 /* ~*Thiago emite un leve lamento, pero al cabo de unos segundos, sigue devorando el pastel de nabos.*~ */
  IF ~~ THEN EXIT
END


IF
~RandomNum(5,1)~ THEN BEGIN 8 // from:
  SAY @91628 /* ~*Thiago te mira un poco asustado. Está convencido de que vas a regañarlo porque está comiendo algo que encontró del suelo. Al ver que no le dices nada, sigue masticando como si no hubiera un mañana.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 9 // from:
  SAY @91629 /* ~*Thiago se sienta a tu lado. Te mira con sus grandes ojos y espera que le des algo de comida. Emite un bufido de aburrimiento mientras espera que actúes en su bienestar.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 10 // from:
  SAY @91630 /* ~*Thiago se alegra cuando ve que te le acercas. Comienza a girar sobre su propio eje y te sorprende su agilidad pese a su gran tamaño.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 11 // from:
  SAY @91631 /* ~*Thiago emite varios lamentos, esperando llamar tu atención. No estás seguro de si quiere comida o caricias. Puede que ambas.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 12 // from:
  SAY @91632 /* ~*Acaricias el lomo de Thiago y este parece más contento que nunca. Tanto que se le escapa un gas y no tienes otra opción más que alejarte de él.*~ */
  IF ~~ THEN EXIT
END


I_C_T P_THIAGO 13 P_Thiago_Wilson1
== WilsonJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @91634 /* Lamento, lamento. */
== P_THIAGO IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @91635 /* *Thiago señala la mochila de <CHARNAME> y Wilson parece coincidir.*  */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @91636 /* No estoy muy segura de que a <CHARNAME> le haga gracia que coman sus provisiones, más allá del hambre que ambos puedan tener. */
== WilsonJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @91637 /* Lamento exagerado. */
== P_THIAGO IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @91638 /* *Thiago imita a Wilson y se lamenta, también, de forma exagerada.*  */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @91639 /* Puedo crear una bayas mágicas que pueden comer, mis niños. Espero que esto les haga desistir de comerse las provisiones de su compañero. */
== WilsonJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @91640 /* Bufido. */
END

I_C_T P_THIAGO 6 P_Thiago_Jan1
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @91624 /* Así es, peludo. La receta de Ma Jansen es infalible. No hay nada tan delicioso como los pasteles hechos con nabos de la huerta Jansen. Verás, mi tía Petunia elaboró esa complicada receta inspirada en una de sus aventuras en los bosques rondantes de Tethyr. Para mezclar la harina con los nabos molidos utilizó leche de una vaca, la cual robó a una bruja y se la trajo aquí a Athkatla. */
== P_THIAGO IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @91625 /* *El oso parece escuchar con atención a las palabras del gnomo. La palabra 'vaca' parece llamarle la atención.*  */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @91626 /* Ah, ya veo que te ha interesado Rosita. Sí, así se llama la vaca lechera. Puedo presentártela si vamos a los Barrios Bajos algún día. Aunque... ahora que te veo relamerte, puede que esa no sea una buena idea, mi gordo amigo. */
END


I_C_T P_THIAGO 4 P_Thiago_Viconia1
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @91617 /* Será mejor que te alejes de mí, peludo. No me encuentro de humor. */
== P_THIAGO IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @91618 /* *Thiago se sienta al lado de Viconia y se queda observándola, casi admirándola.*  */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @91619 /* No importan cuán grandes hagas tus ojos. No te daré mi merienda. */
== P_THIAGO IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @91620 /* *Thiago deja escapar un leve lamento y luego se relame.*  */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @91621 /* Ugh, de acuerdo. Pero que sea la última vez. */
END


I_C_T P_THIAGO 2 P_Thiago_Neera1
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @9168 /* ¡Oh, hola, Thiago! ¿Cómo te encuen--? ¡Ugh! Thiago, ¿ese olor viene de ti? */
== P_THIAGO IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @9169 /* *Thiago observa a Neera sin saber a qué se refiere.*  */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @91610 /* ¡Uff! ¡Bellfame! ¿Dónde estás? ¡Debes hacer algo con el hedor que emana tu oso! */
== P_BELLD IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @91611 /* Ah, pequeña mortal. ¿Te molesta Thiago? Lo lamento, a él no le gusta bañarse. */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @91612 /* ¡Argh! Creí que a todos los osos les gustaba el agua. */
== P_THIAGO IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @91613 /* *Thiago se estremece al oír la palabra 'agua'.* *  */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @91614 /* Bueno... no es como si no hubiese estado antes en una cloaca... ¡Pero no por ello soportaré tu 'aroma', oso! Espero que te bañes o puede que me ingenie algún conjuro para enviarte a una cascada de agua helada. */
END


I_C_T P_THIAGO 0 P_Thiago_Dusk1
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9161 /* Lo lamento, Thiago. Los caramelos se han... acabado. */
== P_THIAGO IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9162 /* *Thiago deja escapar un exagerado aullido de lamento*  */
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9163 /* Hm... puede que tenga algunas... galletas. */
== P_THIAGO IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9164 /* *Al oír la palabra 'galleta', las orejas del oso se paran.* *  */
== P_DUSKJ IF ~~ THEN @9165 /* Sí, aquí ten--- ¡Oye! Casi me arrancas la mano, oso. Sabes, no te vendría mal bajar un poco de peso. Deberías comer menos. */
END

// Abrimos el archivo de Thiago para el primer nodo
APPEND P_THIAGO

// 1. Bloque inicial modificado para desviar la charla
IF ~~ THEN BEGIN CA_WIL_03 
  SAY @11100050 /* ~*Thiago y Wilson se encuentran observándose en silencio. Al cabo de unos segundos, comienzan a emitir extraños bufidos.*~ */
  
  // Condición: Si Wilson y Bellfame están presentes y conscientes
  IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)
      InParty("Bellfame") InMyArea("Bellfame") !StateCheck("Bellfame",CD_STATE_NOTVALID)~ 
  THEN DO ~SetGlobal("P_ThiagoWilson_CA_001","GLOBAL",1)~ EXTERN WilsonJ WilThiago_Combo_01
  
  // Fallback: Si no están, sigue el curso normal
  IF ~OR(6) !InParty("Wilson") !InMyArea("Wilson") StateCheck("Wilson",CD_STATE_NOTVALID)
            !InParty("Bellfame") !InMyArea("Bellfame") StateCheck("Bellfame",CD_STATE_NOTVALID)~ 
  THEN DO ~SetGlobal("P_ThiagoWilson_CA_001","GLOBAL",1)~ GOTO CA_WIL_04
END

END // <-- MUY IMPORTANTE: Cerramos el APPEND de Thiago aquí.

// Los CHAIN van sueltos en el archivo principal
// 2. Primera interacción
CHAIN
IF ~~ THEN WilsonJ WilThiago_Combo_01
  @11100051 /* Bufido. */
  == P_THIAGO @11100051 /* Bufido. */
END
  ++ @11100052 /* ~¿Meteoros Gemelos? ¿Qué están planeando ustedes dos?~ */ EXTERN WilsonJ WilThiago_Combo_02

// 3. Respuesta de los osos
CHAIN
IF ~~ THEN WilsonJ WilThiago_Combo_02
  @11100053 /* Lamento. */
  == P_THIAGO @11100053 /* Lamento. */
  == P_BELLD  @11100054 /* Me parece que planean combinar sus habilidades la próxima vez que se encuentren en combate... */
END
  ++ @11100055 /* ~Lo que me faltaba, un complot de osos.~ */ EXTERN P_BELLD WilThiago_Combo_03
  ++ @11100056 /* ~¿Y qué se supone que significa esto?~ */ EXTERN P_BELLD WilThiago_Combo_03

// 4. Conclusión de Bellfame
CHAIN
IF ~~ THEN P_BELLD WilThiago_Combo_03
  @11100057 /* No creo que sea una cuestión para preocuparse, buen <CHARNAME>... */
  == P_THIAGO @11100051 /* Bufido. */
  == P_BELLD  @11100058 /* Sí, Thiago: Meteoros Gemelos... */
  == WilsonJ  @11100053 /* Lamento. */
END
  ++ @11100059 /* ~De acuerdo, Wilson. No me hagas quedar mal.~ */ EXTERN WilsonJ WilThiago_Combo_04
  ++ @11100060 /* ~No lleves por mal camino a Thiago, Wilson.~ */ EXTERN WilsonJ WilThiago_Combo_04

// 5. Último bufido
CHAIN
IF ~~ THEN WilsonJ WilThiago_Combo_04
  @11100051 /* Bufido. */
EXTERN P_THIAGO CA_WIL_04


// Volvemos a abrir el archivo de Thiago para el último nodo
APPEND P_THIAGO

// 6. Nodo final de Thiago
IF ~~ THEN BEGIN CA_WIL_04 
  SAY @11100061 /* ~*Thiago emite un lamento exagerado y vuelve a sus actividades secretas con Wilson.*~ */
  IF ~~ THEN EXIT
END

END // <-- Cerramos el APPEND de Thiago nuevamente.