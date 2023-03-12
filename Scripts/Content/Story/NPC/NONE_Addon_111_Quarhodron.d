instance NONE_ADDON_111_Quarhodron(Npc_Default)
{
	// -------- NPC --------
	name							= "Quarhodron";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_GHOST | NPC_FLAG_IMMORTAL;

	voice							= 11;
	id								= 111;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_Corristo, BodyTex_N, ITAR_Raven_Addon);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

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
	daily_routine = Rtn_Start_111;
};

func void Rtn_Start_111()
{
	TA_Ghost(08, 00, 23, 00, "ADW_ANCIENTGHOST");
	TA_Ghost(23, 00, 08, 00, "ADW_ANCIENTGHOST");
};

func void Rtn_TOT_111()
{
	TA_Ghost(08, 00, 23, 00, "TOT");
	TA_Ghost(23, 00, 08, 00, "TOT");
};
