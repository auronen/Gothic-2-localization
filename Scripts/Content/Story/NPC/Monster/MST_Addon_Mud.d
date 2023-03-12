////////////////////////////////////////////////////////////////////////////////
//
//	The Return of VLK_574_Mud (enjoy the silence remix)
//

prototype Mst_Default_Mud(C_Npc)
{
	// -------- NPC --------
	name							= "Mud";
	guild							= GIL_ZOMBIE;
	level							= 0; // Gothic I

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 20; // Gothic I
	attribute[ATR_DEXTERITY]		= 10; // Gothic I
	attribute[ATR_HITPOINTS_MAX]	= 88; // Gothic I
	attribute[ATR_HITPOINTS]		= 88; // Gothic I
	attribute[ATR_MANA_MAX]			= 0; // Gothic I
	attribute[ATR_MANA]				= 0; // Gothic I

	// -------- damage --------
	damageType						= DAM_EDGE;

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

func void B_SetVisuals_Mud()
{
	Mdl_SetVisual(self, "Zombie.mds");
	Mdl_SetVisualBody(self,	"Zom_Body",				0,		0,			"Hum_Head_Pony",	Face_N_ZombieMud,0,		NO_ARMOR);
};

func void B_CreateInvItems_Mud()
{
	CreateInvItems(self, ItFo_Water, 1); // Gothic I
	CreateInvItems(self, ItMi_Gold, 5); // Gothic I (ItMi_Nugget)
};

////////////////////////////////////////////////////////////////////////////////

instance Undead_Mud(Mst_Default_Mud)
{
	// -------- NPC --------
	name							= NAME_Addon_Undead_Mud;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Mud();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	B_CreateInvItems_Mud();

	// -------- daily routine --------
};

instance Summoned_Mud(Mst_Default_Mud)
{
	// -------- NPC --------
	name							= NAME_Addon_Summoned_Mud;
	guild							= GIL_SUMMONEDZOMBIE;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Mud();

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONEDZOMBIE;
	aivar[AIV_PARTYMEMBER]			= TRUE;

	B_SetAttitude(self, ATT_FRIENDLY);
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	B_CreateInvItems_Mud();

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Summoned;
};
