instance Mil_315_Kasernenwache(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Miliz; // Kasernenwache
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 7;
	id								= 315;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Tough_Skip, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 55);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_315;
};

func void Rtn_Start_315()
{
	TA_Smith_Sharp(07, 05, 20, 59, "NW_CITY_KASERN_ARMORY_SHARP");
	TA_Sit_Campfire(20, 59, 00, 03, "NW_CITY_BARRACK02_SMALLTALK_01");
	TA_Sleep(00, 03, 07, 05, "NW_CITY_BARRACK01_BED_RUGA");
};
