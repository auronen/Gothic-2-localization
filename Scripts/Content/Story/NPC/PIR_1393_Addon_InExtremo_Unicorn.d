/////////////////////////////////////////
// Unicorn //////////////////////////////
/////////////////////////////////////////

instance PIR_1393_Addon_InExtremo_Unicorn(Npc_Default)
{
	// -------- NPC --------
	name							= "Unicorn";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 4;
	flags							= 0;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 4;
	id								= 1393;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 88;
	attribute[ATR_HITPOINTS]		= 88;

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_SetVisualBody(self,	"HUM_IE_UNICORN_INSTRUMENT",DEFAULT,DEFAULT,"HUM_HEAD_UNICORN",	DEFAULT,	DEFAULT,	-1);

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------

	// -------- fighting skills --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_IELaute);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1393;
};

func void Rtn_Start_1393()
{
	TA_Stand_Eating(05, 00, 20, 00, "WP_PICK");
	TA_Stand_Eating(20, 00, 05, 00, "WP_PICK");
};

func void Rtn_Concert_1393()
{
	TA_Concert(05, 00, 20, 00, "WP_PICK");
	TA_Concert(20, 00, 05, 00, "WP_PICK");
};
