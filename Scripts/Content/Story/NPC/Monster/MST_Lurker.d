//************************
//	Lurker prototype
//************************

prototype Mst_Default_Lurker(C_Npc)
{
	// -------- NPC --------
	name							= "Lurker";
	guild							= GIL_LURKER;
	level							= 12;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 60;
	attribute[ATR_DEXTERITY]		= 60;
	attribute[ATR_HITPOINTS_MAX]	= 120;
	attribute[ATR_HITPOINTS]		= 120;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 60;
	protection[PROT_EDGE]			= 60;
	protection[PROT_POINT]			= 60;
	protection[PROT_FIRE]			= 60;
	protection[PROT_FLY]			= 60;
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
	aivar[AIV_MM_REAL_ID]			= ID_LURKER;
	aivar[AIV_MM_ThreatenBeforeAttack]= TRUE;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_LURKER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//**************
//	Visuals
//**************

// ---------------------------------------------------
func void B_SetVisuals_Lurker()
{
	Mdl_SetVisual(self, "Lurker.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Lur_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//*************
//	Lurker
//*************

instance Lurker(Mst_Default_Lurker)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Lurker();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//*************
//	Kervos Lurker
//*************

instance Kervo_Lurker1(Mst_Default_Lurker)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Lurker();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 500; // Joly: damit sie nicht in Kervos Höhle rennen.
	aivar[AIV_OriginalFightTactic]	= FAI_LURKER;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Kervo_Lurker2(Mst_Default_Lurker)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Lurker();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 500;
	aivar[AIV_OriginalFightTactic]	= FAI_LURKER;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Kervo_Lurker3(Mst_Default_Lurker)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Lurker();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 500;
	aivar[AIV_OriginalFightTactic]	= FAI_LURKER;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Kervo_Lurker4(Mst_Default_Lurker)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Lurker();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 500;
	aivar[AIV_OriginalFightTactic]	= FAI_LURKER;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Kervo_Lurker5(Mst_Default_Lurker)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Lurker();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 500;
	aivar[AIV_OriginalFightTactic]	= FAI_LURKER;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Kervo_Lurker6(Mst_Default_Lurker)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Lurker();

	// -------- aivars --------
	aivar[AIV_MaxDistToWp]			= 500;
	aivar[AIV_OriginalFightTactic]	= FAI_LURKER;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

// Addon
// Beachlurker

instance BeachLurker1(Mst_Default_Lurker)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Lurker();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance BeachLurker2(Mst_Default_Lurker)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Lurker();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance BeachLurker3(Mst_Default_Lurker)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Lurker();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
