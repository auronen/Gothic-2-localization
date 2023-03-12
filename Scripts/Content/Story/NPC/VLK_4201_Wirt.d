instance VLK_4201_Wirt(Npc_Default)
{
	// -------- NPC --------
	name							= "Wirt";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 14;
	id								= 4201;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_OldBald_Jeremiah, BodyTex_N, ITAR_BARKEEPER);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	// EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4201;
};

func void Rtn_Start_4201()
{
	TA_Stand_Guarding(04, 35, 21, 00, "NW_CITY_BEER_02");
	TA_Pee(21, 00, 21, 05, "NW_CITY_KASERN_PLACE_01");
	TA_Stand_Drinking(21, 05, 04, 30, "NW_CITY_BEER_02");
	TA_Pee(04, 30, 04, 35, "NW_CITY_KASERN_PLACE_01");
};
