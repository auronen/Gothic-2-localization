instance Mil_306_Tuerwache(Npc_Default)
{
	// -------- NPC --------
	name							= "Richterhaus Wache";
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 7;
	id								= 306;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_L_ToughBald01, BodyTex_L, ITAR_MIL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_306;
};

func void Rtn_Start_306()
{
	TA_Stand_Guarding(08, 00, 18, 45, "NW_CITY_JUDGE_GUARD_01");
	TA_Stand_Guarding(18, 45, 22, 00, "NW_CITY_UPTOWN_JUDGE_01");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_CITY_JUDGE_GUARD_01");
};
