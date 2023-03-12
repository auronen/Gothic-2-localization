//********************
//	Wolf prototype
//********************

prototype Mst_Default_Wolf(C_Npc)
{
	// -------- NPC --------
	name							= "Wolf";
	guild							= GIL_WOLF;
	level							= 6;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_HITPOINTS_MAX]	= 60;
	attribute[ATR_HITPOINTS]		= 60;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 30;
	protection[PROT_EDGE]			= 30;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 30;
	protection[PROT_FLY]			= 30;
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
	aivar[AIV_MM_REAL_ID]			= ID_WOLF;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_Packhunter]		= TRUE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_WOLF;
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

func void B_SetVisuals_Wolf()
{
	Mdl_SetVisual(self, "Wolf.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Wol_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//************
//	Wolf
//************

instance Wolf(Mst_Default_Wolf)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Wolf();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};

//*****************
//	Summoned Wolf
//*****************

instance Summoned_Wolf(Mst_Default_Wolf)
{
	// -------- NPC --------
	name							= "Beschworener Wolf";
	guild							= GIL_SUMMONED_WOLF;
	level							= 0; // 10

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 50;
	attribute[ATR_DEXTERITY]		= 50;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS]		= 100;

	// -------- protection --------
	protection[PROT_BLUNT]			= 75;
	protection[PROT_EDGE]			= 75;
	protection[PROT_POINT]			= 25;
	protection[PROT_FIRE]			= 75;
	protection[PROT_FLY]			= 75;

	// -------- visuals --------
	B_SetVisuals_Wolf();

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONED_WOLF;
	aivar[AIV_PARTYMEMBER]			= TRUE;

	B_SetAttitude(self, ATT_FRIENDLY);
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Summoned;
};

//************
//	YWolf
//************

instance YWolf(Mst_Default_Wolf)
{
	// -------- NPC --------
	name							= "Junger Wolf";
	level							= 3;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_HITPOINTS_MAX]	= 20;
	attribute[ATR_HITPOINTS]		= 20;

	// -------- protection --------
	protection[PROT_BLUNT]			= 10;
	protection[PROT_EDGE]			= 10;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 10;
	protection[PROT_FLY]			= 10;

	// -------- visuals --------
	B_SetVisuals_Wolf();

	// -------- fight tactic --------
	fight_tactic = FAI_MONSTER_COWARD;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};

//************
//	Missions Wölfe für Pepe: YWolf
//************

instance PEPES_YWolf1(Mst_Default_Wolf)
{
	// -------- NPC --------
	name							= "Junger Wolf";
	level							= 3;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_HITPOINTS_MAX]	= 30;
	attribute[ATR_HITPOINTS]		= 30;

	// -------- protection --------
	protection[PROT_BLUNT]			= 15;
	protection[PROT_EDGE]			= 15;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 15;
	protection[PROT_FLY]			= 15;

	// -------- visuals --------
	B_SetVisuals_Wolf();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};

instance PEPES_YWolf2(Mst_Default_Wolf)
{
	// -------- NPC --------
	name							= "Junger Wolf";
	level							= 3;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_HITPOINTS_MAX]	= 30;
	attribute[ATR_HITPOINTS]		= 30;

	// -------- protection --------
	protection[PROT_BLUNT]			= 15;
	protection[PROT_EDGE]			= 15;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 15;
	protection[PROT_FLY]			= 15;

	// -------- visuals --------
	B_SetVisuals_Wolf();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};

instance PEPES_YWolf3(Mst_Default_Wolf)
{
	// -------- NPC --------
	name							= "Junger Wolf";
	level							= 3;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_HITPOINTS_MAX]	= 30;
	attribute[ATR_HITPOINTS]		= 30;

	// -------- protection --------
	protection[PROT_BLUNT]			= 15;
	protection[PROT_EDGE]			= 15;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 15;
	protection[PROT_FLY]			= 15;

	// -------- visuals --------
	B_SetVisuals_Wolf();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};

instance PEPES_YWolf4(Mst_Default_Wolf)
{
	// -------- NPC --------
	name							= "Junger Wolf";
	level							= 3;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_HITPOINTS_MAX]	= 30;
	attribute[ATR_HITPOINTS]		= 30;

	// -------- protection --------
	protection[PROT_BLUNT]			= 15;
	protection[PROT_EDGE]			= 15;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 15;
	protection[PROT_FLY]			= 15;

	// -------- visuals --------
	B_SetVisuals_Wolf();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};
