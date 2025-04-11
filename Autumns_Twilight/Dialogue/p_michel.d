BEGIN P_MICHEL


IF WEIGHT #2~!InParty("P_Dusk")
Global("P_Dusk_Michel_Enc","LOCALS",0)
OR (2)
Global("P_DuskMatMission1","GLOBAL",2)
Global("P_DuskMatMission1","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0 /* ~(El leprechaun te ve llegar y luego de abrir bien sus ojos, se echa a correr como un desquiciado, alejándose de ti mientras se ríe)~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],20)~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
Global("P_DuskMatMission1","GLOBAL",3)
Global("P_Dusk_Michel_Enc","LOCALS",1)
Global("P_DuskMatMission1Failed","GLOBAL",1)~ THEN BEGIN 27 // from:
  SAY @0 /* ~(El leprechaun te ve llegar y luego de abrir bien sus ojos, se echa a correr como un desquiciado, alejándose de ti mientras se ríe)~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],20)~ EXIT
END

IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global("P_DuskMatMission1","GLOBAL",3)
Global("P_Dusk_Michel_Enc","LOCALS",1)
Global("P_DuskMatMission1Failed","GLOBAL",1)~ THEN BEGIN 57 // from:
  SAY @0 /* ~(El leprechaun te ve llegar y luego de abrir bien sus ojos, se echa a correr como un desquiciado, alejándose de ti mientras se ríe)~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],20)~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
Global("P_Dusk_Michel_Enc","LOCALS",0)
OR (2)
Global("P_DuskMatMission1","GLOBAL",2)
Global("P_DuskMatMission1","GLOBAL",1)~ THEN BEGIN 56 // from:
  SAY @0 /* ~(El leprechaun te ve llegar y luego de abrir bien sus ojos, se echa a correr como un desquiciado, alejándose de ti mientras se ríe)~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],20)~ EXIT
END

IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_Dusk_Michel_Enc","LOCALS",0)
OR (2)
Global("P_DuskMatMission1","GLOBAL",1)
Global("P_DuskMatMission1","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY @1 /* ~(El pequeño te atisba con la mirada y ves cómo prepara sus piecitos para la huida. Sin embargo, se detiene al ver a Dusk entre tus filas)~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_Michel_Enc","LOCALS",1)
  SetGlobal("P_DuskMatMission1","GLOBAL",3)
  ~ GOTO 2
END

//RealSetGlobalTimer("P_DuskTimer","GLOBAL",60)

IF ~~ THEN BEGIN 2 // from:
  SAY @2 /* ~(De repente, sus ojos se abren y empieza a sonreir como si estuviera a punto de asesinarte. Pero, en cambio, se pone a bailar y a zapatear en el lugar)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 15
END

IF ~~ THEN BEGIN 3 // from:
  SAY @3 /* ~(Claramente, ves cómo el leprechaun ignora a Dusk y sigue bailando con euforia y desenfreno mientras ríe muy alegremente)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 17
END

IF ~~ THEN BEGIN 4 // from:
  SAY @4 /* ~(El leprechaun sigue bailando como si no hubiera un mañana)~ */
  IF ~PartyGoldGT(749)~ THEN REPLY @5 /* ~Para serte sincero, Dusk, prefiero no darle más vueltas al asunto. ¡Oye, renacuajo! Te daré 750 piezas de oro si regresas con tu amigo de pelo verde, ¿qué te parece?~ ~Para serte sincera, Dusk, prefiero no darle más vueltas al asunto. ¡Oye, renacuajo! Te daré 750 piezas de oro si regresas con tu amigo de pelo verde, ¿qué te parece?~ */ DO ~TakePartyGold(750)~ GOTO 5
  IF ~PartyHasItem("misc97")~ THEN REPLY @6 /* ~Para nuestra fortuna, tenemos algo que lo puede convencer. ¡Oye, Michelson! ¿Quieres cerveza? Te la daré sólo si prometes que volverás con tu amigo el de la cabellera verde, ¿sí?~ */ DO ~TakePartyItem("MISC97")~ GOTO 6
  IF ~~ THEN REPLY @7 /* ~Hmmm... creo que podemos improvisar algún chiste, ¿no lo crees? ¿Te conoces alguno?~ */ EXTERN ~P_DUSKJ~ 21
  IF ~~ THEN REPLY @8 /* ~No entiendo por qué tanto drama. Mírenlo. Es una cosa muy tierna. ¿No es así, Michelson? ¿A que sí eres una cosa muy tierna? *le sonríes*~ */ EXTERN ~P_DUSKJ~ 27
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9 /* ~(Michelson deja su frenética danza para tomar, desesperadamente, la bolsa con las monedas de oro que le has ofrecido. Le vuelves a implorar a que vuelva con Mathyus y con su nariz metida en la bolsa, oliendo el oro, asiente con su cabeza y sale corriendo a toda velocidad)~ */
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~P_DUSKJ~ 18
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10 /* ~(Michelson deja su frenética danza para tomar, desesperadamente, la jarra de cerveza que le has ofrecido. Antes de que se la beba toda, insistes en que vaya cuanto antes con Mathyus, a lo que el leprechaun asiente mientras sigue bebiendo de la jarra. Se va corriendo a toda velocidad y no comprendes cómo es que no ha derramado ni una gota de cerveza en el proceso)~ */
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~P_DUSKJ~ 20
END

IF ~~ THEN BEGIN 7 // from:
  SAY @11 /* ~(Michelson detuvo su danza al oír la palabra chiste. Su porte, de repente, se puso serio y se ha cruzado de brazos, golpeando un pie contra el suelo, expectante de lo que has de contarle)~ */
  IF ~~ THEN REPLY @12 /* ~Un paladín le dice a un orco que su nombre es 'Nadie'. Entonces, le ataca. El orco grita para que su tribu le asista: "¡Ayuda, Nadie me ataca!"~ */ EXTERN ~P_DUSKJ~ 22
  IF ~~ THEN REPLY @13 /* ~¿Por qué un enano se deja crecer la barba? Pues, ¡para parecerse a su madre! *te ríes desenfrenadamante de tu propio chiste*~ */ EXTERN ~P_DUSKJ~ 24
  IF ~~ THEN REPLY @14 /* ~Oye, Michelson... ¿sabías que a caballo regalado no se le miran los... *te quedas pensativo un instante porque no recuerdas cómo era el dicho* ... cuchillos de palo?~ ~Oye, Michelson... ¿sabías que a caballo regalado no se le miran los... *te quedas pensativa un instante porque no recuerdas cómo era el dicho* ... cuchillos de palo?~*/ EXTERN ~P_DUSKJ~ 25
  IF ~~ THEN REPLY @15 /* ~Tenía pensado contarte un chiste, pero al verte así, todo enojado, me ha dado ternura. ¿Acaso no eres la cosa más tierna de todo Amn? *le sonríes*~ */ EXTERN ~P_DUSKJ~ 27
END

IF ~~ THEN BEGIN 8 // from:
  SAY @16 /* ~(Luego de quedarse boquiabierto durante unos segundos, el ceño del leprechaun se fruñe. Parece que no le ha gustado tu chiste y como resultado, sale corriendo como un desquiciado mientras baila y golpea sus pies en el aire)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1Failed","GLOBAL",1) RunAwayFrom([PC],20) ~ EXTERN ~P_DUSKJ~ 23
END

IF ~~ THEN BEGIN 9 // from:
  SAY @17 /* ~(Michelson escucha atento el remate de tu frase. Sus ojos, de repente, se abren demasiado y comienza a largar carcajadas a más no poder)~ */
  IF ~~ THEN REPLY @18 /* ~¡Ja! Ha funcionado. ¡Michelson, necesitamos que regreses con Mathyus! Se encuentra preocupado por ti. ¿Nos harías ese favor?~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @19 /* ~(Michelson sigue riéndose, pero te escucha y asiente con su cabeza. Te abraza la pierna y sale corriendo como un desquiciado, en dirección a la guarida de Mathyus)~ */
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~P_DUSKJ~ 26
END

IF WEIGHT #0 ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_Dusk_Michel_Enc","LOCALS",1)
Global("P_DuskMatMission1Failed","GLOBAL",1)
Global("P_DuskMatMission1","GLOBAL",3)~ THEN BEGIN 11 // from:
  SAY @20 /* ~(Te encuentras, nuevamente, con Michelson. El leprechaun sigue bailando como si no hubiera un mañana)~ */
  IF ~PartyGoldGT(749)~ THEN REPLY @5 /* ~Para serte sincero, Dusk, prefiero no darle más vueltas al asunto. ¡Oye, renacuajo! Te daré 750 piezas de oro si regresas con tu amigo de pelo verde, ¿qué te parece?~ */ DO ~TakePartyGold(750)~ GOTO 5
  IF ~PartyHasItem("misc97")~ THEN REPLY @6 /* ~Para nuestra fortuna, tenemos algo que lo puede convencer. ¡Oye, Michelson! ¿Quieres cerveza? Te la daré sólo si prometes que volverás con tu amigo el de la cabellera verde, ¿sí?~ */ DO ~TakePartyItem("MISC97")~ GOTO 6
  IF ~~ THEN REPLY @7 /* ~Hmmm... creo que podemos improvisar algún chiste, ¿no lo crees? ¿Te conoces alguno?~ */ EXTERN ~P_DUSKJ~ 21
  IF ~~ THEN REPLY @8 /* ~No entiendo por qué tanto drama. Mírenlo. Es una cosa muy tierna. ¿No es así, Michelson? ¿A que sí eres una cosa muy tierna? *le sonríes*~ */ EXTERN ~P_DUSKJ~ 27
END

IF WEIGHT #1 ~!InParty("P_Dusk")
Global("P_Dusk_Michel_Enc","LOCALS",1)
Global("P_DuskMatMission1Failed","GLOBAL",1)
Global("P_DuskMatMission1","GLOBAL",3)~ THEN BEGIN 12 // from:
  SAY @21 /* ~(Te encuentras, nuevamente, con Michelson. El leprechaun sigue bailando como si no hubiera un mañana. Al no estar Dusk contigo, te ignora y sale corriendo, alejándose de ti lo más posible)~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],20)~ EXIT
END


IF ~~ THEN BEGIN 13 // from:
  SAY @22 /* ~(Michelson, con el ceño fruncido y los ojos llenos de ira, mueve sus manos rápidamente y un destello carmesí se dispara contra ti. Aún sin entender lo que está pasando, ves cómo el ágil leprechaun sale disparado, alejándose unos pasos)~ */
  IF ~~ THEN DO ~CreateItem ("p_michx",1,1,0) 
  UseItem ("p_michx", LastTalkedToBy)
  DestroyItem ("p_michx")
  SetGlobal("P_DuskMatMission1Failed","GLOBAL",1)
  RunAwayFrom([PC],20)
   ~ EXIT
END

// Misión Cumplida 1
IF ~~ THEN BEGIN 14 // from:
  SAY @23 /* ~(Michelson escucha atentamente la conversación, mientras zapatea y danza algún baile místico y frenético)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 32
END

IF ~~ THEN BEGIN 15 // from:
  SAY @24 /* ~(De repente, detiene su danza, expectante y emocionado por lo que está a punto de relatar Mathyus)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 36
END

IF ~~ THEN BEGIN 16 // from:
  SAY @25 /* ~(Michelson mueve las manos con velocidad al tiempo en que emite algunas risas entremezcladas con sonidos extraños)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 38
END

IF ~~ THEN BEGIN 17 // from:
  SAY @26 /* ~(Michelson se retuerce de la risa al escuchar aquella frase del relato)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DUSKJ~ 31
END

IF ~~ THEN BEGIN 18 // from:
  SAY @27 /* ~(Michelson asiente velozmente con su cabeza. Luego, agita su manito saludando al grupo mientras baila una canción que el oído de los mortales no es capaz de captar)~ */
  IF ~~ DO ~ EraseJournalEntry (@210001) EraseJournalEntry (@210003) EraseJournalEntry (@210004)~ SOLVED_JOURNAL @210005 EXIT
END


IF ~Global("P_DuskMatMission1","GLOBAL",5)
Global("P_Michel_Forge","GLOBAL",0)
Global("P_Michel_ConvocM3","GLOBAL",0)
!Global("P_DuskM3LLAMA_ORBET","GLOBAL",4)
~ 
THEN BEGIN 19 // from:
  SAY @28 /* ~(Michelson se encuentra bailando como si no hubiera un mañana. Parece estar, al mismo tiempo, en una especie de trance meditativo. Si quieres algo de él, primero tendrás que hablar con Mathyus)~ */
  IF ~~ DO ~~ EXIT
END

IF ~Global("P_DuskMatMission1","GLOBAL",4)
Global("P_Michel_Forge","GLOBAL",0)
Global("P_Michel_ConvocM3","GLOBAL",0)
!Global("P_DuskM3LLAMA_ORBET","GLOBAL",4)
~ 
THEN BEGIN 29 // from:
  SAY @37 /* ~(Michelson se encuentra bailando como si no hubiera un mañana. Parece estar, al mismo tiempo, en una especie de trance meditativo. Si quieres algo de él, primero tendrás que hablar con Mathyus)~ */
  IF ~~ DO ~~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY @29 /* ~(Michelson detiene su danza y aplaude con euforia mientras ríe, supones, de alegría)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 56
END

IF ~~ THEN BEGIN 21 // from:
  SAY @30 /* ~(Michelson asiente velozmente con su cabeza mientras exhibe sus dientes blanquecinos)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 57
END

// Acá lo modificaremos. Haremos un GOTO a Mathyus para que diga que hables con Michelson y así puedas ver el ritual
// Entonces ahí meteremos el CutScene
IF ~Global("P_Michel_Forge","GLOBAL",0)
Global("P_Dusk_Michel_Enc","LOCALS",1)
Global("P_DuskMatMission1","GLOBAL",5)~ THEN BEGIN 22 // from:
  SAY @31 /* ~(Como pocas veces, la faz del leprechaun se torna seria. Con todos los ingredientes frente a él, se encuentra listo para iniciar el proceso de construcción)~ */
  IF ~~ THEN DO ~ 
  SetGlobal("P_Michel_Forge","GLOBAL",1)
~ EXTERN ~P_MATUT~ 62 
END

IF ~Global("P_Michel_Forge","GLOBAL",1)~ THEN BEGIN 26 // from:
  SAY @35 /* ~(Michelson, absolutamente concentrado, tiene los ingredientes al frente suyo. De la nada, comienza un delirante movimiento con sus manos. Así comienza el proceso de construcción)~ */
  IF ~~ THEN DO ~ SetGlobal("P_Michel_Forge","GLOBAL",2)
  //StartCutSceneMode()
  //StartCutScene("p_michel")
  ~ EXIT
END

IF ~Global("P_Michel_Forge","GLOBAL",2)
 ~ THEN BEGIN 23 // from:
  SAY @32 /* ~(Al parecer, el ritual ha terminado y el leprechaun ha quedado un tanto exhausto)~ */
 IF ~~ THEN DO ~SetGlobal("P_Michel_Forge","GLOBAL",0)
 ~ EXTERN ~P_MATUT~ 58
END

////////////// Espada de Disrupción

IF ~~ THEN BEGIN 24 // from:
  SAY @33 /* ~(Michelson, sorprendentemente recuperado, baila y se acerca a Dusk, blandiendo con cierta dificultad la nueva espada)~ */
  IF ~~ THEN DO ~CreateItem ("p_sw1hdr",1,1,0)  GiveItem("p_sw1hdr", "P_Dusk")~ EXTERN ~P_DUSKJ~ 36
END

IF ~~ THEN BEGIN 25 // from:
  SAY @34 /* ~(Michelson, con energía plena, baila y saluda al grupo mientras zapatea y ríe. No puedes evitar demostrar una sonrisa ante esto.)~ */
  IF ~~ DO ~~ EXIT
END

IF ~
Global("P_Dusk_Michel_Enc","LOCALS",1)
Global("P_DuskMatMission1","GLOBAL",4)~ THEN BEGIN 28 // from:
  SAY @36 /* ~(Michelson baila y saluda al grupo mientras zapatea y ríe)~ */
  IF ~~ DO ~~ EXIT
END

///////////////////////  Armadura de Placas de Dusk

IF ~~ THEN BEGIN 30 // from:
  SAY @29 /* ~(Michelson detiene su danza y aplaude con euforia mientras ríe, supones, de alegría)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 65
END



IF ~~ THEN BEGIN 31 // from:
  SAY @38 /* ~(Michelson, sorprendentemente recuperado, baila y se acerca a Dusk, alzando con gran dificultad la gran armadura de placas)~ */
  IF ~~ THEN DO ~CreateItem ("p_dplat1",1,1,0)  GiveItem("p_dplat1", "P_Dusk")~ EXTERN ~P_DUSKJ~ 38
END

///////////////////////// Brazales de Defensa Pétrea

IF ~~ THEN BEGIN 32 // from:
  SAY @29 /* ~(Michelson detiene su danza y aplaude con euforia mientras ríe, supones, de alegría)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 72
END


IF ~~ THEN BEGIN 33 // from:
  SAY @39 /* ~(Michelson, sorprendentemente recuperado, baila y se acerca mientras juega con los flamantes brazales que ha forjado)~ */
  IF ~~ THEN DO ~CreateItem ("P_BRAC99",1,2,1)  GiveItem("P_BRAC99", LastTalkedToBy)~ 
        REPLY @40 /* ~Gracias, buen Michelson. Los brazales han quedado hermosos.~ */ EXTERN ~P_MATUT~ 74

END


///////////////////// CRIMSON THUNDER

IF ~~ THEN BEGIN 34 // from:
  SAY @29 /* ~(Michelson detiene su danza y aplaude con euforia mientras ríe, supones, de alegría)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 77
END

IF ~~ THEN BEGIN 35 // from:
  SAY @42 /* ~(Michelson, sorprendentemente recuperado, baila y se acerca mientras blande, casi irresponsablemente, el martillo Trueno Escarlata por todos lados, lanzando chispas por doquier)~ */
  IF ~~ THEN DO ~CreateItem ("p_hamm1",1,1,0)  GiveItem("p_hamm1", LastTalkedToBy)~ 
        REPLY @41 /* ~¡Cuidado, Michelson! Hmpf, casi me electrocutas, pequeño.~ */ EXTERN ~P_MATUT~ 79

END

///////////////////// FUEGO SALVAJE

IF ~~ THEN BEGIN 36 // from:
  SAY @29 /* ~(Michelson detiene su danza y aplaude con euforia mientras ríe, supones, de alegría)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 82
END

IF ~~ THEN BEGIN 37 // from:
  SAY @43 /* ~(Michelson, sorprendentemente recuperado, baila y se acerca mientras carga con la ligera armadura de cuero)~ */
  IF ~~ THEN DO ~CreateItem ("p_leat01",1,1,0)  GiveItem("p_leat01", LastTalkedToBy)~ 
        REPLY @44 /* ~Gracias, Michelson. La armadura ha quedado hermosa.~ */ EXTERN ~P_MATUT~ 84

END

///////////////////// VENOM STRIKE

IF ~~ THEN BEGIN 38 // from:
  SAY @29 /* ~(Michelson detiene su danza y aplaude con euforia mientras ríe, supones, de alegría)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 87
END

IF ~~ THEN BEGIN 39 // from:
  SAY @45 /* ~(Michelson, sorprendentemente recuperado, baila y se acerca mientras blande el mayal y gira su cabeza hacia todas partes)~ */
  IF ~~ THEN DO ~CreateItem ("p_venom",1,1,0)  GiveItem("p_venom", LastTalkedToBy)~ 
        REPLY @46 /* ~¡Michelson, ten cuidado! Parece un arma sumamente peligrosa...~ */ EXTERN ~P_MATUT~ 89

END

///////////////////// COLMILLO DE LARLOCH

IF ~~ THEN BEGIN 40 // from:
  SAY @29 /* ~(Michelson detiene su danza y aplaude con euforia mientras ríe, supones, de alegría)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 92
END

IF ~~ THEN BEGIN 41 // from:
  SAY @47 /* ~(Michelson, sorprendentemente recuperado, baila y se acerca mientras blande el hacha hacia todos lados)~ */
  IF ~~ THEN DO ~CreateItem ("p_sw1h00",1,1,0)  GiveItem("p_sw1h00", LastTalkedToBy)~ 
        REPLY @48 /* ~¡Michelson, ten cuidado! Vaya, el hacha resplandece de una forma hermosa.~ */ EXTERN ~P_MATUT~ 94

END

///////////////////// VENTISCA DEL AVERNO

IF ~~ THEN BEGIN 42 // from:
  SAY @29 /* ~(Michelson detiene su danza y aplaude con euforia mientras ríe, supones, de alegría)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 97
END

IF ~~ THEN BEGIN 43 // from:
  SAY @49 /* ~(Michelson, sorprendentemente recuperado, baila y se acerca mientras blande la espada hacia todos lados)~ */
  IF ~~ THEN DO ~CreateItem ("p_sw1h06",1,1,0)  GiveItem("p_sw1h06", LastTalkedToBy)~ 
        REPLY @50 /* ~¡Michelson, ten cuidado! Vaya, la espada resplandece de una forma hermosa.~ */ EXTERN ~P_MATUT~ 99

END

///////////////////// VENGADORA REAL

IF ~~ THEN BEGIN 44 // from:
  SAY @51 /* ~(Michelson detiene su danza y queda, como pocas veces, serio y boquiabierto ante los artefactos presentados por <CHARNAME> y Dusk)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DUSKJ~ 44
END

IF ~~ THEN BEGIN 45 // from:
  SAY @52 /* ~(Michelson mira un tanto extrañado a Mathyus y luego observa a Dusk y a <CHARNAME>. Al cabo de unos segundos de silencio...)~ */
  IF ~~ THEN DO ~~ GOTO 46
END

IF ~~ THEN BEGIN 46 // from:
  SAY @53 /* ~(...estalla de risa)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 103
END

IF ~~ THEN BEGIN 47 // from:
  SAY @54 /* ~(Michelson, con una sonrisa blanquecina en su rostro, silba y chasquea los dedos. Del mismo aire parece formarse una línea recta, y un rayo violeta toma forma sólida. La Vengadora Real está frente a tus ojos)~ */
  IF ~~ THEN DO ~CreateItem ("P_WSSTP",1,1,0)  GiveItem("P_WSSTP", "P_Dusk")~ EXTERN ~P_DUSKJ~ 43
END

IF ~~ THEN BEGIN 48 // from:
  SAY @55 /* ~(Michelson recibe el arma de Dusk con gran reverencia y seriedad. Utilizando los mismos gestos con los que hizo aparecer la Vengadora Real, hace que el bastón shilmista se desvanezca en el aire)~ */
  IF ~~ THEN DO ~TakePartyItem ("p_stf1") DestroyItem ("p_stf1") ~ EXTERN ~P_MATUT~ 107
END

IF ~~ THEN BEGIN 49 // from:
  SAY @56 /* ~(Michelson aplaude, ríe y baila. Podrías pensar que está haciendo lo que hace siempre, pero una parte de ti cree que lo hace para conmemorar el hecho de que hayas reunido el equipo completo del conde Benork)~ */
  IF ~~ DO ~SetGlobal ("P_VENGADORA_FIN", "GLOBAL", 1)~ EXIT
END

////// MISION 2

IF ~~ THEN BEGIN 50 // from:
  SAY @57 /* ~(Michelson asiente velozmente con su cabeza. Luego parece murmurar algo a Mathyus)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 111
END

//EVIL PATH

IF ~~ THEN BEGIN 51 // from:
  SAY @58 /* ~(Michelson baila y ríe. Pareciera ser que se está jactando de haber tenido la razón)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 130
END

IF ~~ THEN BEGIN 52 // from:
  SAY @59 /* ~(Michelson detiene su danza y queda paralizado, atónito ante las palabras de Dusk)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DEMOLE~ 8
END

IF ~~ THEN BEGIN 53 // from:
  SAY @60 /* ~(Michelson queda un momento boquiabierto. Parece estremecerse al ver el color rojo sangriento que emana del orbe)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 136
END

IF ~~ THEN BEGIN 54 // from:
  SAY @61 /* ~(Michelson parece susurrar, nervioso, algo a Mathyus)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 137
END

IF ~~ THEN BEGIN 55 // from:
  SAY @62 /* ~(Michelson tiembla levemente al ver la espada carmesí. Tapa sus ojos con sus pequeñas manos)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DEMOLE~ 9
END

// GOOD PATH

IF ~~ THEN BEGIN 58 // from:
  SAY @58 /* ~(Michelson baila y ríe. Pareciera ser que se está jactando de haber tenido la razón)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 154
END

IF ~~ THEN BEGIN 59 // from:
  SAY @63 /* ~(Michelson muestra sus dientes y ríe fuertemente)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 158
END

IF ~~ THEN BEGIN 60 // from:
  SAY @64 /* ~(Michelson ríe ante las palabras de <CHARNAME>. Luego, chasquea los dedos y de la nada, un anillo hace aparición)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 160
END

IF ~~ THEN BEGIN 61 // from:
  SAY @65 /* ~(Michelson asiente mientras baila y zapatea. Se acerca a <CHARNAME> muy contento y extiende su mano, entregando el anillo mágico)~ */
  IF ~~ THEN DO ~CreateItem ("p_belrng",1,1,0)  GiveItem("p_belrng", LastTalkedToBy)~ EXTERN ~P_MATUT~ 161
END

IF ~~ THEN BEGIN 62 // from:
  SAY @66 /* ~(Michelson se torna serio y explica a Mathyus algunas cuestiones, mientras, por supuesto, baila y silba desenfrenadamante)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 162
END

IF ~~ THEN BEGIN 63 // from:
  SAY @60 /* ~(Michelson queda un momento boquiabierto. Parece estremecerse al ver el color rojo sangriento que emana del orbe)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 167
END

IF ~~ THEN BEGIN 64 // from:
  SAY @61 /* ~(Michelson parece susurrar, nervioso, algo a Mathyus)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 168
END

IF ~~ THEN BEGIN 65 // from:
  SAY @67 /* ~(Michelson parece casi ofendido por la insinuación. Asiente rápidamente y ríe, tomando el sangriento orbe en sus manitos)~ */
  IF ~~ THEN DO ~~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from:
  SAY @68 /* ~(A primera vista, percibes que el orbe es de un gran poder y, aún así, parece ceder ante la palabras, que en realidad son risas desenfrenadas, del leprechaun)~ */
  IF ~~ THEN DO ~~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from:
  SAY @69 /* ~(El pequeño saca de sus bolsillos varias gemas, las cuales parecen desintegrarse alrededor del orbe. Las partículas de las mismas, como si de estrellas en el cosmos se tratasen, se funden con el orbe)~ */
  IF ~~ THEN DO ~~ GOTO 68
END

IF ~~ THEN BEGIN 68 // from:
  SAY @70 /* ~(La energía maligna se desvanece en el aire y la furia carmesí desaparece, dando lugar a un apacible color verde hoja. Al cabo de unos segundos, el orbe parece estabilizarse, fulgurando en su nueva forma)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DUSKJ~ 204
END

IF ~~ THEN BEGIN 69 // from:
  SAY @71 /* ~(Michelson baila alegremente se acerca a Dusk, sosteniendo el orbe. Hace entrega del mismo con gran reverencia y larga a reír mientras vuelve a su lugar al lado de Mathyus)~ */
  IF ~~ THEN DO ~GiveItem("p_orbev", "P_Dusk")~ EXTERN ~P_DUSKJ~ 205
END

IF ~~ THEN BEGIN 70 // from:
  SAY @72 /* ~(Michelson se exalta y señala la espada esmeralda que ha aparecido al frente de Dusk. Aplaude, ríe y comienza a bailar como festejando)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DEMOLE~ 12
END

// MISSION 3
//EVIL

IF ~~ THEN BEGIN 71 // from:
  SAY @73 /* ~(Michelson interrumpe ante la duda de Mathyus, moviendo sus manitos a gran velocidad en negativa)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 191
END

IF ~~ THEN BEGIN 72 // from:
  SAY @74 /* ~(En silencio, Michelson asiente con su cabeza, moviéndola por vez primera, con la misma lentitud de movimiento que Demoledor)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 195
END

//GOOD
IF ~~ THEN BEGIN 73 // from:
  SAY @75 /* ~(Michelson interrumpe ante la duda de Mathyus, riendo y haciendo unos extraños pasos de baile)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 201
END

IF ~~ THEN BEGIN 74 // from:
  SAY @76 /* ~(Michelson sonríe, mostrando una mueca casi resplandeciente)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 204
END

IF ~~ THEN BEGIN 75 // from:
  SAY @77 /* ~(Michelson silba fuertemente y luego se larga a reír, llamando la atención de todos)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 206
END

IF ~Global("P_Michel_ConvocM3","GLOBAL",1) ~ THEN BEGIN 76 // from:
  SAY @78 /* ~(Michelson ríe con fuerzas y comienza a mover sus manos. De repente, sientes cómo el aire a tu alrededor comienza a revolverse)~ */
  IF ~~ THEN DO ~ SetGlobal("P_Michel_ConvocM3","GLOBAL",2)
  ~ UNSOLVED_JOURNAL @210026 EXIT
END

IF ~Global("P_Michel_ConvocM3","GLOBAL",2)
 ~ THEN BEGIN 77 // from:
  SAY @79 /* ~(Al parecer, el ritual ha terminado y el leprechaun baila incesante ante la presencia de los traídos por el portal)~ */
 IF ~~ THEN DO ~SetGlobal("P_Michel_ConvocM3","GLOBAL",0)
 ~ GOTO 78
END

IF ~~ THEN BEGIN 78 // from:
  SAY @112 /* ~(Michelson agita con fuerza sus brazitos. Ríe y se despide, mientras baila y silba como un desquiciado)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",3) 
  SetGlobal ("P_DuskM3HELP","GLOBAL",1) 
  CreateItem ("p_orbet1",1,1,0)  GiveItem("p_orbet1", "P_Dusk")
  ~ EXIT
END


// MICHELSON APARECE EN TUMULO DE LOS TROLLS PARA PURIFICACION
// REQUIERE P_DuskM3LLAMA_ORBET

IF ~Global("P_DuskM3LLAMA_ORBET","GLOBAL",4)
 ~ THEN BEGIN 79 // from:
  SAY @113 /* ~(De la nada, una risa se percibe hasta en los rincones más oscuros del Túmulo)~ */
 IF ~~ THEN DO ~SetGlobal("P_DuskM3LLAMA_ORBET","GLOBAL",5)
 ~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from:
  SAY @114 /* ~(Finalmente, Michelson hace aparición desde las sombras, bailando y riendo, como si de una fiesta se tratase)~ */
	// DUSK DEAD
    IF ~Dead("P_Dusk")~ THEN REPLY @115 /* ~¡¿Michelson?! Vaya, ¿qué haces aquí?~ */  GOTO 81
	// DUSK ALIVE
	IF ~!Dead("P_Dusk")~ THEN REPLY @115 /* ~¡¿Michelson?! Vaya, ¿qué haces aquí?~ */  GOTO 84
END

IF ~~ THEN BEGIN 81 // from:
  SAY @116 /* ~(Con una sonrisa en su rostro, te entrega una nota)~ */
  IF ~~ THEN DO ~~ GOTO 82
END

IF ~~ THEN BEGIN 82 // from:
  SAY @117 /* ~*La lees en voz alta* "Querido <CHARNAME>: Michelson irá al Túmulo de los Trolls una vez que la batalla haya finalizado. El motivo es para realizar un ritual para purificar el lugar y evitar que en un futuro vuelva a suceder algo de este calibre. Además, Michelson, una vez que termine su ritual, revivirá a los caídos en batalla."~ ~*La lees en voz alta* "Querida <CHARNAME>: Michelson irá al Túmulo de los Trolls una vez que la batalla haya finalizado. El motivo es para realizar un ritual para purificar el lugar y evitar que en un futuro vuelva a suceder algo de este calibre. Además, Michelson, una vez que termine su ritual, revivirá a los caídos en batalla."~ */
  IF ~~ THEN DO ~~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from:
  SAY @118 /* ~*La nota continúa* "Los convocados por el orbe teletransportador poseían una protección mágica que Michelson había imbuido. Sin importar la gravedad de sus heridas, podrán ser revividos. Espero que Dusk haya sobrevivido al combate, de lo contrario, Michelson no tendrá el poder necesario para poder traerlo de vuelta a este plano. Quizás alguna iglesia o algún poderoso clérigo pueda hacerlo. De ser el caso en que no pueda ser revivido... simplemente vuelve y hablaremos al respecto.
  Atentamente, Mathyus Davis.
  El poderoso elfo shilmista."~ */
  IF ~~ THEN DO ~~ GOTO 87
END


IF ~~ THEN BEGIN 84 // from:
  SAY @116 /* ~(Con una sonrisa en su rostro, te entrega una nota)~ */
  IF ~~ THEN DO ~~ GOTO 85
END

IF ~~ THEN BEGIN 85 // from:
  SAY @117 /* ~*La lees en voz alta* "Querido <CHARNAME>: Michelson irá al Túmulo de los Trolls una vez que la batalla haya finalizado. El motivo es para realizar un ritual para purificar el lugar y evitar que en un futuro vuelva a suceder algo de este calibre. Además, Michelson, una vez que termine su ritual, revivirá a los caídos en batalla."~ ~*La lees en voz alta* "Querida <CHARNAME>: Michelson irá al Túmulo de los Trolls una vez que la batalla haya finalizado. El motivo es para realizar un ritual para purificar el lugar y evitar que en un futuro vuelva a suceder algo de este calibre. Además, Michelson, una vez que termine su ritual, revivirá a los caídos en batalla."~ */
  IF ~~ THEN DO ~~ GOTO 86
END

IF ~~ THEN BEGIN 86 // from:
  SAY @118 /* ~*La nota continúa* "Los convocados por el orbe teletransportador poseían una protección mágica que Michelson había imbuido. Sin importar la gravedad de sus heridas, podrán ser revividos. Espero que Dusk haya sobrevivido al combate, de lo contrario, Michelson no tendrá el poder necesario para poder traerlo de vuelta a este plano. Quizás alguna iglesia o algún poderoso clérigo pueda hacerlo. De ser el caso en que no pueda ser revivido... simplemente vuelve y hablaremos al respecto.
  Atentamente, Mathyus Davis.
  El poderoso elfo shilmista."~ */
  IF ~~ THEN DO ~~ GOTO 87
END


IF ~~ THEN BEGIN 87 // from:
  SAY @124 /* (Inmediatamente, Michelson comienza su ritual de purificación, y sientes que no debes interrumpirlo. Ya no tienes mucho más por hacer aquí.) */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3LLAMA_ORBET","GLOBAL",5)~ UNSOLVED_JOURNAL @210027 EXIT
END

// Forja de SALUS

IF ~~ THEN BEGIN 88 // from:
  SAY @29 /* ~(Michelson detiene su danza y aplaude con euforia mientras ríe, supones, de alegría)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 246
END

IF ~~ THEN BEGIN 89 // from:
  SAY @130 /* ~(Michelson, sorprendentemente recuperado, baila y se acerca, sorprendentemente ligero, con una armadura que en apariencia parece ser pesada y maciza)~ */
  IF ~~ THEN DO ~CreateItem ("p_platd1",1,2,1)  GiveItem("p_platd1", LastTalkedToBy)~ 
        REPLY @131 /* ~Gracias, Michelson. Dusk, espero que la armadura sea de tu agrado.~ */		
		EXTERN ~P_MATUT~ 240
END

// Forja de REX

IF ~~ THEN BEGIN 90 // from:
  SAY @29 /* ~(Michelson detiene su danza y aplaude con euforia mientras ríe, supones, de alegría)~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 242
END

IF ~~ THEN BEGIN 91 // from:
  SAY @132 /* ~(Michelson, sorprendentemente recuperado, baila y se acerca, correteando peligrosamente mientras blande la flamante espada cormyreana)~ */
  IF ~~ THEN DO ~CreateItem ("p_sw2hdr",1,2,1)  GiveItem("p_sw2hdr", LastTalkedToBy)~ 
        REPLY @133 /* ~Gracias, Michelson. Dusk, espero que la espada sea de tu agrado.~ */		
		EXTERN ~P_MATUT~ 244
END

// DUSK ALIVE M3

I_C_T p_michel 86 P_Dusk_Michel_DUSKLIVE_M3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @125 /* ~Gracias por leer la nota, <CHARNAME>. ¡Michelson! Siempre es un placer verte.~ */
== p_michel IF ~~ THEN @126 /* (Michelson esboza una sonrisa y baila al ver a Dusk con vida) */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @127 /* ~Puedes llevar a cabo tu ritual, amigo. Volveremos con Mathyus y le informaremos lo que aquí ha acontecido.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @128 /* ~Algo me dice que seguro estarás allá para cuando volvamos a Athkatla.~ */
== p_michel IF ~~ THEN @129 /* (Michelson silba y mueve sus piecitos, afirmando lo que Dusk acaba de decir) */
END

// DUSK DEAD M3

I_C_T p_michel 83 P_Dusk_Michel_DUSKDEAD_M3
== p_michel IF ~~ THEN @119 /* (Luego de que terminas de leer la nota, ves cómo Michelson levanta la cabeza y busca a Dusk con su mirada) */ 
== p_michel IF ~~ THEN @120 /* (Su típica sonrisa desaparece al darse cuenta de que ha caído en batalla) */ 
== p_michel IF ~~ THEN @121 /* (Parece estar a punto de largarse a llorar cuando posas tu mano en su hombro sin saber qué decir) */ 
== p_michel IF ~~ THEN @122 /* (Sin nada más que "decir", Michelson señala la carta escrita por Mathyus, la que leiste hace tan sólo unos momentos.) */ 
== p_michel IF ~~ THEN @123 /* (Crees que significa que debes volver con Mathyus para informarle lo que ha sucedido) */ 
END




// Convocación de Sir Ryan y Falon

I_C_T p_michel 77 P_Dusk_Michel_CONVOC_M3
== KAYL2 IF ~~ THEN @80 /* ¡Por Tyr! ¿Dónde estoy? Hace unos instantes me encontraba en los Salones de la Orden... */
== P_DuskJ IF ~~ THEN @81 /* ¡Sir Ryan! Es un placer volver a verte. */
== KAYL2 IF ~~ THEN @82 /* ¿Dusk, <CHARNAME>? ¿Qué está sucediendo? */
== p_falon IF ~~ THEN @83 /* Algo me dice que el soldado humano necesita nuestra ayuda, mi lord. */ 
== p_matut IF ~~ THEN @84 /* *carraspeo* Ruego nos perdone, lord paladín. Quien lo ha traído a esta... guarida hemos sido nosotros. Yo soy Mathyus Davis, explorador del Bosque Shilmista. Quien ha ejecutado el sortilegio es Michelson, un leprechaun. */ 
== p_michel IF ~~ THEN @85 /* (Michelson saluda con mucho énfasis a los recién llegados) */ 
== KAYL2 IF ~~ THEN @86 /* Ya veo... confío en que aún nos encontremos en Athkatla, Dusk. */ 
== P_DuskJ IF ~~ THEN @87 /* Así es, Sir Ryan. Más precisamente en el Puerto. */
== KAYL2 IF ~~ THEN @88 /* Entiendo... y, ¿por qué nos has traído aquí? */ 
== P_DuskJ IF ~~ THEN @89 /* <CHARNAME> y yo iremos a enfrentarnos a un clan orco, recientemente arribado a Amn. Se encuentran a pocas horas de la ciudad... */
== P_DuskJ IF ~~ THEN @90 /* Se trata de un grupo liderado por un orco que orquestó el ataque a mi destacamento, Sir Ryan. */
== p_falon IF ~~ THEN @91 /* Ya veo... Se trata del orco que originalmente te atacó y por el cual casi atacas a mí y mi tribu, ¿no es así? */ 
== P_DuskJ IF ~~ THEN @92 /* Así es, Falon. Sus fuerzas han aumentado considerablemente y puede que <CHARNAME> y yo no seamos suficientes. */
== KAYL2 IF ~~ THEN @93 /* Hmm... y, ¿crees que es un peligro para la ciudad, Dusk? */ 
== P_DuskJ IF ~~ THEN @94 /* No estoy seguro de que sea un peligro inmediato, Sir Ryan. Pero creo que, tarde o temprano, atacará a algún que otro inocente que se cruce en su camino. */
== KAYL2 IF ~~ THEN @95 /* Sé a qué te refieres, Dusk. El problema es que actualmente no dispongo de caballeros para tu tarea. */ 
== p_falon IF ~~ THEN @96 /* Si me lo permite, mi lord, mi tribu y yo estaríamos más que dispuestos en ayudar a Dusk y sus amigos. */ 
== KAYL2 IF ~~ THEN @97 /* Creí que querían alejarse de la guerra, Falon. ¿Por qué habrías de hacerlo? */ 
== p_falon IF ~~ THEN @98 /* Dusk y <CHARNAME> nos dieron una segunda oportunidad. Un nuevo hogar. Estoy segura de que mi familia está más que dispuesta a brindar una ayuda por una noble causa. */ 
== KAYL2 IF ~~ THEN @99 /* Has aprendido bien, Falon. Muy bien, está decidido. Falon, su tribu y yo habremos de prestarte nuestras espadas para esta causa, Dusk. */ 
== P_DuskJ IF ~~ THEN @100 /* ¿Usted también, Sir Ryan? */
== KAYL2 IF ~~ THEN @101 /* Sí. Si los humanoides han de luchar en nombre de la Noble Orden, yo debo estar allí para guiarlos. */ 
== P_DuskJ IF ~~ THEN @102 /* Sir Ryan, Falon... no tengo palabras para agradecerles... */
== p_matut IF ~~ THEN @103 /* ¡Oh, vaya! Esto es muy emocionante. */ 
== p_matut IF ~~ THEN @104 /* ¡Muy bien, señores! Lord paladín, lady cacique: Michelson les entregará unas gemas especiales para ustedes y el resto de la tribu. */ 
== p_matut IF ~~ THEN @105 /* Las mismas se activarán con otra gema que habremos de entregar a Dusk. Cuando el momento del combate comience, serán teletransportados al lugar en que el emisor se encuentre. */ 
== KAYL2 IF ~~ THEN @106 /* De acuerdo, elfo de... cabello verde. Estaremos preparados cuando llegue el momento. */ DO ~ForceSpell(Myself,POOF_GONE)~
== p_falon IF ~~ THEN @107 /* Así es. Yo me encargaré de preparar al resto de mi tribu, Dusk. */ DO ~ForceSpell(Myself,POOF_GONE)~
== p_matut IF ~~ THEN @108 /* ¡Excelente! Bien, pueden usar esas mismas gemas para ser devueltos a los cuarteles de la Orden. Michelson se ha encargado de ello. */ 
== P_DuskJ IF ~~ THEN @109 /* Bien. <CHARNAME>, será mejor que partamos de inmediato. Mathyus, volveremos aquí cuando tengamos novedades al respecto, ¿sí? */
== p_matut IF ~~ THEN @110 /* Los estaremos esperando, amigos míos. */
END


