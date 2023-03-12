instance BDT_1088_Addon_Torwache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_TORWACHE;
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 6;
	id								= 1088;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_NormalBart_Huno, BodyTex_N, ITAR_Thorus_Addon);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 85);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1088;
};

func void Rtn_Start_1088()
{
	TA_Guard_Passage(09, 00, 21, 00, "BL_UP_GUARD");
	TA_Guard_Passage(21, 00, 09, 00, "BL_UP_GUARD");
};
