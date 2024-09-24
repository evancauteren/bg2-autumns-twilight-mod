BEGIN P_CELIN

// GOOD
IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_CelineSpawn","GLOBAL",1)
Global("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @9120 /* ~Ardusk... Dusk... ¿eres tú?~ */
  IF ~~ THEN DO ~SetGlobal("P_CelineSpawn","GLOBAL",2)~ EXTERN ~P_DuskJ~ 328
END

IF ~~ THEN BEGIN 1 // from:
  SAY @9121 /* ~Soy yo, amor mío. Ha pasado tanto tiempo...~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @91225 /* ~ *Celine sonríe dulcemente y su candor enaltece tu corazón durante unos segundos. Poco a poco, su presencia se desvanece en el suave fulgor de una luz blanca.* ~ */
  IF ~~ THEN DO ~ SetGlobal("P_CelineSpawn","GLOBAL",2)~ EXIT
END

// EVIL
IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_CelineSpawn","GLOBAL",1)
Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN BEGIN 3 // from:
  SAY @9120 /* ~Ardusk... Dusk... ¿eres tú?~ */
  IF ~~ THEN DO ~SetGlobal("P_CelineSpawn","GLOBAL",2)~ EXTERN ~P_DuskJ~ 330
END

IF ~~ THEN BEGIN 4 // from:
  SAY @91226 /* ~¿Dónde... dónde estoy? ¿Qué es este lugar?~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @91227 /* ~ Adiós, amor mío... Ruego a la Dama del Bosque para que un día vuelvas a mi lado... ~ */
  IF ~~ THEN DO ~SetGlobal("P_CelineSpawn","GLOBAL",2)~ EXTERN ~P_DuskJ~ 331
END

I_C_T P_CELIN 4 P_Dusk_CELIN_2
== P_DANCTI IF ~~ THEN @91228 /* Nos encontramos en un plano intermedio entre el Pandemonium y la Arboleda del Unicornio, dama Celine. */
== P_CELIN IF ~~ THEN @91229 /* Eres... ¡un demonio sombrío! Los de tu raza... asesinaron a mis padres. */
== P_DANCTI IF ~~ THEN @91230 /* Mi raza es culpable de muchas cosas, mi dama. Pero yo no he tenido nada que ver en el asedio que provino de las sombras de la Trinidad. */
== P_DANCTI IF ~~ THEN @91231 /* En todo caso, no creo que eso importe. Estamos aquí y ahora... no tenemos mucho tiempo. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91232 /* ¿De qué estás hablando, Danctian? Puedo ver a mi esposa con vida. ¡La has revivido! */
== P_DANCTI IF ~~ THEN @91233 /* No, Ardusk... no es así. Sólo he sido capaz de arrancarla del plano de la Dama del Bosque por unos pocos minutos. */
== P_DANCTI IF ~~ THEN @91234 /* Pronto, ella retornará con los suyos y nosotros regresaremos a Athkatla. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91235 /* ¡Rayos, demonio! No permitiré que eso suceda... ¡lucharé contra quien sea para evitar que arrebaten a mi esposa de mi lado! */
== P_CELIN IF ~~ THEN @91236 /* Dusk... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91237 /* Celine... yo-- */
== P_DANCTI IF ~~ THEN @91238 /* No dispones de mucho tiempo, Ardusk... no podrás vencer en la lucha que pretendes llevar a cabo. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91239 /* ¡Eso está por verse! */
== P_CELIN IF ~~ THEN @91240 /* Amor mío... has cambiado. Lo noto en tus ojos... */
== P_CELIN IF ~~ THEN @91241 /* Carecen del brillo que una vez portaron bajo los rayos áureos de Tethyr. */
== P_CELIN IF ~~ THEN @91242 /* Puedo... sentir una ira fulgurante en tu corazón. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91243 /* Eso no importa, Celine... en cuanto vengan a buscarte, lucharé contra ellos... los mataré a todos si es necesario. */
== P_CELIN IF ~~ THEN @91244 /* No puedes, Dusk... El demonio tiene razón. No lucharás contra las fuerzas de Mielikki. No lo permitiré. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91245 /* ¡¿Q-qué?! */
== P_CELIN IF ~~ THEN @91246 /* Has recorrido un largo camino de violencia, esposo mío... ¿por qué lo has hecho? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91247 /* Lo hice por ti, Celine... He vengado tu muerte... He asesinado a aquellos que osaron separarte de mí. */
== P_CELIN IF ~~ THEN @91248/* ¿A qué costo, Dusk? En el proceso... has perdido a tu corazón. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91249 /* ¡Nunca tuve corazón! No desde el día en que te perdí. Nada tenía sentido... sólo la venganza. */
== P_CELIN IF ~~ THEN @91250 /* Nunca quise esto para ti, Dusk... Di mi vida por ti... no para que te sumieras en las sombras... sino para que vivieras. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91251 /* ¿Qué es la vida sin ti? No tiene sentido. Al menos, destruyendo a esos magos logramos lo que una vez, tú y yo, nos propusimos. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91252 /* Trajimos la paz... evitamos que Velsharún resurgiera.  */
== P_CELIN IF ~~ THEN @91253 /* Lo sé... es por ello que aún hay esperanza para ti. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91254 /* ¿Esperanza?  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91255 /* ¿De qué sirve la esperanza, Celine? No es más que una ilusión para los tontos.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91256/* La esperanza no me sirvió a la hora de destruir a Darvin y sus secuaces...  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91257 /* No... fue el miedo... y sólo el miedo hará que un día te saque del mundo de los muertos y te traiga a mi lado.  */
== P_CELIN IF ~~ THEN @91258 /* La ira... te ha consumido... */
== P_CELIN IF ~~ THEN @91259 /* Rezaré por tu alma, esposo mío... */
== P_CELIN IF ~~ THEN @91260 /* Rezaré para que recuperes el camino de la bondad y la justicia... */
== P_CELIN IF ~~ THEN @91261 /* El tiempo se me acaba... siento desaparecer de este plano. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91262 /* Celine... no...  */
END


I_C_T P_CELIN 1 P_Dusk_CELIN_1
== P_CELIN IF ~~ THEN @9122 /* Estás... cambiado... Has envejecido... ¿cuántos años han pasado? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9123 /* Celine... yo... */
== P_CELIN IF ~~ THEN @9124 /* No llores, Ardusk... presiento... que no tengo mucho tiempo. */
== P_MATUT IF ~~ THEN @9125 /* *carraspeo* Es verdad, Dusk... Michelson ha canalizado el poder del símbolo de Velsharún para traer a Celine durante unos minutos. */
== P_MATUT IF ~~ THEN @9126 /* Lamento... lamento que no pueda ser por más tiempo... */
== P_CELIN IF ~~ THEN @9127 /* Ahora comprendo... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9128 /* Mathyus... de seguro hay algo que se pueda hacer al respecto. ¡Debe haber alguna forma! */
== P_CELIN IF ~~ THEN @9129 /* Ardusk... está bien... no tenemos mucho tiempo... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91210 /* Celine... lo lamento... lamento no haberte podido salvar... */
== P_CELIN IF ~~ THEN @91211 /* Dusk... es hora de que dejes de culparte de lo que pasó. */
== P_CELIN IF ~~ THEN @91212 /* Morir... fue una decisión egoísta de mi parte. Fue por ello que usé toda mi voluntad... para clamar tu nombre en las sombras de la Trinidad. */
== P_CELIN IF ~~ THEN @91213 /* No podía dejar que entregaras tu alma a las fuerzas de la Cripta Olvidada por mí... */
== P_CELIN IF ~~ THEN @91214 /* Estás vivo... y eso es lo que importa. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91215 /* Yo... he hecho cosas terribles... Mi ira... me ha cegado... he transitado el camino de la venganza durante tanto tiempo... */
== P_CELIN IF ~~ THEN @91216 /* Pero gracias a <CHARNAME> has salido de las sombras. Has honrado a tus hermanos caídos de Cormyr y llevado con honor el emblema de Shilmista en tu corazón. */
== P_CELIN IF ~~ THEN @91217 /* Tu familia, tus amigos, tu nación y yo... estamos orgullosos de ti. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91218 /* Celine... te extraño tanto... veo tus ojos en las estrellas durante la noche y el fulgor de tus cabellos en el sol durante el día. */
== P_CELIN IF ~~ THEN @91219 /* Mi ausencia no debe darte tristeza, Ardusk... puesto a que te espero en la Arboleda del Unicornio, el hogar que Nuestra Señora del Bosque ha creado para nosotros. */
== P_CELIN IF ~~ THEN @91220 /* Para mí, esperarte será sólo un instante... para ti, el resto de tu vida. */
== P_CELIN IF ~~ THEN @91221 /* Vive, Dusk, vive dignamente... ayuda a <CHARNAME> y salva a los elfos de Irenicus... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91222 /* Lo haré, Celine... Por Cormyr, por Shilmista, por Athkatla. Por ti... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91223 /* Espera por mí, Celine... algún día... volveré a casa. */
== P_CELIN IF ~~ THEN @91224 /* Lo sé, Ardusk... nuestro amor es eterno. Que Mielikki proteja tu alma y tu corazón. */
END
