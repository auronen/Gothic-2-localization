/////////////////////////////////////////
// Dr Pymonte ///////////////////////////
/////////////////////////////////////////
instance PIR_1390_Addon_InExtremo_DrPymonte(Npc_Default)
{
	// -------- NPC --------
	name							= "Dr. Pymonte";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 4;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 12;
	id								= 1390;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 88;
	attribute[ATR_HITPOINTS]		= 88;

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_SetVisualBody(self,	"HUM_IE_PYMONTE_INSTRUMENT",DEFAULT,DEFAULT,"HUM_HEAD_PYMONTE",	DEFAULT,	DEFAULT,	-1);

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------

	// -------- fighting skills --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_IEHarfe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1390;
};

func void Rtn_Start_1390()
{
	TA_Stand_Eating(05, 00, 20, 00, "WP_COOK_CAULDRON");
	TA_Stand_Eating(20, 00, 05, 00, "WP_COOK_CAULDRON");
};

func void Rtn_Concert_1390()
{
	TA_Concert(05, 00, 20, 00, "WP_COOK_CAULDRON");
	TA_Concert(20, 00, 05, 00, "WP_COOK_CAULDRON");
};
