//*************************
//	Giant_Bug prototype
//*************************

prototype Mst_Default_Giant_Bug(C_Npc)
{
	// -------- NPC --------
	name							= "Feldräuber";
	guild							= GIL_GIANT_BUG;
	level							= 8;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 40;
	attribute[ATR_DEXTERITY]		= 40;
	attribute[ATR_HITPOINTS_MAX]	= 80;
	attribute[ATR_HITPOINTS]		= 80;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 40;
	protection[PROT_EDGE]			= 40;
	protection[PROT_POINT]			= 40;
	protection[PROT_FIRE]			= 40;
	protection[PROT_FLY]			= 40;
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
	aivar[AIV_MM_REAL_ID]			= ID_GIANT_BUG;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_GIANT_BUG;
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

func void B_SetVisuals_Giant_Bug()
{
	Mdl_SetVisual(self, "Giant_Bug.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Giant_Bug_Body",		DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//***************
//	Giant_Bug
//***************

instance Giant_Bug(Mst_Default_Giant_Bug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//**************************************
//	junge Giant_Bug (für Spielstart)
//**************************************

instance YGiant_Bug(Mst_Default_Giant_Bug)
{
	// -------- NPC --------
	name							= "Junger Feldräuber";
	level							= 2;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_HITPOINTS_MAX]	= 20;
	attribute[ATR_HITPOINTS]		= 20;

	// -------- protection --------
	protection[PROT_BLUNT]			= 10;
	protection[PROT_EDGE]			= 10;
	protection[PROT_POINT]			= 10;
	protection[PROT_FIRE]			= 10;
	protection[PROT_FLY]			= 10;
	protection[PROT_MAGIC]			= 0;

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);

	// -------- fight tactic --------
	fight_tactic = FAI_GIANT_BUG;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance YGiant_Bug_VinoRitual1(Mst_Default_Giant_Bug)
{
	// -------- NPC --------
	name							= "Junger Feldräuber";
	level							= 4;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_HITPOINTS_MAX]	= 20;
	attribute[ATR_HITPOINTS]		= 20;

	// -------- protection --------
	protection[PROT_BLUNT]			= 10;
	protection[PROT_EDGE]			= 10;
	protection[PROT_POINT]			= 10;
	protection[PROT_FIRE]			= 10;
	protection[PROT_FLY]			= 10;
	protection[PROT_MAGIC]			= 0;

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);

	// -------- fight tactic --------
	fight_tactic = FAI_GIANT_BUG;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance YGiant_Bug_VinoRitual2(Mst_Default_Giant_Bug)
{
	// -------- NPC --------
	name							= "Junger Feldräuber";
	level							= 4;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS]		= 40;

	// -------- protection --------
	protection[PROT_BLUNT]			= 0;
	protection[PROT_EDGE]			= 0;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 0;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 0;

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);

	// -------- fight tactic --------
	fight_tactic = FAI_GIANT_BUG;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//**************************************
//	Lobarts_Giant_Bug s (für Miliz Aufnahmemission)
//**************************************

instance Lobarts_Giant_Bug1(Mst_Default_Giant_Bug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Lobarts_Giant_Bug2(Mst_Default_Giant_Bug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Lobarts_Giant_Bug3(Mst_Default_Giant_Bug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Lobarts_Giant_Bug4(Mst_Default_Giant_Bug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Lobarts_Giant_Bug5(Mst_Default_Giant_Bug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Lobarts_Giant_Bug6(Mst_Default_Giant_Bug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Lobarts_Giant_Bug7(Mst_Default_Giant_Bug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Giant_Bug();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
