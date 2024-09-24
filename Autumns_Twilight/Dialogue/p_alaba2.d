BEGIN p_alaba2

// DUSK MUERE
IF ~OR (2)
Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",1)
Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @9210 /* ~*tos* Lo hemos logrado... el dragón ha muerto...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2) 
  SetGlobal("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)
  SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9211 /* ~Has vencido, hijo de Bhaal... *tos* Lástima... que no haya podido matarte a ti también...~ */
    IF ~~ THEN REPLY @9212 /* ~Sabes que reviviremos a Dusk, ¿no? Tu riña con él ha sido en vano... pues, el soldado vivirá, a fin de cuentas.~ */  GOTO 2
	IF ~~ THEN REPLY @9213 /* ~Supongo que tienes razón... no creo que pueda revivir a Dusk con el daño que ha recibido... pero al menos te hemos matado.~ */  GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY @9214 /* ~*quejido* No... no importa, <PRO_RACE>. Incluso si el soldado es traído de vuelta... tendrá que vivir con el hecho de que ha caído en batalla... p-por la mano de Alabarza... el M-mutilad--~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9215 /* ~(Sin llegar a terminar de decir sus últimas palabras, Alabarza parece ahogarse en su propia sangre para, finalmente, morir)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8) Kill(Myself)~ UNSOLVED_JOURNAL @210025 EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9216 /* ~*quejido* C-consuelo de tontos, hijo de Bhaal... Eres poderoso... y te respeto por eso... Y-yo... Alabarza el M-mutilador... te salud--~ ~*quejido* C-consuelo de tontos, hija de Bhaal... Eres poderosa... y te respeto por eso... Y-yo... Alabarza el M-mutilador... te salud--~ */
  IF ~~ THEN GOTO 3
END

// DUSK VIVE EVIL
IF ~Global("P_DuskM3EVIL_DUSK_ALIVE","GLOBAL",1)~ THEN BEGIN 5 // from:
  SAY @9217 /* ~*tos* Acaso... ¿acaso eres inmortal, soldado?~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3EVIL_DUSK_ALIVE","GLOBAL",2) SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9218 /* ~(Alabarza, mientras se desangra por la herida, esboza una extraña sonrisa. Finalmente, exhala su último aliento)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8) Kill(Myself)~ UNSOLVED_JOURNAL @210025 EXIT
END

// DUSK VIVE GOOD
IF ~Global("P_DuskM3GOOD_DUSK_ALIVE","GLOBAL",1)~ THEN BEGIN 7 // from:
  SAY @9217 /* ~*tos* Acaso... ¿acaso eres inmortal, soldado?~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3GOOD_DUSK_ALIVE","GLOBAL",2) SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 6
END



// DUSK VIVE GOOD
I_C_T P_ALABA2 7 P_Dusk_WinAlabarGOOD1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92116 /* ~*jadeo* Se acabó, Alabarza...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92117 /* ~Podría dejarte morir... o podríamos curar tus heridas y llevarte a la justicia.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92118 /* ~¿Q-qué? *tos* ¿Serías c-capaz de perdonarme... la vida?~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92119 /* ~Sé lo que te espera en el más allá, Alabarza. Gruumsh no olvidará que complotaste con un elfo para combatir a tus enemigos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92120 /* ~...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92121 /* ~No le temo al dolor, soldado...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92122 /* ~Pero toda una eternidad... eso debe ser aterrador, ¿no lo crees?~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92123 /* ~Incluso los más feroces sienten el miedo... eso es normal.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92124 /* ~Por eso ofrezco liberarte de eso. Quizás... quizás puedas encontrar redención... Creo que hasta tú eres capaz de ello.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92125 /* ~Soldado...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92126 /* ~No... no me cures...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92127 /* ~En cambio... T-te diré algo...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92128 /* ~No atacamos a tu destacamento por simple azar...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92129 /* ~*quejido* N-no... La verdad es... que una Orden de hechiceros nos indicó de tu llegada... de tu desembarco.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92130 /* ~¿Q-qué...?~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92131 /* ~Túnicas negras... un humano llamado Sornhil, otro llamado Valatar... y el elfo. *escupe sangre*~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92132 /* ~Su líder... un nigromante...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92133 /* ~¿N-nigromante?~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92134 /* ~Querían tu muerte... desconozco los motivos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92135 /* ~P-pero tú... soldado... sobreviviste...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92136 /* ~Los magos hicieron lo posible por reforzar a mi clan... éramos p-poderosos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92137 /* ~Pero... nos has matado...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92138 /* ~Alabarza...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92139 /* ~El cargamento... c-contiene lo que pudimos tomar de tus compañeros caídos... Lo has recuperado...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92140 /* ~C-creo que mi destino a partir de aquí es funesto... pero al menos... mi último gran momento ha sido combatir contra ti...~ */ DO ~ CreateItem ("p_restos",1,1,0)  GiveItem("p_restos", "P_Dusk") ~
END

// DUSK VIVE EVIL
I_C_T P_ALABA2 5 P_Dusk_WinAlabarEVIL1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9219 /* ~No te queda mucho tiempo de vida, escoria. Finalmente... has pagado.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92110 /* ~Q-quisiera decir... que esto aún no ha terminado... Que... que te perseguiré en la otra vida... p-pero...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92111 /* ~Pero tu deidad, Gruumsh, dudo que te perdone, ¿verdad? Después de todo... has recibido ayuda de un elfo... y no hay nada que Gruumsh odie más que los elfos...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92112 /* ~*ríe con malevolencia* Pasarás la eternidad sufriendo, de la mano de tu dios. Un destino más que merecido, diría yo...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92113 /* ~Grr... *con dificultad, el semiorco estira su mano en un intento desesperado por alcanzar el cuello de Dusk*~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92114 /* ~*Pero Dusk, sin piedad, la cercena con su espada, inundando el Túmulo con los gritos ahogados de Alabarza*~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92115 /* ~No tendrás últimas palabras ni deseos, escoria. Aunque quizás esto te reconforte: el elfo que te ha ayudado, el tal Kalanda, tendrá el mismo destino que tú...~ */ DO ~ CreateItem ("p_mano",1,1,0)  GiveItem("p_mano", "P_Dusk")  CreateItem ("p_restos",1,1,0)  GiveItem("p_restos", "P_Dusk") ~
END