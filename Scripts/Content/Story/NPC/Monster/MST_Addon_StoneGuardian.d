/*************************************************************************
** Stoneguardian prototype **
*************************************************************************/

prototype Mst_Addon_Stoneguardian(C_NPC)
{
	// -------- NPC --------
	name							= "Steinwächter";
	guild							= GIL_STONEGUARDIAN;
	level							= 18;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 90;
	attribute[ATR_DEXTERITY]		= 90;
	attribute[ATR_HITPOINTS_MAX]	= 180;
	attribute[ATR_HITPOINTS]		= 180;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 40;
	protection[PROT_EDGE]			= 90;
	protection[PROT_POINT]			= 140;
	protection[PROT_FIRE]			= 90;
	protection[PROT_FLY]			= 90;
	protection[PROT_MAGIC]			= 90;

	// -------- damage --------
	damageType						= DAM_EDGE;
	//	damage[DAM_INDEX_BLUNT]		= 0;
	//	damage[DAM_INDEX_EDGE]		= 0;
	//	damage[DAM_INDEX_POINT]		= 0;
	//	damage[DAM_INDEX_FIRE]		= 0;
	//	damage[DAM_INDEX_FLY]		= 0;
	//	damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_STONEGUARDIAN;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	bodyStateInterruptableOverride = TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_STONEGUARDIAN;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//***************
//	Visuals
//***************

func void B_SetVisuals_Stoneguardian()
{
	Mdl_SetVisual(self, "StoneGuardian.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"StG_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//**************************************************************
//	Beschworener Steinwächter
//**************************************************************

instance Summoned_Guardian(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------
	name							= NAME_Addon_Summoned_Guardian;
	guild							= GIL_SUMMONEDGuardian;
	level							= 0; // 30

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 100; // +50 Waffe
	attribute[ATR_DEXTERITY]		= 150;
	attribute[ATR_HITPOINTS_MAX]	= 150;
	attribute[ATR_HITPOINTS]		= 150;

	// -------- protection --------
	protection[PROT_BLUNT]			= 75;
	protection[PROT_EDGE]			= 125;
	protection[PROT_POINT]			= 175;
	protection[PROT_FIRE]			= 125;
	protection[PROT_FLY]			= 125;

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONEDGuardian;
	aivar[AIV_PARTYMEMBER]			= TRUE;

	B_SetAttitude(self, ATT_FRIENDLY);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Summoned;
};

//**************************************************************
//	Steinwächter
//**************************************************************

instance Stoneguardian(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//**************************************************************
// Gruft in der Mine
//**************************************************************
instance Stoneguardian_MineDead1(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_MineDead2(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_MineDead3(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_MineDead4(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//**************************************************************
//	Steinwächter
//**************************************************************

instance Stoneguardian_Dead1(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItWr_HitPointStonePlate1_Addon, 1);

	// -------- daily routine --------
};

instance Stoneguardian_Dead2(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_Dead3(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_MerdarionsSchluessel(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ITKE_PORTALTEMPELWALKTHROUGH_ADDON, 1);

	// -------- daily routine --------
};

//**************************************************************
//	OrnamentSteinwächter
//**************************************************************

instance Stoneguardian_Ornament(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItem(self, ItMi_Ornament_Addon);

	// -------- daily routine --------
};

//**************************************************************
//	im Gebäude der Heiler
//**************************************************************

instance Stoneguardian_Heiler(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ITKE_Addon_Heiler, 1);

	// -------- daily routine --------
};

instance Stoneguardian_Sani01(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_Sani02(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_Sani03(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_Sani04(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_Sani05(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_Sani06(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//**************************************************************
//	im Gebäude der Heiler
//**************************************************************

instance Stoneguardian_NailedPortalADW1(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2400; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_NailedPortalADW2(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 3100; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//**************************************************************
//	Showcase im Valley
//**************************************************************

instance Stoneguardian_NailedValleyShowcase_01(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2000; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_NailedValleyShowcase_02(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 1000; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//**************************************************************
//	ADANOSTEMPEL
//**************************************************************

instance Stoneguardian_ADANOSTEMPELENTRANCE_01(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2000; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_ADANOSTEMPELENTRANCE_02(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2000; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_ADANOSTEMPELENTRANCE_03(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2000; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_ADANOSTEMPELENTRANCE_04(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 900; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

// --------------------------------------------------------------

instance Stoneguardian_TREASUREPITS_05A(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 3000; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_TREASUREPITS_05B(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2700; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_TREASUREPITS_05C(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2900; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_TREASUREPITS_05D(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2400; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_TREASUREPITS_05E(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2900; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_TREASUREPITS_05F(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2800; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

// --------------------------------------------------------------

instance Stoneguardian_TREASUREPITS_09A(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2400; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_TREASUREPITS_09B(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2400; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_TREASUREPITS_09C(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2000; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_TREASUREPITS_09D(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2400; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_TREASUREPITS_09E(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2700; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_TREASUREPITS_09F(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 2900; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

// --------------------------------------------------------------

instance Stoneguardian_RHADEMES_14A(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 700; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_RHADEMES_14B(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 1200; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_RHADEMES_14C(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 700; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_RHADEMES_14D(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 700; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_RHADEMES_14E(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 1200; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Stoneguardian_RHADEMES_14F(Mst_Addon_Stoneguardian)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Stoneguardian();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 700; aivar[AIV_OriginalFightTactic] = FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
