instance STRF_1123_Addon_Patrick_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Patrick";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= 0;

	voice							= 7;
	id								= 1123;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_NormalBart02, BodyTex_L, ITAR_SLD_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1123;
};

func void Rtn_Start_1123()
{
	TA_Stand_Drinking(00, 00, 12, 00, "NW_BIGFARM_PATRICK");
	TA_Stand_Drinking(12, 00, 00, 00, "NW_BIGFARM_PATRICK");
};
