//****************************
//	Icedragon prototype
//****************************

prototype Mst_Default_Dragon_Ice(C_Npc)
{
	// -------- NPC --------
	name							= "Eisdrache";
	guild							= GIL_DRAGON;
	level							= 600;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 200;
	attribute[ATR_DEXTERITY]		= 200;
	attribute[ATR_HITPOINTS_MAX]	= 1000;
	attribute[ATR_HITPOINTS]		= 1000;
	attribute[ATR_MANA_MAX]			= 1000;
	attribute[ATR_MANA]				= 1000;

	// -------- protection --------
	protection[PROT_BLUNT]			= 180;
	protection[PROT_EDGE]			= 180;
	protection[PROT_POINT]			= 180;
	protection[PROT_FIRE]			= 180;
	protection[PROT_FLY]			= 180;
	protection[PROT_MAGIC]			= 180;

	// -------- damage --------
	damageType						= DAM_FIRE | DAM_FLY;
	//	damage[DAM_INDEX_BLUNT]		= 0;
	//	damage[DAM_INDEX_EDGE]		= 0;
	//	damage[DAM_INDEX_POINT]		= 0;
	damage[DAM_INDEX_FIRE]			= 159;
	damage[DAM_INDEX_FLY]			= 1; // Opfer fliegt für Fire+Fly
	//	damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_DRAGON_ICE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MaxDistToWp]			= 10000;
	aivar[AIV_OriginalFightTactic]	= FAI_DRAGON;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	bodyStateInterruptableOverride = TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_DRAGON;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_DRAGON_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_DragonRest;
};

//*************
//	Visuals
//*************

func void B_SetVisuals_Dragon_Ice()
{
	Mdl_SetVisual(self, "Dragon.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Dragon_Ice_Body",		DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//*********************
//	Icedragon
//*********************

instance Dragon_Ice(Mst_Default_Dragon_Ice)
{
	// -------- NPC --------
	name							= "Finkregh";
	flags							= NPC_FLAG_IMMORTAL;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Dragon_Ice();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
