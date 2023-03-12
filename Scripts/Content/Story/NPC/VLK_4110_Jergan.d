instance VLK_4110_Jergan(Npc_Default)
{
	// -------- NPC --------
	name							= "Jergan";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 13;
	id								= 4110;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Whistler, BodyTex_N, ITAR_BDT_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 75);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4110;
};

func void Rtn_Start_4110()
{
	TA_Sit_Campfire(08, 00, 23, 00, "OW_STAND_JERGAN");
	TA_Sit_Campfire(23, 00, 08, 00, "OW_STAND_JERGAN");
};

func void Rtn_Fajeth_4110()
{
	TA_Sit_Campfire(08, 00, 23, 00, "OW_NEWMINE_04");
	TA_Sit_Campfire(23, 00, 08, 00, "OW_NEWMINE_04");
};
