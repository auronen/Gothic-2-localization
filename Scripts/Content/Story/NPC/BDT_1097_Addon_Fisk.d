instance BDT_1097_Addon_Fisk(Npc_Default)
{
	// -------- NPC --------
	name							= "Fisk";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 12;
	id								= 1097;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Cavalorn, BodyTex_B, ITAR_DIEGO);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

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

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1097;
};

func void Rtn_PreStart_1097()
{
	TA_Stand_WP(08, 00, 20, 00, "BL_MID_05");
	TA_Stand_WP(20, 00, 08, 00, "BL_MID_05");
};

func void Rtn_Start_1097()
{
	TA_Stand_Guarding(08, 00, 20, 00, "BL_MERCHANT_01");
	TA_Stand_Guarding(20, 00, 08, 00, "BL_MERCHANT_01");
};

func void Rtn_Meeting_1097()
{
	TA_Stand_Guarding(08, 00, 20, 00, "BL_INN_UP_06");
	TA_Stand_Guarding(20, 00, 08, 00, "BL_INN_UP_06");
};

func void Rtn_Ambush_1097()
{
	TA_Stand_WP(08, 00, 20, 00, "BL_INN_07");
	TA_Stand_WP(20, 00, 08, 00, "BL_INN_07");
};
