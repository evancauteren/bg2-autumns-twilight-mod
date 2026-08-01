// Vienxay

// Dusk Neutral
CHAIN
IF ~InParty("X3Vie")
See("X3Vie")
!StateCheck("X3Vie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskVienxay","GLOBAL",0)~ THEN BX3Vie P_DuskVienxay
@11100459 /* Ugh, I do not understand why <CHARNAME> would ever bring a Wizard Slayer into the party. It is so irritating. */
DO ~SetGlobal("P_DuskVienxay","GLOBAL",1)~
== P_BDusk @11100460 /* You know I can hear you, Vienxay, right? */
== BX3Vie @11100461 /* That was my intention. I do not like you. I do not trust you. */
== P_BDusk @11100462 /* You have no reason to fear me, I have nothing against you. My strength is here to protect <CHARNAME> and his own. */
== BX3Vie @11100463 /* I do not need your protection, human. */
== P_BDusk @11100464 /* I know you don't. You are an elf of great skill, why would you need me? Even so, if anyone comes trying to hurt you, I will be there to prevent it. */
== BX3Vie @11100465 /* Hrmph. At least you are capable of recognizing my talent. Perhaps you are not so irritating after all. */
EXIT

// Dusk Good 1
CHAIN
IF ~InParty("X3Vie")
See("X3Vie")
!StateCheck("X3Vie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskGVienxay","GLOBAL",0)~ THEN BX3Vie P_DuskGVienxay
@11100466 /* If you were irritating before, you are even more so now. At least you wield greater power after absorbing the strength of the orb. */
DO ~SetGlobal("P_DuskGVienxay","GLOBAL",1)~
== P_BDusk @11100467 /* I do not know whether to take that as a compliment. Truth is, I have never felt better, Vienxay. */
== BX3Vie @11100468 /* You strive to imitate the elves, but you will never be like them, human. It matters not if you have adopted greater power from Mielikki or whoever it was. */
== P_BDusk @11100469 /* I am not trying to be an elf, Vienxay. But my respect for them is deep, even for you. You have the capacity to be better, and I know you know it. When the opportunity arises, I know you will do the right thing. */
== BX3Vie @11100470 /* Hrmph. Get away from me, will you? This conversation is over. */
EXIT

// Dusk Good 2
CHAIN
IF ~InParty("X3Vie")
See("X3Vie")
!StateCheck("X3Vie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Alignment("X3Vie",NEUTRAL)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskGVienxay","GLOBAL",1)~ THEN BX3Vie P_DuskGVienxay2
@11100471 /* Stop smiling at me, Dusk. It is already uncomfortable. */
DO ~SetGlobal("P_DuskGVienxay","GLOBAL",2)~
== P_BDusk @11100472 /* Oh, my apologies, my friend. But you must admit that you have changed. */
== BX3Vie @11100473 /* What do you mean by that? */
== P_BDusk @11100474 /* You did the right thing for your people, even without expecting anything in return. That is a display of true character. I knew you had it in you. */
== BX3Vie @11100475 /* I suppose you were right, is that what you wanted to hear, Dusk? */
== P_BDusk @11100476 /* No, no. I only wanted to tell you that I am proud of you. I do not know if your conflict with your people will ever be fully resolved, but if we are speaking of families, <CHARNAME> and the rest of us count among your own now. */
== BX3Vie @11100477 /* Hrmph. Fine comfort that is. But... thank you, Dusk. */
EXIT

// Dusk Evil
CHAIN
IF ~InParty("X3Vie")
See("X3Vie")
!StateCheck("X3Vie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskVienxay","GLOBAL",1)
Global("P_DuskEVienxay","GLOBAL",0)~ THEN BX3Vie P_DuskEVienxay
@11100478 /* You have made the right choice, Dusk. Seizing the power that was offered to you is something few would dare to do, and you have been successful in your endeavor. */
DO ~SetGlobal("P_DuskEVienxay","GLOBAL",1)~
== P_BDusk @11100479 /* I know, Vienxay. With this power, our path to victory will be easier. */
== BX3Vie @11100480 /* Our? */
== P_BDusk @11100481 /* *smirks* Do you not have a goal in mind, sorceress? I will help you achieve it. Just tell me who your enemies are, and I shall pierce them with my sword. */
== BX3Vie @11100482 /* I do not need you to face my enemies, human. Though your offer, I must say, sounds tempting. */
== P_BDusk @11100483 /* I am an agent of vengeance, Vienxay. When <CHARNAME> no longer needs me, do not hesitate to turn to me if you have something in mind. */
== BX3Vie @11100484 /* I shall think about it. */

EXIT

// Fall 1
CHAIN
IF ~InParty("X3Vie")
See("X3Vie")
!StateCheck("X3Vie",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallVienxay1","GLOBAL",0)~ THEN BX3Vie P_FallVienxay1
@11100485 /* Your dress is of a sublime quality, half-blood. I cannot fathom how it fell into your hands. Certainly, some are lucky because chance is blind, deaf, and evidently, has very poor taste when choosing whom to favor. */
DO ~SetGlobal("P_FallVienxay1","GLOBAL",1)~
== P_BFall @11100486 /* I have no intention of feeding your hatred or your ego, Vienxay. Aim your words elsewhere. */
== BX3Vie @11100487 /* Hrmph. As expected: A pretty wrapping that perfectly camouflages a dull, predictable essence completely devoid of nuance. */
== P_BFall @11100488 /* Whatever. */

EXIT


// Alendir 
CHAIN
IF ~InParty("X3Vie")
See("X3Vie")
See("P_Alen")
!StateCheck("X3Vie",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenVienxay","GLOBAL",0)
OR (3)
!AreaCheck("P_FA3B")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR1")~ THEN BX3Vie P_AlenVienxay
@11100489 /* Do you not miss your home, old man? I know Evereska is not remotely as glorious as Evermeet, but it is still far better than these dusty human lands. */
DO ~SetGlobal("P_AlenVienxay","GLOBAL",1)~
== P_BAlen @11100490 /* Evereska is already part of my past, child. My memories of it are just that—memories. */
== BX3Vie @11100491 /* And what is your purpose then? Why be an elf of Cormanthyr in a world as wretched as this? */
== P_BAlen @11100492 /* That I have yet to discover. Mystra brought me back to life, but she has given me no clues as to why. */
== BX3Vie @11100493 /* Hrmph. That must be a nuisance. */
== P_BAlen @11100494 /* I am not so sure. As the days pass, uncertainties are eased by the expectation of tomorrow. I suppose... I am a bit more optimistic than before. */
== P_BAlen @11100495 /* But do not tell anyone. */
== BX3Vie @11100496 /* Ugh, why would I? Your affairs are your own business. */
EXIT

// Cho'Nuja

CHAIN
IF ~InParty("X3Vie")
See("X3Vie")
See("P_Chon")
!StateCheck("X3Vie",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonVienxay","GLOBAL",0)~ THEN BX3Vie P_ChonVienxay
@11100497 /* Ugh, have you ever considered using soap, lizardman? Your swamp stench is unbearable. */
DO ~SetGlobal("P_ChonVienxay","GLOBAL",1)~
== P_BChon @11100498 /* Soap? Sounds delicious. Do you have some of that, female? */
== BX3Vie @11100499 /* I do, but it is not for eating! It is used for bathing. */
== P_BChon @11100500 /* We have no need for baths. Being submerged in the depths of a lagoon or even a river is more than enough. We enjoy water very much. */
== BX3Vie @11100501 /* Well, it certainly doesn't show, because you reek. */
== P_BChon @11100502 /* My natural scent is my pride. I was respected in Dreach-naga both militarily and prolifically. Regrettably, the war against the spiders did not allow me the mating ritual to extend my lineage. But it is never too late. */
== BX3Vie @11100503 /* How did we end up talking about this? Please, get away from me. */
== P_BChon @11100504 /* Did I say something wrong? */
EXIT




