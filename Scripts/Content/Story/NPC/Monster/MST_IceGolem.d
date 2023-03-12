//**************************
//	Icegolem prototype
//**************************

prototype Mst_Default_IceGolem(C_Npc)
{
	// -------- NPC --------
	name							= "Eisgolem";
	guild							= GIL_ICEGOLEM;
	level							= 45;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 225;
	attribute[ATR_DEXTERITY]		= 225;
	attribute[ATR_HITPOINTS_MAX]	= 450;
	attribute[ATR_HITPOINTS]		= 450;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;

	// -------- protection --------
	protection[PROT_BLUNT]			= 110;
	protection[PROT_EDGE]			= 160;
	protection[PROT_POINT]			= 210;
	protection[PROT_FIRE]			= 160;
	protection[PROT_FLY]			= 160;
	protection[PROT_MAGIC]			= 160;

	// -------- damage --------
	damageType						= DAM_BLUNT;
	//	damage[DAM_INDEX_BLUNT]		= 0;
	//	damage[DAM_INDEX_EDGE]		= 0;
	//	damage[DAM_INDEX_POINT]		= 0;
	//	damage[DAM_INDEX_FIRE]		= 0;
	//	damage[DAM_INDEX_FLY]		= 0;
	//	damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_ICEGOLEM;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_STONEGOLEM;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//************
//	Visuals
//************

func void B_SetVisuals_IceGolem()
{
	Mdl_SetVisual(self, "Golem.mds");
	Mdl_ApplyOverlayMDS(self, "Golem_Icegolem.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Gol_Ice_Body",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//***************
//	Ice Golem
//***************
instance IceGolem(Mst_Default_IceGolem)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_IceGolem();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//*******************
//	Ice Golem Sylvio
//*******************
instance IceGolem_Sylvio1(Mst_Default_IceGolem)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_IceGolem();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance IceGolem_Sylvio2(Mst_Default_IceGolem)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_IceGolem();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
