/////////////////////////////////////////
// Yellow Pfeiffer //////////////////////
/////////////////////////////////////////
instance PIR_1394_Addon_InExtremo_YellowPfeiffer(Npc_Default)
{
	// -------- NPC --------
	name							= "Yellow Pfeiffer";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 4;
	flags							= 0;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 9;
	id								= 1394;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 88;
	attribute[ATR_HITPOINTS]		= 88;

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_SetVisualBody(self,	"Hum_IE_Pfeiffer_INSTRUMENT",DEFAULT,DEFAULT,"HUM_HEAD_Pfeiffer",DEFAULT,	DEFAULT,	-1);

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------

	// -------- fighting skills --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_IEDudelGelb);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1394;
};

func void Rtn_Start_1394()
{
	TA_Stand_Guarding(05, 00, 20, 00, "WP_COOK_CAULDRON");
	TA_Stand_Guarding(20, 00, 05, 00, "WP_COOK_CAULDRON");
};

func void Rtn_Concert_1394()
{
	TA_Concert(05, 00, 20, 00, "WP_COOK_CAULDRON");
	TA_Concert(20, 00, 05, 00, "WP_COOK_CAULDRON");
};
