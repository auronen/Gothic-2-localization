instance BDT_10101_Addon_TowerBandit(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 13;
	id								= 10101;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_L_Ratford, BodyTex_L, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10101;
};

func void Rtn_Start_10101()
{
	TA_Sit_Campfire(09, 00, 21, 00, "ADW_PIRATECAMP_2_TOWER_05");
	TA_Sit_Campfire(21, 00, 09, 00, "ADW_PIRATECAMP_2_TOWER_05");
};
