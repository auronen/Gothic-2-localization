instance BDT_10017_Addon_Juan(Npc_Default)
{
	// -------- NPC --------
	name							= "Juan";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 13;
	id								= 10017;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_L_NormalBart01, BodyTex_L, ITAR_BDT_H);
	Mdl_SetModelFatness(self, - 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItMi_Addon_Steel_Paket, 1);
	CreateInvItems(self, ItMi_Addon_Lennar_Paket, 1);
	CreateInvItems(self, Itfo_Addon_Grog, 20);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10017;
};

func void Rtn_Start_10017()
{
	TA_Sit_Campfire(02, 00, 10, 00, "ADW_SENAT_CAVE_SIT");
	TA_Sit_Campfire(10, 00, 02, 00, "ADW_SENAT_CAVE_SIT");
};
