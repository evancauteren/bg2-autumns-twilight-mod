BEGIN P_Chon 

CHAIN IF ~Global("P_ChonMet","GLOBAL",0)~ THEN P_Chon CHO00 
@9380 /* Nos encontramos de nuevo, soldado. */
DO ~SetGlobal("P_ChonMet","GLOBAL",1)~ 
= @9381 /* Hemos tenido �xito en nuestra empresa, <CHARNAME>. Hemos vencido y Dreach-naga ha sido vengada. */
END 
++ @9382 /* Es bueno verte con vida, Cho. �Qu� es lo que har�s ahora? Dudo mucho que volver al Abismo sea algo que est�s deseando. */ EXTERN P_Chon CHO1.1 
++ @9383 /* No es que hayas sido de gran ayuda, lagarto. */  EXTERN P_Chon CHO2.1




CHAIN P_Chon CHO1.1
@9384 /* Dreach-naga ha sido infectada con la negrura de la Reina Ara�a. No tiene sentido quedarse. Lady Vidomina ha logrado rescatar a muchas criaturas de nuestra naci�n y las ha puesto en ambientes que ella considera amenos. */
= @9385 /* He... usado parte de mi poder para que ella pudiera hacer eso. */
END
++ @9386 /* As� que eres m�s d�bil, �no? Es una pena. */ EXTERN P_Chon CHO1.2
++ @9387 /* Ha sido algo noble de tu parte, Cho. Tu naci�n vivir� a trav�s de sus supervivientes. */  EXTERN P_Chon CHO1.4

CHAIN P_Chon CHO1.4
@93820 /* ~Me honras con tus palabras, amigo.~ ~Me honras con tus palabras, amiga.~ */
= @93821 /* <CHARNAME>, s� que tienes asuntos pendientes que resolver y me gustar�a acompa�arte en tus aventuras. */
END
++ @93810 /* Puede que no lo sepas, pero ser�a muy extra�o que saliera a las calles y tabernas acompa�ado de un hombre-lagarto. */ EXTERN P_Chon CHO1.3


CHAIN P_Chon CHO1.2
@9388 /* Sido siendo fuerte, <CHARNAME>. T�, mejor que nadie, no deber�a subestimarme. */
= @9389 /* Sin embargo, eso no es importante. Lo importante es ayudarte en tu misi�n. S� que tienes asuntos pendientes que resolver y me gustar�a acompa�arte en tus aventuras. */
END
++ @93810 /* Puede que no lo sepas, pero ser�a muy extra�o que saliera a las calles y tabernas acompa�ado de un hombre-lagarto. */ EXTERN P_Chon CHO1.3


CHAIN P_Chon CHO1.3
@93811 /* Lady Vidomina, �tienes alg�n consejo para este dilema? */
== P_VIDOMI IF ~~ THEN @93812 /* Bueno, mi consejo es demasiado sencillo: Si alguien pregunta, di que el General es una convocaci�n. */
== P_Chon @93813 /* �Eso es todo? No parece ser tan dif�cil. �Qu� dices, <CHARNAME>? */
END
++ @93814 /* Puede que m�s tarde, Cho. No tengo lugar en estos momentos. */  EXTERN P_Chon CHO0
++ @93815 /* De acuerdo, Cho. �Bienvenido a bordo! */ EXTERN P_Chon CHOJOIN


CHAIN P_Chon CHO0
@93816 /* Comprendo. Estar� aqu� si cambias de opini�n, soldado. */
EXIT

CHAIN P_Chon CHOJOIN
@93817 /* �Por el tridente de Tisiphone! Es todo un honor que me dejes acompa�arte. Tus enemigos ser�n mis enemigos. Pobre de ellos... */
DO ~SetGlobal("P_ChonInParty","GLOBAL",1) JoinParty() ~ 
EXIT


CHAIN P_Chon CHO2.1
@93818 /* ~Veo que sigues siendo tan encantador como siempre, <CHARNAME>.~ ~Veo que sigues siendo tan encantadora como siempre, <CHARNAME>.~ */
= @93819 /* De todas formas, quer�a preguntarte. �Necesitas un soldado m�s en tu compa��a? S� que a�n tienes asuntos pendientes que resolver y quiero ayudarte, de ser posible. */
END
++ @93810 /* Puede que no lo sepas, pero ser�a muy extra�o que saliera a las calles y tabernas acompa�ado de un hombre-lagarto. */ EXTERN P_Chon CHO1.3



APPEND P_Chon

IF ~Global("P_ChonMet","GLOBAL",1)~ CHO3
SAY @93822 /* �<CHARNAME>! �Has cambiado de opini�n? En verdad deseo viajar con vosotros. */
++ @93823 /* S�, necesitamos tu experiencia, Cho. Bienvenido a bordo. */ + CHOJOIN
++ @93824 /* Por el momento no, General. */ + CHO0
END 

END