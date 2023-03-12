//*************************
//	Meatbug prototype
//*************************

prototype Mst_Default_Meatbug(C_Npc)
{
	// -------- NPC --------
	name							= "Fleischwanze";
	guild							= GIL_MEATBUG;
	level							= 1;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 1;
	attribute[ATR_DEXTERITY]		= 1;
	attribute[ATR_HITPOINTS_MAX]	= 10;
	attribute[ATR_HITPOINTS]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 0;
	protection[PROT_EDGE]			= 0;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 0;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 0;

	// -------- damage --------
	damageType						= DAM_EDGE;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_MEATBUG;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_WuselStart]		= OnlyRoutine;

	// -------- fight tactic --------
//	fight_tactic =; // kämpfen nicht!
	senses = SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//***********
//	Visuals
//***********

func void B_SetVisuals_Meatbug()
{
	Mdl_SetVisual(self, "Meatbug.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Mbg_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//***************
//	Meatbug
//***************

instance Meatbug(Mst_Default_Meatbug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Meatbug();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//******************************
// Mission Meatbugs Kapitel 4
//******************************

//***************
//	Meatbug_Brutus1
//***************
instance Meatbug_Brutus1(Mst_Default_Meatbug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Meatbug();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//***************
//	Meatbug_Brutus2
//***************

instance Meatbug_Brutus2(Mst_Default_Meatbug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Meatbug();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//***************
//	Meatbug_Brutus3
//***************

instance Meatbug_Brutus3(Mst_Default_Meatbug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Meatbug();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//***************
//	Meatbug_Brutus4
//***************

instance Meatbug_Brutus4(Mst_Default_Meatbug)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Meatbug();

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
