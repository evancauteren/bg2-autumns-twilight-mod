BEGIN P_ChonP

IF ~Global("P_ChonKickedOut","GLOBAL",0)~ b0
SAY @9571 /* �Nuestras aventuras llegan a su fin? Espero que no, creo que a�n tengo mucho que explorar contigo. Pero si as� lo deseas, estar� en la guarida de Alendir junto a Vidomina por si llegases a necesitarme. */
++ @9572 /* He cometido un error, Cho. Por favor, permanece conmigo. */ DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ + @9573 /* S�, ser� mejor que nos separemos por ahora. Vuelve con Vidomina y si te necesito te buscar�. */ DO ~SetGlobal("P_ChonKickedOut","GLOBAL",1) MoveGlobal("P_FA3B","P_Chon",[941.340])~ EXIT
END

IF ~Global("P_ChonKickedOut","GLOBAL",1)~ b3
SAY @9574 /* �<CHARNAME>! �Es momento de retomar el camino? */
++ @9575 /* As� es, Cho. �nete a m� y v�monos. */ + b3.1
++ @9576 /* A�n no, Cho. S�lo vine a ver c�mo estabas. */ + b3.2
END 

IF ~~ b3.1
SAY @9577 /* �Muy bien! Hay mucho por hacer. */
IF ~~ DO ~SetGlobal("P_ChonKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @9578 /* Protejo el lugar ante cualquier curioso, aunque nadie viene. Mientras hago compa��a a nuestros aliados del Enclave. */
IF ~~ EXIT
END