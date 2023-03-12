instance STRF_1117_Straefling(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_STRAEFLING;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_STRF;
	flags							= 0;

	voice							= 13;
	id								= 1117;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal17, BodyTex_N, ITAR_Prisoner);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_Axe_L_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1117;
};

func void Rtn_Start_1117()
{
	TA_Pick_Ore(08, 00, 23, 00, "OW_MINE2_STRF");
	TA_Pick_Ore(23, 00, 08, 00, "OW_MINE2_STRF");
};
