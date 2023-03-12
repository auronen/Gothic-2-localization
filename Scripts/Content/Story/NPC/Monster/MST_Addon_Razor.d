/*************************************************************************
** Razor prototype(Anims wie Snapper) **
*************************************************************************/

prototype Mst_Default_Razor(C_Npc)
{
	// -------- NPC --------
	name							= "Razor";
	guild							= GIL_SNAPPER;
	level							= 18;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 90;
	attribute[ATR_DEXTERITY]		= 90;
	attribute[ATR_HITPOINTS_MAX]	= 180;
	attribute[ATR_HITPOINTS]		= 180;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 90;
	protection[PROT_EDGE]			= 90;
	protection[PROT_POINT]			= 90;
	protection[PROT_FIRE]			= 90;
	protection[PROT_FLY]			= 90;
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
	aivar[AIV_MM_REAL_ID]			= ID_RAZOR;
	//	aivar[AIV_MM_Behaviour]		= HUNTER;
	//	aivar[AIV_MM_PercRange]		= 1400;
	//	aivar[AIV_MM_DrohRange]		= 1200;
	//	aivar[AIV_MM_AttackRange]	= 700;
	//	aivar[AIV_MM_DrohTime]		= 4;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_SNAPPER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void Set_Razor_Visuals()
{
	Mdl_SetVisual(self, "Razor.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Raz_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Razor **
*************************************************************************/

// in den Instanz-Scripten bitte NUR die Werte eintragen, die vom Prototyp abweichen sollen!

instance Razor(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance CanyonRazor01(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance CanyonRazor02(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance CanyonRazor03(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance CanyonRazor04(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance CanyonRazor05(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance CanyonRazor06(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance CanyonRazor07(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance CanyonRazor08(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance CanyonRazor09(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance CanyonRazor10(Mst_Default_Razor)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	Set_Razor_Visuals();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
