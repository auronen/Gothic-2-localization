instance BAU_982_Grimbald(Npc_Default)
{
	// -------- NPC --------
	name							= "Grimbald";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 7;
	id								= 982;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_B_Normal_Kirgo, BodyTex_B, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_SLD_Sword);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_982;
};

func void Rtn_Start_982()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_TROLLAREA_PATH_79");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_TROLLAREA_PATH_79");
};

func void Rtn_Jagd_982()
{
	TA_RunToWP(08, 00, 23, 00, "NW_TROLLAREA_PATH_80");
	TA_RunToWP(23, 00, 08, 00, "NW_TROLLAREA_PATH_80");
};

func void Rtn_JagdOver_982()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_TROLLAREA_PATH_79");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_TROLLAREA_PATH_79");
};
