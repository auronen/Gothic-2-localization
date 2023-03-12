instance BDT_10018_Addon_Torwache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_TORWACHE;
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 4;
	id								= 10018;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_L_Jackal, BodyTex_L, ITAR_Thorus_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10018;
};

func void Rtn_Start_10018()
{
	TA_Guard_Passage(00, 00, 12, 00, "BL_RAVEN_GUARD_01");
	TA_Guard_Passage(12, 00, 00, 00, "BL_RAVEN_GUARD_01");
};
