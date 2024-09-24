BEGIN P_BCho25

// Sarevok
CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonSarevokToB1","GLOBAL",0)~ THEN BSAREV25 P_ChonSarevokToB3
@9771000 /* Tus habilidades de combate son excepcionales, hombre-lagarto. Habr�as sido una buena adquisici�n cuando estuve en Puerta de Baldur. */
DO ~SetGlobal("P_ChonSarevokToB1","GLOBAL",1)~
== P_BCho25 @9771001 /* �Y ser enemigo de <CHARNAME>? No creo que le hubi�semos derrotado. Adem�s, creo que su percepci�n del poder termin� superando la tuya, Sarevok. */
== BSAREV25 @9771002 /* Hm. Es probable. De hecho, ambos hemos sido sus enemigos y ahora le seguimos, esperando ser testigos de un poder divino. */
== P_BCho25 @9771003 /* S�. �Crees que tome el poder que le corresponde? */
== BSAREV25 @9771004 /* Tiene la capacidad de hacerlo, s�. Adem�s sus posibilidades han aumentado dr�sticamente conmigo a su lado. El problema es que los dem�s bastardos act�an en conjunto, como una unidad. */
== BSAREV25 @9771005 /* Aunque dicha alianza no tiene otro destino m�s que fracasar. */
== P_BCho25 @9771006 /* �Qu� te hace pensar que nuestra alianza no termine igual? */
== BSAREV25 @9771007 /* Creo que t� y yo lo sabemos, Jon Cho'Nuja. Mi hermanito es la raz�n. */
EXIT


// AERIE 
CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonAerie1","GLOBAL",0)
OR (3)
!AreaCheck("P_FA3B")
!AreaCheck("P_FAR2")
!AreaCheck("P_FAR1")~ THEN P_BCho25 P_ChonAerie1
@9770 /* Peque�a cr�a, �por qu� me observas tanto? */
DO ~SetGlobal("P_ChonAerie1","GLOBAL",1)~
== BAERIE25 @9771 /* �Oh, Cho! L-lo lamento, no ten�a intenci�n... */
== P_BCho25 @9772 /* No te disculpes, eso es se�al de debilidad. Y no creo que seas d�bil. */
== BAERIE25 @9773 /* �D-de verdad lo crees? */
== P_BCho25 @9774 /* �S�! Cho'Nuja nunca se asocia con criaturas d�biles. La cr�a Aerie ha demostrado su val�a utilizando sus poderes cham�nicos en m�s de una ocasi�n. */
== BAERIE25 @9775 /* Ah, te refieres a mis habilidades arcanas y divinas. */
== P_BCho25 @9776 /* Comprendo. Lo arcano y lo divino. A�n no logro acostumbrarme a esos t�rminos. Tu mundo es facinante. */
== BAERIE25 @9777 /* �Disfrutas aprender de nuestras costumbres? */
== P_BCho25 @9778 /* Muchas me parecen extra�as, pero s�. Aprender del mundo de la superficie y disfrutar de su sol es algo que disfruto en sobremanera. */
== BAERIE25 @9779 /* �Qu� es lo que te parece extra�o? */
== P_BCho25 @97710 /* Cre� que ser�an m�s... primitivos. Por ejemplo, ustedes entierran a los suyos. Realizan ritos funerarios. */
== BAERIE25 @97711 /* �Y qu� esperabas que sucediera en esos casos? */
== P_BCho25 @97712 /* Lo l�gico: Comerse al muerto. */
== BAERIE25 @97713 /* Oh, vaya... */
== P_BCho25 @97714 /* No te preocupes, peque�a cr�a. Dreach-naga abandon� esas costumbres por mi intervenci�n. Durante a�os los ca�dos no eran devorados, sino que eran entregados a una pira de fuego esmeralda para que sus almas fueran liberadas del Abismo. */
== P_BCho25 @97715 /* El fuego aqu� es amarillo, como el topacio. Es igual de hermoso. *gru�ido* En fin, s�lo quer�a decir que me tranquiza ver que no devoran a sus ca�dos. */
== BAERIE25 @97716 /* Pues... lo mismo digo, Cho. */
EXIT

// ANOMEN

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_Chonomen1","GLOBAL",0)~ THEN P_BCho25 P_Chonomen1
@97717 /* Por tu forma de combatir, habr�as sido un excelente recluta en mis filas, soldado. */
DO ~SetGlobal("P_Chonomen1","GLOBAL",1)~
== BANOME25 @97718 /* Formar parte de tu ej�rcito es algo totalmente incompatible con mis creencias, hombre-lagarto. */
== P_BCho25 @97719 /* Lo entiendo. Es algo que tu dios no lo permitir�a, �no es as�? */
== BANOME25 @97720 /* Los tuyos aqu� no han sido de mantener una relaci�n pac�fica con Amn. Estimo que, si hubieses nacido aqu�, hubi�semos sido enemigos. */
== P_BCho25 @97721 /* Pero no nac� aqu�, soldado. Soy de Dreach-naga. */
== BANOME25 @97722 /* Lo s� perfectamente, General. El hecho de que hayas adaptado nuestras costumbres para bien es algo digno de mencionar. */
== P_BCho25 @97723 /* *gru�ido* Estamos de acuerdo en eso. */
EXIT

// CERND

CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonCernd1","GLOBAL",0)~ THEN BCERND25 P_ChonCernd1
@97724 /* General, debo decir que te has adaptado r�pidamente a nuestro mundo. Como los estorninos, has abrazado el nuevo �rbol de una tierra lejana y le has llamado hogar. */
DO ~SetGlobal("P_ChonCernd1","GLOBAL",1)~
== P_BCho25 @97725 /* Dreach-naga no es tan diferente de esta tierra, cham�n. Aunque la ausencia de lo que llaman sol es lo m�s notorio. La brillante luz c�lida es buena para mis escamas. */
== BCERND25 @97726 /* El sol es como el le�n en su Reino. Destaca por la imponencia que su ser emana. */
== P_BCho25 @97727 /* Pues, ya que lo mencionas, t� no eres tan diferente a los chamanes de mi Pantano. */
== P_BCho25 @97728 /* Tienen esa sabidur�a y conexi�n con seres ajenos a su propia raza que pocas criaturas pueden alcanzar. */
== BCERND25 @97729 /* El trabajo del druida es arduo y el llamado de la madre Naturaleza no debe ser ignorada. Es algo intr�nseco que no puede ser explicado totalmente con palabras. */
== P_BCho25 @97730 /* Tu voz, como el viento de esta tierra, no escapa a mis o�dos. Ser� mejor que continuemos, cham�n. */
EXIT


// EDWIN
CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonEdwin1","GLOBAL",0)~ THEN P_BCho25 P_ChonEdwin1
@97731 /* Tus habilidades cham�nicas son excepcionales. Tus poderes m�sticos superan a muchos de los m�s experimentados yuan-ti que he conocido. */
DO ~SetGlobal("P_ChonEdwin1","GLOBAL",1)~
== BEDWIN25 @97732 /* Eso es natural, lagartija. Edwin Odesseiron ostenta un poder arcano como pocos. �Y deja de llamarme cham�n! Soy un mago. (S�, uno muy poderoso) */
== P_BCho25 @97733 /* Es cierto. Es dif�cil quitar la costumbre de mi lengua drac�nica. El lenguaje com�n es muy variado. Mago entonces. */
EXIT

// Haer-Dalis

CHAIN
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonHaerDalis1","GLOBAL",0)~ THEN BHAERD25 P_ChonHaerDalis1
@97734 /* Mi gigante draco volador. Cre� que tardar�as m�s tiempo en acostumbrarte a estas tierras, pero te has adaptado como todo un camale�n bailar�n. */
DO ~SetGlobal("P_ChonHaerDalis1","GLOBAL",1)~
== P_BCho25 @97735 /* Cho'Nuja ha estado es situaciones m�s extremas que esta. Adem�s, t� tambi�n has tenido que pasar por el mismo proceso. No eres de este plano. */
== BHAERD25 @97736 /* Bueno, eso es cierto. Yo he tenido que huir por cuestiones un poco vergonzosas. Pero sea como fuere, no somos tan diferentes. */
== P_BCho25 @97737 /* Creo que somos muy diferentes, peludo. Pero comprendo lo que quieres decir. */
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonImoen1","GLOBAL",0)~ THEN P_BCho25 P_ChonImoen1
@97738 /* �Qu� es lo que tanto mira, peque�a cr�a? */
DO ~SetGlobal("P_ChonImoen1","GLOBAL",1)~
== BIMOEN25 @97739 /* Hm... en lo profundamente aburrido que eres, Cho. */
== P_BCho25 @97740 /* �Aburrido? No comprendo. */
== BIMOEN25 @97741 /* Bueno, no llegas nada salvo esas cuchillas que tienes pegada a los brazos. Es muy dif�cil robar algo de ti. */
== P_BCho25 @97742 /* Ah, s�. Mis Shehad Ibahaliic. Sabes, en tu Lengua Com�n significan-- */
== BIMOEN25 @97743 /* Ni siquiera traes ropa. Es decir, acabo de darme cuenta de que vas desnudo por la vida. */
== P_BCho25 @97744 /* �Desnudo? Ah, te refieres a esas pieles que ustedes usan. No veo por qu� no deban dejarlas de lado. Es un orgullo para m� que los seres aprecien mis escamas. */
== BIMOEN25 @97745 /* No es que haya muchas damas lagarto por aqu�, �no lo crees? */
== P_BCho25 @97746 /* Eso es... cierto. Quiz�s puedas hablar con <CHARNAME> para que eso cambie un poco. */
== P_BCho25 @97747 /* A cambio, quiz�s te pueda conseguir alguna gema preciosa. Tengo buen ojo para ello, �sabes? */
== BIMOEN25 @97748 /* Acabamos de hacer un trato, mi buen amigo. */
EXIT

// JAHEIRA 

CHAIN
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonJaheira1","GLOBAL",0)~ THEN BJAHEI25 P_ChonJaheira1
@97749 /* No s� si lo he mencionado antes, General, pero admiro la forma en que buscas el Equilibrio en tus acciones. */
DO ~SetGlobal("P_ChonJaheira1","GLOBAL",1)~
== P_BCho25 @97750 /* �Equilibrio? �A qu� te refieres, soldado? */
== BJAHEI25 @97751 /* La coexistencia y la lucha constante entre las fuerzas que representan el bien y el mal en el mundo. Me refiero al concepto m�stico y filos�fico que engloba la armon�a y el orden c�smico.  */
== P_BCho25 @97752 /* No tengo la menor idea de lo que est�s hablando. */
== BJAHEI25 @97753 /* �Nunca hab�as le�do sobre el Equilibrio estando en el Abismo? */
== P_BCho25 @97754 /* No he tenido el placer, compa�era de combates. En Dreach-naga lo importante siempre fue la Supervivencia. El Abismo no es un lugar amigable y la muerte era un asunto a lidiar de forma diaria. */
== BJAHEI25 @97755 /* Creo que comprendo, Cho. Pese a lo que me narras, tu exilio a este mundo ha sido de una manera natural y respetable.  */
== P_BCho25 @97756 /* Es algo que s�lo pudo ser logrado por la experiencia que he acumulado a lo largo de mi existencia. La sabidur�a que extraemos de los actos nos moldean y definen. */
== BJAHEI25 @97757 /* No lo podr�a haber definido de una mejor manera, mi buen amigo.  */
EXIT

// JAN ALL
CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonJan1","GLOBAL",0)~ THEN BJAN25 P_ChonJan1
@97758 /* Cuesta creer en mi mente que no existan los nabos en tu mundo, Chonchito. */
DO ~SetGlobal("P_ChonJan1","GLOBAL",1)~
== P_BCho25 @97759 /* Pues no, mi peludito amigo. Creo que ese alimento es m�s acorde a este plano. */
== BJAN25 @97760 /* Claro, claro. Pero d�jame decirte que si t�o Gerardo hubiese querido, �l habr�a sido capaz de ingeniarse alguna f�rmula para hacer que los nabos brotasen como gramilla en esos pantanos que tanto amas. Una buena dieta de nabos es lo que un buen reptil necesita. */
== P_BCho25 @97761 /* �Qu� es un t�o? */
== BJAN25 @97762 /* Oh, bueno ver�s... espera un momento, �es que acaso no hay t�os entre los reptiles? Me cuesta dif�cil de creer. Todas las criaturas vivas tienen que tener la capacidad de tener t�os, �sabes? Incluso esos mugrosos grifos que tanto da�o han hecho a la raza gn�mica han de tener t�os. Puede ser una relaci�n complicada dependiendo de la regi�n en que vengas, �sabes? He o�do historias escalofriantes sobre Calimshan. */
== P_BCho25 @97763 /* En Dreach-naga ten�amos una crianza comunitaria. Hombres-lagarto, yuan-ti, jaculis. Nacemos de huevos y no distinguimos razas. Dreach-naga era una naci�n unida.  */
== BJAN25 @97764 /* S�. Eso me recuerda a-- */
== P_BCho25 @97765 /* No quiero faltarte el respeto, mi peque�o amigo. Pero la verdad es que no entiendo ni la mitad de las cosas que narras. */
== BJAN25 @97766 /* Oh, ya veo. Pero... �os molestan mis historias? */
== P_BCho25 @97767 /* Mientras a ti no te moleste que no entienda, en absoluto. */
== BJAN25 @97768 /* Bueno, en ese caso, d�jame que te cuente sobre... *Jan sigue hablando mientras Cho, de tanto en tanto, desv�a su mirada hacia el vac�o* */
EXIT

// KELDORN ///////////////////////////////////////////////

CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonKeldorn1","GLOBAL",0)~ THEN BKELDO25 P_ChonKeldorn1
@97769 /* General, debo admitir que nunca pas� por mi mente luchar al lado de un hombre-lagarto. */
DO ~SetGlobal("P_ChonKeldorn1","GLOBAL",1)~
== P_BCho25 @97770 /* Caballero, el sentimiento es mutuo. Aunque he de mencionar que en mi caso nunca se debi� a una cuesti�n racial. Un buen soldado debe seguir �rdenes. */
== BKELDO25 @97771 /* �Lo dices por tu Reina? Tengo entendido que desconfiaba en sobremanera de los forasteros. */
== P_BCho25 @97772 /* El Abismo es un lugar llamativo para los aventureros poderosos. Lleno de misterios y tesoros. Pero tambi�n de peligros y promesas de dolor. */
== P_BCho25 @97773 /* Mi Reina, Tisiphone, siempre odi� a todo aquello que no fuera de nuestro pueblo. Muchos creyeron que siempre fue as�, pero no es verdad.  */
== BKELDO25 @97774 /* Ya veo. Amabas a tu Reina, �no es as�? */
== P_BCho25 @97775 /* Le serv� durante d�cadas. Estuve siempre a su lado y s�lo tras la intervenci�n de Gemystara mis ojos fueron abiertos. */
== P_BCho25 @97776 /* La guerra contra las ara�as hab�a infectado su coraz�n. Al punto en que cualquier criatura que no fuese reptil deb�a morir en el momento en que pisase Dreach-naga. */
== BKELDO25 @97777 /* La guerra muestra facetas de nosotros que no cre�amos conocer. Afecta a todos, es inevitable. */
== P_BCho25 @97778 /* Tienes raz�n, caballero. Tienes raz�n. */
EXIT


// KORGAN 

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonKorgan1","GLOBAL",0)~ THEN P_BCho25 P_ChonKorgan1
@97779 /* Para ser tan peque�o, tu furia durante el combate es muy grande. */
DO ~SetGlobal("P_ChonKorgan1","GLOBAL",1)~
== BKORGA25 @97780 /* Muchos patas larga me han subestimado por mi tama�o. Y todos ellos han terminado con sus tripas por los suelos. �T� buscas lo mismo, jod�o lagarto? */
== P_BCho25 @97781 /* Tu dialeto es tan rabioso como el balanceo de tu hacha. No era mi intenci�n insultar-- */
== BKORGA25 @97782 /* Cierra el hocico, pat�tico anfibio. El �nico motivo por el cual mi hacha no se encuentra incrustada en tus escamas es porque <CHARNAME> cree que ser�s �til en sus jod�as aventuras. Ahora, vete de aqu�. */
== P_BCho25 @97783 /* *susurro* Supongo que debo aprender a socializar mejor con los enanos... */
EXIT

// MAZZY

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonMazzy1","GLOBAL",0)~ THEN P_BCho25 P_ChonMazzy1
@97784 /* Mazzy, en muchos sentidos me recuerdas a Vreshnak. Ella es una yuan-ti con grandes habilidades de combate pese a su tama�o. */
DO ~SetGlobal("P_ChonMazzy1","GLOBAL",1)~
== BMAZZY25 @97785 /* As� que todo, a�n en el Abismo, se reduce al tama�o, �no es as�? */
== P_BCho25 @97786 /* �Huh? Oh, lo siento. No era mi intenci�n-- */
== BMAZZY25 @97787 /* Estoy bromeando, Cho. Por favor, cu�ntame de Vreshnak. */
== P_BCho25 @97788 /* Ah, creo que entiendo. Bueno, Vreshnak se entren� con muchos hombres-lagarto, incluyendo el gigante Qyl'tar. Nunca se dej� amedrentar por la fuerza de sus compatriotas, pues Vreshnak compensaba la falta de fuerza con una agilidad asombrosa. */
== BMAZZY25 @97789 /* Golpes certeros y r�pidos pueden ser m�s eficaces que la fuerza bruta. S�, entiendo a que te refieres en tu comparaci�n. */
== P_BCho25 @97790 /* Habr�as sido una gran yuan-ti en mi ej�rcito. Habr�amos conquistado incontable cantidad de capas abisales. */
== BMAZZY25 @97791 /* Me halaga pensar eso, buen General. */
== P_BCho25 @97792 /* Pero esos tiempos ya pasaron. La conquista no lo es todo. Comienzo a pensar que disfrutar del mundo puede ser un objetivo m�s... deseable para m�. */
== BMAZZY25 @97793 /* En eso estamos de acuerdo, Cho. */
EXIT


// MINSC 

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
PartyHasItem("MISC84")
Global("P_ChonMinsc1","GLOBAL",0)~ THEN P_BCho25 P_ChonMinsc1
@97794 /* Por quinta vez, guerrero. No estoy interesado en comerme a tu h�mster. */
DO ~SetGlobal("P_ChonMinsc1","GLOBAL",1)~
== BMINSC25 @97795 /* �Ah, s�? Pues Bub� opina lo contrario, hombre-lagarto. �Jura haber visto que babeas cuando miras su peludo pelaje! */
== P_BCho25 @97796 /* �En serio crees que buscar�a comerme a tu amigo? *susurro* Es tan peque�o que no servir�a ni para bocado. */
== BMINSC25 @97797 /* �Qu� has dicho? */
== P_BCho25 @97798 /* �Que mi dieta no se limita a comerme roedores! */
== P_BCho25 @97799 /* Pierde el cuidado. No voy a comerme a tu Bub�. Lo juro por la memoria de mi naci�n: Dreach-naga. */
== BMINSC25 @977100 /* �Son tus juramentos como los de Rashemen? �Minsc tiene un gran sentido del deber y su palabra es tan grande como el coraz�n de la m�s pura Hathran! */
== P_BCho25 @977101 /* En eso somos similares, guerrero. Mis juramentos son para siempre. */
== BMINSC25 @977102 /* Oh. De acuerdo. Creer� tu palabra entonces. Pero si veo que intentas si quiera saborear a Bub�, �te caer� con toda la fuerza de mi bota! */
== P_BCho25 @977103 /* *suspiro* No ser� necesario, guerrero. No llegaremos a eso. */
EXIT


// NALIA
CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonNalia1","GLOBAL",0)~ THEN BNALIA25 P_ChonNalia1
@977104 /* Cho'Nuja. Ya os he dicho que dej�is de mirarme. �Acaso quieres que os lance una nube aniquiladora? */
DO ~SetGlobal("P_ChonNalia1","GLOBAL",1)~
== P_BCho25 @977105 /* *gru�ido* �Qu�? Peque�a hembra, �por qu� me evitas tanto? Creo haber demostrado no ser un enemigo para vosotros. */
== BNALIA25 @977106 /* Yo... lo lamento, Cho. No quise faltarte el respeto. Es que... a�n no me acostumbro a tu forma.  */
== P_BCho25 @977107 /* �Forma? */
== BNALIA25 @977108 /* Tienes un cierto parecido a las Moles Sombr�as. Y no tengo un buen recuerdo de tales criaturas. */
== P_BCho25 @977109 /* �Moles... sombr�as? No logro comprender. */
== BNALIA25 @977110 /* Son grandes criaturas subterr�neas. En apariencia parecen una combinaci�n horripilante de insectos y simios. No tienen escamas como t�, sino m�s bien una especie de exoesqueleto. Se la pasan excavando, trituran roca y carne por igual. Y son muy violentas. */
== P_BCho25 @977111 /* Creo comprender. Te refieres a los Tonashi. Una palabra draconiana a la que denominamos a esas criaturas. Algunos llegaron a nuestro Reino, e incluso excavaron t�neles y devoraron a muchas de nuestras cr�as. */
== P_BCho25 @977112 /* Luchamos duro, pero finalmente pudimos exterminar a todos los tonashi. �A esas criaturas te recuerdo? Yo... lamento que eso sea as�. */
== BNALIA25 @977113 /* No me refer�a a su comportamiento. Has demostrado tener honor e incluso bondadoso, Cho. Lamento... lamento haber dicho lo que dije. No eres para nada parecido a las Moles Sombr�as o Tonashi, c�mo t� les llamas. */
== P_BCho25 @977114 /* Acepto tus palabras, peque�a hembra. */
== BNALIA25 @977115 /* Dime Nalia si quieres que nos llevemos mejor, �te parece? */
== P_BCho25 @977116 /* Nalia ser�s entonces. */
== BNALIA25 @977117 /* As� me gusta. */
EXIT 

// VALYGAR

CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonValygar1","GLOBAL",0)~ THEN BVALYG25 P_ChonValygar1
@977118 /* No te noto muy inc�modo cuando de asuntos arcanos se trata, Cho. */
DO ~SetGlobal("P_ChonValygar1","GLOBAL",1)~
== P_BCho25 @977119 /* �Asuntos arcanos? */
== BVALYG25 @977120 /* Me refiero a la magia. Creo que t� llamas a los magos como chamanes. */
== P_BCho25 @977121 /* Entiendo. �Y por qu� habr�a de sentirme inc�modo? Los grandes chamanes yuan-ti ense�an a los Guardianes Salvajes a controlar la esencia interior de los guerreros. */
== P_BCho25 @977122 /* En mi caso, puedo canalizar mi energ�a en un escudo �gneo, al que llamamos Escudo Salvaje de Dreach-naga. */
== P_BCho25 @977123 /* Es esta habilidad, de origen cham�nico (o arcano, como t� le llamas) que me ha salvado en m�s de una ocasi�n. */
== BVALYG25 @977124 /* S�, comprendo. He visto tu habilidad y me sorprende. Dime, Cho, en tu pueblo la magia no es una prioridad. Es decir, no llegar�a al punto de corromper a sus usuarios hasta la perversi�n. */
== P_BCho25 @977125 /* Mi pueblo es una naci�n de fuerza f�sica. Los guerreros conforman la principal fuerza de defensa de nuestro pueblo. */
== P_BCho25 @977126 /* Pero los chamanes han sido parte vital para nuestra supervivencia. Ellos han creado runas de protecci�n y las piedras guarda que han evitado el paso de visitantes indeseados durante tanto tiempo. */
== P_BCho25 @977127 /* �Por qu� lo preguntas? He visto que tratan a los hechizos de una manera diferente aqu�. */
== BVALYG25 @977128 /* La magia aqu� se ha desviado de su curso. La gran mayor�a de sus usuarios se han vueltos locos y sedientos de poder, como lo es el caso del enemigo de <CHARNAME> que arrebat� su alma. */
== BVALYG25 @977129 /* Debes tener cuidado, Cho. En este plano, la magia puede ser algo sumamente peligroso y debemos ser cautos cuando tratamos con ella. */
== P_BCho25 @977130 /* Tendr� en cuenta tus palabras, humano. */
EXIT

// VICONIA ALL

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonViconia1","GLOBAL",0)~ THEN P_BCho25 P_ChonViconia1
@977131 /* He visto a algunos de tu clase en mi Reino, cham�n. */
DO ~SetGlobal("P_ChonViconia1","GLOBAL",1)~
== BVICON25 @977132 /* Entonces sabes cu�n peligrosos podemos ser, �no es as�, linddil? */
== P_BCho25 @977133 /* Lo s� de primera mano. Sin embargo, t� no pareces peligrosa. Al menos no has demostrado agresividad para conmigo. */
== BVICON25 @977134 /* �Y por qu� habr�a de hacerlo? Tienes el aspecto de un phindar, pero has demostrado ser un aliado poderoso. */
== P_BCho25 @977135 /* Supongo que es verdad. */
== BVICON25 @977136 /* Si tienes alguna herida de gravedad, te curar�, no te preocupes. */
== P_BCho25 @977137 /* Y yo me asegurar� de destajar a cualquiera que ose atacarte. */
== BVICON25 @977138 /* No podr�a pedir m�s, linddil, no podr�a pedir m�s... */
EXIT

