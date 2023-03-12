//***************************
//	Stonegolem prototype
//***************************
prototype Mst_Default_StoneGolem(C_Npc)
{
	// -------- NPC --------
	name							= NAME_STONE_GOLEM;
	guild							= GIL_STONEGOLEM;
	level							= 25;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 125;
	attribute[ATR_DEXTERITY]		= 125;
	attribute[ATR_HITPOINTS_MAX]	= 250;
	attribute[ATR_HITPOINTS]		= 250;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 150;
	protection[PROT_FIRE]			= 100;
	protection[PROT_FLY]			= 100;
	protection[PROT_MAGIC]			= 100;

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
	aivar[AIV_MM_REAL_ID]			= ID_STONEGOLEM;
	aivar[AIV_MM_FollowTime]		= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	// -------- fight tactic --------
	fight_tactic = FAI_STONEGOLEM;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void B_SetVisuals_StoneGolem()
{
	Mdl_SetVisual(self, "Golem.mds");
	//								Body-Mesh Body-Tex Skin-Color Head-MMS Head-Tex Teeth-Tex ARMOR
	Mdl_SetVisualBody(self,	"Gol_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

//******************
//	Stone Golem
//******************

instance StoneGolem(Mst_Default_StoneGolem)
{
	// -------- NPC --------

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_StoneGolem();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};

//******************
//	Summoned Golem
//******************

instance Summoned_Golem(Mst_Default_StoneGolem)
{
	// -------- NPC --------
	name							= "Beschworener Golem";
	guild							= GIL_SUMMONED_GOLEM;
	level							= 0;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_StoneGolem();

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONED_GOLEM;
	aivar[AIV_PARTYMEMBER]			= TRUE;

	B_SetAttitude(self, ATT_FRIENDLY);
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Rtn_Summoned;
};

// ###########################
// ##
// ## Shattered Golem
// ##
// ###########################

//**************
// ZS_GolemDown
//**************

func void ZS_GolemDown()
{
	self.senses = SENSE_SMELL;
	self.senses_range = 2000;
	Npc_SetPercTime(self, 1);
	Npc_PercEnable(self, PERC_ASSESSPLAYER, B_GolemRise);

	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_GolemDown_LOOP()
{
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		AI_PlayAni(self, "T_DEAD");
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};

	return LOOP_CONTINUE;
};

func void ZS_GolemDown_END()
{
};

func void B_GolemRise()
{
	if ((Npc_GetDistToNpc(self, hero) <= 700)
	&& (Mob_HasItems("NW_GOLEMCHEST", ItSe_GolemChest_Mis) == 0))
	{
		AI_PlayAni(self, "T_RISE");
		self.NoFocus = FALSE;
		self.name = NAME_STONE_GOLEM;
		self.flags = 0;

		AI_StartState(self, ZS_MM_Attack, 0, "");
		self.bodyStateInterruptableOverride = FALSE;
		self.start_aistate = ZS_MM_AllScheduler;
		self.aivar[AIV_MM_RestStart] = OnlyRoutine;
	};
};

//************************************************************************************
//	Shattered_Golem ->liegt am Boden und setzt sich bei Annäherung des Hero zusammen
//************************************************************************************

instance Shattered_Golem(Mst_Default_StoneGolem)
{
	// -------- NPC --------
	name							= "";
	guild							= GIL_STONEGOLEM;
	level							= 18;
	flags							= NPC_FLAG_IMMORTAL;

	// -------- attributes --------

	// -------- visuals --------
	B_SetVisuals_StoneGolem();

	// -------- aivars --------
	aivar[AIV_MM_REAL_ID]			= ID_STONEGOLEM;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	bodyStateInterruptableOverride = TRUE;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- no focus --------
	NoFocus = TRUE;

	// -------- daily routine --------
	start_aistate = ZS_GolemDown;
};

// ##################################################
// ##
// ## Magischer Golem für Prüfung des Feuers
// ##
// ##################################################

instance MagicGolem(Mst_Default_StoneGolem)
{
	// -------- NPC --------
	name							= "Magischer Golem";
	// level						= // Level;
	level							= 10;

	// -------- attributes --------

	// -------- protection --------
	protection[PROT_BLUNT]			= IMMUNE;
	protection[PROT_EDGE]			= IMMUNE;
	protection[PROT_POINT]			= IMMUNE;
	protection[PROT_FIRE]			= IMMUNE;
	protection[PROT_FLY]			= IMMUNE;
	protection[PROT_MAGIC]			= IMMUNE;

	// -------- visuals --------
	B_SetVisuals_StoneGolem();

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
