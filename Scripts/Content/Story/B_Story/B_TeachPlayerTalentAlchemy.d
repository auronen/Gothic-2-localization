// **************************
// B_TeachPlayerTalentAlchemy
// **************************

func int B_TeachPlayerTalentAlchemy(var C_Npc slf, var C_Npc oth, var int potion)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, NPC_TALENT_ALCHEMY, potion);

	// EXIT if...

	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints, -1, -1, FONT_ScreenSmall, 2);
		B_Say(slf, oth, "$NOLEARNNOPOINTS");

		return FALSE;
	};

	// FUNC

	// ------ Lernpunkte abziehen ------
	oth.lp = oth.lp - kosten;

	Log_CreateTopic(TOPIC_TalentAlchemy, LOG_NOTE);
	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_3);

	// ------ Trank brauen lernen ------
	if (potion == POTION_Health_01) { PLAYER_TALENT_ALCHEMY[POTION_Health_01] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_4); };

	if (potion == POTION_Health_02) { PLAYER_TALENT_ALCHEMY[POTION_Health_02] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_5); };

	if (potion == POTION_Health_03) { PLAYER_TALENT_ALCHEMY[POTION_Health_03] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_6); };

	if (potion == POTION_Mana_01) { PLAYER_TALENT_ALCHEMY[POTION_Mana_01] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_7); };

	if (potion == POTION_Mana_02) { PLAYER_TALENT_ALCHEMY[POTION_Mana_02] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_8); };

	if (potion == POTION_Mana_03) { PLAYER_TALENT_ALCHEMY[POTION_Mana_03] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_9); };

	if (potion == POTION_Speed) { PLAYER_TALENT_ALCHEMY[POTION_Speed] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_10); };

	if (potion == POTION_Perm_STR) { PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_11); };

	if (potion == POTION_Perm_DEX) { PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_12); };

	if (potion == POTION_Perm_Mana) { PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_13); };

	if (potion == POTION_Perm_Health) { PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] = TRUE;

	B_LogEntry(TOPIC_TalentAlchemy, TOPIC_TalentAlchemy_14); };

	PrintScreen(PRINT_LearnAlchemy, -1, -1, FONT_Screen, 2);

	// ------ bei jedem Trank: Alchemy-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill(oth, NPC_TALENT_ALCHEMY, 1);

	return TRUE;
};
