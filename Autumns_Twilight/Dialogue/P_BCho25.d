BEGIN P_BCho25

// Sarevok
CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonSarevokToB1","GLOBAL",0)~ THEN BSAREV25 P_ChonSarevokToB3
@9771000 /* Tus habilidades de combate son excepcionales, hombre-lagarto. Habrías sido una buena adquisición cuando estuve en Puerta de Baldur. */
DO ~SetGlobal("P_ChonSarevokToB1","GLOBAL",1)~
== P_BCho25 @9771001 /* ¿Y ser enemigo de <CHARNAME>? No creo que le hubiésemos derrotado. Además, creo que su percepción del poder terminó superando la tuya, Sarevok. */
== BSAREV25 @9771002 /* Hm. Es probable. De hecho, ambos hemos sido sus enemigos y ahora le seguimos, esperando ser testigos de un poder divino. */
== P_BCho25 @9771003 /* Sí. ¿Crees que tome el poder que le corresponde? */
== BSAREV25 @9771004 /* Tiene la capacidad de hacerlo, sí. Además sus posibilidades han aumentado drásticamente conmigo a su lado. El problema es que los demás bastardos actúan en conjunto, como una unidad. */
== BSAREV25 @9771005 /* Aunque dicha alianza no tiene otro destino más que fracasar. */
== P_BCho25 @9771006 /* ¿Qué te hace pensar que nuestra alianza no termine igual? */
== BSAREV25 @9771007 /* Creo que tú y yo lo sabemos, Jon Cho'Nuja. Mi hermanito es la razón. */
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
@9770 /* Pequeña cría, ¿por qué me observas tanto? */
DO ~SetGlobal("P_ChonAerie1","GLOBAL",1)~
== BAERIE25 @9771 /* ¡Oh, Cho! L-lo lamento, no tenía intención... */
== P_BCho25 @9772 /* No te disculpes, eso es señal de debilidad. Y no creo que seas débil. */
== BAERIE25 @9773 /* ¿D-de verdad lo crees? */
== P_BCho25 @9774 /* ¡Sí! Cho'Nuja nunca se asocia con criaturas débiles. La cría Aerie ha demostrado su valía utilizando sus poderes chamánicos en más de una ocasión. */
== BAERIE25 @9775 /* Ah, te refieres a mis habilidades arcanas y divinas. */
== P_BCho25 @9776 /* Comprendo. Lo arcano y lo divino. Aún no logro acostumbrarme a esos términos. Tu mundo es facinante. */
== BAERIE25 @9777 /* ¿Disfrutas aprender de nuestras costumbres? */
== P_BCho25 @9778 /* Muchas me parecen extrañas, pero sí. Aprender del mundo de la superficie y disfrutar de su sol es algo que disfruto en sobremanera. */
== BAERIE25 @9779 /* ¿Qué es lo que te parece extraño? */
== P_BCho25 @97710 /* Creí que serían más... primitivos. Por ejemplo, ustedes entierran a los suyos. Realizan ritos funerarios. */
== BAERIE25 @97711 /* ¿Y qué esperabas que sucediera en esos casos? */
== P_BCho25 @97712 /* Lo lógico: Comerse al muerto. */
== BAERIE25 @97713 /* Oh, vaya... */
== P_BCho25 @97714 /* No te preocupes, pequeña cría. Dreach-naga abandonó esas costumbres por mi intervención. Durante años los caídos no eran devorados, sino que eran entregados a una pira de fuego esmeralda para que sus almas fueran liberadas del Abismo. */
== P_BCho25 @97715 /* El fuego aquí es amarillo, como el topacio. Es igual de hermoso. *gruñido* En fin, sólo quería decir que me tranquiza ver que no devoran a sus caídos. */
== BAERIE25 @97716 /* Pues... lo mismo digo, Cho. */
EXIT

// ANOMEN

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_Chonomen1","GLOBAL",0)~ THEN P_BCho25 P_Chonomen1
@97717 /* Por tu forma de combatir, habrías sido un excelente recluta en mis filas, soldado. */
DO ~SetGlobal("P_Chonomen1","GLOBAL",1)~
== BANOME25 @97718 /* Formar parte de tu ejército es algo totalmente incompatible con mis creencias, hombre-lagarto. */
== P_BCho25 @97719 /* Lo entiendo. Es algo que tu dios no lo permitiría, ¿no es así? */
== BANOME25 @97720 /* Los tuyos aquí no han sido de mantener una relación pacífica con Amn. Estimo que, si hubieses nacido aquí, hubiésemos sido enemigos. */
== P_BCho25 @97721 /* Pero no nací aquí, soldado. Soy de Dreach-naga. */
== BANOME25 @97722 /* Lo sé perfectamente, General. El hecho de que hayas adaptado nuestras costumbres para bien es algo digno de mencionar. */
== P_BCho25 @97723 /* *gruñido* Estamos de acuerdo en eso. */
EXIT

// CERND

CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonCernd1","GLOBAL",0)~ THEN BCERND25 P_ChonCernd1
@97724 /* General, debo decir que te has adaptado rápidamente a nuestro mundo. Como los estorninos, has abrazado el nuevo árbol de una tierra lejana y le has llamado hogar. */
DO ~SetGlobal("P_ChonCernd1","GLOBAL",1)~
== P_BCho25 @97725 /* Dreach-naga no es tan diferente de esta tierra, chamán. Aunque la ausencia de lo que llaman sol es lo más notorio. La brillante luz cálida es buena para mis escamas. */
== BCERND25 @97726 /* El sol es como el león en su Reino. Destaca por la imponencia que su ser emana. */
== P_BCho25 @97727 /* Pues, ya que lo mencionas, tú no eres tan diferente a los chamanes de mi Pantano. */
== P_BCho25 @97728 /* Tienen esa sabiduría y conexión con seres ajenos a su propia raza que pocas criaturas pueden alcanzar. */
== BCERND25 @97729 /* El trabajo del druida es arduo y el llamado de la madre Naturaleza no debe ser ignorada. Es algo intrínseco que no puede ser explicado totalmente con palabras. */
== P_BCho25 @97730 /* Tu voz, como el viento de esta tierra, no escapa a mis oídos. Será mejor que continuemos, chamán. */
EXIT


// EDWIN
CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonEdwin1","GLOBAL",0)~ THEN P_BCho25 P_ChonEdwin1
@97731 /* Tus habilidades chamánicas son excepcionales. Tus poderes místicos superan a muchos de los más experimentados yuan-ti que he conocido. */
DO ~SetGlobal("P_ChonEdwin1","GLOBAL",1)~
== BEDWIN25 @97732 /* Eso es natural, lagartija. Edwin Odesseiron ostenta un poder arcano como pocos. ¡Y deja de llamarme chamán! Soy un mago. (Sí, uno muy poderoso) */
== P_BCho25 @97733 /* Es cierto. Es difícil quitar la costumbre de mi lengua dracónica. El lenguaje común es muy variado. Mago entonces. */
EXIT

// Haer-Dalis

CHAIN
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonHaerDalis1","GLOBAL",0)~ THEN BHAERD25 P_ChonHaerDalis1
@97734 /* Mi gigante draco volador. Creí que tardarías más tiempo en acostumbrarte a estas tierras, pero te has adaptado como todo un camaleón bailarín. */
DO ~SetGlobal("P_ChonHaerDalis1","GLOBAL",1)~
== P_BCho25 @97735 /* Cho'Nuja ha estado es situaciones más extremas que esta. Además, tú también has tenido que pasar por el mismo proceso. No eres de este plano. */
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
@97738 /* ¿Qué es lo que tanto mira, pequeña cría? */
DO ~SetGlobal("P_ChonImoen1","GLOBAL",1)~
== BIMOEN25 @97739 /* Hm... en lo profundamente aburrido que eres, Cho. */
== P_BCho25 @97740 /* ¿Aburrido? No comprendo. */
== BIMOEN25 @97741 /* Bueno, no llegas nada salvo esas cuchillas que tienes pegada a los brazos. Es muy difícil robar algo de ti. */
== P_BCho25 @97742 /* Ah, sí. Mis Shehad Ibahaliic. Sabes, en tu Lengua Común significan-- */
== BIMOEN25 @97743 /* Ni siquiera traes ropa. Es decir, acabo de darme cuenta de que vas desnudo por la vida. */
== P_BCho25 @97744 /* ¿Desnudo? Ah, te refieres a esas pieles que ustedes usan. No veo por qué no deban dejarlas de lado. Es un orgullo para mí que los seres aprecien mis escamas. */
== BIMOEN25 @97745 /* No es que haya muchas damas lagarto por aquí, ¿no lo crees? */
== P_BCho25 @97746 /* Eso es... cierto. Quizás puedas hablar con <CHARNAME> para que eso cambie un poco. */
== P_BCho25 @97747 /* A cambio, quizás te pueda conseguir alguna gema preciosa. Tengo buen ojo para ello, ¿sabes? */
== BIMOEN25 @97748 /* Acabamos de hacer un trato, mi buen amigo. */
EXIT

// JAHEIRA 

CHAIN
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonJaheira1","GLOBAL",0)~ THEN BJAHEI25 P_ChonJaheira1
@97749 /* No sé si lo he mencionado antes, General, pero admiro la forma en que buscas el Equilibrio en tus acciones. */
DO ~SetGlobal("P_ChonJaheira1","GLOBAL",1)~
== P_BCho25 @97750 /* ¿Equilibrio? ¿A qué te refieres, soldado? */
== BJAHEI25 @97751 /* La coexistencia y la lucha constante entre las fuerzas que representan el bien y el mal en el mundo. Me refiero al concepto místico y filosófico que engloba la armonía y el orden cósmico.  */
== P_BCho25 @97752 /* No tengo la menor idea de lo que estás hablando. */
== BJAHEI25 @97753 /* ¿Nunca habías leído sobre el Equilibrio estando en el Abismo? */
== P_BCho25 @97754 /* No he tenido el placer, compañera de combates. En Dreach-naga lo importante siempre fue la Supervivencia. El Abismo no es un lugar amigable y la muerte era un asunto a lidiar de forma diaria. */
== BJAHEI25 @97755 /* Creo que comprendo, Cho. Pese a lo que me narras, tu exilio a este mundo ha sido de una manera natural y respetable.  */
== P_BCho25 @97756 /* Es algo que sólo pudo ser logrado por la experiencia que he acumulado a lo largo de mi existencia. La sabiduría que extraemos de los actos nos moldean y definen. */
== BJAHEI25 @97757 /* No lo podría haber definido de una mejor manera, mi buen amigo.  */
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
== P_BCho25 @97759 /* Pues no, mi peludito amigo. Creo que ese alimento es más acorde a este plano. */
== BJAN25 @97760 /* Claro, claro. Pero déjame decirte que si tío Gerardo hubiese querido, él habría sido capaz de ingeniarse alguna fórmula para hacer que los nabos brotasen como gramilla en esos pantanos que tanto amas. Una buena dieta de nabos es lo que un buen reptil necesita. */
== P_BCho25 @97761 /* ¿Qué es un tío? */
== BJAN25 @97762 /* Oh, bueno verás... espera un momento, ¿es que acaso no hay tíos entre los reptiles? Me cuesta difícil de creer. Todas las criaturas vivas tienen que tener la capacidad de tener tíos, ¿sabes? Incluso esos mugrosos grifos que tanto daño han hecho a la raza gnómica han de tener tíos. Puede ser una relación complicada dependiendo de la región en que vengas, ¿sabes? He oído historias escalofriantes sobre Calimshan. */
== P_BCho25 @97763 /* En Dreach-naga teníamos una crianza comunitaria. Hombres-lagarto, yuan-ti, jaculis. Nacemos de huevos y no distinguimos razas. Dreach-naga era una nación unida.  */
== BJAN25 @97764 /* Sí. Eso me recuerda a-- */
== P_BCho25 @97765 /* No quiero faltarte el respeto, mi pequeño amigo. Pero la verdad es que no entiendo ni la mitad de las cosas que narras. */
== BJAN25 @97766 /* Oh, ya veo. Pero... ¿os molestan mis historias? */
== P_BCho25 @97767 /* Mientras a ti no te moleste que no entienda, en absoluto. */
== BJAN25 @97768 /* Bueno, en ese caso, déjame que te cuente sobre... *Jan sigue hablando mientras Cho, de tanto en tanto, desvía su mirada hacia el vacío* */
EXIT

// KELDORN ///////////////////////////////////////////////

CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonKeldorn1","GLOBAL",0)~ THEN BKELDO25 P_ChonKeldorn1
@97769 /* General, debo admitir que nunca pasó por mi mente luchar al lado de un hombre-lagarto. */
DO ~SetGlobal("P_ChonKeldorn1","GLOBAL",1)~
== P_BCho25 @97770 /* Caballero, el sentimiento es mutuo. Aunque he de mencionar que en mi caso nunca se debió a una cuestión racial. Un buen soldado debe seguir órdenes. */
== BKELDO25 @97771 /* ¿Lo dices por tu Reina? Tengo entendido que desconfiaba en sobremanera de los forasteros. */
== P_BCho25 @97772 /* El Abismo es un lugar llamativo para los aventureros poderosos. Lleno de misterios y tesoros. Pero también de peligros y promesas de dolor. */
== P_BCho25 @97773 /* Mi Reina, Tisiphone, siempre odió a todo aquello que no fuera de nuestro pueblo. Muchos creyeron que siempre fue así, pero no es verdad.  */
== BKELDO25 @97774 /* Ya veo. Amabas a tu Reina, ¿no es así? */
== P_BCho25 @97775 /* Le serví durante décadas. Estuve siempre a su lado y sólo tras la intervención de Gemystara mis ojos fueron abiertos. */
== P_BCho25 @97776 /* La guerra contra las arañas había infectado su corazón. Al punto en que cualquier criatura que no fuese reptil debía morir en el momento en que pisase Dreach-naga. */
== BKELDO25 @97777 /* La guerra muestra facetas de nosotros que no creíamos conocer. Afecta a todos, es inevitable. */
== P_BCho25 @97778 /* Tienes razón, caballero. Tienes razón. */
EXIT


// KORGAN 

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonKorgan1","GLOBAL",0)~ THEN P_BCho25 P_ChonKorgan1
@97779 /* Para ser tan pequeño, tu furia durante el combate es muy grande. */
DO ~SetGlobal("P_ChonKorgan1","GLOBAL",1)~
== BKORGA25 @97780 /* Muchos patas larga me han subestimado por mi tamaño. Y todos ellos han terminado con sus tripas por los suelos. ¿Tú buscas lo mismo, jodío lagarto? */
== P_BCho25 @97781 /* Tu dialeto es tan rabioso como el balanceo de tu hacha. No era mi intención insultar-- */
== BKORGA25 @97782 /* Cierra el hocico, patético anfibio. El único motivo por el cual mi hacha no se encuentra incrustada en tus escamas es porque <CHARNAME> cree que serás útil en sus jodías aventuras. Ahora, vete de aquí. */
== P_BCho25 @97783 /* *susurro* Supongo que debo aprender a socializar mejor con los enanos... */
EXIT

// MAZZY

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonMazzy1","GLOBAL",0)~ THEN P_BCho25 P_ChonMazzy1
@97784 /* Mazzy, en muchos sentidos me recuerdas a Vreshnak. Ella es una yuan-ti con grandes habilidades de combate pese a su tamaño. */
DO ~SetGlobal("P_ChonMazzy1","GLOBAL",1)~
== BMAZZY25 @97785 /* Así que todo, aún en el Abismo, se reduce al tamaño, ¿no es así? */
== P_BCho25 @97786 /* ¿Huh? Oh, lo siento. No era mi intención-- */
== BMAZZY25 @97787 /* Estoy bromeando, Cho. Por favor, cuéntame de Vreshnak. */
== P_BCho25 @97788 /* Ah, creo que entiendo. Bueno, Vreshnak se entrenó con muchos hombres-lagarto, incluyendo el gigante Qyl'tar. Nunca se dejó amedrentar por la fuerza de sus compatriotas, pues Vreshnak compensaba la falta de fuerza con una agilidad asombrosa. */
== BMAZZY25 @97789 /* Golpes certeros y rápidos pueden ser más eficaces que la fuerza bruta. Sí, entiendo a que te refieres en tu comparación. */
== P_BCho25 @97790 /* Habrías sido una gran yuan-ti en mi ejército. Habríamos conquistado incontable cantidad de capas abisales. */
== BMAZZY25 @97791 /* Me halaga pensar eso, buen General. */
== P_BCho25 @97792 /* Pero esos tiempos ya pasaron. La conquista no lo es todo. Comienzo a pensar que disfrutar del mundo puede ser un objetivo más... deseable para mí. */
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
@97794 /* Por quinta vez, guerrero. No estoy interesado en comerme a tu hámster. */
DO ~SetGlobal("P_ChonMinsc1","GLOBAL",1)~
== BMINSC25 @97795 /* ¿Ah, sí? Pues Bubú opina lo contrario, hombre-lagarto. ¡Jura haber visto que babeas cuando miras su peludo pelaje! */
== P_BCho25 @97796 /* ¿En serio crees que buscaría comerme a tu amigo? *susurro* Es tan pequeño que no serviría ni para bocado. */
== BMINSC25 @97797 /* ¿Qué has dicho? */
== P_BCho25 @97798 /* ¡Que mi dieta no se limita a comerme roedores! */
== P_BCho25 @97799 /* Pierde el cuidado. No voy a comerme a tu Bubú. Lo juro por la memoria de mi nación: Dreach-naga. */
== BMINSC25 @977100 /* ¿Son tus juramentos como los de Rashemen? ¡Minsc tiene un gran sentido del deber y su palabra es tan grande como el corazón de la más pura Hathran! */
== P_BCho25 @977101 /* En eso somos similares, guerrero. Mis juramentos son para siempre. */
== BMINSC25 @977102 /* Oh. De acuerdo. Creeré tu palabra entonces. Pero si veo que intentas si quiera saborear a Bubú, ¡te caeré con toda la fuerza de mi bota! */
== P_BCho25 @977103 /* *suspiro* No será necesario, guerrero. No llegaremos a eso. */
EXIT


// NALIA
CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonNalia1","GLOBAL",0)~ THEN BNALIA25 P_ChonNalia1
@977104 /* Cho'Nuja. Ya os he dicho que dejéis de mirarme. ¿Acaso quieres que os lance una nube aniquiladora? */
DO ~SetGlobal("P_ChonNalia1","GLOBAL",1)~
== P_BCho25 @977105 /* *gruñido* ¿Qué? Pequeña hembra, ¿por qué me evitas tanto? Creo haber demostrado no ser un enemigo para vosotros. */
== BNALIA25 @977106 /* Yo... lo lamento, Cho. No quise faltarte el respeto. Es que... aún no me acostumbro a tu forma.  */
== P_BCho25 @977107 /* ¿Forma? */
== BNALIA25 @977108 /* Tienes un cierto parecido a las Moles Sombrías. Y no tengo un buen recuerdo de tales criaturas. */
== P_BCho25 @977109 /* ¿Moles... sombrías? No logro comprender. */
== BNALIA25 @977110 /* Son grandes criaturas subterráneas. En apariencia parecen una combinación horripilante de insectos y simios. No tienen escamas como tú, sino más bien una especie de exoesqueleto. Se la pasan excavando, trituran roca y carne por igual. Y son muy violentas. */
== P_BCho25 @977111 /* Creo comprender. Te refieres a los Tonashi. Una palabra draconiana a la que denominamos a esas criaturas. Algunos llegaron a nuestro Reino, e incluso excavaron túneles y devoraron a muchas de nuestras crías. */
== P_BCho25 @977112 /* Luchamos duro, pero finalmente pudimos exterminar a todos los tonashi. ¿A esas criaturas te recuerdo? Yo... lamento que eso sea así. */
== BNALIA25 @977113 /* No me refería a su comportamiento. Has demostrado tener honor e incluso bondadoso, Cho. Lamento... lamento haber dicho lo que dije. No eres para nada parecido a las Moles Sombrías o Tonashi, cómo tú les llamas. */
== P_BCho25 @977114 /* Acepto tus palabras, pequeña hembra. */
== BNALIA25 @977115 /* Dime Nalia si quieres que nos llevemos mejor, ¿te parece? */
== P_BCho25 @977116 /* Nalia serás entonces. */
== BNALIA25 @977117 /* Así me gusta. */
EXIT 

// VALYGAR

CHAIN 
IF ~InParty("P_Chon")
See("P_Chon")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonValygar1","GLOBAL",0)~ THEN BVALYG25 P_ChonValygar1
@977118 /* No te noto muy incómodo cuando de asuntos arcanos se trata, Cho. */
DO ~SetGlobal("P_ChonValygar1","GLOBAL",1)~
== P_BCho25 @977119 /* ¿Asuntos arcanos? */
== BVALYG25 @977120 /* Me refiero a la magia. Creo que tú llamas a los magos como chamanes. */
== P_BCho25 @977121 /* Entiendo. ¿Y por qué habría de sentirme incómodo? Los grandes chamanes yuan-ti enseñan a los Guardianes Salvajes a controlar la esencia interior de los guerreros. */
== P_BCho25 @977122 /* En mi caso, puedo canalizar mi energía en un escudo ígneo, al que llamamos Escudo Salvaje de Dreach-naga. */
== P_BCho25 @977123 /* Es esta habilidad, de origen chamánico (o arcano, como tú le llamas) que me ha salvado en más de una ocasión. */
== BVALYG25 @977124 /* Sí, comprendo. He visto tu habilidad y me sorprende. Dime, Cho, en tu pueblo la magia no es una prioridad. Es decir, no llegaría al punto de corromper a sus usuarios hasta la perversión. */
== P_BCho25 @977125 /* Mi pueblo es una nación de fuerza física. Los guerreros conforman la principal fuerza de defensa de nuestro pueblo. */
== P_BCho25 @977126 /* Pero los chamanes han sido parte vital para nuestra supervivencia. Ellos han creado runas de protección y las piedras guarda que han evitado el paso de visitantes indeseados durante tanto tiempo. */
== P_BCho25 @977127 /* ¿Por qué lo preguntas? He visto que tratan a los hechizos de una manera diferente aquí. */
== BVALYG25 @977128 /* La magia aquí se ha desviado de su curso. La gran mayoría de sus usuarios se han vueltos locos y sedientos de poder, como lo es el caso del enemigo de <CHARNAME> que arrebató su alma. */
== BVALYG25 @977129 /* Debes tener cuidado, Cho. En este plano, la magia puede ser algo sumamente peligroso y debemos ser cautos cuando tratamos con ella. */
== P_BCho25 @977130 /* Tendré en cuenta tus palabras, humano. */
EXIT

// VICONIA ALL

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Chon",CD_STATE_NOTVALID)
Global("P_ChonViconia1","GLOBAL",0)~ THEN P_BCho25 P_ChonViconia1
@977131 /* He visto a algunos de tu clase en mi Reino, chamán. */
DO ~SetGlobal("P_ChonViconia1","GLOBAL",1)~
== BVICON25 @977132 /* Entonces sabes cuán peligrosos podemos ser, ¿no es así, linddil? */
== P_BCho25 @977133 /* Lo sé de primera mano. Sin embargo, tú no pareces peligrosa. Al menos no has demostrado agresividad para conmigo. */
== BVICON25 @977134 /* ¿Y por qué habría de hacerlo? Tienes el aspecto de un phindar, pero has demostrado ser un aliado poderoso. */
== P_BCho25 @977135 /* Supongo que es verdad. */
== BVICON25 @977136 /* Si tienes alguna herida de gravedad, te curaré, no te preocupes. */
== P_BCho25 @977137 /* Y yo me aseguraré de destajar a cualquiera que ose atacarte. */
== BVICON25 @977138 /* No podría pedir más, linddil, no podría pedir más... */
EXIT

