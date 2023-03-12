// *************
// NPC prototype
// *************

prototype Npc_Default(C_NPC)
{
	// -------- NPC --------

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 10;
	attribute[ATR_MANA]				= 10;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS]		= 40;

	// -------- protection --------
	//Grund-Schadensresistenzen: Keine
	protection[PROT_EDGE]			= 0;
	protection[PROT_BLUNT]			= 0;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 0;
	protection[PROT_MAGIC]			= 0;

	// -------- hitchance --------
	HitChance[NPC_TALENT_1H]		= 0; // ALLE AUF 0! Wichtig, weil B_AddFightSkill im NPC-Instanz-Script den gesetzten Wert ADDIERT
	HitChance[NPC_TALENT_2H]		= 0;
	HitChance[NPC_TALENT_BOW]		= 0;
	HitChance[NPC_TALENT_CROSSBOW]	= 0;

	// -------- damage --------
	// Schdenstyp im Faustkampf
	damageType						= DAM_BLUNT;

	// -------- visuals --------

	// -------- aivars --------
	aivar[REAL_STRENGTH]			= 10;
	aivar[REAL_DEXTERITY]			= 10;
	aivar[REAL_MANA_MAX]			= 10;
	aivar[AIV_MM_FollowTime]		= NPC_TIME_FOLLOW;
	aivar[AIV_FightDistCancel]		= FIGHT_DIST_CANCEL;

	bodyStateInterruptableOverride = FALSE;
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = PERC_DIST_ACTIVE_MAX; // in AI_Constants.d

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
