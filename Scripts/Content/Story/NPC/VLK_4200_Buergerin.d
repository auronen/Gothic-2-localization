instance VLK_4200_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 4200;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_PinkHair, BodyTex_N, ITAR_VlkBabe_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4200;
};

func void Rtn_Start_4200()
{
	TA_Smalltalk(08, 00, 22, 00, "NW_CITY_MAINSTREET_05_B");
	TA_Sleep(22, 00, 08, 00, "NW_CITY_UPTOWN_PATH_08"); // FIXME
};
