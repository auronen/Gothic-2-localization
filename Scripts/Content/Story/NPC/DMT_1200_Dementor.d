instance DMT_1200_Dementor(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Dementor;
	npctype							= NpcType_Main;
	guild							= GIL_DMT;
	flags							= 0;

	voice							= 19;
	id								= 1200;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_Dementor);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;
	aivar[AIV_MagicUser]			= MAGIC_ALWAYS;

	bodyStateInterruptableOverride = TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1200;
};

func void Rtn_Start_1200()
{
	TA_Stand_Dementor(08, 00, 23, 00, "NW_TROLLAREA_PATH_47"); // Joly: DMT an der Brücke bei Novizenchace Kapitel 3
	TA_Stand_Dementor(23, 00, 08, 00, "NW_TROLLAREA_PATH_47");
};
