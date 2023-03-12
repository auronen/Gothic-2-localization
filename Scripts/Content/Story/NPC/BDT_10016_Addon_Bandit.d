instance BDT_10016_Addon_Bandit(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_TAL_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 10016;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Fingers, BodyTex_N, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10016;
};

func void Rtn_Start_10016()
{
	TA_Sit_Chair(02, 00, 10, 00, "ADW_SENAT_CAVE_CHAIR");
	TA_Sit_Chair(10, 00, 02, 00, "ADW_SENAT_CAVE_CHAIR");
};

func void Rtn_Stand_10016()
{
	TA_Stand_WP(02, 00, 10, 00, "ADW_SENAT_CAVE_CHAIR");
	TA_Stand_WP(10, 00, 02, 00, "ADW_SENAT_CAVE_CHAIR");
};
