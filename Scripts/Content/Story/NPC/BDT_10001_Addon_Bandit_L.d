instance BDT_10001_Addon_Bandit_L(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BANDIT; // Wache
	npctype							= NPCTYPE_BL_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 10001;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_Important_Arto, BodyTex_N, ITAR_Bloodwyn_Addon);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

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
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10001;
};

func void Rtn_Start_10001()
{
	TA_Smalltalk(10, 00, 12, 00, "BL_UP_RING_02");
	TA_Smalltalk(12, 00, 10, 00, "BL_UP_RING_02");
};
