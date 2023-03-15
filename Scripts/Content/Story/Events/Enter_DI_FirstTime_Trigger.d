//****************************
// 	ENTER_DI_FIRSTTIME_TRIGGER
//****************************
var int EnterDI_Kapitel6;

func void ENTER_DI_FIRSTTIME_TRIGGER()
{
	// ----- Levelchange verbarrikadieren --------
	if (Npc_HasItems(hero, ITKE_SHIP_LEVELCHANGE_MIS))
	{
		Npc_RemoveInvItems(hero, ITKE_SHIP_LEVELCHANGE_MIS, 1); // Joly: denn SHIP zen wird bei DRAGONISLAND UND NEWWORLD benutzt. Beim betreten der Insel ist die Tür wieder zu!!!!
	};

	if (hero.attribute[ATR_DEXTERITY] < 15) // Joly:wegen Brückenevent
	{
		Wld_InsertItem(ItPo_Perm_DEX, "FP_ITEM_DI_ENTER_05");
	};

// ###############################################
// ##
// ## B_ENTER_DRAGONISLAND
// ## // Joly: Steht hier, denn hier bin ich sicher,
// ## dass alle am start sind und können befüllt werden!
// ##
// ###############################################

	if (EnterDI_Kapitel6 == FALSE)
	{
		if (hero.guild == GIL_PAL)
		{
			CreateInvItems(Archol, ItRu_PalDestroyEvil, 1);
		};

		Wld_InsertItem(ItMi_Flask, "FP_ITEM_SHIP_12");

		// ##############################################################################################################
		// ## "Auge-Innos-zu-Hause-vergessen"-NotfallPlan
		// ##############################################################################################################
		if (Npc_HasItems(hero, ItMi_InnosEye_MIS) == FALSE)
		{
			if (Npc_HasItems(hero, ItMi_InnosEye_Discharged_Mis) == FALSE)
			{
				Wld_InsertItem(ItSe_XardasNotfallBeutel_MIS, "FP_ITEM_SHIP_12");
				SC_InnosEyeVergessen_DI = TRUE;
				B_LogEntry(TOPIC_HallenVonIrdorath, TOPIC_HallenVonIrdorath_4);
			};

			Wld_InsertItem(ItMi_Flask, "FP_ITEM_SHIP_06");

			if (((Npc_HasItems(hero, ItAt_IcedragonHeart) >= 1)
			|| (Npc_HasItems(hero, ItAt_RockdragonHeart) >= 1)
			|| (Npc_HasItems(hero, ItAt_FiredragonHeart) >= 1)
			|| (Npc_HasItems(hero, ItAt_SwampdragonHeart) >= 1)) == FALSE)
			{
				CreateInvItems(OrkElite_AntiPaladinOrkOberst_DI, ItAt_RockdragonHeart, 1);
			};
		};

		// ##############################################################################################################
		// Lehrer Logs

		Log_CreateTopic(TOPIC_MyCrew, LOG_MISSION);
		Log_SetTopicStatus(TOPIC_MyCrew, LOG_RUNNING);

		// ----- Die Kapitäne -----

		if (JorgenIsCaptain == TRUE) // Jorgen
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_1);
		};

		if (TorlofIsCaptain == TRUE) // Torlof
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_2);
		};

		if (JackIsCaptain == TRUE) // Jack
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_3);
		};

		// ----- Die Crew -----

		if (Lee_IsOnBoard == LOG_SUCCESS) // Lee
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_4);
		};

		if (MiltenNW_IsOnBoard == LOG_SUCCESS) // Milten
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_5);
			if (hero.guild == GIL_KDF)
			{
				B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_6);
			};
		};

		if (Lester_IsOnBoard == LOG_SUCCESS) // Lester
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_7);
		};

		if (Mario_IsOnBoard == LOG_SUCCESS) // Mario
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_8);
		};

		if (Wolf_IsOnBoard == LOG_SUCCESS) // Wolf
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_9);
		};

		if (Vatras_IsOnBoard == LOG_SUCCESS) // Vatras
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_10);
			if (hero.guild == GIL_KDF)
			{
				B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_11);
			};
		};

		if (Bennet_IsOnBoard == LOG_SUCCESS) // Bennet
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_12);
		};

		if (Diego_IsOnBoard == LOG_SUCCESS) // Diego
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_13);
		};

		if (Gorn_IsOnBoard == LOG_SUCCESS) // Gorn
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_14);
			Log_AddEntry(TOPIC_MyCrew, TOPIC_MyCrew_15);
		};

		if (Lares_IsOnBoard == LOG_SUCCESS) // Lares
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_16);
		};

		if (Biff_IsOnBoard == LOG_SUCCESS) // Biff
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_17);
		};

		if (Angar_IsOnBoard == LOG_SUCCESS) // Angar
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_18);
		};

		if (Girion_IsOnBoard == LOG_SUCCESS) // Girion
		{
			B_LogEntry(TOPIC_MyCrew, TOPIC_MyCrew_19);
		};

		IntroduceChapter(KapWechsel_6, KapWechsel_6_Text, "chapter6.tga", "chapter_01.wav", 6000);
		EnterDI_Kapitel6 = TRUE;
	};
};
