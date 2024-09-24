BEGIN P_KANKRA

IF ~AreaCheck("P_F10B")
InMyArea("p_cho")
Global ("P_KankraTalk1","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @9400 /* *chirrido* Tienes la piedra de Arthrom. �Ja! Eso quiere decir que ha muerto. Otra vez. Kankra burlarse de Arthrom cuando verlo de nuevo. */
  IF ~~ THEN DO ~SetGlobal ("P_KankraTalk1","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9401 /* ~Kankra tener piedra de su gran archienemigo: Qyl'tar. Kankra extra�ar combatir contra Qyl'tar. Hombre-lagarto ser muy inteligente, como Kankra.~*/
    IF ~~ THEN REPLY @9402 /* ~Entr�game esa piedra, Kankra. Si lo hac�s te dejar� vivir.~ */  GOTO 2
	IF ~~ THEN REPLY @9403 /* ~Basta de charla, criatura est�pida. �Es hora de morir!~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9404 /* Kankra no poder hacer eso. Kankra ser obediente a madre. Kankra si ser buen hijo alg�n d�a ser favorito, como Mesothel. */
  IF ~~ THEN DO ~~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9405 /* �Kankra matar� por madre! Kankra buen hijo. �Tejedoras: es hora de almorzar! */
  IF ~~ THEN DO ~SetGlobal ("P_KankraTalk1","GLOBAL",1) DestroyItem("INVULNER") DestroyItem("IMMUNE10") DestroyItem("MINHP1") Enemy()~ EXIT
END

IF ~AreaCheck("P_F10B")
!InMyArea("p_cho")
Global ("P_KankraTalk1","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY @9400 /* *chirrido* Tienes la piedra de Arthrom. �Ja! Eso quiere decir que ha muerto. Otra vez. Kankra burlarse de Arthrom cuando verlo de nuevo. */
  IF ~~ THEN DO ~SetGlobal ("P_KankraTalk1","GLOBAL",1)~ GOTO 1
END

I_C_T P_KANKRA 0 P_KANKRA1_0
== P_CHO IF ~~ THEN @9406 /* ~T� has muerto en m�s de una ocasi�n en manos de Qyl'tar, si mal no recuerdo, �no es as�, Kankra?~ */
== P_KANKRA IF ~~ THEN @9407 /* ~�T�! Est�s con los primarios. Liphix no ment�a. Liphix es muy mentirosa, �sabes? Kankra no creer ni la mitad de las cosas que Liphix decir. Pero Kankra tener que disculparse con Liphix. Liphix ser honesta para variar.~ */
== P_CHO IF ~~ THEN @9408 /* ~No tendr�s la oportunidad de hacerlo, insecto. Honrar� a Qyl'tar y aplastar� tu abdomen con mis pu�os. Es una promesa.~ */ DO ~UseItem("p_fifirc",Myself)~
== P_KANKRA IF ~~ THEN @9409 /* ~Hombre-lagarto ser gracioso. Hombre-lagarto saber que Kankra revivir si morir. *chirrido* Kankra disfrutar de graciosas palabras.~*/
END
