//***************************
//	 Sheep prototype
//***************************

prototype Mst_Default_Sheep(C_Npc)
{
	// -------- NPC --------
	name							= "Schaf";
	guild							= GIL_SHEEP;
	level							= 1;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 5;
	attribute[ATR_DEXTERITY]		= 5;
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
	//	damage[DAM_INDEX_BLUNT]		= 0;
	//	damage[DAM_INDEX_EDGE]		= 0;
	//	damage[DAM_INDEX_POINT]		= 0;
	//	damage[DAM_INDEX_FIRE]		= 0;
	//	damage[DAM_INDEX_FLY]		= 0;
	//	damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SHEEP;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;

	// -------- fight tactic --------
	// fight_tactic = FAI_Giant_Rat;// Schafe kämpfen nicht!!
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//************
//	Visuals
//************

func void B_SetVisuals_Sheep()
{
	Mdl_SetVisual(self, "Sheep.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Sheep_Body",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

// ------ Hammel ------
func void B_SetVisuals_Hammel()
{
	Mdl_SetVisual(self, "Sheep.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Hammel_Body",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//***************
//	Sheep
//***************

instance Sheep(Mst_Default_Sheep)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Sheep();

	// -------- aivars --------
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//***************
//	Hammel
//***************

instance Hammel(Mst_Default_Sheep)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Hammel();

	// -------- aivars --------
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//***************
//	Follow_Sheep
//***************

instance Follow_Sheep(Mst_Default_Sheep)
{
	// -------- NPC --------
	name							= "Liesel";

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Sheep();

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE; // Liesel knn getötet werden, ohne daß jemand sich anpißt!
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Follow_Sheep;
};

//***************
//	Follow_Sheep_AKIL
//***************

instance Follow_Sheep_AKIL(Mst_Default_Sheep)
{
	// -------- NPC --------
	name							= "Schaf";

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Sheep();

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Follow_Sheep;
};

//******************************
//	Balthasar_Sheeps
//******************************

instance Balthasar_Sheep1(Mst_Default_Sheep)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Hammel();

	// -------- aivars --------
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

instance Balthasar_Sheep2(Mst_Default_Sheep)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Sheep();

	// -------- aivars --------
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

instance Balthasar_Sheep3(Mst_Default_Sheep)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_Sheep();

	// -------- aivars --------
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};
