instance VLK_437_Brahim(Npc_Default)
{
	// -------- NPC --------
	name							= "Brahim";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 7;
	id								= 437;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_CoolPock, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_Start_437;
};

func void Rtn_Start_437()
{
	TA_Sit_Bench(08, 00, 22, 00, "NW_CITY_HABOUR_HUT_01_FRONT");
	TA_Sleep(22, 00, 08, 00, "NW_CITY_BED_BRAHIM");
};
