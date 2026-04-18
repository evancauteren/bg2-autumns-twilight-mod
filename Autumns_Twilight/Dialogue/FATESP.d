// Dialog para Fall cuando es convocado por el Espiritu en TOB

EXTEND_TOP FATESP 6 #2
+ ~!Dead("P_Fall") !InMyArea("P_Fall") Global("P_FallSummoned","GLOBAL",0)~ 
+ @9630 /* Tráeme a Fall, la Dama de las Bestias. */
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("P_Fall25",[1999.1228],0) 
SetGlobal("P_FallSummoned","GLOBAL",1)~ GOTO 8
END

EXTEND_TOP FATESP 6 #3
+ ~!Dead("P_Dusk") !InMyArea("P_Dusk") Global("P_DuskSummoned","GLOBAL",0)~ 
+ @9631 /* Tráeme a Dusk, el Asesino de Magos. */
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("P_Dusk25",[1999.1228],0) 
SetGlobal("P_DuskSummoned","GLOBAL",1)~ GOTO 8
END

EXTEND_TOP FATESP 6 #4
+ ~!Dead("P_Alen") !InMyArea("P_Alen") Global("P_YoungAlendirSpawn","GLOBAL",1) Global("P_AlenSummoned","GLOBAL",0)~ 
+ @9632 /* Tráeme a Alendir, el Maestro de la Escarcha. */
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("P_Alen25",[1999.1228],0) 
SetGlobal("P_AlenSummoned","GLOBAL",1)~ GOTO 8
END

EXTEND_TOP FATESP 6 #5
+ ~!Dead("P_Chon") !InMyArea("P_Chon") Global("P_ChoCommandersSpawnPFA3B","GLOBAL",1) Global("P_ChonSummoned","GLOBAL",0)~ 
+ @9633 /* Tráeme a Cho'Nuja, el Guardián Salvaje. */
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("P_Chon25",[1999.1228],0) 
SetGlobal("P_ChonSummoned","GLOBAL",1)~ GOTO 8
END