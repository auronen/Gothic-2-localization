instance VLK_4002_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 4002;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_Anne, BodyTex_N, ITAR_VlkBabe_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4002;
};

func void Rtn_Start_4002()
{
	TA_Cook_Stove(06, 00, 08, 00, "NW_CITY_RICHTER_COOK");
	TA_Stand_Sweeping(08, 00, 10, 00, "NW_CITY_UPTOWN_JUDGE_02");
	TA_Smalltalk(10, 00, 14, 00, "NW_CITY_UPTOWN_PATH_15");
	TA_Cook_Stove(14, 00, 16, 00, "NW_CITY_RICHTER_COOK");
	TA_Sit_Chair(16, 00, 18, 00, "NW_CITY_RICHTER");
	TA_Stand_Sweeping(18, 00, 20, 00, "NW_CITY_UPTOWN_JUDGE_02");
	TA_Sit_Throne(20, 00, 23, 00, "NW_CITY_UPTOWN_JUDGE_THRONE_01");
	TA_Sleep(23, 00, 06, 00, "NW_CITY_RICHTER_BED_WEIB");
};
