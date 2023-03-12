instance KDF_503_Karras(Npc_Default)
{
	// -------- NPC --------
	name							= "Karras";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	flags							= 0;

	voice							= 10;
	id								= 503;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_L_NormalBart02, BodyTex_L, ITAR_KDF_L);
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
	daily_routine = Rtn_Start_503;
};

func void Rtn_Start_503()
{
	TA_Read_Bookstand(08, 00, 23, 00, "NW_MONASTERY_RUNEMAKER_02");
	TA_Read_Bookstand(08, 00, 23, 00, "NW_MONASTERY_RUNEMAKER_02");
};
