BEGIN P_GASS

IF ~~ THEN BEGIN 0 // from:
  SAY @9420 /* ~�M�s fuerte que Mesothel? Imposible.~ */
  IF ~~ THEN EXTERN ~P_TISIPH~ 1
END

IF ~Global("P_ChocRevivalFriends","GLOBAL",5)
AreaCheck("P_FAR7")
~ THEN BEGIN 1 // from:
  SAY @9426 /* ~Rachnidra nos ha llevado al punto en que debemos convertirnos en aliados. Espero con ansias el combate contra las ara�as, <CHARNAME>.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("P_FMeetingVidomina","GLOBAL",1)
AreaCheck("P_FA3B")
~ THEN BEGIN 2 // from:
  SAY @9427 /* ~He convencido a Vreshnak y a Qyl'tar de que viajemmos con Vidomina. Creo que podemos reconstruir Dreach-naga en un lugar menos hostil que el Abismo. Cho, por su lado, creo que permanecer� aqu� en Amn. Quiz�s debas hablar con �l.~ */ 
  IF ~~ THEN DO ~~ EXIT
END

I_C_T P_GASS 0 P_FallJ_Gass_F13_1
== P_CHO IF ~~ THEN @9421 /* Pero lo es, Capit�n Gassthon. Lo he visto. Las heridas que ves en m�... fueron provocadas por ellos. */
== P_TISIPH IF ~~ THEN @9422 /* ~No tolerar� debilidad en mis ej�rcitos, General Cho'Nuja. Las excusas son el recurso de los d�biles. �Acaso eres d�bil, General?~ */
== P_CHO IF ~~ THEN @9423 /* Mi... mi Reina. Mis garras est�n a su disposici�n. Cre� que ser�a pertinente advertirle sobre la llegada de esta criatura. */
== P_GASS IF ~~ THEN @9424 /* Creo que ha hecho lo correcto, mi Reina. Tenemos el �ltimo remanente del ej�rcito listo para acabar con ellos. */ 
== P_TISIPH IF ~~ THEN @9425 /* ~�Silencio! Ambos me enferm�is. No han hecho m�s que perder batallas una y otra vez ante las ara�as. Y ahora... �han permitido que mis enemigos lleguen a mi trono!~ */
END


/*
PARA Tisiphone
  IF ~~ THEN DO ~DestroyItem("IMMUNE1") CreateItem("p_fitisc",1,2,1) UseItem("p_fitisc",Myself) DestroyItem("p_fitisc") Enemy()~ UNSOLVED_JOURNAL @942310046 EXIT
END
*/