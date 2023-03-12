instance NONE_100_Xardas(Npc_Default)
{
	// -------- NPC --------
	name							= "Xardas";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 14;
	id								= 100;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_Xardas, BodyTex_N, ITAR_XARDAS);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;
	aivar[AIV_MagicUser]			= MAGIC_ALWAYS;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	// B_CreateAmbientInv (self);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_100;
};

func void Rtn_PreStart_100()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "NW_XARDAS_START");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "NW_XARDAS_START");
};

func void Rtn_Start_100()
{
	TA_Read_Bookstand(08, 00, 23, 00, "NW_XARDAS_TOWER_IN1_28");
	TA_Read_Bookstand(23, 00, 08, 00, "NW_XARDAS_TOWER_IN1_28");
};

func void Rtn_RitualInnosEyeRepair_100()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "NW_TROLLAREA_RITUAL_01");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "NW_TROLLAREA_RITUAL_01");
};

func void Rtn_RitualInnosEye_100()
{
	TA_Circle(08, 00, 23, 00, "NW_TROLLAREA_RITUAL_01");
	TA_Circle(23, 00, 08, 00, "NW_TROLLAREA_RITUAL_01");
};

func void Rtn_Tot_100()
{
	TA_Circle(08, 00, 23, 00, "TOT");
	TA_Circle(23, 00, 08, 00, "TOT");
};
