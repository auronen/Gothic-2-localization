instance Mil_321_Rangar(Npc_Default)
{
	// -------- NPC --------
	name							= "Rangar";
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 7;
	id								= 321;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Tough_Skip, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItKe_City_Tower_02, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_321;
};

func void Rtn_Start_321()
{
	TA_Stand_Drinking(08, 00, 20, 00, "NW_CITY_BEER_06");
	TA_Stand_Drinking(20, 00, 08, 00, "NW_CITY_BEER_06");
};

func void Rtn_PrePalCampKlau_321()
{
	TA_Sit_Bench(03, 00, 24, 00, "NW_CITY_WAY_TO_SHIP_03");
	TA_Sit_Bench(24, 00, 03, 00, "NW_CITY_WAY_TO_SHIP_03");
};

func void Rtn_PalCampKlau_321()
{
	TA_Stand_Drinking(04, 00, 23, 00, "NW_CITY_BEER_06");
	TA_Pick_FP(23, 00, 04, 00, "NW_CITY_PALCAMP_15"); // Joly:Klauen am Palcamp (Martins Auftrag)
};
