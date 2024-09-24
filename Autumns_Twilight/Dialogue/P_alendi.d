BEGIN P_Alendi

IF ~!InParty("P_Fall")
!See("P_Fall")
OR (1)
Global("P_FallMission2","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @9780 /* ~<PRO_RACE>, ser� mejor que te metas en tus propios asuntos. No nos conocemos y ser� mejor para ambos que eso as� se mantenga.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
!See("P_Fall")
OR (1)
Global("P_FallMission2","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY @9780 /* ~<PRO_RACE>, ser� mejor que te metas en tus propios asuntos. No nos conocemos y ser� mejor para ambos que eso as� se mantenga.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
Global("P_FallMission2","GLOBAL",1)~ THEN BEGIN 2 // from:
  SAY @9781 /* ~Ah, has vuelto, peque�a Caran. Veo que no has venido... sola.~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission2","GLOBAL",2)~ EXTERN ~P_FALLJ~ 17
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9782 /* ~Cuida tu tono, <PRO_RACE>. Cuando se habla con sus mayores, se debe hacer con respeto.~*/
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9786 /* ~Tu linaje no es asunto m�o, <PRO_RACE>. Puedes mantener la calma.~*/
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9787 /* ~Si te preguntas c�mo es que lo s�, la respuesta es simple.~*/
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @97814 /* ~Es lo m�s probable, peque�a. Ahora debemos averiguar cu�l es ese plano.~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @97821 /* ~T�, <PRO_RACE>. �Sabes lo que es un basilisco?~*/
    IF ~~ THEN REPLY @97822 /* ~Lo s�... me he enfrentado a esas terribles criaturas en el pasado, Alendir. Son capaces de petrificar con la mirada.~ */  GOTO 8
	IF ~~ THEN REPLY @97823 /* ~Por supuesto. Son pajarracos con pechos de mujer. Tienen un humor bastante �cido.~ */  GOTO 9
	IF ~~ THEN REPLY @97824 /* ~Ni idea. �Podr�as ilustr�rmelo, buen elfo?~ */  GOTO 10
END

IF ~~ THEN BEGIN 8 // from:
  SAY @97825 /* ~Muy bien, <PRO_RACE>.~*/
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 9 // from:
  SAY @97826 /* ~�Qu�? Acabas de describir a una harp�a, idiota.~*/
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @97827 /* ~El basilisco es una criatura reptiliana con escamas duras y p�lidas. Su mirada es su arma m�s temible, ya que puede petrificar a aquellos que la encuentran. Tiene colmillos y garras afiladas y una cola poderosa, lo que lo convierte en un depredador formidable.~*/
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY @97828 /* ~Necesito a uno para completar mi ritual... Alcanzar�a con un diente, garra o escama.~*/
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @97829 /* ~Ten en cuenta lo siguiente, hijo de Bhaal. Debes enfrentar a un Gran Basilisco. No son como los basiliscos normales. No.~*/
  IF ~~ THEN GOTO 13
END


IF ~~ THEN BEGIN 13 // from:
  SAY @97830 /* ~Los Gran Basiliscos tienen escamas naranjas como el cielo del atardecer y son m�s grandes que los basiliscos normales.~*/
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from:
  SAY @97831 /* ~Hace tiempo que no se avistan basiliscos en Amn, por lo que recomiendo que busques afuera.~*/
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @97832 /* ~En las cuevas de Umar encontrar�s a un buen espec�men. Pero no ser� f�cil encontrarlo... La criatura es poderosa y se mantiene oculta a los ojos de los habitantes de las colinas.~*/
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @97833 /* ~Esta gema lo har� salir de su escondite. Si hay otros enemigos en la cueva, debes eliminarlos para que la criatura salga. Tambi�n he marcado en tu mapa las Colinas de Umar.~*/
  IF ~~ THEN DO ~RevealAreaOnMap("AR1100") CreateItem ("p_orgem1",1,2,1)  GiveItem("p_orgem1", LastTalkedToBy)~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @97834 /* ~�Te ha quedado alguna duda?~*/
    IF ~~ THEN REPLY @97835 /* ~S�. �Cu�l ser� mi recompensa? No hago esto por la bonda de mi coraz�n, anciano.~ */  GOTO 18
	IF ~~ THEN REPLY @97836 /* ~�Es necesario que mate a la criatura?~ */  GOTO 19
	IF ~~ THEN REPLY @97837 /* ~Ha quedado claro, Alendir.~ */  GOTO 20
END

IF ~~ THEN BEGIN 18 // from:
  SAY @97838 /* ~�Ja! La avaricia inunca tu coraz�n, <PRO_RACE>. No digo que eso no me agrade.~*/
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19 // from:
  SAY @97842 /* ~Hmm... No. Aunque no creo que la criatura se deje extraer una parte de su cuerpo as� como as�. Ser� mejor que la mates, engendro de Bhaal.~*/
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @97844 /* ~Muy bien. Hagan esto y podr� comenzar con el ritual de manera inmediata.~*/
  IF ~~ THEN EXTERN ~P_FALLJ~ 18
END


IF ~OR (3) 
Global("P_FallMission2","GLOBAL",3)
Global("P_FallMission2","GLOBAL",5)
Global("P_FallMission2","GLOBAL",9)~ THEN BEGIN 21 // from:
  SAY @97845 /* ~�Y bien? �Han tenido �xito en la b�squeda?~ */
    IF ~~ THEN REPLY @97846 /* ~A�n no, Alendir. No hemos podido encontrar al basilisco.~ */  GOTO 22
	//VORAGOR VIVE
	IF ~Global("P_FallMission2","GLOBAL",5) PartyHasItem("p_bastoo") InParty("P_Fall") See("P_Fall")~ THEN REPLY @97848 /* ~He conseguido el colmillo de un gran basilisco.~ */  GOTO 23
	
	//VORAGOR MUERE
	IF ~PartyHasItem("p_bastoo") PartyHasItem("p_bascal")
	InParty("P_Fall") See("P_Fall") ~ THEN REPLY @97849 /* ~Le he matado. He tra�do uno de sus colmillos y algunas escamas. �Crees que puedas forjar algo de esto?~ */  GOTO 27
END

IF ~~ THEN BEGIN 22 // from:
  SAY @97847 /* ~�Y qu� haces aqu�? �Ve y b�scalo, <PRO_RACE>! *suspiro*~ */
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
  SAY @97864 /* ~*suspiro* Lo lamento, peque�a Caraneth. Me he... excedido, es verdad.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from:
  SAY @97868 /* ~Me tomar� un tiempo obtener un resultado al respecto. Mientras tanto, no me importunes. Vuelve despu�s de un tiempo prudencial, Caraneth.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission2","GLOBAL",8) EraseJournalEntry (@310005) EraseJournalEntry (@310006) EraseJournalEntry (@310007) EraseJournalEntry (@310008) AddexperienceParty(60000)~ SOLVED_JOURNAL @310009 EXIT
 END 
 
IF ~~ THEN BEGIN 27 // from:
  SAY @97869 /* ~Buen trabajo, hijo de Bhaal. El colmillo ser� m�s que suficiente para llevar a cabo el ritual. Con respecto a las escamas, puedo usarlas para imbuir un viejo escudo de mi arsenal.~ ~Buen trabajo, hija de Bhaal. El colmillo ser� m�s que suficiente para llevar a cabo el ritual. Con respecto a las escamas, puedo usarlas para imbuir un viejo escudo de mi arsenal.~ */
  IF ~~ THEN DO ~TakePartyItem ("p_bastoo") TakePartyItem ("p_bascal")~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from:
  SAY @97870 /* ~El resultado consiste en este escudo, <PRO_RACE>. Que su aspecto no te enga�e. Sus defensas son duras como las escamas de un drag�n. Adem�s har� inmune a la petrificaci�n a quien lo porte.~ */
  IF ~~ THEN DO ~CreateItem ("p_shbas",1,2,1)  GiveItem("p_shbas", LastTalkedToBy)~ EXTERN ~P_FALLJ~ 19
END

IF ~Global ("P_FallMission2","GLOBAL",8)
Global("P_FallMission3","GLOBAL",0)~ THEN BEGIN 29 // from:
  SAY @97873 /* ~Os he dicho que no me importun�is. Necesito total concentraci�n para llevar a cabo mi ritual. Ahora, �largaos!~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~!InParty("P_Fall")
!See("P_Fall")
AreaCheck("P_FAR3")
OR(2)
Global("P_FallMission3","GLOBAL",3)
Global("P_FallMission3","GLOBAL",4)~ THEN BEGIN 30 // from:
  SAY @97874 /* ~*Alendir se encuentra en trance. Aparentemente, nada ni nadie puede interrumpirlo. Quiz�s Fall pueda hacer algo al respecto.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
!See("P_Fall")
AreaCheck("P_FAR3")
OR(2)
Global("P_FallMission3","GLOBAL",3)
Global("P_FallMission3","GLOBAL",4)~ THEN BEGIN 31 // from:
  SAY @97874 /* ~*Alendir se encuentra en trance. Aparentemente, nada ni nadie puede interrumpirlo. Quiz�s Fall pueda hacer algo al respecto.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Fall")
See("P_Fall")
AreaCheck("P_FAR3")
OR(2)
Global("P_FallMission3","GLOBAL",3)
Global("P_FallMission3","GLOBAL",4)
~ THEN BEGIN 32 // from:
  SAY @97875 /* ~��C-Caraneth?! No... �C�mo has llegado hasta aqu�?~ */
  IF ~~ THEN DO ~SetGlobal("P_FallMission3","GLOBAL",5)~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @97878 /* ~N-no... �no se supone que deban estar aqu�! Deben irse antes de que... Oh, no... ya es demasiado tarde...~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",5) ForceSpell (Myself, POOF_GONE)~ EXIT
 END
 
IF ~~ THEN BEGIN 34 // from:
  SAY @97879 /* ~Peque�a Caraneth... no deber�as haber venido aqu�. Tu madre... tu madre no debe ser rescatada.~ */
  IF ~~ THEN EXTERN ~P_FALLJ~ 59
END

IF ~~ THEN BEGIN 35 // from:
  SAY @97880 /* ~No a Fall, Icelock. �No le haremos da�o a ella!~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from:
  SAY @97881 /* ~Yo...~ */
  IF ~~ THEN REPLY @97882 /* ~Alendir, �qu� ser� entonces? No me contendr� si decides atacarnos.~ */ GOTO 37
  IF ~~ THEN REPLY @97883 /* ~Sab�a que eras un cobarde, elfo. No tendr� piedad de ti. �Morir�s!~ */ GOTO 37
  IF ~OR (3)
  CheckStatGT([PC],16,CHR)
  CheckStatGT([PC],16,INT)
  CheckStatGT([PC],16,WIS)~ THEN REPLY @97884 /* ~Alendir, no tienes que hacer esto. S� que en alguna parte de tu fr�o coraz�n aprecias a Fall lo suficiente como para no ceder ante tus ambiciones. Ay�danos.~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from:
  SAY @97885 /* ~No tengo otra opci�n, <CHARNAME>. Lo lamento. En verdad.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from:
  SAY @97886 /* ~�Soy el Maestro de la Escarcha! Su camino llega hasta aqu�...~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",6) SetGlobal ("P_FallM3_AlendirEnemy","GLOBAL",1) Enemy ()~ UNSOLVED_JOURNAL @310021 EXIT
 END 

IF ~~ THEN BEGIN 39 // from:
  SAY @97887 /* ~<CHARNAME>... Fall...~ */
  IF ~~ THEN EXTERN ~P_ICELOC~ 5
END

IF ~~ THEN BEGIN 40 // from:
  SAY @97888 /* ~No, Icelock... �T� eres el que est� acabado!~ */
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
  IF ~Global ("P_FallM3_AlendirEnemy","GLOBAL",1)~ THEN REPLY @97899 /* ~Alendir, has obtenido tu merecido. No deber�as haberte aliado con un monstruo interplanar. Has sido un necio.~ */ GOTO 45
  IF ~Global ("P_FallM3_AlendirEnemy","GLOBAL",1)~ THEN REPLY @978100 /* ~No te queda mucho tiempo de vida, elfo. Ser� mejor que guardes energ�as si quieres sobrevivir.~ */ GOTO 45

  IF ~Global ("P_FallM3_AlendirAllied","GLOBAL",1)~ THEN REPLY @978146 /* ~Has sido valiente, Alendir. Icelock ha sido destruido.~ */ GOTO 49
  IF ~Global ("P_FallM3_AlendirAllied","GLOBAL",1)~ THEN REPLY @978109 /* ~Has sido est�pido, Alendir. No deber�as haber atacado a Icelock s�lo.~ */ GOTO 50
END

IF ~~ THEN BEGIN 45 // from:
  SAY @978101 /* ~La muerte es lo que merezco y la muerte ser� *tose* bienvenida.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from:
  SAY @978102 /* ~�D-d�nde est� Fall? Necesito... necesito hablar con ella.~ */
  IF ~~ THEN REPLY @978103 /* ~Ella no puede hablar ahora. Y aunque pudiera no permitir�a que hablase con escoria como t�.~ */ GOTO 47
  IF ~~ THEN REPLY @978104 /* ~Ella no puede hablar ahora. Lamento decirte que ha muerto.~ */ GOTO 48
  IF ~~ THEN REPLY @978105 /* ~Ella no puede hablar ahora. No se encuentra disponible, de momento.~ */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from:
  SAY @978106 /* ~Descendiente de Bhaal... tu reputaci�n... te precede...~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",9) SetGlobal ("P_FallM3_AlendirANDFallDied","GLOBAL",1) DestroyItem("IMMUNE1") DestroyItem("MINHP1") EraseJournalEntry (@310010) EraseJournalEntry (@310011) EraseJournalEntry (@310012) EraseJournalEntry (@310013) EraseJournalEntry (@310019) EraseJournalEntry (@310020) EraseJournalEntry (@310021) EraseJournalEntry (@310022) EraseJournalEntry (@310024) Kill (Myself)~ SOLVED_JOURNAL @310023 EXIT
END
 
IF ~~ THEN BEGIN 48 // from:
  SAY @978107 /* ~Si ella ha muerto... rev�vela, <CHARNAME>. Usar� todas mis fuerzas para mantenerme con vida hasta... hasta que pueda hablar con ella.~ */
  IF ~~ THEN DO ~SetGlobal ("P_FallMission3","GLOBAL",7) SetGlobal ("P_FallM3_AlendirNeedTlkFall","GLOBAL",1)~ UNSOLVED_JOURNAL @310024 EXIT
END 

IF ~~ THEN BEGIN 49 // from:
  SAY @978110 /* ~*sonr�e* Gracias, <CHARNAME>. Nunca... *tose* nunca deb� aliarme con esa criatura...~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 50 // from:
  SAY @978111 /* ~*sonr�e* No esperaba menos de <CHARNAME>. Al menos... Icelock ha sido destruido.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 51 // from:
  SAY @97898 /* ~*susurro* Caraneth...~ */
  IF ~Global ("P_FallM3_AlendirEnemy","GLOBAL",1)~ THEN REPLY @97899 /* ~Alendir, has obtenido tu merecido. No deber�as haberte aliado con un monstruo interplanar. Has sido un necio.~ */ EXTERN ~P_FALLJ~ 64
  IF ~Global ("P_FallM3_AlendirEnemy","GLOBAL",1)~ THEN REPLY @978100 /* ~No te queda mucho tiempo de vida, elfo. Ser� mejor que guardes energ�as si quieres sobrevivir.~ */ EXTERN ~P_FALLJ~ 63

  IF ~Global ("P_FallM3_AlendirAllied","GLOBAL",1)~ THEN REPLY @978146 /* ~Has sido valiente, Alendir. Icelock ha sido destruido.~ */ EXTERN ~P_FALLJ~ 63
  IF ~Global ("P_FallM3_AlendirAllied","GLOBAL",1)~ THEN REPLY @978109 /* ~Has sido est�pido, Alendir. No deber�as haber atacado a Icelock s�lo.~ */ EXTERN ~P_FALLJ~ 64
END

//////

IF ~~ THEN BEGIN 52 // from:
  SAY @978112 /* ~N-no, Caraneth. Mis d�as han llegado a su fin. Es... lo que merezco.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 53 // from:
  SAY @978113 /* ~N-no, Caraneth. <CHARNAME> tiene raz�n. Esto es lo que merezco. Finalmente he cosechado lo que he sembrado...~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @978114 /* ~Mi inminente muerte es inconsecuente. Debes escuchar lo que he de decirte.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from:
  SAY @978115 /* ~Gemystara... Gerwulf... perd�nenme, por favor...~ */
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
  SAY @978102 /* ~�D-d�nde est� Fall? Necesito... necesito hablar con ella.~ */
  IF ~~ THEN REPLY @978103 /* ~Ella no puede hablar ahora. Y aunque pudiera no permitir�a que hablase con escoria como t�.~ */ GOTO 47
  IF ~~ THEN REPLY @978144 /* ~De acuerdo. La traer� cuanto antes. Resiste, Alendir.~ */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from:
  SAY @978145 /* ~Apres�rate, <CHARNAME>. Antes... de que sea demasiado tarde.~ */
  IF ~~ THEN DO ~~ EXIT
END


// �ltimo @978142

// P_FallM3_AlendirEnemy 1       P_FallM3_AlendirAllied 1
 
 
//AttackOneRound ("P_Iceloc") AttackOneRound ("P_Iceloc")
//Enemy()

I_C_T P_Alendi 54 P_Fall_ALENDIRM54FINAL4
== P_Alendi IF ~~ THEN @978116 /* ~Tu madre... se encuentra en el Abismo.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @978117 /* ��Q-qu�?! */
== P_Alendi IF ~~ THEN @978118 /* ~Es la verdad, peque�a Caraneth. En el Abismo... o al menos en una de sus capas.~ */
== P_Alendi IF ~~ THEN @978119 /* ~El Abismo alberga incontable cantidad de horrores y est� dividido en infinitas capas de maldad.~ */
== P_Alendi IF ~~ THEN @978120 /* ~Las criaturas demon�acas intentan constantemente invadir los planos exteriores. Para su conquista. Para su destrucci�n.~ */
== P_Alendi IF ~~ THEN @978121 /* ~*tos* Gemystara descubri� que la responsable del ataque a Imnescar es una poderosa criatura llamada Morgrath.~ */
== P_Alendi IF ~~ THEN @978122 /* ~Morgrath intenta a toda costa invadir el Plano Material y as� expandir su Shyntquarra.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @978123 /* Esa palabra... el g�lem la ha mencionado. */
== P_Alendi IF ~~ THEN @978124 /* ~As� es. Icelock... era el esbirro de Cryonax, el amo del Plano Elemental de Hielo.~ */
== P_Alendi IF ~~ THEN @978125 /* ~Cryonax tambi�n busca la conquista de esta tierra, es por eso que buscaba evitar el Shyntquarra.~ */
== P_Alendi IF ~~ THEN @978126 /* ~Pero eso se acab� con la destrucci�n de Icelock. Han evitado la intervenci�n directa de Cryonax.~ */
== P_Alendi IF ~~ THEN @978127 /* ~Pero a�n queda Morgrath.~ */
== P_Alendi IF ~~ THEN @978128 /* ~Morgrath... significa "La Legi�n que no se puede ver". Es una entidad que maneja incontable cantidad de criaturas malignas.~ */
== P_Alendi IF ~~ THEN @978129 /* ~Un enjambre demon�aco... con un demonio con mente de colmena.~ */
== P_Alendi IF ~~ THEN @978130 /* ~Su influjo envenena todo lo que toca. Es por eso que tu madre no fue capaz de usar su magia en Imnescar.~ */
== P_Alendi IF ~~ THEN @978131 /* ~Pero eso... eso ha cambiado.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @978132 /* �A qu� te refieres, Alendir? */
== P_Alendi IF ~~ THEN @978133 /* ~*tos* Creo que tu madre ha descubierto una forma de detener a Morgrath.~ */
== P_Alendi IF ~~ THEN @978134 /* ~Por eso es que ha ido al Abismo. A esa capa ar�cnida llamada Rachnidra.~ */
== P_Alendi IF ~~ THEN @978135 /* ~Sab�a... sab�a que habr�as de llegar, peque�a Caraneth. Aunque no contaba con que fuese tan pronto.~ */
== P_Alendi IF ~~ THEN @978136 /* ~S� c�mo llegar a Rachnidra. He imbuido una de mis posesiones para que abra el portal hacia el Abismo.~ */
== P_Alendi IF ~~ THEN @978137 /* ~*suspiro* Pero se necesita de un gran poder para poder ejecutarlo.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @978138 /* Puedo hacerlo, Alendir. Puedo abrir ese portal e ir en busca de madre. */
== P_Alendi IF ~~ THEN @978139 /* ~No depende de ti, Fall. La Rosa de Hielo decidir� cu�ndo sea el momento indicado.~ */
== P_Alendi IF ~~ THEN @978140 /* ~Ll�vala siempre contigo, peque�a.~ */
== P_Alendi IF ~~ THEN @978141 /* ~Yo... yo... *sus ojos se cierran lentamente*~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @978142 /* �Alendir? Alendir, no te mueras. Por favor... */
END

I_C_T P_Alendi 37 P_Fall_ALENDIRM37FINAL3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97889 /* Alendir... por favor... no nos hagas esto... */
== P_Alendi IF ~~ THEN @97890 /* ~Hay m�s en juego que nuestras vidas, peque�a Caraneth.~ */
== P_Alendi IF ~~ THEN @97891 /* ~Espero que alg�n d�a puedas entenderlo.~ */
== P_Alendi IF ~~ THEN @97892 /* ~No te preocupes. Te revivir� cuando todo esto termine.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97893 /* �No! Si mis amigos caen conmigo, que as� sea. Si me traes de nuevo, �te matar� con mis propias manos! */
== P_Alendi IF ~~ THEN @97894 /* ~Lo intentar�s, caraneth. Lo intentar�s...~ */
END
 
I_C_T P_Alendi 35 P_Fall_ALENDIRM35FINAL2
== P_ICELOC IF ~~ THEN @97895 /* ~No hay lugar para los d�biles, Alendir. Pero has sido �til hasta ahora. Procurar� que su cuerpo no sufra da�os irreparables. Luego, podr�s revivirla.~ */
== P_ICELOC IF ~~ THEN @97896 /* ~Pero el resto morir�. Irreparablemente.~ */
END
 
I_C_T P_Alendi 32 P_Fall_ALENDIRM32FINAL1
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97876 /* No me subestimes, Alendir... �he llegado hasta aqu� buscando respuestas! */
END

I_C_T P_Alendi 28 P_Fall_ALENDIR28A
== P_Alendi IF ~~ THEN @97851 /* ~Dime, �ha sido dif�cil acabar con la bestia? Pueden llegar a ser criaturas muy complicadas de matar.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97871 /* No fue nada f�cil, Alendir... aunque... aunque hubiese preferido no tener que matarlo. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97872 /* <CHARNAME> tom� la decisi�n... y entiendo que encontrar a mi madre es prioridad... Pero no puedo evitar pensar que hab�a otro camino qu� tomar. */
== P_Alendi IF ~~ THEN @97857 /* ~Veo que no has cambiado nada. La fruta no cae lejos del �rbol.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97858 /* �Qu� quieres decir? */
== P_Alendi IF ~~ THEN @97859 /* ~Gerwulf ten�a esa obsesi�n de convertir monstruos en aliados. Ankhegs, lic�ntropos, mic�nidos.~ */
== P_Alendi IF ~~ THEN @97860 /* ~Puso su vida y la de aquellos que le rodeaban en peligro constante. Todo por sus tonter�as.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97861 /* �Tonter�as? A-Alendir, �no dejar� que hables as� de mi padre! */
== P_Alendi IF ~~ THEN @97862 /* ~�Por qu�? Era un simple humano. Incapaz de ver m�s all� de su propia arrogancia. Su debilidad provoc� la ca�da de ese pueblito.~ */
END



I_C_T P_Alendi 25 P_Fall_ALENDIR25A
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97865 /* �Por qu�, Alendir? �Por qu� odias a mi padre? */
== P_Alendi IF ~~ THEN @97866 /* �Lo que haya sucedido entre tu padre y yo no es de tu incumbencia! */
== P_Alendi IF ~~ THEN @97867 /* Tenemos asuntos m�s urgentes que atender. Gemystara puede ser encontrada luego de mi ritual. */
END

I_C_T P_Alendi 23 P_Fall_ALENDIR23A
== P_Alendi IF ~~ THEN @97851 /* ~Dime, �ha sido dif�cil acabar con la bestia? Pueden llegar a ser criaturas muy complicadas de matar.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97852 /* No lo matamos, Alendir. �Eso... eso afectar� al ritual? */
== P_Alendi IF ~~ THEN @97853 /* ~No lo afectar�. No es necesario que el due�o de este colmillo haya muerto.~ */
== P_Alendi IF ~~ THEN @97854 /* ~Sin embargo, me pregunto lo siguiente: �C�mo lo obtuvieron?~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97855 /* Erhm... simplemente... hablamos con �l. Ver�s, el gran basilisco ten�a un amuleto que le permite comunicarse con nosotros. <CHARNAME> le convenci� de darnos el colmillo y yo.- */
== P_Alendi IF ~~ THEN @97856 /* ~No es necesario que te sigas explicando, peque�a Caraneth. He o�do suficiente.~ */
== P_Alendi IF ~~ THEN @97857 /* ~Veo que no has cambiado nada. La fruta no cae lejos del �rbol.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97858 /* �Qu� quieres decir? */
== P_Alendi IF ~~ THEN @97859 /* ~Gerwulf ten�a esa obsesi�n de convertir monstruos en aliados. Ankhegs, lic�ntropos, mic�nidos.~ */
== P_Alendi IF ~~ THEN @97860 /* ~Puso su vida y la de aquellos que le rodeaban en peligro constante. Todo por sus tonter�as.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97861 /* �Tonter�as? A-Alendir, �no dejar� que hables as� de mi padre! */
== P_Alendi IF ~~ THEN @97862 /* ~�Por qu�? Era un simple humano. Incapaz de ver m�s all� de su propia arrogancia. Su debilidad provoc� la ca�da de ese pueblito.~ */
END


I_C_T P_Alendi 19 P_Fall_ALENDIR19A
== P_Alendi IF ~~ THEN @97843 /* ~Despu�s de todo, eres descendiente del Asesinato, �no es as�? Matar no deber�a ser un problema para ti.~ */
END


I_C_T P_Alendi 18 P_Fall_ALENDIR18A
== P_Alendi IF ~~ THEN @97839 /* ~Hagamos lo siguiente. Si logras acabar con la bestia y me traes todo lo que puedas extraer de ella, puede que pueda imbuir alg�n artefacto para ti.~ */
== P_Alendi IF ~~ THEN @97840 /* ~Conf�o en que eso ser� suficiente recompensa, �no lo crees?~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97841 /* ~Un artefacto forjado de los huesos de un basilisco. �S�! Espero que no te comportes como un primate y aceptes esta misi�n, <CHARNAME>.~ */
END

I_C_T P_Alendi 2 P_Fall_ALENDIR2A
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9783 /* �Alendir! Me alegro de verte. S�... s� que no te gusta que me junte con extra�os, pero este no es el caso. */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @9784 /* ~Te presento a mi amigo, <CHARNAME>.~~Te presento a mi amiga, <CHARNAME>.~ */
== P_Alendi IF ~~ THEN @9785 /* ~Estimo que sabes que se trata de un engendro de Bhaal, �no es as�?~ ~Estimo que sabes que se trata de una engendro de Bhaal, �no es as�?~ */
END

I_C_T P_Alendi 5 P_Fall_ALENDIR5A
== P_Alendi IF ~~ THEN @9788 /* ~Soy un Selu'taar. Estamos conscientes de la existencia de los descendientes del Asesinato en Evereska, pues ellos cambiar�n Faer�n para siempre.~ */
== P_Alendi IF ~~ THEN @9789 /* ~Hay pocos como yo. Y una de esas pocas es Gemystara.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97810 /* ~<CHARNAME>, Gemystara es el nombre de mi madre.~ */
== P_Alendi IF ~~ THEN @97811 /* ~Sin embargo, puede que tu presencia sea �til, engendro de Bhaal.~ */
== P_Alendi IF ~~ THEN @97812 /* ~Caraneth, mis pesquisas me han llevado a teor�as perturbadoras, mas no puedo asegurarlo hasta que no haya completado mi ritual.~ */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @97813 /* ~�Ritual? Esto quiere decir que hay fuerzas interplanares involucradas en la desaparici�n de mi madre...~ */
END


I_C_T P_Alendi 6 P_Fall_ALENDIR6A
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos pat�ticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya ser�a m�o. (S�, longevidad... eso ser�a magn�fico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despi�rtame cuando estos pusil�nimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la b�squeda se complica para Fall. Me pregunto qu� requerir� ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Ser� un elfo, pero la hechicer�a es casi tangible a su alrededor. La corrupci�n no es una maldici�n exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viaj� por ellos, �sabes? Vol� a una extra�a tierra donde s�lo habitaban humanos piernas largas. No se les entend�a un nabo lo que dec�an, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grit�. Fue una extra�a confusi�n. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinaci�n. No tienes idea de lo que sali� despu�s de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a m�, creo que este Alendir ser�a una buena adici�n al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6B
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despi�rtame cuando estos pusil�nimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la b�squeda se complica para Fall. Me pregunto qu� requerir� ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Ser� un elfo, pero la hechicer�a es casi tangible a su alrededor. La corrupci�n no es una maldici�n exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viaj� por ellos, �sabes? Vol� a una extra�a tierra donde s�lo habitaban humanos piernas largas. No se les entend�a un nabo lo que dec�an, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grit�. Fue una extra�a confusi�n. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinaci�n. No tienes idea de lo que sali� despu�s de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a m�, creo que este Alendir ser�a una buena adici�n al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos pat�ticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya ser�a m�o. (S�, longevidad... eso ser�a magn�fico)~ */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6C
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despi�rtame cuando estos pusil�nimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la b�squeda se complica para Fall. Me pregunto qu� requerir� ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Ser� un elfo, pero la hechicer�a es casi tangible a su alrededor. La corrupci�n no es una maldici�n exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viaj� por ellos, �sabes? Vol� a una extra�a tierra donde s�lo habitaban humanos piernas largas. No se les entend�a un nabo lo que dec�an, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grit�. Fue una extra�a confusi�n. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinaci�n. No tienes idea de lo que sali� despu�s de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a m�, creo que este Alendir ser�a una buena adici�n al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos pat�ticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya ser�a m�o. (S�, longevidad... eso ser�a magn�fico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6D
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la b�squeda se complica para Fall. Me pregunto qu� requerir� ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Ser� un elfo, pero la hechicer�a es casi tangible a su alrededor. La corrupci�n no es una maldici�n exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viaj� por ellos, �sabes? Vol� a una extra�a tierra donde s�lo habitaban humanos piernas largas. No se les entend�a un nabo lo que dec�an, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grit�. Fue una extra�a confusi�n. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinaci�n. No tienes idea de lo que sali� despu�s de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a m�, creo que este Alendir ser�a una buena adici�n al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos pat�ticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya ser�a m�o. (S�, longevidad... eso ser�a magn�fico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despi�rtame cuando estos pusil�nimes terminen de parlotear.~ */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6E
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Ser� un elfo, pero la hechicer�a es casi tangible a su alrededor. La corrupci�n no es una maldici�n exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viaj� por ellos, �sabes? Vol� a una extra�a tierra donde s�lo habitaban humanos piernas largas. No se les entend�a un nabo lo que dec�an, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grit�. Fue una extra�a confusi�n. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinaci�n. No tienes idea de lo que sali� despu�s de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a m�, creo que este Alendir ser�a una buena adici�n al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos pat�ticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya ser�a m�o. (S�, longevidad... eso ser�a magn�fico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despi�rtame cuando estos pusil�nimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la b�squeda se complica para Fall. Me pregunto qu� requerir� ese elfo anciano para llevar a cabo su ritual.~ */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6F
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viaj� por ellos, �sabes? Vol� a una extra�a tierra donde s�lo habitaban humanos piernas largas. No se les entend�a un nabo lo que dec�an, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grit�. Fue una extra�a confusi�n. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinaci�n. No tienes idea de lo que sali� despu�s de que... *sigue hablando*~ */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a m�, creo que este Alendir ser�a una buena adici�n al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos pat�ticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya ser�a m�o. (S�, longevidad... eso ser�a magn�fico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despi�rtame cuando estos pusil�nimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la b�squeda se complica para Fall. Me pregunto qu� requerir� ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Ser� un elfo, pero la hechicer�a es casi tangible a su alrededor. La corrupci�n no es una maldici�n exclusiva de la raza humana, <CHARNAME>.~ */
END

I_C_T P_Alendi 6 P_Fall_ALENDIR6G
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97820 /* ~Bueno, si me lo preguntan a m�, creo que este Alendir ser�a una buena adici�n al Refugio. Tiene una agria personalidad, justo lo que hace falta.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @97815 /* ~Hmpf. Estos pat�ticos elfos no son capaces de contener tanto poder. Si yo tuviera su longevidad, el mundo ya ser�a m�o. (S�, longevidad... eso ser�a magn�fico)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9784000 /* *suspiro* Nada bueno puede salir de un mago y sus planes. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @97816 /* ~La verdad no entiendo un carajo, <CHARNAME>. Despi�rtame cuando estos pusil�nimes terminen de parlotear.~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @97817 /* ~Tal parece que la b�squeda se complica para Fall. Me pregunto qu� requerir� ese elfo anciano para llevar a cabo su ritual.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @97818 /* ~Debemos tener cuidado con lo que nos pida este mago. Ser� un elfo, pero la hechicer�a es casi tangible a su alrededor. La corrupci�n no es una maldici�n exclusiva de la raza humana, <CHARNAME>.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @97819 /* ~Ah, los planos. Una vez viaj� por ellos, �sabes? Vol� a una extra�a tierra donde s�lo habitaban humanos piernas largas. No se les entend�a un nabo lo que dec�an, pero lo cierto es que no estaban acostumbrados a ver gnomos con ballestas. Todos gritaban, yo grit�. Fue una extra�a confusi�n. Por suerte pude volver a tiempo para comer guiso de lentejas de la vieja ma Jansen. Por cierto, guiso de lentejas luego de un viaje interplanar no es una buena combinaci�n. No tienes idea de lo que sali� despu�s de que... *sigue hablando*~ */
END


/* SANDRO
I_C_T P_Alendi 6 P_Fall_ALENDIR6A_Sand
== P_SandJ IF ~InParty("P_SandJ") InMyArea("P_SandJ") !StateCheck("P_SandJ",CD_STATE_NOTVALID)~ THEN @9785000 /* <CHARNAME>, la intervenci�n de fuerzas ajenas a nuestro mundo no es normal, de m�s est� decirlo. */
== P_SandJ IF ~InParty("P_SandJ") InMyArea("P_SandJ") !StateCheck("P_SandJ",CD_STATE_NOTVALID)~ THEN @9785001 /* Sin embargo, la desaparici�n de un elfo hechicero de alto rango es preocupante. */
== P_SandJ IF ~InParty("P_SandJ") InMyArea("P_SandJ") !StateCheck("P_SandJ",CD_STATE_NOTVALID)~ THEN @9785002 /* Debemos tener extremo cuidado en esta empresa. */
END
*/

