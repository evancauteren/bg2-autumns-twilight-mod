// TEST

EXTEND_BOTTOM C0SIR25J companions
  + ~InParty("P_Dusk") Global("P_DuskEvil","GLOBAL",0)~ + @10000126 /* ~¿Qué piensas de Dusk?~ */ + P_Sirene_DuskGoodNeutralQ
  + ~InParty("P_Dusk") Global("P_DuskEvil","GLOBAL",1)~ + @10000126 /* ~¿Qué piensas de Dusk?~ */ + P_Sirene_DuskEvilQ
  + ~InParty("P_Fall") ~ + @10000127 /* ~¿Qué piensas de Fall?~ */ + P_Sirene_FallQ
  + ~InParty("P_Chon") ~ + @10000128 /* ~¿Qué piensas de Cho'Nuja?~ */ + P_Sirene_ChoNujaQ
  + ~InParty("P_Alen") ~ + @10000129 /* ~¿Qué piensas de Alendir?~ */ + P_Sirene_AlendirQ
END



APPEND C0SIR25J
  IF ~~ THEN BEGIN P_Sirene_DuskGoodNeutralQ
    SAY @10000130 /* ~Es un gran guerrero, afín a mis pensamientos sobre la justicia.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN P_Sirene_DuskEvilQ
    SAY @10000131 /* ~Dusk ha cambiado mucho. Y no para bien, creo. Espero que pueda volver a encontrar el camino en el que alguna vez anduvo.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN P_Sirene_FallQ
    SAY @10000132 /* ~Es una gran ballestera, amante de la naturaleza y sus animales. Su corazón está en el lugar correcto.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN P_Sirene_ChoNujaQ
    SAY @10000133 /* ~El General es un combatiente excepcional, aunque aún no comprendo del todo su forma de ser ni sus costumbres.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN P_Sirene_AlendirQ
    SAY @10000134 /* ~Creo que Alendir ha cambiado para bien, aunque él no quiera admitirlo. La segunda oportunidad que Mystra le otorgó es algo que, pese a su edad, le ha hecho recapacitar respecto a su destino.~ */
    IF ~~ THEN EXIT
  END
 
  
  
END