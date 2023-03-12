// ******************
// B_TeachMagicCircle
// ******************

func int B_TeachMagicCircle(var C_Npc slf, var C_Npc oth, var int circle)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, NPC_TALENT_MAGE, circle);

	// EXIT if...

	// ------ falscher Parameter ------
	if ((circle < 1) || (circle > 6))
	{
		Print("*** ERROR: Wrong Parameter ***");
		return FALSE;
	};

	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
		B_Say(slf, oth, "$NOLEARNNOPOINTS");

		return FALSE;
	};

	// FUNC

	// ------ Lernpunkte abziehen ------
	oth.lp = oth.lp - kosten;

	// ------ Kreis setzen ------
	Npc_SetTalentSkill(oth, NPC_TALENT_MAGE, circle);
	Log_CreateTopic(TOPIC_TalentMagicCircle, LOG_NOTE);
	B_LogEntry(TOPIC_TalentMagicCircle, TOPIC_TalentMagicCircle_1);

	// ------ 1. Kreis ------
	if (circle == 1)
	{
		PrintScreen(PRINT_LearnCircle_1, -1, -1, FONT_Screen, 2);
		B_LogEntry(TOPIC_TalentMagicCircle, TOPIC_TalentMagicCircle_2);
		return TRUE;
	};

	// ------ 2. Kreis ------
	if (circle == 2)
	{
		PrintScreen(PRINT_LearnCircle_2, -1, -1, FONT_Screen, 2);
		B_LogEntry(TOPIC_TalentMagicCircle, TOPIC_TalentMagicCircle_3);
		return TRUE;
	};

	// ------ 3. Kreis ------
	if (circle == 3)
	{
		PrintScreen(PRINT_LearnCircle_3, -1, -1, FONT_Screen, 2);
		B_LogEntry(TOPIC_TalentMagicCircle, TOPIC_TalentMagicCircle_4);
		return TRUE;
	};

	// ------ 4. Kreis ------
	if (circle == 4)
	{
		PrintScreen(PRINT_LearnCircle_4, -1, -1, FONT_Screen, 2);
		B_LogEntry(TOPIC_TalentMagicCircle, TOPIC_TalentMagicCircle_5);
		return TRUE;
	};

	// ------ 5. Kreis ------
	if (circle == 5)
	{
		PrintScreen(PRINT_LearnCircle_5, -1, -1, FONT_Screen, 2);
		B_LogEntry(TOPIC_TalentMagicCircle, TOPIC_TalentMagicCircle_6);
		return TRUE;
	};

	// ------ 6. Kreis ------
	if (circle == 6)
	{
		PrintScreen(PRINT_LearnCircle_6, -1, -1, FONT_Screen, 2);
		B_LogEntry(TOPIC_TalentMagicCircle, TOPIC_TalentMagicCircle_7);
		return TRUE;
	};
};
