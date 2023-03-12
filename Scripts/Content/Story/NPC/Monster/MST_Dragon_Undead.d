//***************************
//	Undeaddragon prototype
//***************************

prototype Mst_Default_Dragon_Undead(C_Npc)
{
	// -------- NPC --------
	name							= "Untoter Drache";
	guild							= GIL_DRAGON;
	level							= 1000;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 400;
	attribute[ATR_DEXTERITY]		= 400;
	attribute[ATR_HITPOINTS_MAX]	= 2000;
	attribute[ATR_HITPOINTS]		= 2000;
	attribute[ATR_MANA_MAX]			= 2000;
	attribute[ATR_MANA]				= 2000;

	// -------- protection --------
	protection[PROT_BLUNT]			= 200;
	protection[PROT_EDGE]			= 200;
	protection[PROT_POINT]			= 200;
	protection[PROT_FIRE]			= 200;
	protection[PROT_FLY]			= 200;
	protection[PROT_MAGIC]			= 200;

	// -------- damage --------
	damageType						= DAM_FIRE | DAM_FLY;
	//	damage[DAM_INDEX_BLUNT]		= 0;
	//	damage[DAM_INDEX_EDGE]		= 0;
	//	damage[DAM_INDEX_POINT]		= 0;
	damage[DAM_INDEX_FIRE]			= 249;
	damage[DAM_INDEX_FLY]			= 1;
	//	damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_DRAGON_UNDEAD;
	aivar[AIV_MM_FollowTime]		= 1000;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MaxDistToWp]			= 1000;
	aivar[AIV_OriginalFightTactic]	= FAI_DRAGON;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	bodyStateInterruptableOverride = TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_DRAGON;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_DragonRest;
};

//*************
//	Visuals
//*************

func void B_SetVisuals_Dragon_Undead()
{
	Mdl_SetVisual(self, "Dragon.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Dragon_Undead_Body",	DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//*****************
//	Undeaddragon
//*****************
instance Dragon_Undead(Mst_Default_Dragon_Undead)
{
	// -------- NPC --------
	flags							= NPC_FLAG_IMMORTAL;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Dragon_Undead();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- effect --------
	effect = "spellfx_undead_dragon";

	// -------- daily routine --------
};
