instance STRF_1135_Addon_Sklave(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_Sklave;
	npctype							= NpcType_Main;
	guild							= GIL_STRF;
	flags							= 0;

	voice							= 3;
	id								= 1135;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_P_Tough_Torrez, BodyTex_P, ITAR_Prisoner);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_NoFightParker]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 10);

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_Start_1135;
};

func void Rtn_Start_1135()
{
	TA_Stand_WP(08, 00, 23, 00, "ADW_MINE_SKLAVENTOD_05");
	TA_Stand_WP(23, 00, 08, 00, "ADW_MINE_SKLAVENTOD_05");
};
