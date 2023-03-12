//********************
//	Swarm prototype
//********************

prototype Mst_Default_Swarm(C_Npc)
{
	// -------- NPC --------
	name							= "Flugschreckenschwarm";
	guild							= GIL_BLOODFLY;
	level							= 6;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_HITPOINTS_MAX]	= 60;
	attribute[ATR_HITPOINTS]		= 60;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;

	// -------- protection --------
	protection[PROT_BLUNT]			= 0;
	protection[PROT_EDGE]			= 0;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 0;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 0;

	// -------- damage --------
	damageType						= DAM_FLY;
	//	damage[DAM_INDEX_BLUNT]		= 0;
	//	damage[DAM_INDEX_EDGE]		= 0;
	//	damage[DAM_INDEX_POINT]		= 0;
	//	damage[DAM_INDEX_FIRE]		= 0;
	//	damage[DAM_INDEX_FLY]		= 0;
	//	damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_BLOODFLY;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MaxDistToWp]			= 700;
	aivar[AIV_MM_Packhunter]		= FALSE;
	aivar[AIV_MM_WuselStart]		= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_BLOODFLY;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//******************
//		Visuals
//******************

func void B_SetVisuals_Swarm()
{
	Mdl_SetVisual(self, "Swarm.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Irrlicht_Body",		DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//*************
//	Swarm
//*************

instance Swarm(Mst_Default_Swarm)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Swarm();

	// -------- fight tactic --------
	fight_tactic = FAI_BLOODFLY;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//*************
//	Swarm Detector
//*************

instance Swarm_Detector(Mst_Default_Swarm)
{
	// -------- NPC --------
	npctype							= NpcType_Main;
	level							= 0;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Swarm();

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_NoFightParker]		= TRUE;

	B_SetAttitude(self, ATT_FRIENDLY);
	senses_range = 3000;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Summoned;
};
