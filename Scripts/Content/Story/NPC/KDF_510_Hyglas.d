instance KDF_510_Hyglas(Npc_Default)
{
	// -------- NPC --------
	name							= "Hyglas";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	flags							= 0;

	voice							= 14;
	id								= 510;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_N_NormalBart09, BodyTex_N, ITAR_KDF_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_510;
};

func void Rtn_Start_510()
{
	TA_Read_Bookstand(08, 00, 23, 00, "NW_MONASTERY_RUNEMAKER_08");
	TA_Read_Bookstand(23, 00, 08, 00, "NW_MONASTERY_RUNEMAKER_08");
};
