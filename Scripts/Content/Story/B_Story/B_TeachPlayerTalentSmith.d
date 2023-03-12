// ************************
// B_TeachPlayerTalentSmith
// ************************

func int B_TeachPlayerTalentSmith(var C_Npc slf, var C_Npc oth, var int waffe)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, NPC_TALENT_SMITH, waffe);

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

	Log_CreateTopic(TOPIC_TalentSmith, LOG_NOTE);
	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_4);

	// ------ Waffe schmieden lernen ------
	// Bennet
	if (waffe == WEAPON_Common) { PLAYER_TALENT_SMITH[WEAPON_Common] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_5); };
	if (waffe == WEAPON_1H_Special_01) { PLAYER_TALENT_SMITH[WEAPON_1H_Special_01] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_6); };
	if (waffe == WEAPON_2H_Special_01) { PLAYER_TALENT_SMITH[WEAPON_2H_Special_01] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_7); };
	if (waffe == WEAPON_1H_Special_02) { PLAYER_TALENT_SMITH[WEAPON_1H_Special_02] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_8); };
	if (waffe == WEAPON_2H_Special_02) { PLAYER_TALENT_SMITH[WEAPON_2H_Special_02] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_9); };
	if (waffe == WEAPON_1H_Special_03) { PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_10); };
	if (waffe == WEAPON_2H_Special_03) { PLAYER_TALENT_SMITH[WEAPON_2H_Special_03] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_11); };
	if (waffe == WEAPON_1H_Special_04) { PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_12); };
	if (waffe == WEAPON_2H_Special_04) { PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_13); };

	// Harad - Addon
	if (waffe == WEAPON_1H_Harad_01) { PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_14); };
	if (waffe == WEAPON_1H_Harad_02) { PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_15); };
	if (waffe == WEAPON_1H_Harad_03) { PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] = TRUE;

	B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_16); };
	if (waffe == WEAPON_1H_Harad_04) { PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] = TRUE; B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_17); };
	PrintScreen(PRINT_LearnSmith, -1, -1, FONT_Screen, 2);

	// ------ bei jeder Waffe: Waffen-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill(oth, NPC_TALENT_SMITH, 1);
	return TRUE;
};
