instance NONE_ADDON_112_Rhademes(Npc_Default)
{
	// -------- NPC --------
	name							= "Rhademes";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_GHOST | NPC_FLAG_IMMORTAL;

	voice							= 3;
	id								= 112;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- protection --------
	protection[PROT_POINT]			= 99999999;

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Ske_Head", 0, BodyTex_N, ITAR_Raven_Addon);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;
	aivar[AIV_NoFightParker]		= TRUE;
	aivar[AIV_MagicUser]			= MAGIC_ALWAYS;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	// B_CreateAmbientInv (self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_112;
};

func void Rtn_Start_112()
{
	TA_GhostWusel(08, 00, 20, 00, "ADW_ADANOSTEMPEL_RHADEMES_02");
	TA_GhostWusel(20, 00, 08, 00, "ADW_ADANOSTEMPEL_RHADEMES_02");
};

func void Rtn_TOT_112()
{
	TA_Ghost(08, 00, 20, 00, "TOT");
	TA_Ghost(20, 00, 08, 00, "TOT");
};
