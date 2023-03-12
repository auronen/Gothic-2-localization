instance VLK_465_Buerger(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_BUERGER;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 1;
	id								= 465;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_Normal_Erpresser, BodyTex_N, ITAR_Vlk_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 40);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_SWORD);

	// -------- daily routine --------
	daily_routine = Rtn_Start_465;
};

func void Rtn_Start_465()
{
	TA_Stand_Eating(08, 00, 22, 00, "NW_CITY_HABOUR_FIREPLACE_01");
	TA_Sleep(22, 00, 08, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_05_BED_01");
};
