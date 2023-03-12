instance Pal_214_Ritter(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Ritter;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 12;
	id								= 214;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_L_Tough01, BodyTex_L, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 55);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_214;
};

func void Rtn_Start_214()
{
	TA_Smalltalk(07, 05, 19, 05, "NW_CITY_UPTOWN_PATH_05");
	TA_Read_Bookstand(19, 05, 23, 00, "NW_CITY_UPTOWN_HUT_03_03");
	TA_Sleep(23, 00, 07, 05, "NW_CITY_LEOMAR_BED_05");
};
