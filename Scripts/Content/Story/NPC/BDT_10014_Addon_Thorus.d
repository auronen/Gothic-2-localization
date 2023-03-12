instance BDT_10014_Addon_Thorus(Npc_Default)
{
	// -------- NPC --------
	name							= "Thorus";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 12;
	id								= 10014;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_B_Thorus, BodyTex_B, ITAR_Thorus_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ITKE_Addon_Thorus, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PReStart_10014;
};

func void Rtn_Prestart_10014()
{
	TA_Stand_Guarding(00, 00, 12, 00, "BL_STAIRS_03");
	TA_Stand_Guarding(12, 00, 00, 00, "BL_STAIRS_03");
};

func void Rtn_Start_10014()
{
	TA_Read_Bookstand(00, 00, 12, 00, "BL_BLOODWYN_BOOK");
	TA_Stand_Guarding(12, 00, 20, 00, "BL_BLOODWYN_04");
	TA_Stand_Guarding(20, 00, 00, 00, "BL_STAIRS_03");
};

func void Rtn_TALK_10014()
{
	TA_Stand_WP(00, 00, 12, 00, "BL_UP_PLACE_03");
	TA_Stand_WP(12, 00, 00, 00, "BL_UP_PLACE_03");
};
