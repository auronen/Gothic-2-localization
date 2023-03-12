/////////////////////////////////////////
// The Flail ////////////////////////////
/////////////////////////////////////////
instance PIR_1391_Addon_InExtremo_TheFlail(Npc_Default)
{
	// -------- NPC --------
	name							= "The Flail";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 4;
	flags							= 0;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 3;
	id								= 1391;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 88;
	attribute[ATR_HITPOINTS]		= 88;

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_SetVisualBody(self,	"HUM_IE_FLAIL_INSTRUMENT",DEFAULT,DEFAULT,	"HUM_HEAD_FLAIL",	DEFAULT,	DEFAULT,	-1);

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------

	// -------- fighting skills --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_iedrum);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1391;
};

func void Rtn_Start_1391()
{
	TA_Stand_Eating(05, 00, 20, 00, "WP_WASH");
	TA_Stand_Eating(20, 00, 05, 00, "WP_WASH");
};

func void Rtn_Concert_1391()
{
	TA_Concert(05, 00, 20, 00, "WP_WASH");
	TA_Concert(20, 00, 05, 00, "WP_WASH");
};
