// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallDorn1","GLOBAL",0)~ THEN BDORN P_FallDorn1
@9060 /* Será mejor que alejes a tus sucios canes de mí, media-elfa. No soportaré que estén husmeando en mis cosas. */
DO ~SetGlobal("P_FallDorn1","GLOBAL",1)~
== P_BFall @9061 /* ¡Dorn! No te atrevas. Ellos no están conscientes de que te molesta que hurgen tus cosas (bueno, puede que sí lo estén, pero eso no es motivo para estar tan molesto). */
== BDORN @9062 /* Te lo advierto. La próxima vez que los vea cerca, los cercenaré con mi espada. */
== P_BFall @9063 /* Sabes que son convocaciones, ¿no? Matarlos aquí los regenerará en el Plano Astral. */
== BDORN @9064 /* Hmpf. Eso no me importa, niña. Eso no cambiará que su sangre estará en el filo de mi espada. */
== P_BFall @9065 /* Eres... absolutamente desagradable, semiorco. Si no fuera por <CHARNAME>... hace tiempo que habría renegado de tu existencia. */
EXIT

// ToB

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallToBDorn1","GLOBAL",0)~ THEN BDORN25 P_FallToBDorn1
@9066 /* Ten cuidado con tus virotes, niña. No soportaré que incrustes uno en mi armadura. Te costará la vida, te lo aseguro.  */
DO ~SetGlobal("P_FallToBDorn1","GLOBAL",1)~
== P_BFal25 @9067 /* ¡Por Imnescar, Dorn! ¿De qué hablas? Mi puntería es suprema (si he de apuntar, lo haré a tu cabeza). */
== BDORN25 @9068 /* Es sólo una advertencia. */
== P_BFal25 @9069 /* Ja... quizás deba dejar de protegerte a distancia. */
== BDORN25 @90610 /* No necesito de tu protección, estúpida. */
== P_BFal25 @90611 /* Ni tampoco necesito yo de tus amenazas. Si pasa lo que tanto temes, simplemente ven y avanza con tu espada... */
== BDORN25 @90612 /* No me tientes, media-elfa... */
== P_BFal25 @90613 /* Ni tú a mí, semiorco. */
EXIT

// Hexxat

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallHexxat1","GLOBAL",0)~ THEN BHEXXAT P_FallHexxat1
@90614 /* No, Fall... no me alimento de lobos. NO debes preocuparte por tus pulgosos amigos. */
DO ~SetGlobal("P_FallHexxat1","GLOBAL",1)~
== P_BFall @90615 /* Ehrm... ¿qué? No me preocupo por eso, Hexxat. Nunca asumiría que- */
== BHEXXAT @90616 /* He visto como decoras el lomo de Sinna con ajo. Sabes que eso no me afecta, ¿verdad? */
== P_BFall @90617 /* Oh, no tiene nada que ver contigo, compañera. Es sólo que... Ehm... (Rayos, no sabía que no servía para nada). */
== P_BFall @90618 /* Bueno, gracias por el consejo. Que tengas un buen día. Eh, digo, noche. */
== BHEXXAT @90619 /* *suspiro* */
EXIT

// ToB

CHAIN
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallToBHexxat1","GLOBAL",0)~ THEN BHEXXA25 P_FallToBHexxat1
@90620 /* Bueno, Fall. Al menos ya no adornas a tus cachorros con ajos ni les das de beber agua bendita. */
DO ~SetGlobal("P_FallToBHexxat1","GLOBAL",1)~
== P_BFal25 @90621 /* ¿Agua bendita? Yo nunca- */
== BHEXXA25 @90622 /* No te preocupes, eso significa que has aceptado que no me alimentaré de tus pulgosos, ¿verdad? */
== P_BFal25 @90623 /* Bien, eso es un alivio. ¡Quiero decir---! eh, yo nunca osaría hacer o decir algo así, Hexxat. Me ofende tu insinuación. */
== BHEXXA25 @90624 /* Claro, claro. */
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallNeera1","GLOBAL",0)~ THEN P_BFall P_FallNeera1
@90625 /* Neera, ¿alguna vez has pensado en ser una Alta Hechicera élfica? */
DO ~SetGlobal("P_FallNeera1","GLOBAL",1)~
== BNEERA @90626 /* ¡Oh, sí! No hay nada como dedicar toda tu vida a desentrañar la alta magia élfica. Es como si los elfos hubieran dicho: "Oye, tenemos siglos de vida, ¿por qué no los gastamos todos en estudiar magia?" */
== P_BFall @90627 /* Oh, veo que la idea no te cuadra del todo bien. */
== BNEERA @90628 /* ¡Pues no, Fall! Hay cosas más importantes que el estudio, ¿sabes? */
== P_BFall @90629 /* ¿Por ejemplo? */
== BNEERA @90630 /* Yo... ehm... ¡las fiestas! Hay que aprovechar esas oportunidades para generar un festejo, ¿no lo crees? */
== P_BFall @90631 /* Oh, en Imnescar teníamos fiestas. Cuando finalizaban las cosechas, los ancianos organizaban un gran festival. El festival de la fruta. ¿Te suena? */
== BNEERA @90632 /* La verdad es que no, Fall. Pero déjame adivinar... había mucha fruta para comer. */
== P_BFall @90633 /* ¡Sí! En especial manzanas. Aunque los duraznos no quedaban atrás. Peras. Naranjas. */
== BNEERA @90634 /* Esta conversación me está dando hambre. */
== P_BFall @90635 /* Oh, no te preocupes, Neera. Tengo aquí algunas provisiones. Espero que te gusten las-- */
== BNEERA @90636 /* Manzanas, ¿verdad? */
== P_BFall @90637 /* ¡Exacto! Eres muy perspicaz, ¿lo sabías? */
== BNEERA @90638 /* Oh, es un don. Y gracias por la fruta, Fall. */
EXIT



// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallNeeraToB1","GLOBAL",0)~ THEN P_BFal25 P_FallNeeraToB1
@90639 /* Neera, veo que has mejorado mucho en tus lanzamientos de conjuros. Ahora eres menos propensa a... accidentes. */
DO ~SetGlobal("P_FallNeeraToB1","GLOBAL",1)~
== BNEERA25 @90640 /* Oh, sí. La sabiduría llega con el tiempo, sabes. */
== P_BFal25 @90641 /* La experiencia de nuestros viajes, ¿no? Y yo que pensé que habrías estudiado un poco más el arte de la magia. */
== BNEERA25 @90642 /* ¿Para qué estudiar cuando uno tiene un talento nato, Fall? He mejorado, como bien dices. Genial, ¿no? */
== P_BFal25 @90643 /* Pues sí. Aunque... ¿estamos realmente a salvo de las oleadas salvajes de magia? */
== BNEERA25 @90644 /* ¿A qué te refieres? */
== P_BFal25 @90645 /* Ehm... *carraspeo* Me refiero a que si eres más poderosa... ¿no lo serán también las ocasionales oleadas salvajes? */
== BNEERA25 @90646 /* Bueno, Fall. No puedes tener todo fácil en esta vida, ¿sabes? *risita* ¡Sólo bromeo! Trataré de que eso no suceda. No creo que sea algo imposible de lograr. */
== P_BFal25 @90647 /* "Trataré" dices... bueno, eso me tranquiliza un poco más, supongo... */
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallRasaad1","GLOBAL",0)~ THEN P_BFall P_FallRasaad1
@90648 /* Rasaad, nuestras búsquedas están impulsadas por nuestras familias. ¿Cómo te enfrentas a la búsqueda del asesino de tu hermano? */
DO ~SetGlobal("P_FallRasaad1","GLOBAL",1)~
== BRASAAD @90649 /* Encuentro fuerza en la disciplina y la meditación, Fall.  */
== P_BFall @90650 /* ¿Aún si eso signifique realizar actos... cuestionables? No puedo juzgarte, Rasaad. Creo que yo haría lo mismo... */
== BRASAAD @90651 /* Entiendo perfectamente tu deseo de encontrar a tu madre. La conexión con nuestra familia es un lazo poderoso que nos impulsa a hacer cualquier cosa para descubrir la verdad. */
== P_BFall @90652 /* El amor, el apoyo y los lazos de sangre nos impulsan a seguir adelante, incluso en los momentos más difíciles.  */
== BRASAAD @90653 /* Las familias son... complicadas. Pero es en su ausencia que uno percibe lo bueno... y suele olvidar lo malo. Tal es el corazón del humano. */
== P_BFall @90654 /* El corazón del humano. Gracias por tus palabras, Rasaad. */
EXIT


// ToB

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallToBRasaad1","GLOBAL",0)~ THEN P_BFal25 P_FallToBRasaad1
@90655 /* Rasaad, ¿alguna vez has notado la similitud entre tus habilidades de combate y las de mis lobos? */
DO ~SetGlobal("P_FallToBRasaad1","GLOBAL",1)~
== BRASAA25 @90656 /* Ah, sí, lo he notado. Al igual que yo, los lobos confían en su cuerpo y en sus habilidades naturales para luchar. Es una forma de combate sin armas que requiere destreza y agilidad. */
== BRASAA25 @90657 /* Observar a Daren y Sinna en acción es impresionante: Son feroces, ágiles y utilizan sus garras y colmillos con precisión */
== P_BFal25 @90658 /* Instinto y ferocidad. */
== P_BFal25 @90659 /* La fuerza y la valentía no dependen solo de las armas o la magia, sino también de la habilidad innata que poseemos. */
== BRASAA25 @90660 /* Podemos aprovechar esa conexión y fortalecernos mutuamente en nuestras batallas. */
== P_BFal25 @90661 /* Sí, Rasaad, sigamos honrando esa conexión. */
EXIT




// Interjects Fall/Dorn
// Casamiento en la primera quest de Dorn

// Sobre matar civiles (Fall se irá de la party)
I_C_T DORNJ 5 P_FallEE_EVIL_Dorn2
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90662 /* No, esto no puede estar bien... */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90663 /* ¡No me uní a ti para esto! Espero... ¡espero que nuestros caminos no vuelvan a cruzarse! */ DO ~LeaveParty() EscapeArea()~
END

// Sobre matar civiles (Fall se irá de la party)
I_C_T DORNJ 6 P_FallEE_EVIL_Dorn3
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90662 /* No, esto no puede estar bien... */
== P_FallJ IF ~InParty("P_Fall") InMyArea("P_Fall") !StateCheck("P_Fall",CD_STATE_NOTVALID)~ THEN @90663 /* ¡No me uní a ti para esto! Espero... ¡espero que nuestros caminos no vuelvan a cruzarse! */ DO ~LeaveParty() EscapeArea()~
END
