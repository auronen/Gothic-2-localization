instance Mil_324_Peck(Npc_Default)
{
	// -------- NPC --------
	name							= "Peck";
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 12;
	id								= 324;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Normal_Orik, BodyTex_B, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItKe_City_Tower_05, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_324;
};

func void Rtn_Start_324() // Im Bordell
{
	TA_Smalltalk(08, 00, 23, 00, "NW_CITY_HABOUR_PUFF_PECK");
	TA_Smalltalk(23, 00, 08, 00, "NW_CITY_HABOUR_PUFF_PECK");
};

func void Rtn_Storage_324() // bei der Waffenausgabe
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_CITY_ARMORY_PECK");
	TA_Sleep(22, 00, 08, 00, "NW_CITY_BARRACK02_BED_PECK");
};
