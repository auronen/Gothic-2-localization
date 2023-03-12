//*********************
//	Zombie prototype
//*********************

prototype Mst_Default_Zombie(C_Npc)
{
	// -------- NPC --------
	name							= "Zombie";
	guild							= GIL_ZOMBIE;
	level							= 20;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_DEXTERITY]		= 100;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 50;
	protection[PROT_POINT]			= 50;
	protection[PROT_FIRE]			= 50;
	protection[PROT_FLY]			= 50;
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
	aivar[AIV_MM_REAL_ID]			= ID_ZOMBIE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_ZOMBIE;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//*************
//	Visuals
//*************

// -------------------------------------------------------------
// Zwei Hautfarben mit jeweils zwei Gesichtstexturen
// -------------------------------------------------------------
func void B_SetVisuals_Zombie01()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		0,			"Zom_Head",			0,			DEFAULT,	-1);
};

// -------------------------------------------------------------
func void B_SetVisuals_Zombie02()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		0,			"Zom_Head",			1,			DEFAULT,	-1);
};

// -------------------------------------------------------------
func void B_SetVisuals_Zombie03()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		1,			"Zom_Head",			0,			DEFAULT,	-1);
};

// -------------------------------------------------------------
func void B_SetVisuals_Zombie04()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		1,			"Zom_Head",			1,			DEFAULT,	-1);
};

//***********
//	Zombie01
//***********

instance Zombie01(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Zombie01();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//************
//	Zombie02
//************

instance Zombie02(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Zombie02();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//*************
//	Zombie03
//*************

instance Zombie03(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Zombie03();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//*************
//	Zombie04
//*************

instance Zombie04(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Zombie04();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//********************************
//	Bloodwyn Zombie
//********************************
instance Zombie_Addon_Knecht(Mst_Default_Zombie)
{
	// -------- NPC --------
	name							= "Raven's Knecht";

	// -------- attributes --------

	// -------- visuals --------
	Mdl_SetVisual(self, "Zombie.mds");
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		0,			"Zom_Head",			0,			DEFAULT,	ITAR_Thorus_Addon);

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//********************************
//	Bloodwyn Zombie
//********************************
instance Zombie_Addon_Bloodwyn(Mst_Default_Zombie)
{
	// -------- NPC --------
	name							= "Erweckter Bloodwyn";
	level							= 25;

	// -------- attributes --------
	attribute[ATR_HITPOINTS_MAX]	= 1600;
	attribute[ATR_HITPOINTS]		= 1600;

	// -------- visuals --------
	Mdl_SetVisual(self, "Zombie.mds");
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		0,			"Zom_Head",			0,			DEFAULT,	ITAR_Thorus_Addon);

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//********************************
//	Paladin Zombies
//********************************
func void ZS_Pal_ZOMBIE()
{
	self.senses = SENSE_SMELL;
	self.senses_range = 2000;
	Npc_SetPercTime(self, 1);
	Npc_PercEnable(self, PERC_ASSESSPLAYER, B_Pal_ZOMBIE_RISE);

	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_Pal_ZOMBIE_Loop()
{
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		AI_PlayAni(self, "T_DOWN");
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};

	return LOOP_CONTINUE;
};

func void ZS_Pal_ZOMBIE_END()
{
};

func void B_Pal_ZOMBIE_RISE()
{
	if (Npc_GetDistToNpc(self, hero) <= 1400)
	{
		AI_PlayAni(self, "T_RISE");

		AI_StartState(self, ZS_MM_Attack, 0, "");
		self.bodyStateInterruptableOverride = FALSE;
		self.start_aistate = ZS_MM_AllScheduler;
		self.aivar[AIV_MM_RestStart] = OnlyRoutine;
	};
};

func void B_SetVisuals_Pal_Zombie01()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		0,			"Zom_Head",			0,			DEFAULT,	ITAR_PAL_SKEL);
};

// -------------------------------------------------------------
func void B_SetVisuals_Pal_Zombie02()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		0,			"Zom_Head",			1,			DEFAULT,	ITAR_PAL_SKEL);
};

// -------------------------------------------------------------
func void B_SetVisuals_Pal_Zombie03()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		1,			"Zom_Head",			0,			DEFAULT,	ITAR_PAL_SKEL);
};

// -------------------------------------------------------------
func void B_SetVisuals_Pal_Zombie04()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		1,			"Zom_Head",			1,			DEFAULT,	ITAR_PAL_SKEL);
};

instance Pal_Zombie01(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Pal_Zombie01();

	// -------- aivars --------
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_Pal_ZOMBIE;
};

instance Pal_Zombie02(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Pal_Zombie02();

	// -------- aivars --------
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_Pal_ZOMBIE;
};

instance Pal_Zombie03(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Pal_Zombie03();

	// -------- aivars --------
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_Pal_ZOMBIE;
};

instance Pal_Zombie04(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Pal_Zombie04();

	// -------- aivars --------
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_Pal_ZOMBIE;
};

// MayaZobies
func void B_SetVisuals_Maya_Zombie01()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		0,			"Zom_Head",			0,			DEFAULT,	ITAR_MayaZombie_Addon);
};

// -------------------------------------------------------------
func void B_SetVisuals_Maya_Zombie02()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		0,			"Zom_Head",			1,			DEFAULT,	ITAR_MayaZombie_Addon);
};

// -------------------------------------------------------------
func void B_SetVisuals_Maya_Zombie03()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		1,			"Zom_Head",			0,			DEFAULT,	ITAR_MayaZombie_Addon);
};

// -------------------------------------------------------------
func void B_SetVisuals_Maya_Zombie04()
{
	Mdl_SetVisual(self, "Zombie.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		1,			"Zom_Head",			1,			DEFAULT,	ITAR_MayaZombie_Addon);
};

instance MayaZombie01(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Maya_Zombie01();

	// -------- aivars --------
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_Pal_ZOMBIE;
};

instance MayaZombie02(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Maya_Zombie02();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance MayaZombie03(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Maya_Zombie03();

	// -------- aivars --------
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_Pal_ZOMBIE;
};

instance MayaZombie04(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Maya_Zombie04();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//*************
//	Einer der Totenwächter
//*************

instance MayaZombie04_Totenw(Mst_Default_Zombie)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Maya_Zombie04();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//************************
//	SummonedZombie
//***********************

instance Summoned_Zombie(Mst_Default_Zombie)
{
	// -------- NPC --------
	name							= NAME_Addon_Summoned_Zombie;
	guild							= GIL_SUMMONEDZombie;
	level							= 0;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 200;
	attribute[ATR_DEXTERITY]		= 200;

	// -------- visuals --------
	B_SetVisuals_Maya_Zombie04();

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONEDZombie;
	aivar[AIV_PARTYMEMBER]			= TRUE;

	B_SetAttitude(self, ATT_FRIENDLY);
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Summoned;
};
