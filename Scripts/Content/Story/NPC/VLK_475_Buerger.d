instance VLK_475_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Buerger;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 1;
	id								= 475;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak_Herek, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_475;
};

func void Rtn_Start_475()
{
	TA_Stand_ArmsCrossed(10, 55, 18, 50, "NW_CITY_WATCH_FIGHT_02");
	TA_Smalltalk(18, 50, 03, 05, "NW_CITY_HABOUR_04");
	TA_Stand_Drinking(03, 05, 05, 05, "NW_CITY_HABOUR_PUFF_IN_01");
	TA_Smalltalk(05, 05, 10, 05, "NW_CITY_HABOUR_POOR_AREA_01");
};
