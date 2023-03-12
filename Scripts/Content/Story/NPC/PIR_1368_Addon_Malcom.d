instance PIR_1368_Addon_Malcom(Npc_Default)
{
	// -------- NPC --------
	name							= "Malcom";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= 0;

	voice							= 4;
	id								= 1368;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Normal_Sly, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 1.1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 10);

	// -------- inventory --------
	CreateInvItems(self, ItWr_TwoHStonePlate3_Addon, 1); // Joly: dring lassen, wird abgefragt!

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Addon_PIR1hAxe);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1368;
};

func void Rtn_PreStart_1368()
{
	TA_Sit_Campfire(06, 00, 10, 00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Saw(10, 00, 14, 00, "ADW_PIRATECAMP_WAY_15");
	TA_Sit_Campfire(14, 00, 18, 00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Saw(18, 00, 22, 00, "ADW_PIRATECAMP_WAY_15");
	TA_Sit_Campfire(22, 00, 02, 00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Sit_Campfire(02, 00, 06, 00, "ADW_PIRATECAMP_LUMBER_SIT");
};

func void Rtn_Start_1368()
{
	TA_Sleep(06, 00, 18, 00, "ADW_PIRATECAMP_SECRETCAVE_02");
	TA_Sleep(18, 00, 06, 00, "ADW_PIRATECAMP_SECRETCAVE_02");
};
