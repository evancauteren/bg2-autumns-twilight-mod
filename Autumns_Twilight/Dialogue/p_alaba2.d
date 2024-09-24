BEGIN p_alaba2

// DUSK MUERE
IF ~OR (2)
Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",1)
Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @9210 /* ~*tos* Lo hemos logrado... el drag�n ha muerto...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2) 
  SetGlobal("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)
  SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9211 /* ~Has vencido, hijo de Bhaal... *tos* L�stima... que no haya podido matarte a ti tambi�n...~ */
    IF ~~ THEN REPLY @9212 /* ~Sabes que reviviremos a Dusk, �no? Tu ri�a con �l ha sido en vano... pues, el soldado vivir�, a fin de cuentas.~ */  GOTO 2
	IF ~~ THEN REPLY @9213 /* ~Supongo que tienes raz�n... no creo que pueda revivir a Dusk con el da�o que ha recibido... pero al menos te hemos matado.~ */  GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9214 /* ~*quejido* No... no importa, <PRO_RACE>. Incluso si el soldado es tra�do de vuelta... tendr� que vivir con el hecho de que ha ca�do en batalla... p-por la mano de Alabarza... el M-mutilad--~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9215 /* ~(Sin llegar a terminar de decir sus �ltimas palabras, Alabarza parece ahogarse en su propia sangre para, finalmente, morir)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8) Kill(Myself)~ UNSOLVED_JOURNAL @210025 EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9216 /* ~*quejido* C-consuelo de tontos, hijo de Bhaal... Eres poderoso... y te respeto por eso... Y-yo... Alabarza el M-mutilador... te salud--~ ~*quejido* C-consuelo de tontos, hija de Bhaal... Eres poderosa... y te respeto por eso... Y-yo... Alabarza el M-mutilador... te salud--~ */
  IF ~~ THEN GOTO 3
END

// DUSK VIVE EVIL
IF ~Global("P_DuskM3EVIL_DUSK_ALIVE","GLOBAL",1)~ THEN BEGIN 5 // from:
  SAY @9217 /* ~*tos* Acaso... �acaso eres inmortal, soldado?~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3EVIL_DUSK_ALIVE","GLOBAL",2) SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9218 /* ~(Alabarza, mientras se desangra por la herida, esboza una extra�a sonrisa. Finalmente, exhala su �ltimo aliento)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8) Kill(Myself)~ UNSOLVED_JOURNAL @210025 EXIT
END

// DUSK VIVE GOOD
IF ~Global("P_DuskM3GOOD_DUSK_ALIVE","GLOBAL",1)~ THEN BEGIN 7 // from:
  SAY @9217 /* ~*tos* Acaso... �acaso eres inmortal, soldado?~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3GOOD_DUSK_ALIVE","GLOBAL",2) SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 6
END



// DUSK VIVE GOOD
I_C_T P_ALABA2 7 P_Dusk_WinAlabarGOOD1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92116 /* ~*jadeo* Se acab�, Alabarza...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92117 /* ~Podr�a dejarte morir... o podr�amos curar tus heridas y llevarte a la justicia.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92118 /* ~�Q-qu�? *tos* �Ser�as c-capaz de perdonarme... la vida?~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92119 /* ~S� lo que te espera en el m�s all�, Alabarza. Gruumsh no olvidar� que complotaste con un elfo para combatir a tus enemigos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92120 /* ~...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92121 /* ~No le temo al dolor, soldado...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92122 /* ~Pero toda una eternidad... eso debe ser aterrador, �no lo crees?~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92123 /* ~Incluso los m�s feroces sienten el miedo... eso es normal.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92124 /* ~Por eso ofrezco liberarte de eso. Quiz�s... quiz�s puedas encontrar redenci�n... Creo que hasta t� eres capaz de ello.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92125 /* ~Soldado...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92126 /* ~No... no me cures...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92127 /* ~En cambio... T-te dir� algo...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92128 /* ~No atacamos a tu destacamento por simple azar...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92129 /* ~*quejido* N-no... La verdad es... que una Orden de hechiceros nos indic� de tu llegada... de tu desembarco.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92130 /* ~�Q-qu�...?~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92131 /* ~T�nicas negras... un humano llamado Sornhil, otro llamado Valatar... y el elfo. *escupe sangre*~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92132 /* ~Su l�der... un nigromante...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92133 /* ~�N-nigromante?~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92134 /* ~Quer�an tu muerte... desconozco los motivos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92135 /* ~P-pero t�... soldado... sobreviviste...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92136 /* ~Los magos hicieron lo posible por reforzar a mi clan... �ramos p-poderosos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92137 /* ~Pero... nos has matado...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92138 /* ~Alabarza...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92139 /* ~El cargamento... c-contiene lo que pudimos tomar de tus compa�eros ca�dos... Lo has recuperado...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92140 /* ~C-creo que mi destino a partir de aqu� es funesto... pero al menos... mi �ltimo gran momento ha sido combatir contra ti...~ */ DO ~ CreateItem ("p_restos",1,1,0)  GiveItem("p_restos", "P_Dusk") ~
END

// DUSK VIVE EVIL
I_C_T P_ALABA2 5 P_Dusk_WinAlabarEVIL1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9219 /* ~No te queda mucho tiempo de vida, escoria. Finalmente... has pagado.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92110 /* ~Q-quisiera decir... que esto a�n no ha terminado... Que... que te perseguir� en la otra vida... p-pero...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92111 /* ~Pero tu deidad, Gruumsh, dudo que te perdone, �verdad? Despu�s de todo... has recibido ayuda de un elfo... y no hay nada que Gruumsh odie m�s que los elfos...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92112 /* ~*r�e con malevolencia* Pasar�s la eternidad sufriendo, de la mano de tu dios. Un destino m�s que merecido, dir�a yo...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92113 /* ~Grr... *con dificultad, el semiorco estira su mano en un intento desesperado por alcanzar el cuello de Dusk*~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92114 /* ~*Pero Dusk, sin piedad, la cercena con su espada, inundando el T�mulo con los gritos ahogados de Alabarza*~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92115 /* ~No tendr�s �ltimas palabras ni deseos, escoria. Aunque quiz�s esto te reconforte: el elfo que te ha ayudado, el tal Kalanda, tendr� el mismo destino que t�...~ */ DO ~ CreateItem ("p_mano",1,1,0)  GiveItem("p_mano", "P_Dusk")  CreateItem ("p_restos",1,1,0)  GiveItem("p_restos", "P_Dusk") ~
END