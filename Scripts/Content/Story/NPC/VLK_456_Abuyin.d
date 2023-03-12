instance VLK_456_Abuyin(Npc_Default)
{
	// -------- NPC --------
	name							= "Abuyin";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 13;
	id								= 456;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Normal_Sharky, BodyTex_B, ITAR_Vlk_M);
	Mdl_SetModelFatness(self, 0);
	// Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_456;
};

func void Rtn_Start_456()
{
	TA_Stand_ArmsCrossed(07, 20, 01, 20, "NW_CITY_MERCHANT_BENCH_02");
	TA_Sleep(01, 20, 07, 20, "NW_CITY_HOTEL_BED_05");
};
