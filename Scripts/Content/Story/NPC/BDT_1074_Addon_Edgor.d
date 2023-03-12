instance BDT_1074_Addon_Edgor(Npc_Default)
{
	// -------- NPC --------
	name							= "Edgor";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 6;
	id								= 1074;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_NormalBart20, BodyTex_N, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1074;
};

func void Rtn_Start_1074() // RUINE
{
	TA_Sit_Campfire(09, 00, 12, 00, "ADW_BANDIT_VP1_09");
	TA_Sit_Campfire(12, 00, 09, 00, "ADW_BANDIT_VP1_09");
};
