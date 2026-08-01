// Kale

// Dusk Neutral
CHAIN
IF ~InParty("X3Kal")
See("X3Kal")
!StateCheck("X3Kal",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskKale","GLOBAL",0)~ THEN P_BDusk P_DuskKale
@11100350 /* How many times must I apologize, Kale? I've told you, it was an accident. */
DO ~SetGlobal("P_DuskKale","GLOBAL",1)~
== BX3Kal @11100351 /* Why don't you admit that you don't even consider halflings, Dusk? It's not the first time a long-legs ignores my presence, you know? */
== P_BDusk @11100352 /* Well, that might be due to your stealth, my good friend. */
== BX3Kal @11100353 /* Don't try to sweet-talk me, boy. I'm still waiting for you to make up for your clumsiness. */
== P_BDusk @11100354 /* *sigh* All right, Kale. Perhaps we can work something out at the tavern next time we visit. */
== BX3Kal @11100355 /* Now that sounds good to me. */
EXIT

// Dusk Good
CHAIN
IF ~InParty("X3Kal")
See("X3Kal")
!StateCheck("X3Kal",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskGKale","GLOBAL",0)~ THEN BX3Kal P_DuskGKale
@11100356 /* So... Dusk, you don't drink ale anymore? I must say, that is a disappointment. */
DO ~SetGlobal("P_DuskGKale","GLOBAL",1)~
== P_BDusk @11100357 /* Why do you say that? I still drink. */
== BX3Kal @11100358 /* Come on, it's obvious you've changed drastically. Your love for trees has made you more... self-righteous. */
== P_BDusk @11100359 /* Well, I might not drink as much as I used to. I try to keep my body as healthy as possible. */
== BX3Kal @11100360 /* You were more fun before, you know? */
== P_BDusk @11100361 /* You only say that because you want me to keep paying for your ale. */
== BX3Kal @11100362 /* You caught me. */

EXIT

// Dusk Evil
CHAIN
IF ~InParty("X3Kal")
See("X3Kal")
!StateCheck("X3Kal",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskKale","GLOBAL",1)
Global("P_DuskEKale","GLOBAL",0)~ THEN BX3Kal P_DuskEKale
@11100363 /* So... Dusk, you don't drink ale anymore? I must say, that is a disappointment. */
DO ~SetGlobal("P_DuskEKale","GLOBAL",1)~
== P_BDusk @11100364 /* I am not going to pay for your vices, halfling. */
== BX3Kal @11100365 /* Hey, that's offensive. Not even one last time? */
== P_BDusk @11100366 /* Stop pestering me. */
== BX3Kal @11100367 /* Fine, fine. */

EXIT

// Fall 1
CHAIN
IF ~InParty("X3Kal")
See("X3Kal")
!StateCheck("X3Kal",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallKale1","GLOBAL",0)~ THEN BX3Kal P_FallKale1
@11100368 /* By Tymora, girl, keep your wolves under control. */
DO ~SetGlobal("P_FallKale1","GLOBAL",1)~
== P_BFall @11100369 /* What's wrong, Kale? You have no reason to fear my siblings. */
== BX3Kal @11100370 /* Your "siblings" are looking at me with a deep craving for tasty halfling meat. */
== P_BFall @11100371 /* How do you know your own flesh is tasty, Kale? */
== BX3Kal @11100372 /* Good point. I assume your furry friends have good taste, and the fact that they watch me so closely is proof of it. */
== P_BFall @11100373 /* I can assure you, Kale. Neither Daren nor Sinna has any interest in eating you. */
== BX3Kal @11100374 /* They'd better not. I wouldn't want to have to slap them across the muzzle, you know? */
== P_BFall @11100375 /* Nobody wants that. */

EXIT

// Cho'Nuja

CHAIN
IF ~InParty("X3Kal")
See("X3Kal")
See("P_Chon")
!StateCheck("X3Kal",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonKale","GLOBAL",0)~ THEN BX3Kal P_ChonKale
@11100376 /* So... what's it like going through life naked, Cho? */
DO ~SetGlobal("P_ChonKale","GLOBAL",1)~
== P_BChon @11100377 /* ... */
== BX3Kal @11100378 /* Hey, I'm talking to you. */
== P_BChon @11100379 /* Hm? Oh, I am sorry, little one. *bends down* */
== P_BChon @11100380 /* Were you saying something? */
== BX3Kal @11100381 /* *sigh* Never mind. What you do is highly offensive. */
== P_BChon @11100382 /* Offensive? I long for a good combat. Do not worry, little furry one. I shall take the front line. */
== BX3Kal @11100383 /* Nobody denies that, General. */
EXIT

// Alendir 
CHAIN
IF ~InParty("X3Kal")
See("X3Kal")
See("P_Alen")
!StateCheck("X3Kal",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenKale","GLOBAL",0)
OR (3)
!AreaCheck("P_FA3B")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR1")~ THEN BX3Kal P_AlenKale
@11100384 /* So... why do you admire ice so much, Alendir? It's boring, I don't see the appeal. */
DO ~SetGlobal("P_AlenKale","GLOBAL",1)~
== P_BAlen @11100385 /* I have no time for your foolishness, halfling. */
== BX3Kal @11100386 /* Really? But you've reclaimed many years of life. I'd say time is the one thing you have plenty of. */
== P_BAlen @11100387 /* *sigh* Well, I may have time, but I do not wish to waste it on nonsense. */
== BX3Kal @11100388 /* Oh, my bad. I guess having a shrine to a giant snowman makes perfect sense, doesn't it? */
== P_BAlen @11100389 /* My former self would have frozen your tongue for your insolence, but I must admit that shrines and temples are no longer to my liking. */
== BX3Kal @11100390 /* My, and here I was hoping to exasperate you a little. */
== P_BAlen @11100391 /* What makes you think you have failed in your endeavor? */
EXIT


