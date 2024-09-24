// WILSON test

CHAIN
IF ~
InParty("Wilson")
See("Wilson")
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskWilson1","GLOBAL",0)~ THEN P_BDusk P_DuskWilson1
@9620 /* *mira a Wilson con desconfianza* ¿Qué sucede, mi peludo amigo? */
DO ~SetGlobal("P_DuskWilson1","GLOBAL",1)~
== BWILSON @9621 /* (Bufido, bufido) */
== P_BDusk @9622 /* ¡Lo sabía! Quieres mis galletas. */
== BWILSON @9623 /* (Gruñido, lamento) */
== P_BDusk @9624 /* De acuerdo, de acuerdo. Aquí tienes. No tienes por qué poner esa cara de perro mojado. */
== BWILSON @9625 /* (Bufido) (Wilson engulle las galletas con entusiasmo) */
== P_BDusk @9626 /* *suspiro* Pero... no te las comas todas... (Rayos...) */
EXIT


