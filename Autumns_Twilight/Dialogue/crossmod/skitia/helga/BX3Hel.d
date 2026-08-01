// Helga

// Dusk Neutral
CHAIN
IF ~InParty("X3Hel")
See("X3Hel")
!StateCheck("X3Hel",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskHelga","GLOBAL",0)~ THEN P_BDusk P_DuskHelga
@11100303 /* My lady, you shouldn't charge so hastily into the front lines. At least allow me to cover you. I wouldn't want you to— */
DO ~SetGlobal("P_DuskHelga","GLOBAL",1)~
== BX3Hel @11100304 /* Ah, boy, do you dare order me around? Don't make me teach you a lesson. */
== P_BDusk @11100305 /* Oh, it was not my intention, I only— */
== BX3Hel @11100306 /* Aye, aye, Dusk. I'm just teasing you. You have my respect for how you wield your weapons. Seeing your sword dyed in the enemy's blood is worthy of my respect. */
== P_BDusk @11100307 /* T-thank you, I suppose. */
== BX3Hel @11100308 /* And don't call me 'lady'! Helga is my name. */
== P_BDusk @11100529 /* As you wish, la— Er, I mean, Helga. */
EXIT

// Dusk Good
CHAIN
IF ~InParty("X3Hel")
See("X3Hel")
!StateCheck("X3Hel",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskGHelga","GLOBAL",0)~ THEN P_BDusk P_DuskGHelga
@11100309 /* Why are you narrowing your eyes, Helga? Is something wrong? */
DO ~SetGlobal("P_DuskGHelga","GLOBAL",1)~
== BX3Hel @11100310 /* Hm. You can't fool me, Dusk. */
== P_BDusk @11100311 /* What do you mean? */
== BX3Hel @11100312 /* All that change, those lights you emanate from time to time. You try to make it seem like you are a kind-hearted creature, but you are still the same warrior you've always been. */
== P_BDusk @11100313 /* Well, it's not that I'm trying to trick anyone. In essence, I remain the same as always. */
== BX3Hel @11100314 /* Ah, so you admit you are the same Wizard Slayer you've always been. */
== BX3Hel @11100315 /* I can see how much you enjoy it when you wield your weapons, lad. */
== P_BDusk @11100316 /* Ehm. I admit that sometimes I enjoy fighting, but I do it to protect those I hold dear. That includes you, Helga. */
== BX3Hel @11100318 /* Hmpf. You can keep saying you fight for the virtue of goodness, but I know that deep down you do it for the pleasure that comes from the glory of a good battle. */
== P_BDusk @11100317 /* *smiles* Perhaps. I hadn't thought about it that way. */

EXIT

// Dusk Evil
CHAIN
IF ~InParty("X3Hel")
See("X3Hel")
!StateCheck("X3Hel",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskHelga","GLOBAL",1)
Global("P_DuskEHelga","GLOBAL",0)~ THEN BX3Hel P_DuskEHelga
@11100319 /* Aye, scarlet suits you well, Dusk. */
DO ~SetGlobal("P_DuskEHelga","GLOBAL",1)~
== P_BDusk @11100320 /* What are you saying? */
== BX3Hel @11100321 /* Nothing. Just thinking out loud. Whatever you did with that scarlet orb you sometimes mention, it has resulted in a glorious change. */
== P_BDusk @11100322 /* Not many would agree with your thinking. */
== BX3Hel @11100323 /* The glory of battle is all that matters. Have you sacrificed a few years of your life for what you are now? It has been well worth it. */
== P_BDusk @11100324 /* Really? I'm not sure what the 'deal' I made with Pandemonium is like, but perhaps, after all, those years don't matter. */
== P_BDusk @11100325 /* Maybe at the end of all things, I will end up like Danctian. */
== BX3Hel @11100326 /* Who? Do you mean that shadowy thing in Aran's warehouses? */
== P_BDusk @11100327 /* Yes. What would you do if it came to that, Helga? */
== BX3Hel @11100328 /* Shadow demons are not to my liking, that's for sure. But if you force me to fight you under those circumstances, I would do so to the death. */
== P_BDusk @11100329 /* I could expect nothing less from you, Helga. */

EXIT

// Fall 1
CHAIN
IF ~InParty("X3Hel")
See("X3Hel")
!StateCheck("X3Hel",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallHelga1","GLOBAL",0)~ THEN BX3Hel P_FallHelga1
@11100330 /* Lass Fall, how have you trained your wolves? I must admit they are good combatants. */
DO ~SetGlobal("P_FallHelga1","GLOBAL",1)~
== P_BFall @11100331 /* Train them? Well, the truth is that whenever I could, I would summon them from the Astral Plane. */
== P_BFall @11100332 /* Mostly just to play or greet them, but I admit that sometimes they partook in my travels through the dangerous forests surrounding Brost. */
== BX3Hel @11100333 /* I am no great lover of furry things, but I can make an exception for your creatures. Fighting by their side is a fine advantage on the battlefield. */
== P_BFall @11100334 /* I think they enjoy your company too. */
== BX3Hel @11100335 /* They enjoy fighting by my side, of that I am certain. */

EXIT

// Alendir 
CHAIN
IF ~InParty("X3Hel")
See("X3Hel")
!StateCheck("X3Hel",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenHelga","GLOBAL",0)
OR (3)
!AreaCheck("P_FA3B")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR1")~ THEN BX3Hel P_AlenHelga
@11100336 /* You looked better before, snowy. Aye, definitely. */
DO ~SetGlobal("P_AlenHelga","GLOBAL",1)~
== P_BAlen @11100337 /* What did you say, dwarf? */
== BX3Hel @11100338 /* I mean back when you had wrinkles. You might be rejuvenated by that witch in fine clothes, but you were better off before. */
== P_BAlen @11100339 /* I can somewhat understand your words. In the past, I wielded greater power. */
== BX3Hel @11100340 /* I don't mean that. You were more... pleasing to the eyes before. Old, wise, and confident. */
== P_BAlen @11100341 /* T-that... I did not expect. */
== BX3Hel @11100342 /* Are you blushing? And here I thought only ice ran through your veins, old man. */
EXIT


// Cho'Nuja

CHAIN
IF ~InParty("X3Hel")
See("X3Hel")
!StateCheck("X3Hel",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonHelga","GLOBAL",0)~ THEN BX3Hel P_ChonHelga
@11100343 /* You are a formidable creature, scaly. Seldom have I seen a warrior use his own body to dismember his opponents. */
DO ~SetGlobal("P_ChonHelga","GLOBAL",1)~
== P_BChon @11100344 /* Thank you, my lady. Being a high-class warrior has been my privilege as a member of the Jon draconic clan. */
== BX3Hel @11100345 /* Aye, I have no idea what you're talking about. */
== P_BChon @11100346 /* Only the strongest soldiers rise to the very top in Dreach-naga. */
== BX3Hel @11100347 /* I think I understand. And I believe you understand the glory of fighting against strong enemies. */
== P_BChon @11100348 /* Indeed, my lady. I have seen you fight, and it is no exaggeration to declare that you would have been a useful member in the ranks of the draconic champions. */
== BX3Hel @11100349 /* Aye, I suppose I can drink to that. */
EXIT



