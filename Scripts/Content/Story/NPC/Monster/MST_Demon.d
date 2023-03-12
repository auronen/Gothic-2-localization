//********************
//	Demon prototype
//********************

prototype Mst_Default_Demon(C_Npc)
{
	// -------- NPC --------
	name							= "Dämon";
	guild							= GIL_DEMON;
	level							= 50;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 250;
	attribute[ATR_DEXTERITY]		= 250;
	attribute[ATR_HITPOINTS_MAX]	= 500;
	attribute[ATR_HITPOINTS]		= 500;
	attribute[ATR_MANA_MAX]			= 200;
	attribute[ATR_MANA]				= 200;

	// -------- protection --------
	protection[PROT_BLUNT]			= 175;
	protection[PROT_EDGE]			= 175;
	protection[PROT_POINT]			= 175;
	protection[PROT_FIRE]			= 175;
	protection[PROT_FLY]			= 175;
	protection[PROT_MAGIC]			= 175;

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
	aivar[AIV_MM_REAL_ID]			= ID_DEMON;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_Packhunter]		= FALSE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_DEMON;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//****************
//	Visual
//****************

func void B_SetVisuals_Demon()
{
	Mdl_SetVisual(self, "Demon.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Dem_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//**********
//	Demon
//**********

instance Demon(Mst_Default_Demon)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Demon();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//******************
//	Summoned_Demon
//******************

instance Summoned_Demon(Mst_Default_Demon)
{
	// -------- NPC --------
	name							= "Beschworener Dämon";
	guild							= GIL_SUMMONED_DEMON;
	level							= 0;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Demon();

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONED_DEMON;
	aivar[AIV_PARTYMEMBER]			= TRUE;

	B_SetAttitude(self, ATT_FRIENDLY);
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Summoned;
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//		Story Demons
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//********************
//	Xardas_DT_Demons
//********************

instance Xardas_DT_Demon1(Mst_Default_Demon)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Demon();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Xardas_DT_Demon2(Mst_Default_Demon)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Demon();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Xardas_DT_Demon3(Mst_Default_Demon)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Demon();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Xardas_DT_Demon4(Mst_Default_Demon)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Demon();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Xardas_DT_Demon5(Mst_Default_Demon)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Demon();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
