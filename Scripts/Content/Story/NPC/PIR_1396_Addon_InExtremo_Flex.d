/////////////////////////////////////////
// Flex /////////////////////////////////
/////////////////////////////////////////
instance PIR_1396_Addon_InExtremo_Flex(Npc_Default)
{
	// -------- NPC --------
	name							= "Flex";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 4;
	flags							= 0;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 13;
	id								= 1396;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 88;
	attribute[ATR_HITPOINTS]		= 88;

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_SetVisualBody(self,	"Hum_IE_Flex_INSTRUMENT",DEFAULT,DEFAULT,	"HUM_HEAD_Flex",	DEFAULT,	DEFAULT,	-1);

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------

	// -------- fighting skills --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_IEDudelBlau);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1396;
};

func void Rtn_Start_1396()
{
	TA_Stand_Eating(05, 00, 20, 00, "WP_POTION_ALCHEMY");
	TA_Stand_Eating(20, 00, 05, 00, "WP_POTION_ALCHEMY");
};

func void Rtn_Concert_1396()
{
	TA_Concert(05, 00, 20, 00, "WP_POTION_ALCHEMY");
	TA_Concert(20, 00, 05, 00, "WP_POTION_ALCHEMY");
};
