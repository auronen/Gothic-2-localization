instance Pal_216_Cedric(Npc_Default)
{
	// -------- NPC --------
	name							= "Cedric";
	npctype							= NpcType_Main;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 12;
	id								= 216;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_NormalBart10, BodyTex_N, ITAR_PAL_M);
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
	EquipItem(self, ItMw_1H_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_216;
};

func void Rtn_Start_216()
{
	TA_Practice_Sword(07, 00, 19, 00, "NW_CITY_TRAIN_01");
	TA_Sleep(19, 00, 07, 00, "NW_CITY_LEOMAR_BED_03");
};
