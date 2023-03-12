instance PIR_1354_Addon_Henry(Npc_Default)
{
	// -------- NPC --------
	name							= "Henry";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 4;
	id								= 1354;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_P_Normal01, BodyTex_P, ITAR_PIR_M_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_NewsOverride]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 90);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Krummschwert);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1354;
};

func void Rtn_Start_1354()
{
	TA_Guard_Passage(05, 00, 20, 00, "ADW_PIRATECAMP_WAY_04");
	TA_Guard_Passage(20, 00, 05, 00, "ADW_PIRATECAMP_WAY_04");
};
