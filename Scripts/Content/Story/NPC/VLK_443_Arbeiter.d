instance VLK_443_Arbeiter(Npc_Default)
{
	// -------- NPC --------
	name							= "Arbeiter";
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 1;
	id								= 443;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak04, BodyTex_N, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Mace_L_04);

	// -------- daily routine --------
	daily_routine = Rtn_Start_443;
};

func void Rtn_Start_443()
{
	TA_Saw(04, 55, 19, 05, "NW_CITY_HABOUR_08");
	TA_Smalltalk(19, 05, 04, 55, "NW_CITY_HABOUR_02");
};
