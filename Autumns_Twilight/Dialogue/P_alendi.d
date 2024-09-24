BEGIN P_Alendi

IF ~!InParty("P_Fall")
!See("P_Fall")
OR (1)
Global("P_FallMission2","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @9780 /* ~<PRO_RACE>, será mejor que te metas en tus propios asuntos. No nos conocemos y será mejor para ambos que eso así se mantenga.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
!See("P_Fall")
OR (1)
Global("P_FallMission2","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY @9780 /* ~<PRO_RACE>, será mejor que te metas en tus propios asuntos. No nos conocemos y será mejor para ambos que eso así se mantenga.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
Global("P_FallMission2","GLOBAL",1)~ THEN BEGIN 2 // from:
  SAY @9781 /* ~Ah, has vuelto, pequeña Caran. Veo que no has venido... sola.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission2","GLOBAL",2)~ EXTERN ~P_FALLJ~ 17
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9782 /* ~Cuida tu tono, <PRO_RACE>. Cuando se habla con sus mayores, se debe hacer con respeto.~*/
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9786 /* ~Tu linaje no es asunto mío, <PRO_RACE>. Puedes mantener la calma.~*/
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9787 /* ~Si te preguntas cómo es que lo sé, la respuesta es simple.~*/
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @97814 /* ~Es lo más probable, pequeña. Ahora debemos averiguar cuál es ese plano.~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @97821 /* ~Tú, <PRO_RACE>. ¿Sabes lo que es un basilisco?~*/
    IF ~~ THEN REPLY @97822 /* ~Lo sé... me he enfrentado a esas terribles criaturas en el pasado, Alendir. Son capaces de petrificar con la mirada.~ */  GOTO 8
	IF ~~ THEN REPLY @97823 /* ~Por supuesto. Son pajarracos con pechos de mujer. Tienen un humor bastante ácido.~ */  GOTO 9
	IF ~~ THEN REPLY @97824 /* ~Ni idea. ¿Podrías ilustrármelo, buen elfo?~ */  GOTO 10
END

IF ~~ THEN BEGIN 8 // from:
  SAY @97825 /* ~Muy bien, <PRO_RACE>.~*/
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 9 // from:
  SAY @97826 /* ~¿Qué? Acabas de describir a una harpía, idiota.~*/
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @97827 /* ~El basilisco es una criatura reptiliana con escamas duras y pálidas. Su mirada es su arma más temible, ya que puede petrificar a aquellos que la encuentran. Tiene colmillos y garras afiladas y una cola poderosa, lo que lo convierte en un depredador formidable.~*/
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY @97828 /* ~Necesito a uno para completar mi ritual... Alcanzaría con un diente, garra o escama.~*/
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @97829 /* ~Ten en cuenta lo siguiente, hijo de Bhaal. Debes enfrentar a un Gran Basilisco. No son como los basiliscos normales. No.~*/
  IF ~~ THEN GOTO 13
END


IF ~~ THEN BEGIN 13 // from:
  SAY @97830 /* ~Los Gran Basiliscos tienen escamas naranjas como el cielo del atardecer y son más grandes que los basiliscos normales.~*/
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from:
  SAY @97831 /* ~Hace tiempo que no se avistan basiliscos en Amn, por lo que recomiendo que busques afuera.~*/
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @97832 /* ~En las cuevas de Umar encontrarás a un buen especímen. Pero no será fácil encontrarlo... La criatura es poderosa y se mantiene oculta a los ojos de los habitantes de las colinas.~*/
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @97833 /* ~Esta gema lo hará salir de su escondite. Si hay otros enemigos en la cueva, debes eliminarlos para que la criatura salga. También he marcado en tu mapa las Colinas de Umar.~*/
  IF ~~ THEN DO ~RevealAreaOnMap("AR1100") CreateItem ("p_orgem1",1,2,1)  GiveItem("p_orgem1", LastTalkedToBy)~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @97834 /* ~¿Te ha quedado alguna duda?~*/
    IF ~~ THEN REPLY @97835 /* ~Sí. ¿Cuál será mi recompensa? No hago esto por la bonda de mi corazón, anciano.~ */  GOTO 18
	IF ~~ THEN REPLY @97836 /* ~¿Es necesario que mate a la criatura?~ */  GOTO 19
	IF ~~ THEN REPLY @97837 /* ~Ha quedado claro, Alendir.~ */  GOTO 20
END

IF ~~ THEN BEGIN 18 // from:
  SAY @97838 /* ~¡Ja! La avaricia inunca tu corazón, <PRO_RACE>. No digo que eso no me agrade.~*/
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19 // from:
  SAY @97842 /* ~Hmm... No. Aunque no creo que la criatura se deje extraer una parte de su cuerpo así como así. Será mejor que la mates, engendro de Bhaal.~*/
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @97844 /* ~Muy bien. Hagan esto y podré comenzar con el ritual de manera inmediata.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 18
END


IF ~OR (3) 
Global("P_FallMission2","GLOBAL",3)
Global("P_FallMission2","GLOBAL",5)
Global("P_FallMission2","GLOBAL",9)~ THEN BEGIN 21 // from:
  SAY @97845 /* ~¿Y bien? ¿Han tenido éxito en la búsqueda?~ */
    IF ~~ THEN REPLY @97846 /* ~Aún no, Alendir. No hemos podido encontrar al basilisco.~ */  GOTO 22
	//VORAGOR VIVE
	IF ~Global("P_FallMission2","GLOBAL",5) PartyHasItem("p_bastoo") InParty("P_Fall") See("P_Fall")~ THEN REPLY @97848 /* ~He conseguido el colmillo de un gran basilisco.~ */  GOTO 23
	
	//VORAGOR MUERE
	IF ~PartyHasItem("p_bastoo") PartyHasItem("p_bascal")
	InParty("P_Fall") See("P_Fall") ~ THEN REPLY @97849 /* ~Le he matado. He traído uno de sus colmillos y algunas escamas. ¿Crees que puedas forjar algo de esto?~ */  GOTO 27
END

IF ~~ THEN BEGIN 22 // from:
  SAY @97847 /* ~¿Y qué haces aquí? ¡Ve y búscalo, <PRO_RACE>! *suspiro*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY @97850 /* ~Buen trabajo, hijo de Bhaal. Ahora tengo lo necesario para llevar a cabo el ritual.~ ~Buen trabajo, hija de Bhaal. Ahora tengo lo necesario para llevar a cabo el ritual.~ */
  IF ~~ THEN DO ~TakePartyItem ("p_bastoo")~ EXTERN ~P_FALLJ~ 19
END

IF ~~ THEN BEGIN 24 // from:
  SAY @97863 /* ~No es necesario el ataque de ira primitivo, <PRO_RACE>.~ */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @97864 /* ~*suspiro* Lo lamento, pequeña Caraneth. Me he... excedido, es verdad.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from:
  SAY @97868 /* ~Me tomará un tiempo obtener un resultado al respecto. Mientras tanto, no me importunes. Vuelve después de un tiempo prudencial, Caraneth.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission2","GLOBAL",8) EraseJournalEntry (@310005) EraseJournalEntry (@310006) EraseJournalEntry (@310007) EraseJournalEntry (@310008) AddexperienceParty(60000)~ SOLVED_JOURNAL @310009 EXIT
 END 
 
IF ~~ THEN BEGIN 27 // from:
  SAY @97869 /* ~Buen trabajo, hijo de Bhaal. El colmillo será más que suficiente para llevar a cabo el ritual. Con respecto a las escamas, puedo usarlas para imbuir un viejo escudo de mi arsenal.~ ~Buen trabajo, hija de Bhaal. El colmillo será más que suficiente para llevar a cabo el ritual. Con respecto a las escamas, puedo usarlas para imbuir un viejo escudo de mi arsenal.~ */
  IF ~~ THEN DO ~TakePartyItem ("p_bastoo") TakePartyItem ("p_bascal")~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from:
  SAY @97870 /* ~El resultado consiste en este escudo, <PRO_RACE>. Que su aspecto no te engañe. Sus defensas son duras como las escamas de un dragón. Además hará inmune a la petrificación a quien lo porte.~ */
  IF ~~ THEN DO ~CreateItem ("p_shbas",1,2,1)  GiveItem("p_shbas", LastTalkedToBy)~ EXTERN ~P_FALLJ~ 19
END

IF ~Global ("P_FallMission2","GLOBAL",8)
Global("P_FallMission3","GLOBAL",0)~ THEN BEGIN 29 // from:
  SAY @97873 /* ~Os he dicho que no me importunéis. Necesito total concentración para llevar a cabo mi ritual. Ahora, ¡largaos!~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~!InParty("P_Fall")
!See("P_Fall")
AreaCheck("P_FAR3")
OR(2)
Global("P_FallMission3","GLOBAL",3)
Global("P_FallMission3","GLOBAL",4)~ THEN BEGIN 30 // from:
  SAY @97874 /* ~*Alendir se encuentra en trance. Aparentemente, nada ni nadie puede interrumpirlo. Quizás Fall pueda hacer algo al respecto.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
!See("P_Fall")
AreaCheck("P_FAR3")
OR(2)
Global("P_FallMission3","GLOBAL",3)
Global("P_FallMission3","GLOBAL",4)~ THEN BEGIN 31 // from:
  SAY @97874 /* ~*Alendir se encuentra en trance. Aparentemente, nada ni nadie puede interrumpirlo. Quizás Fall pueda hacer algo al respecto.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
AreaCheck("P_FAR3")
OR(2)
Global("P_FallMission3","GLOBAL",3)
Global("P_FallMission3","GLOBAL",4)
~ THEN BEGIN 32 // from:
  SAY @97875 /* ~¡¿C-Caraneth?! No... ¿Cómo has llegado hasta aquí?~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission3","GLOBAL",5)~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @97878 /* ~N-no... ¡no se supone que deban estar aquí! Deben irse antes de que... Oh, no... ya es demasiado tarde...~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",5) ForceSpell (Myself, POOF_GONE)~ EXIT
 END
 
IF ~~ THEN BEGIN 34 // from:
  SAY @97879 /* ~Pequeña Caraneth... no deberías haber venido aquí. Tu madre... tu madre no debe ser rescatada.~ */
  IF ~~ THEN EXTERN ~P_FALLJ~ 59
END

IF ~~ THEN BEGIN 35 // from:
  SAY @97880 /* ~No a Fall, Icelock. ¡No le haremos daño a ella!~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from:
  SAY @97881 /* ~Yo...~ */
  IF ~~ THEN REPLY @97882 /* ~Alendir, ¿qué será entonces? No me contendré si decides atacarnos.~ */ GOTO 37
  IF ~~ THEN REPLY @97883 /* ~Sabía que eras un cobarde, elfo. No tendré piedad de ti. ¡Morirás!~ */ GOTO 37
  IF ~OR (3)
  CheckStatGT([PC],16,CHR)
  CheckStatGT([PC],16,INT)
  CheckStatGT([PC],16,WIS)~ THEN REPLY @97884 /* ~Alendir, no tienes que hacer esto. Sé que en alguna parte de tu frío corazón aprecias a Fall lo suficiente como para no ceder ante tus ambiciones. Ayúdanos.~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from:
  SAY @97885 /* ~No tengo otra opción, <CHARNAME>. Lo lamento. En verdad.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from:
  SAY @97886 /* ~¡Soy el Maestro de la Escarcha! Su camino llega hasta aquí...~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",6) SetGlobal ("P_FallM3_AlendirEnemy","GLOBAL",1) Enemy ()~ UNSOLVED_JOURNAL @310021 EXIT
 END 

IF ~~ THEN BEGIN 39 // from:
  SAY @97887 /* ~<CHARNAME>... Fall...~ */
  IF ~~ THEN EXTERN ~P_ICELOC~ 5
END

IF ~~ THEN BEGIN 40 // from:
  SAY @97888 /* ~No, Icelock... ¡Tú eres el que está acabado!~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",6) SetGlobal ("P_FallM3_AlendirAllied","GLOBAL",1)~ UNSOLVED_JOURNAL @310022 EXIT
END
 
// Alendir's Death
 
IF ~!InParty("P_Fall")
!See("P_Fall")
AreaCheck("P_FAR3")
CombatCounter(0)
!See([ENEMY])
Dead("P_ICELOC")
Global ("P_FallMission3","GLOBAL",6)~ THEN BEGIN 41 // from:
  SAY @97897 /* ~*tose* C-caraneth... *Observas las heridas de Alendir y te das cuenta que no le queda mucho tiempo de vida*~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission3","GLOBAL",7)~ GOTO 44
END

IF ~InParty("P_Fall")
!See("P_Fall")
AreaCheck("P_FAR3")
CombatCounter(0)
!See([ENEMY])
Dead("P_ICELOC")
Global ("P_FallMission3","GLOBAL",6)~ THEN BEGIN 42 // from:
  SAY @97897 /* ~*tose* C-caraneth... *Observas las heridas de Alendir y te das cuenta que no le queda mucho tiempo de vida*~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission3","GLOBAL",7)~ GOTO 44
END


IF ~InParty("P_Fall")
See("P_Fall")
AreaCheck("P_FAR3")
CombatCounter(0)
!See([ENEMY])
Dead("P_ICELOC")
Global ("P_FallMission3","GLOBAL",6)
~ THEN BEGIN 43 // from:
  SAY @97897 /* ~*tose* C-caraneth... *Observas las heridas de Alendir y te das cuenta que no le queda mucho tiempo de vida*~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission3","GLOBAL",7)~ GOTO 51
END

IF ~~ THEN BEGIN 44 // from:
  SAY @97898 /* ~*susurro* Caraneth...~ */
  IF ~Global ("P_FallM3_AlendirEnemy","GLOBAL",1)~ THEN REPLY @97899 /* ~Alendir, has obtenido tu merecido. No deberías haberte aliado con un monstruo interplanar. Has sido un necio.~ */ GOTO 45
  IF ~Global ("P_FallM3_AlendirEnemy","GLOBAL",1)~ THEN REPLY @978100 /* ~No te queda mucho tiempo de vida, elfo. Será mejor que guardes energías si quieres sobrevivir.~ */ GOTO 45

  IF ~Global ("P_FallM3_AlendirAllied","GLOBAL",1)~ THEN REPLY @978146 /* ~Has sido valiente, Alendir. Icelock ha sido destruido.~ */ GOTO 49
  IF ~Global ("P_FallM3_AlendirAllied","GLOBAL",1)~ THEN REPLY @978109 /* ~Has sido estúpido, Alendir. No deberías haber atacado a Icelock sólo.~ */ GOTO 50
END

IF ~~ THEN BEGIN 45 // from:
  SAY @978101 /* ~La muerte es lo que merezco y la muerte será *tose* bienvenida.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from:
  SAY @978102 /* ~¿D-dónde está Fall? Necesito... necesito hablar con ella.~ */
  IF ~~ THEN REPLY @978103 /* ~Ella no puede hablar ahora. Y aunque pudiera no permitiría que hablase con escoria como tú.~ */ GOTO 47
  IF ~~ THEN REPLY @978104 /* ~Ella no puede hablar ahora. Lamento decirte que ha muerto.~ */ GOTO 48
  IF ~~ THEN REPLY @978105 /* ~Ella no puede hablar ahora. No se encuentra disponible, de momento.~ */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from:
  SAY @978106 /* ~Descendiente de Bhaal... tu reputación... te precede...~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",9) SetGlobal ("P_FallM3_AlendirANDFallDied","GLOBAL",1) DestroyItem("IMMUNE1") DestroyItem("MINHP1") EraseJournalEntry (@310010) EraseJournalEntry (@310011) EraseJournalEntry (@310012) EraseJournalEntry (@310013) EraseJournalEntry (@310019) EraseJournalEntry (@310020) EraseJournalEntry (@310021) EraseJournalEntry (@310022) EraseJournalEntry (@310024) Kill (Myself)~ SOLVED_JOURNAL @310023 EXIT
END
 
IF ~~ THEN BEGIN 48 // from:
  SAY @978107 /* ~Si ella ha muerto... revívela, <CHARNAME>. Usaré todas mis fuerzas para mantenerme con vida hasta... hasta que pueda hablar con ella.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",7) SetGlobal ("P_FallM3_AlendirNeedTlkFall","GLOBAL",1)~ UNSOLVED_JOURNAL @310024 EXIT
END 

IF ~~ THEN BEGIN 49 // from:
  SAY @978110 /* ~*sonríe* Gracias, <CHARNAME>. Nunca... *tose* nunca debí aliarme con esa criatura...~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 50 // from:
  SAY @978111 /* ~*sonríe* No esperaba menos de <CHARNAME>. Al menos... Icelock ha sido destruido.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 51 // from:
  SAY @97898 /* ~*susurro* Caraneth...~ */
  IF ~Global ("P_FallM3_AlendirEnemy","GLOBAL",1)~ THEN REPLY @97899 /* ~Alendir, has obtenido tu merecido. No deberías haberte aliado con un monstruo interplanar. Has sido un necio.~ */ EXTERN ~P_FALLJ~ 64
  IF ~Global ("P_FallM3_AlendirEnemy","GLOBAL",1)~ THEN REPLY @978100 /* ~No te queda mucho tiempo de vida, elfo. Será mejor que guardes energías si quieres sobrevivir.~ */ EXTERN ~P_FALLJ~ 63

  IF ~Global ("P_FallM3_AlendirAllied","GLOBAL",1)~ THEN REPLY @978146 /* ~Has sido valiente, Alendir. Icelock ha sido destruido.~ */ EXTERN ~P_FALLJ~ 63
  IF ~Global ("P_FallM3_AlendirAllied","GLOBAL",1)~ THEN REPLY @978109 /* ~Has sido estúpido, Alendir. No deberías haber atacado a Icelock sólo.~ */ EXTERN ~P_FALLJ~ 64
END

//////

IF ~~ THEN BEGIN 52 // from:
  SAY @978112 /* ~N-no, Caraneth. Mis días han llegado a su fin. Es... lo que merezco.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 53 // from:
  SAY @978113 /* ~N-no, Caraneth. <CHARNAME> tiene razón. Esto es lo que merezco. Finalmente he cosechado lo que he sembrado...~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @978114 /* ~Mi inminente muerte es inconsecuente. Debes escuchar lo que he de decirte.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from:
  SAY @978115 /* ~Gemystara... Gerwulf... perdónenme, por favor...~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",9) SetGlobal ("P_FallM3_AlendirANDFallDied","GLOBAL",1) DestroyItem("IMMUNE1") DestroyItem("MINHP1") EraseJournalEntry (@310010) EraseJournalEntry (@310011) EraseJournalEntry (@310012) EraseJournalEntry (@310013) EraseJournalEntry (@310019) EraseJournalEntry (@310020) EraseJournalEntry (@310021) EraseJournalEntry (@310022) EraseJournalEntry (@310024) Kill (Myself)~ SOLVED_JOURNAL @310025 EXIT
END

// Alendir moribundo

IF ~!InParty("P_Fall")
!See("P_Fall")
AreaCheck("P_FAR3")
CombatCounter(0)
!See([ENEMY])
Global ("P_FallMission3","GLOBAL",7)
Global ("P_FallM3_AlendirNeedTlkFall","GLOBAL",1)~ THEN BEGIN 56 // from:
  SAY @978143 /* ~*tose* No me queda... mucho tiempo de vida...~ */
  IF ~~ THEN DO ~~ GOTO 59
END

IF ~InParty("P_Fall")
!See("P_Fall")
AreaCheck("P_FAR3")
CombatCounter(0)
!See([ENEMY])
Global ("P_FallMission3","GLOBAL",7)
Global ("P_FallM3_AlendirNeedTlkFall","GLOBAL",1)~ THEN BEGIN 57 // from:
  SAY @978143 /* ~*tose* No me queda... mucho tiempo de vida...~ */
  IF ~~ THEN DO ~~ GOTO 59
END


IF ~InParty("P_Fall")
See("P_Fall")
AreaCheck("P_FAR3")
CombatCounter(0)
!See([ENEMY])
Global ("P_FallMission3","GLOBAL",7)
Global ("P_FallM3_AlendirNeedTlkFall","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY @978143 /* ~*tose* No me queda... mucho tiempo de vida...~ */
  IF ~~ THEN DO ~~ EXTERN ~P_FALLJ~ 65
END

IF ~~ THEN BEGIN 59 // from:
  SAY @978102 /* ~¿D-dónde está Fall? Necesito... necesito hablar con ella.~ */
  IF ~~ THEN REPLY @978103 /* ~Ella no puede hablar ahora. Y aunque pudiera no permitiría que hablase con escoria como tú.~ */ GOTO 47
  IF ~~ THEN REPLY @978144 /* ~De acuerdo. La traeré cuanto antes. Resiste, Alendir.~ */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from:
  SAY @978145 /* ~Apresúrate, <CHARNAME>. Antes... de que sea demasiado tarde.~ */
  IF ~~ THEN DO ~~ EXIT
END


// último @978142

// P_FallM3_AlendirEnemy 1       P_FallM3_AlendirAllied 1
 
 
//AttackOneRound ("P_Iceloc") AttackOneRound ("P_Iceloc")
//Enemy()

I_C_T P_Alendi 54 P_Fall_ALENDIRM54FINAL4
== P_Alendi IF ~~ THEN @978116 /* ~Tu madre... se encuentra en el Abismo.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @978117 /* ¡¿Q-qué?! */
== P_Alendi IF ~~ THEN @978118 /* ~Es la verdad, pequeña Caraneth. En el Abismo... o al menos en una de sus capas.~ */
== P_Alendi IF ~~ THEN @978119 /* ~El Abismo alberga incontable cantidad de horrores y está dividido en infinitas capas de maldad.~ */
== P_Alendi IF ~~ THEN @978120 /* ~Las criaturas demoníacas intentan constantemente invadir los planos exteriores. Para su conquista. Para su destrucción.~ */
== P_Alendi IF ~~ THEN @978121 /* ~*tos* Gemystara descubrió que la responsable del ataque a Imnescar es una poderosa criatura llamada Morgrath.~ */
== P_Alendi IF ~~ THEN @978122 /* ~Morgrath intenta a toda costa invadir el Plano Material y así expandir su Shyntquarra.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @978123 /* Esa palabra... el gólem la ha mencionado. */
== P_Alendi IF ~~ THEN @978124 /* ~Así es. Icelock... era el esbirro de Cryonax, el amo del Plano Elemental de Hielo.~ */
== P_Alendi IF ~~ THEN @978125 /* ~Cryonax también busca la conquista de esta tierra, es por eso que buscaba evitar el Shyntquarra.~ */
== P_Alendi IF ~~ THEN @978126 /* ~Pero eso se acabó con la destrucción de Icelock. Han evitado la intervención directa de Cryonax.~ */
== P_Alendi IF ~~ THEN @978127 /* ~Pero aún queda Morgrath.~ */
== P_Alendi IF ~~ THEN @978128 /* ~Morgrath... significa "La Legión que no se puede ver". Es una entidad que maneja incontable cantidad de criaturas malignas.~ */
== P_Alendi IF ~~ THEN @978129 /* ~Un enjambre demoníaco... con un demonio con mente de colmena.~ */
== P_Alendi IF ~~ THEN @978130 /* ~Su influjo envenena todo lo que toca. Es por eso que tu madre no fue capaz de usar su magia en Imnescar.~ */
== P_Alendi IF ~~ THEN @978131 /* ~Pero eso... eso ha cambiado.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @978132 /* ¿A qué te refieres, Alendir? */
== P_Alendi IF ~~ THEN @978133 /* ~*tos* Creo que tu madre ha descubierto una forma de detener a Morgrath.~ */
== P_Alendi IF ~~ THEN @978134 /* ~Por eso es que ha ido al Abismo. A esa capa arácnida llamada Rachnidra.~ */
== P_Alendi IF ~~ THEN @978135 /* ~Sabía... sabía que habrías de llegar, pequeña Caraneth. Aunque no contaba con que fuese tan pronto.~ */
== P_Alendi IF ~~ THEN @978136 /* ~Sé cómo llegar a Rachnidra. He imbuido una de mis posesiones para que abra el portal hacia el Abismo.~ */
== P_Alendi IF ~~ THEN @978137 /* ~*suspiro* Pero se necesita de un gran poder para poder ejecutarlo.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @978138 /* Puedo hacerlo, Alendir. Puedo abrir ese portal e ir en busca de madre. */
== P_Alendi IF ~~ THEN @978139 /* ~No depende de ti, Fall. La Rosa de Hielo decidirá cuándo sea el momento indicado.~ */
== P_Alendi IF ~~ THEN @978140 /* ~Llévala siempre contigo, pequeña.~ */
== P_Alendi IF ~~ THEN @978141 /* ~Yo... yo... *sus ojos se cierran lentamente*~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @978142 /* ¿Alendir? Alendir, no te mueras. Por favor... */
END

I_C_T P_Alendi 37 P_Fall_ALENDIRM37FINAL3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97889 /* Alendir... por favor... no nos hagas esto... */
== P_Alendi IF ~~ THEN @97890 /* ~Hay más en juego que nuestras vidas, pequeña Caraneth.~ */
== P_Alendi IF ~~ THEN @97891 /* ~Espero que algún día puedas entenderlo.~ */
== P_Alendi IF ~~ THEN @97892 /* ~No te preocupes. Te reviviré cuando todo esto termine.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97893 /* ¡No! Si mis amigos caen conmigo, que así sea. Si me traes de nuevo, ¡te mataré con mis propias manos! */
== P_Alendi IF ~~ THEN @97894 /* ~Lo intentarás, caraneth. Lo intentarás...~ */
END
 
I_C_T P_Alendi 35 P_Fall_ALENDIRM35FINAL2
== P_ICELOC IF ~~ THEN @97895 /* ~No hay lugar para los débiles, Alendir. Pero has sido útil hasta ahora. Procuraré que su cuerpo no sufra daños irreparables. Luego, podrás revivirla.~ */
== P_ICELOC IF ~~ THEN @97896 /* ~Pero el resto morirá. Irreparablemente.~ */
END
 
I_C_T P_Alendi 32 P_Fall_ALENDIRM32FINAL1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97876 /* No me subestimes, Alendir... ¡he llegado hasta aquí buscando respuestas! */
END

I_C_T P_Alendi 28 P_Fall_ALENDIR28A
== P_Alendi IF ~~ THEN @97851 /* ~Dime, ¿ha sido difícil acabar con la bestia? Pueden llegar a ser criaturas muy complicadas de matar.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97871 /* No fue nada fácil, Alendir... aunque... aunque hubiese preferido no tener que matarlo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97872 /* <CHARNAME> tomó la decisión... y entiendo que encontrar a mi madre es prioridad... Pero no puedo evitar pensar que había otro camino qué tomar. */
== P_Alendi IF ~~ THEN @97857 /* ~Veo que no has cambiado nada. La fruta no cae lejos del árbol.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97858 /* ¿Qué quieres decir? */
== P_Alendi IF ~~ THEN @97859 /* ~Gerwulf tenía esa obsesión de convertir monstruos en aliados. Ankhegs, licántropos, micónidos.~ */
== P_Alendi IF ~~ THEN @97860 /* ~Puso su vida y la de aquellos que le rodeaban en peligro constante. Todo por sus tonterías.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97861 /* ¿Tonterías? A-Alendir, ¡no dejaré que hables así de mi padre! */
== P_Alendi IF ~~ THEN @97862 /* ~¿Por qué? Era un simple humano. Incapaz de ver más allá de su propia arrogancia. Su debilidad provocó la caída de ese pueblito.~ */
END



I_C_T P_Alendi 25 P_Fall_ALENDIR25A
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97865 /* ¿Por qué, Alendir? ¿Por qué odias a mi padre? */
== P_Alendi IF ~~ THEN @97866 /* ¡Lo que haya sucedido entre tu padre y yo no es de tu incumbencia! */
== P_Alendi IF ~~ THEN @97867 /* Tenemos asuntos más urgentes que atender. Gemystara puede ser encontrada luego de mi ritual. */
END

I_C_T P_Alendi 23 P_Fall_ALENDIR23A
== P_Alendi IF ~~ THEN @97851 /* ~Dime, ¿ha sido difícil acabar con la bestia? Pueden llegar a ser criaturas muy complicadas de matar.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97852 /* No lo matamos, Alendir. ¿Eso... eso afectará al ritual? */
== P_Alendi IF ~~ THEN @97853 /* ~No lo afectará. No es necesario que el dueño de este colmillo haya muerto.~ */
== P_Alendi IF ~~ THEN @97854 /* ~Sin embargo, me pregunto lo siguiente: ¿Cómo lo obtuvieron?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97855 /* Erhm... simplemente... hablamos con él. Verás, el gran basilisco tenía un amuleto que le permite comunicarse con nosotros. <CHARNAME> le convenció de darnos el colmillo y yo.- */
== P_Alendi IF ~~ THEN @97856 /* ~No es necesario que te sigas explicando, pequeña Caraneth. He oído suficiente.~ */
== P_Alendi IF ~~ THEN @97857 /* ~Veo que no has cambiado nada. La fruta no cae lejos del árbol.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97858 /* ¿Qué quieres decir? */
== P_Alendi IF ~~ THEN @97859 /* ~Gerwulf tenía esa obsesión de convertir monstruos en aliados. Ankhegs, licántropos, micónidos.~ */
== P_Alendi IF ~~ THEN @97860 /* ~Puso su vida y la de aquellos que le rodeaban en peligro constante. Todo por sus tonterías.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97861 /* ¿Tonterías? A-Alendir, ¡no dejaré que hables así de mi padre! */
== P_Alendi IF ~~ THEN @97862 /* ~¿Por qué? Era un simple humano. Incapaz de ver más allá de su propia arrogancia. Su debilidad provocó la caída de ese pueblito.~ */
END


I_C_T P_Alendi 19 P_Fall_ALENDIR19A
== P_Alendi IF ~~ THEN @97843 /* ~Después de todo, eres descendiente del Asesinato, ¿no es así? Matar no debería ser un problema para ti.~ */
END


I_C_T P_Alendi 18 P_Fall_ALENDIR18A
== P_Alendi IF ~~ THEN @97839 /* ~Hagamos lo siguiente. Si logras acabar con la bestia y me traes todo lo que puedas extraer de ella, puede que pueda imbuir algún artefacto para ti.~ */
== P_Alendi IF ~~ THEN @97840 /* ~Confío en que eso será suficiente recompensa, ¿no lo crees?~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97841 /* ~Un artefacto forjado de los huesos de un basilisco. ¡Sí! Espero que no te comportes como un primate y aceptes esta misión, <CHARNAME>.~ */
END

I_C_T P_Alendi 2 P_Fall_ALENDIR2A
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9783 /* ¡Alendir! Me alegro de verte. Sé... sé que no te gusta que me junte con extraños, pero este no es el caso. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9784 /* ~Te presento a mi amigo, <CHARNAME>.~~Te presento a mi amiga, <CHARNAME>.~ */
== P_Alendi IF ~~ THEN @9785 /* ~Estimo que sabes que se trata de un engendro de Bhaal, ¿no es así?~ ~Estimo que sabes que se trata de una engendro de Bhaal, ¿no es así?~ */
END

I_C_T P_Alendi 5 P_Fall_ALENDIR5A
== P_Alendi IF ~~ THEN @9788 /* ~Soy un Selu'taar. Estamos conscientes de la existencia de los descendientes del Asesinato en Evereska, pues ellos cambiarán Faerûn para siempre.~ */
== P_Alendi IF ~~ THEN @9789 /* ~Hay pocos como yo. Y una de esas pocas es Gemystara.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97810 /* ~<CHARNAME>, Gemystara es el nombre de mi madre.~ */
== P_Alendi IF ~~ THEN @97811 /* ~Sin embargo, puede que tu presencia sea útil, engendro de Bhaal.~ */
== P_Alendi IF ~~ THEN @97812 /* ~Caraneth, mis pesquisas me han llevado a teorías perturbadoras, mas no puedo asegurarlo hasta que no haya completado mi ritual.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97813 /* ~¿Ritual? Esto quiere decir que hay fuerzas interplanares involucradas en la desaparición de mi madre...~ */
END


I_C_T P_Alendi 6 P_Fall_ALENDIR6A
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos patéticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya sería mío. (Sí, longevidad... eso sería magnífico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despiértame cuando estos pusilánimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la búsqueda se complica para Fall. Me pregunto qué requerirá ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Será un elfo, pero la hechicería es casi tangible a su alrededor. La corrupción no es una maldición exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viajé por ellos, ¿sabes? Volé a una extraña tierra donde sólo habitaban humanos piernas largas. No se les entendía un nabo lo que decían, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grité. Fue una extraña confusión. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinación. No tienes idea de lo que salió después de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a mí, creo que este Alendir sería una buena adición al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6B
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despiértame cuando estos pusilánimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la búsqueda se complica para Fall. Me pregunto qué requerirá ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Será un elfo, pero la hechicería es casi tangible a su alrededor. La corrupción no es una maldición exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viajé por ellos, ¿sabes? Volé a una extraña tierra donde sólo habitaban humanos piernas largas. No se les entendía un nabo lo que decían, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grité. Fue una extraña confusión. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinación. No tienes idea de lo que salió después de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a mí, creo que este Alendir sería una buena adición al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos patéticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya sería mío. (Sí, longevidad... eso sería magnífico)~ */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6C
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despiértame cuando estos pusilánimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la búsqueda se complica para Fall. Me pregunto qué requerirá ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Será un elfo, pero la hechicería es casi tangible a su alrededor. La corrupción no es una maldición exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viajé por ellos, ¿sabes? Volé a una extraña tierra donde sólo habitaban humanos piernas largas. No se les entendía un nabo lo que decían, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grité. Fue una extraña confusión. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinación. No tienes idea de lo que salió después de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a mí, creo que este Alendir sería una buena adición al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos patéticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya sería mío. (Sí, longevidad... eso sería magnífico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6D
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la búsqueda se complica para Fall. Me pregunto qué requerirá ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Será un elfo, pero la hechicería es casi tangible a su alrededor. La corrupción no es una maldición exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viajé por ellos, ¿sabes? Volé a una extraña tierra donde sólo habitaban humanos piernas largas. No se les entendía un nabo lo que decían, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grité. Fue una extraña confusión. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinación. No tienes idea de lo que salió después de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a mí, creo que este Alendir sería una buena adición al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos patéticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya sería mío. (Sí, longevidad... eso sería magnífico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despiértame cuando estos pusilánimes terminen de parlotear.~ */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6E
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Será un elfo, pero la hechicería es casi tangible a su alrededor. La corrupción no es una maldición exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viajé por ellos, ¿sabes? Volé a una extraña tierra donde sólo habitaban humanos piernas largas. No se les entendía un nabo lo que decían, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grité. Fue una extraña confusión. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinación. No tienes idea de lo que salió después de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a mí, creo que este Alendir sería una buena adición al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos patéticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya sería mío. (Sí, longevidad... eso sería magnífico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despiértame cuando estos pusilánimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la búsqueda se complica para Fall. Me pregunto qué requerirá ese elfo anciano para llevar a cabo su ritual.~ */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6F
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viajé por ellos, ¿sabes? Volé a una extraña tierra donde sólo habitaban humanos piernas largas. No se les entendía un nabo lo que decían, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grité. Fue una extraña confusión. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinación. No tienes idea de lo que salió después de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a mí, creo que este Alendir sería una buena adición al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos patéticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya sería mío. (Sí, longevidad... eso sería magnífico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despiértame cuando estos pusilánimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la búsqueda se complica para Fall. Me pregunto qué requerirá ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Será un elfo, pero la hechicería es casi tangible a su alrededor. La corrupción no es una maldición exclusiva de la raza humana, <CHARNAME>.~ */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6G
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a mí, creo que este Alendir sería una buena adición al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos patéticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya sería mío. (Sí, longevidad... eso sería magnífico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despiértame cuando estos pusilánimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la búsqueda se complica para Fall. Me pregunto qué requerirá ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Será un elfo, pero la hechicería es casi tangible a su alrededor. La corrupción no es una maldición exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viajé por ellos, ¿sabes? Volé a una extraña tierra donde sólo habitaban humanos piernas largas. No se les entendía un nabo lo que decían, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grité. Fue una extraña confusión. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinación. No tienes idea de lo que salió después de que... *sigue hablando*~ */
END


/* SANDRO
I_C_T P_Alendi 6 P_Fall_ALENDIR6A_Sand
== P_SandJ IF ~InParty("P_SandJ") InMyArea("P_SandJ") !StateCheck("P_SandJ",CD_STATE_NOTVALID)~ THEN @9785000 /* <CHARNAME>, la intervención de fuerzas ajenas a nuestro mundo no es normal, de más está decirlo. */
== P_SandJ IF ~InParty("P_SandJ") InMyArea("P_SandJ") !StateCheck("P_SandJ",CD_STATE_NOTVALID)~ THEN @9785001 /* Sin embargo, la desaparición de un elfo hechicero de alto rango es preocupante. */
== P_SandJ IF ~InParty("P_SandJ") InMyArea("P_SandJ") !StateCheck("P_SandJ",CD_STATE_NOTVALID)~ THEN @9785002 /* Debemos tener extremo cuidado en esta empresa. */
END
*/

