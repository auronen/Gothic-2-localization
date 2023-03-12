instance PIR_1353_Addon_Morgan(Npc_Default)
{
	// -------- NPC --------
	name							= "Morgan";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 7;
	id								= 1353;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_L_Tough_Santino, BodyTex_L, ITAR_PIR_M_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Doppelaxt);

	// -------- daily routine --------
	daily_routine = Rtn_START_1353;
};

func void Rtn_START_1353()
{
	TA_Sleep(05, 00, 20, 00, "ADW_PIRATECAMP_CAVE_BED");
	TA_Sleep(20, 00, 05, 00, "ADW_PIRATECAMP_CAVE_BED");
};

func void Rtn_GregIsBack_1353()
{
	TA_Saw(23, 00, 09, 00, "ADW_PIRATECAMP_SAW_01");
	TA_Saw(09, 00, 23, 00, "ADW_PIRATECAMP_SAW_01");
};
