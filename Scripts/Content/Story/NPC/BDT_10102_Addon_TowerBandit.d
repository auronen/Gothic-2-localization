instance BDT_10102_Addon_TowerBandit(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 10102;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_L_Normal_GorNaBar, BodyTex_L, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0.7);
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
	daily_routine = Rtn_Start_10102;
};

func void Rtn_Start_10102()
{
	TA_Stand_Drinking(09, 00, 21, 00, "ADW_PIRATECAMP_2_TOWER_05");
	TA_Stand_Drinking(21, 00, 09, 00, "ADW_PIRATECAMP_2_TOWER_05");
};
