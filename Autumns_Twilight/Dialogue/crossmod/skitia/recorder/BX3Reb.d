// Recorder

// Dusk Neutral
CHAIN
IF ~InParty("X3Reb")
See("X3Reb")
!StateCheck("X3Reb",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskRecorder","GLOBAL",0)~ THEN P_BDusk P_DuskRecorder
@11100392 /* You have very nice handwriting, Recorder. */
DO ~SetGlobal("P_DuskRecorder","GLOBAL",1)~
== BX3Reb @11100393 /* Oh, thank you, Dusk. I suppose practice makes perfect. */
== P_BDusk @11100394 /* Yes. Well, I cannot say the same for myself. Sometimes I cannot even understand my own scrawl. */
== BX3Reb @11100395 /* Yes, I have noticed that you write. Especially when <CHARNAME> needs to interact with vendors and merchants. Why? I don't picture you as a mere merchant. */
== P_BDusk @11100396 /* Why not? It doesn't seem that complicated. */
== BX3Reb @11100397 /* That is not what I meant. Your combat skills are exceptional. While your trading skills... well, to be fair, I have yet to see them. */
== P_BDusk @11100398 /* *clears throat* Well, I have thought about selling magical artifacts. Perhaps scrolls. I have knowledge of magic despite not using it, you know? I just need to practice my lines and pitches. */
== BX3Reb @11100399 /* Have you come up with anything? You can practice with me, if you like. */
== P_BDusk @11100400 /* That is very kind of you. Look, how does this sound for a start? */
== BX3Reb @11100401 /* Hm. Perhaps we should work on your handwriting first. It is barely legible what you have written there. */
== P_BDusk @11100402 /* *scratches head* All right, all right. We will do it your way. */
EXIT

// Dusk Good
CHAIN
IF ~InParty("X3Reb")
See("X3Reb")
!StateCheck("X3Reb",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskGRecorder","GLOBAL",0)~ THEN BX3Reb P_DuskGRecorder
@11100403 /* Dusk, may I ask you something personal? */
DO ~SetGlobal("P_DuskGRecorder","GLOBAL",1)~
== P_BDusk @11100404 /* Of course, my friend. Feel free to ask whatever you wish. */
== BX3Reb @11100405 /* What did you feel when you took the power of Sornhil's orb? It seemed like a dangerous moment. */
== P_BDusk @11100406 /* Perhaps it was dangerous. Truth is, Michelson facilitated the process thanks to the purification he achieved on the orb. */
== P_BDusk @11100407 /* Sornhil intended to set a trap with the object since it appeared to be cursed. Though I am not so sure about the latter. */
== P_BDusk @11100408 /* But you ask me what I felt. It is a bit complicated to put into words, but I will try. */
== P_BDusk @11100409 /* Many memories rushed back to me when my eyes rested upon the emerald light. I remember walking through the forest of Elbereth and the zephyr on my cheeks. */
== P_BDusk @11100410 /* The crisp air in my hair and the scent of wet earth filling my chest. I also remember Cormyr, and I saw myself as a child again, running through my father's meadows. */
== P_BDusk @11100411 /* But most importantly... my thirst for vengeance slowly dissipating, and my mind clearing because of it. */
== P_BDusk @11100412 /* By the time the process ended, with my perception of time already somewhat hazy, I ended up becoming who I am now. */
== P_BDusk @11100413 /* I hope I've made myself clear, Recorder. And I hope I have answered your question. */
== BX3Reb @11100414 /* Thank you, Dusk. I truly appreciate you sharing that moment with me. */ 

EXIT

// Dusk Evil
CHAIN
IF ~InParty("X3Reb")
See("X3Reb")
!StateCheck("X3Reb",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskRecorder","GLOBAL",1)
Global("P_DuskERecorder","GLOBAL",0)~ THEN BX3Reb P_DuskERecorder
@11100415 /* Dusk, may I ask you something personal? */
DO ~SetGlobal("P_DuskERecorder","GLOBAL",1)~
== P_BDusk @11100416 /* Speak. */
== BX3Reb @11100417 /* What did you feel when you took the power of Sornhil's orb? It seemed like a dangerous moment. */
== P_BDusk @11100418 /* Why the blazes do you want to know that? */
== BX3Reb @11100419 /* I would like to know. None of us knows what you saw or experienced at that moment. */
== P_BDusk @11100420 /* I saw Pandemonium and everything that comes with it. I saw power, and I grasped it in my hands. */
== P_BDusk @11100421 /* As a result, you see the man before you now. An agent of vengeance who will strike with the full weight of his sword wherever my heart or <CHARNAME> command. */
== BX3Reb @11100422 /* W-well, it looked like it was something more complex than that. You seemed frightened. */
== P_BDusk @11100423 /* Perhaps the man I once was. Before, I was weak, and the weak let fear invade their body and mind. */
== P_BDusk @11100424 /* That ended when my years in Pandemonium came to a close. */
== BX3Reb @11100425 /* Years? But you were only focused on the Scarlet Orb for a brief moment. */
== P_BDusk @11100426 /* Ha. This bores me. Let us move on. I am tired of talking. */

EXIT

// Fall 1
CHAIN
IF ~InParty("X3Reb")
See("X3Reb")
!StateCheck("X3Reb",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallRecorder1","GLOBAL",0)~ THEN BX3Reb P_FallRecorder1
@11100427 /* I must say, Fall, that Gustav does not feel comfortable at all around Daren or Sinna. Especially Daren. Well, definitely not Sinna either. */
DO ~SetGlobal("P_FallRecorder1","GLOBAL",1)~
== P_BFall @11100428 /* Why? My furry siblings won't do anything to Gustav. */
== BX3Reb @11100429 /* I am not so sure about that. I have seen when a predator is hungry, Fall! */
== P_BFall @11100430 /* To be fair, Daren and Sinna are always hungry. But they don't eat their friends! */
== BX3Reb @11100431 /* Do you honestly believe your wolves consider Gustav a friend? */
== P_BFall @11100432 /* Of course, Recorder. Why wouldn't they? */
== BX3Reb @11100433 /* Did you not listen to my point about a predator's hunger? */
== BX3Reb @11100434 /* Well, never mind. I trust your commands will be more than enough for them to remain good and friendly toward Gustav, yes? */
== P_BFall @11100435 /* Naturally. After all, you are speaking to the Beast Mistress. */
== BX3Reb @11100436 /* ... */

EXIT

// Alendir 
CHAIN
IF ~InParty("X3Reb")
See("X3Reb")
!StateCheck("X3Reb",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenRecorder","GLOBAL",0)
OR (3)
!AreaCheck("P_FA3B")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR1")~ THEN BX3Reb P_AlenRecorder
@11100437 /* Alendir, may I ask you something? */
DO ~SetGlobal("P_AlenRecorder","GLOBAL",1)~
== P_BAlen @11100438 /* *sigh* Tell me, child. What is it you want to know? */
== BX3Reb @11100439 /* What was it like to die? */
== P_BAlen @11100440 /* ... */
== BX3Reb @11100441 /* Oh, I am sorry if I was too blunt about it. I did not mean to— */
== P_BAlen @11100442 /* Why do you want to know something so macabre? Gnomes, one never knows what they will come up with. */
== BX3Reb @11100443 /* I want to write about it. It strikes me as a story worthy of being told. */
== P_BAlen @11100444 /* The part where I am crushed by a golem? It did not seem very worthy to me. */
== BX3Reb @11100445 /* You may try to act cynical, Alendir, but I know you sacrificed your life to help <CHARNAME> and Fall in the clash against Icelock. */
== BX3Reb @11100446 /* Whether you like it or not, your death was heroic. */
== P_BAlen @11100447 /* I have no interest in being a hero, little one. What I would be interested in right now is a good campfire and a comfortable chair to read one of my books from Frostfell. */
== BX3Reb @11100448 /* All right... */
== P_BAlen @11100449 /* But... we shall speak another time about whatever you wish. Now go bother someone else. */
== BX3Reb @11100450 /* I'll hold you to your word, old man. */
EXIT


// Cho'Nuja

CHAIN
IF ~InParty("X3Reb")
See("X3Reb")
!StateCheck("X3Reb",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonRecorder","GLOBAL",0)~ THEN BX3Reb P_ChonRecorder
@11100451 /* Cho! Gustav is not here to satisfy your strange voracity, you know? */
DO ~SetGlobal("P_ChonRecorder","GLOBAL",1)~
== P_BChon @11100452 /* Hm? What is a Gustav? */
== BX3Reb @11100453 /* My ferret! I have seen how you look at him. */
== P_BChon @11100454 /* Ah, the furry rodent. I have no interest in eating him, little elf. */
== BX3Reb @11100455 /* I am not an elf! I am a gnome. */
== P_BChon @11100456 /* I ask your forgiveness, honestly all of you look alike to me. I will get used to it. */
== P_BChon @11100457 /* But rest assured, my gnome friend, that I do not intend to feed on your Gustav. */
== BX3Reb @11100458 /* Well, I suppose I will take your word for it. */
EXIT




