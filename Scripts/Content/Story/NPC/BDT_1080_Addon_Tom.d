instance BDT_1080_Addon_Tom(Npc_Default)
{
	// -------- NPC --------
	name							= "Tom";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 11;
	id								= 1080;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_OldMan_Gravo, BodyTex_P, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 0.75);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_ElBastardo);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1080;
};

func void Rtn_Start_1080()
{
	TA_Sit_Campfire(09, 00, 21, 00, "ADW_BL_HOEHLE_04");
	TA_Sit_Campfire(21, 00, 09, 00, "ADW_BL_HOEHLE_04");
};

func void Rtn_LAGER_1080()
{
	TA_Stand_Drinking(09, 00, 21, 00, "BL_INN_03_C");
	TA_Stand_Drinking(21, 00, 09, 00, "BL_INN_03_C");
};
