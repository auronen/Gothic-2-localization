instance BDT_10021_Addon_Wache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_Guard;
	npctype							= NPCTYPE_BL_AMBIENT;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 13;
	id								= 10021;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_P_Normal02, BodyTex_P, ITAR_Thorus_Addon);
	Mdl_SetModelFatness(self, 2);
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
	EquipItem(self, ItMw_Zweihaender4);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10021;
};

func void Rtn_Start_10021()
{
	TA_Stand_Guarding(00, 00, 12, 00, "BL_RAVEN_GUARD_04");
	TA_Stand_Guarding(12, 00, 00, 00, "BL_RAVEN_GUARD_04");
};
