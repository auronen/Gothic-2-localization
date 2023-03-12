instance Pal_206_Ritter(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Ritter;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 12;
	id								= 206;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_B_Normal_Kharim, BodyTex_B, ITAR_PAL_M);
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
	daily_routine = Rtn_Start_206;
};

func void Rtn_Start_206()
{
	TA_Stand_ArmsCrossed(07, 14, 19, 00, "NW_CITY_UPTOWN_PATH_06_B");
	TA_Smalltalk(19, 00, 23, 01, "NW_CITY_UPTOWN_HUT_03_05");
	TA_Sleep(23, 01, 07, 14, "NW_CITY_LEOMAR_BED_01");
};
