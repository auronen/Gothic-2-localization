instance NONE_ADDON_115_Eremit(Npc_Default)
{
	// -------- NPC --------
	name							= "Eremit";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 4;
	id								= 115;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_Weak_BaalNetbek, BodyTex_N, NO_ARMOR);
	Mdl_SetModelFatness(self, 1);
	// Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_115;
};

func void Rtn_Start_115()
{
	TA_Sit_Bench(07, 00, 09, 00, "ADW_VALLEY_BENCH");
	TA_Cook_Pan(09, 00, 11, 00, "ADW_VALLEY_BENCH");
	TA_Stand_Eating(11, 00, 13, 00, "ADW_VALLEY_BENCH");
	TA_Sit_Bench(13, 00, 15, 00, "ADW_VALLEY_BENCH");
	TA_Cook_Pan(15, 00, 17, 00, "ADW_VALLEY_BENCH");
	TA_Stand_Eating(17, 00, 19, 00, "ADW_VALLEY_BENCH");
	TA_Sit_Bench(19, 00, 01, 00, "ADW_VALLEY_BENCH");
	TA_Sleep(01, 00, 07, 00, "ADW_VALLEY_PATH_031_HUT");
};
