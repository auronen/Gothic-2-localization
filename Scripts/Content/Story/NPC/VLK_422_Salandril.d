instance VLK_422_Salandril(Npc_Default)
{
	// -------- NPC --------
	name							= "Salandril";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 13;
	id								= 422;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak_Asghan, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_422;
};

func void Rtn_Start_422()
{
	TA_Stand_ArmsCrossed(08, 00, 10, 00, "NW_CITY_SALANDRIL");
	TA_Potion_Alchemy(10, 00, 13, 00, "NW_CITY_SALANDRIL");
	TA_Read_Bookstand(13, 00, 15, 00, "NW_CITY_SHOP_SALANDRIL_03");

	TA_Stand_ArmsCrossed(15, 00, 17, 00, "NW_CITY_SALANDRIL");
	TA_Potion_Alchemy(17, 00, 19, 00, "NW_CITY_SALANDRIL");
	TA_Read_Bookstand(19, 00, 22, 00, "NW_CITY_SHOP_SALANDRIL_03");

	TA_Sleep(22, 00, 08, 00, "NW_CITY_SHOP_SALANDRIL_BED");
};

func void Rtn_KlosterUrteil_422()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "ALTAR");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "ALTAR");
};
