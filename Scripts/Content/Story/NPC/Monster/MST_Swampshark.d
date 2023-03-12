//***************************
//	Swampshark prototype
//***************************

prototype Mst_Default_Swampshark(C_Npc)
{
	// -------- NPC --------
	name							= "Sumpfhai";
	guild							= GIL_SWAMPSHARK;
	level							= 24;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 120;
	attribute[ATR_DEXTERITY]		= 120;
	attribute[ATR_HITPOINTS_MAX]	= 240;
	attribute[ATR_HITPOINTS]		= 240;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 100;
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 100;
	protection[PROT_FIRE]			= 100;
	protection[PROT_FLY]			= 100;
	protection[PROT_MAGIC]			= 0;

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
	aivar[AIV_MM_REAL_ID]			= ID_SWAMPSHARK;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_SWAMPSHARK;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//***************
//	Visuals
//***************

func void B_SetVisuals_Swampshark()
{
	Mdl_SetVisual(self, "Swampshark.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Swa_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Swampshark **
*************************************************************************/

instance Swampshark(Mst_Default_Swampshark)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Swampshark();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** Swampshark Mission Logan Sumpfhaijagd(MIS_HlpLogan) **
*************************************************************************/
instance MIS_Addon_Swampshark_01(Mst_Default_Swampshark)
{
	// -------- NPC --------
	level							= 20;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;

	// -------- protection --------
	protection[PROT_BLUNT]			= 100;
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 100;

	// -------- visuals --------
	B_SetVisuals_Swampshark();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance MIS_Addon_Swampshark_02(Mst_Default_Swampshark)
{
	// -------- NPC --------
	level							= 20;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;

	// -------- protection --------
	protection[PROT_BLUNT]			= 100;
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 100;

	// -------- visuals --------
	B_SetVisuals_Swampshark();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance MIS_Addon_Swampshark_03(Mst_Default_Swampshark)
{
	// -------- NPC --------
	level							= 20;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;

	// -------- protection --------
	protection[PROT_BLUNT]			= 100;
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 100;

	// -------- visuals --------
	B_SetVisuals_Swampshark();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance MIS_Addon_Swampshark_Lou(Mst_Default_Swampshark)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Swampshark();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ITKE_Addon_Tavern_01, 1);

	// -------- daily routine --------
};
