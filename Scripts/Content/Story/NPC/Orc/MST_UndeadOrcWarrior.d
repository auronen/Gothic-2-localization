//*********************************
//	Undead Orc Warrior prototype
//*********************************

prototype Mst_Default_UndeadOrcWarrior(C_Npc)
{
	// -------- NPC --------
	name							= "Untoter Ork";
	guild							= GIL_UNDEADORC;
	level							= 40;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 100; // +100 Waffe // MIN 120!
	attribute[ATR_DEXTERITY]		= 200;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 150;
	protection[PROT_EDGE]			= 150;
	protection[PROT_POINT]			= 150;
	protection[PROT_FIRE]			= 150;
	protection[PROT_FLY]			= 150;
	protection[PROT_MAGIC]			= 0;

	// -------- hitchance --------
	HitChance[NPC_TALENT_1H]		= 80;
	HitChance[NPC_TALENT_2H]		= 80;
	HitChance[NPC_TALENT_BOW]		= 80;
	HitChance[NPC_TALENT_CROSSBOW]	= 80;

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
	aivar[AIV_MM_REAL_ID]			= ID_UNDEADORCWARRIOR;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= FALSE;

	// -------- fight tactic --------
	fight_tactic = FAI_ORC;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//*************
//	Visuals
//*************

func void B_SetVisuals_UndeadOrcWarrior()
{
	Mdl_SetVisual(self, "Orc.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"UOW_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Orc Warrior Undead **
*************************************************************************/

instance UndeadOrcWarrior(Mst_Default_UndeadOrcWarrior)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_UndeadOrcWarrior();

	// -------- aivars --------
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_OrcAxe_02);

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};
