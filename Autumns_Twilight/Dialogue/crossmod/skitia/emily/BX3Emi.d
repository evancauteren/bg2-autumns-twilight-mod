// Emily

// Dusk Neutral
CHAIN
IF ~InParty("X3Emi")
See("X3Emi")
!StateCheck("X3Emi",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskEmily","GLOBAL",0)~ THEN P_BDusk P_DuskEmily
@11100210 /* So, Emily. I've heard whispers that you come from a noble family, is that so? */
DO ~SetGlobal("P_DuskEmily","GLOBAL",1)~
== BX3EMI @11100211 /* Dusk, yes. Well, I suppose you could say that. Despite being 'illegitimate', I was raised in a noble environment. */
== P_BDusk @11100212 /* An environment that demands strictly proper behavior. */
== BX3EMI @11100213 /* Indeed. Even more so in my case due to my... background. But enough about that. You sound like you speak from experience, Dusk. */
== P_BDusk @11100214 /* Of course. I also come from a noble family. Though, I don't know if I was under a control as fierce as the one you endured, Emily. */
== P_BDusk @11100215 /* My relationship with my parents is also... complex, but not due to secrets or racial issues. */
== P_BDusk @11100216 /* While the Aldants were once a powerful and respected family in Cormyr, of late, decay has loomed over our house. */
== BX3EMI @11100217 /* Why? You were First Sword in the Purple Dragons. Isn't that a matter of family pride? */
== P_BDusk @11100218 /* *spits* Pride... Truth be told, I did it to get away from them. */
== P_BDusk @11100219 /* My parents loathe each other. Father is a useless sort, an amoeba dependent on his servants, while Mother does nothing but complain about everything and everyone, all the time. */
== P_BDusk @11100220 /* The army was an escape for me. */
== P_BDusk @11100221 /* Truth is... it's strange for me to talk about this, Emily. I suppose it's easier to speak with someone who might actually understand me. */
== BX3EMI @11100222 /* I understand. Though I... don't feel aversion toward my parents. Over time, I've managed to understand some of their decisions, even if I don't fully agree with them. But I understand them. */
== P_BDusk @11100223 /* Oh, Emily... I... don't feel aversion or hatred for my parents. Maybe it's anger. I don't know. */
== P_BDusk @11100224 /* Now that I look back at the past with some perspective, I'm beginning to accept, like you, certain aspects of their ways. */
== P_BDusk @11100225 /* Life doesn't always turn out the way you expect. Hard knocks can shape a person's character. For better or for worse. */
== BX3EMI @11100226 /* On that we agree, Dusk. On that we agree. */
EXIT

// Dusk Good
CHAIN
IF ~InParty("X3Emi")
See("X3Emi")
!StateCheck("X3Emi",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskGEmily","GLOBAL",0)~ THEN P_BDusk P_DuskGEmily
@11100227 /* How are you, Emily? */
DO ~SetGlobal("P_DuskGEmily","GLOBAL",1)~
== BX3EMI @11100228 /* Dusk! I am doing well, thank you for asking. And you? */
== P_BDusk @11100229 /* I can't complain. I've been thinking about our last conversation. */
== BX3EMI @11100230 /* Oh, really? I'm all ears. */
== P_BDusk @11100231 /* When our journey with <CHARNAME> comes to an end, what will you do? I can't picture you returning to the nobility just like that. */
== BX3EMI @11100232 /* Perhaps I can't either, but I wouldn't shirk my responsibility if the time came. Though it's not my intention to be a noble lady who issues commands from a fine linen seat. I am a woman of action. */
== P_BDusk @11100233 /* You can say that again. */
== BX3EMI @11100234 /* What about you? What will you do? */
== P_BDusk @11100235 /* It's a bit too soon to tell. My initial plan isn't to return to the nobility. The army might be a good place, though I doubt they'd accept me given the circumstances of my past. */
== P_BDusk @11100236 /* Being a merchant is something that has motivated me for a while. It's something I must ponder during my watches. */
== BX3EMI @11100237 /* For now, I think it's not a bad idea to join forces to fight against certain monstrosities, don't you think? */
== P_BDusk @11100238 /* I couldn't agree more, Emily. */
EXIT

// Dusk Evil
CHAIN
IF ~InParty("X3Emi")
See("X3Emi")
!StateCheck("X3Emi",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskEmily","GLOBAL",1)
Global("P_DuskEEmily","GLOBAL",0)~ THEN P_BDusk P_DuskEEmily
@11100239 /* I'm still the same, Emily. Don't overthink it. */
DO ~SetGlobal("P_DuskEEmily","GLOBAL",1)~
== BX3EMI @11100240 /* Ehm. Why do you say that, Dusk? I didn't mean to stare. */
== P_BDusk @11100241 /* It doesn't bother me. You don't seem to imply anything insolent. */
== BX3EMI @11100242 /* Forgive me for saying so, but you do seem greatly changed. */
== BX3EMI @11100243 /* Older... even. */
== P_BDusk @11100244 /* Really? Not that appearances matter to me, but at least I don't feel that way. */
== P_BDusk @11100245 /* Never before have I felt so powerful. The scarlet orb awakened my true potential within me. */
== BX3EMI @11100246 /* I am not so sure about that. The aura you emanate might be more noticeable than before, but the Dusk you were before the orb was just as valuable as the one you are now. */
== P_BDusk @11100247 /* Value and power are not the same thing. The latter is all that matters. Our journey alongside <CHARNAME> will prove me right, you'll see. */
== BX3EMI @11100248 /* I'm not so sure I want to witness such a thing... */

EXIT

// Fall 1
CHAIN
IF ~InParty("X3Emi")
See("X3Emi")
!StateCheck("X3Emi",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallEmily1","GLOBAL",0)~ THEN P_BFall P_FallEmily1
@11100249 /* Next time I will win, Emily. Just you wait and see. */
DO ~SetGlobal("P_FallEmily1","GLOBAL",1)~
== BX3EMI @11100250 /* You can try as many times as you like, redhead. I'll still keep getting a higher score than you. */
== P_BFall @11100251 /* Hmpf. Easy for you to say. It's simpler to draw a bow than a crossbow. */
== BX3EMI @11100252 /* Are you sure about that? With a crossbow, you only have to pull the trigger, Fall. Nothing simpler than that. */
== P_BFall @11100253 /* Ah, but a crossbow is heavier than a bow. Feeling the arrow between your fingers gives you a better idea of where the projectile is going to go. */
== BX3EMI @11100254 /* Now you're going to say you're stronger than I am. */
== P_BFall @11100255 /* I'm not just saying it, I'm stating it as a fact. */
== BX3EMI @11100256 /* Want to find out? */
== P_BFall @11100257 /* ... */
== BX3EMI @11100258 /* ... */
== P_BFall @11100259 /* *laughter* */
== BX3EMI @11100260 /* *laughter* */
== BX3EMI @11100261 /* *whispering* We almost got <CHARNAME> to intervene. */
== P_BFall @11100262 /* *whispering* Yeah, did you see his face? Hilarious. */
== BX3EMI @11100263 /* Well, shall we keep practicing? */
== P_BFall @11100264 /* Whenever you're ready, my friend. */
EXIT

// Fall 2
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!See("P_Daren")
!See("P_Sinna")
!StateCheck("X3Emi",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallEmily1","GLOBAL",1)
Global("P_FallEmily2","GLOBAL",0)~ THEN BX3EMI P_FallEmily2
@11100265 /* So, when are you going to summon your furry brothers, Fall? I feel like playing with them again. */
DO ~SetGlobal("P_FallEmily2","GLOBAL",1)~
== P_BFall @11100266 /* In due time, Emily. <CHARNAME> usually handles those strategies. And since I can only summon them once a day, we have to be cautious when calling them. */
== BX3EMI @11100267 /* You're right. Though it wouldn't hurt to just call them so we can pet them a little, don't you think? */
== P_BFall @11100268 /* Yeah, I think we could convince <CHARNAME> to take a day off so we can have a snack out in the open field alongside our summons. */
== BX3EMI @11100269 /* Yes! That's a great idea. */
EXIT

// Fall 3
CHAIN 
IF ~InParty("P_Fall")
See("P_Fall")
!StateCheck("X3Emi",CD_STATE_NOTVALID)
!StateCheck("P_Fall",CD_STATE_NOTVALID)
Global("P_FallEmily2","GLOBAL",1)
Global("P_FallEmily3","GLOBAL",0)~ THEN BX3EMI P_FallEmily3
@11100270 /* To tell you the truth, Fall, it doesn't seem like a bad idea to me. */
DO ~SetGlobal("P_FallEmily3","GLOBAL",1)~
== P_BFall @11100271 /* Right? Sometimes I come up with great plans, you know? */
== BX3EMI @11100272 /* I suppose I can execute an ability similar to a Called Shot. Maximizing damage and speed for a short period. */
== P_BFall @11100273 /* I can teach you a few tricks my father taught me. We can apply them in the next battle, as long as we are close to each other. */
== BX3EMI @11100274 /* Agreed. If <CHARNAME> commands us to stay together in our upcoming combats, a single glance will be enough to launch our attack. */
== P_BFall @11100275 /* In the process, we can see who shoots more or deals more damage. It will be interesting. */
== BX3EMI @11100276 /* Get ready to lose, redhead. */
== P_BFall @11100277 /* You wish... */
EXIT


// Alendir 
CHAIN
IF ~InParty("X3Emi")
See("X3Emi")
!StateCheck("X3Emi",CD_STATE_NOTVALID)
!StateCheck("P_Alen",CD_STATE_NOTVALID)
Global("P_AlenEmily","GLOBAL",0)
OR (3)
!AreaCheck("P_FA3B")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR1")~ THEN P_BAlen P_AlenEmily
@11100278 /* You are an Aasimar, are you not, child? */
DO ~SetGlobal("P_AlenEmily","GLOBAL",1)~
== BX3EMI @11100279 /* That is correct, Alendir. Why do you ask? */
== P_BAlen @11100280 /* Your appearance, however, is elven. But I must admit you are exceptional. What of your parents? At least one of them must have been a celestial creature or had some kind of planar influence from the Upper Planes. */
== P_BAlen @11100281 /* If I am not mistaken, your father was a human, yes? */
== BX3EMI @11100282 /* Yes. A nobleman from Tethyr. */
== P_BAlen @11100283 /* I see. Growing up under his yoke must have been complex. */
== BX3EMI @11100284 /* What do you mean? */
== P_BAlen @11100285 /* Human nobles are purists. I doubt he would have allowed you to be seen just like that in the Tethyrian lands. It is understandable. Humans can be creatures highly prone to taking extreme measures out of fear. */
== BX3EMI @11100286 /* He might have been driven by fear at first, Alendir. But I am certain the real motive behind his decision was love for his daughter. */
== P_BAlen @11100287 /* Hm. It makes sense that you would think that. After all, his blood runs through your veins. */
== P_BAlen @11100288 /* In the past, I might have dismissed your comment. But I have come to be surprised by humans. If you, Emily Castilla, say your father was an honorable human, I must simply yield to believing your words. */
== BX3EMI @11100289 /* Thank you, Alendir. What about you? I imagine you had parents. */
== P_BAlen @11100290 /* Hmpf. Do not overstep, child. I will not speak of that here. It is neither the time nor the place. */
== BX3EMI @11100291 /* Oh... all right. */
EXIT

// Cho'Nuja

CHAIN
IF ~InParty("X3Emi")
See("X3Emi")
!StateCheck("X3Emi",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonEmily","GLOBAL",0)~ THEN P_BChon P_ChonEmily
@11100292 /* *hiss* A what? */
DO ~SetGlobal("P_ChonEmily","GLOBAL",1)~
== BX3EMI @11100293 /* Aasimar. */
== P_BChon @11100294 /* You are making up words, little female. */
== BX3EMI @11100295 /* I am not! *sigh* I understand it is a bit complicated to grasp, Cho, but I am an Aasimar. I have celestial blood. */
== P_BChon @11100296 /* And is that a bad thing? You say it as if it were something terrible, archer. */
== BX3EMI @11100297 /* Well... it hasn't been easy to carry that burden. Tethyr would not look kindly upon someone like me holding a noble title, you know? */
== P_BChon @11100298 /* Ah, of noble matters I understand. Serving a Queen for years has taught me the countless betrayals and inner workings of power. It can make the bravest hearts turn petty and bitter. */
== BX3EMI @11100299 /* On that I agree, Cho. You know, you are not so ignorant of our ways after all. */
== P_BChon @11100300 /* Thank you, little female archer. If you want, I can share with you a dish of dragonflies with toad slime. They are my specialty. */
== BX3EMI @11100301 /* Erh... I think I'll pass, Cho. */
== P_BChon @11100302 /* Your loss. */
EXIT




