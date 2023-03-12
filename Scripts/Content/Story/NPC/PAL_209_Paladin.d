instance Pal_209_Paladin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Ritter;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 4;
	id								= 209;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_P_Normal_Fletcher, BodyTex_P, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
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
	EquipItem(self, ItMw_2H_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_209;
};

func void Rtn_Start_209()
{
	TA_Practice_Sword(07, 10, 19, 02, "NW_CITY_TRAIN_02");
	TA_Smalltalk(19, 02, 23, 06, "NW_CITY_UPTOWN_HUT_03_01_B");
	TA_Sleep(23, 06, 07, 10, "NW_CITY_LEOMAR_BED_04");
};
