instance Pal_215_Ritter(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Ritter;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 12;
	id								= 215;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_L_Tough02, BodyTex_L, ITAR_PAL_M);
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
	daily_routine = Rtn_Start_215;
};

func void Rtn_Start_215()
{
	TA_Practice_Sword(07, 08, 19, 01, "NW_CITY_TRAIN_01");
	TA_Smalltalk(19, 01, 23, 07, "NW_CITY_UPTOWN_HUT_03_01");
	TA_Sleep(23, 07, 07, 08, "NW_CITY_LEOMAR_BED_03");
};
