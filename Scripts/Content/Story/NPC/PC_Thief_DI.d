// #############################################
// ##
// ## Dracheninsel
// ##
// ############################################

instance PC_Thief_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Diego";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 11;
	id								= 31;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_L_Diego, BodyTex_L, ITAR_DIEGO);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_SLD_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_31;
};

func void Rtn_Start_31()
{
	TA_Smalltalk(08, 00, 23, 00, "SHIP_CREW_05");
	TA_Smalltalk(23, 00, 08, 00, "SHIP_CREW_05");
};

func void Rtn_UNDEADDRAGONDEAD_31()
{
	TA_Stand_WP(08, 00, 23, 00, "WP_UNDEAD_RIGHT_DOWN_01");
	TA_Stand_WP(23, 00, 08, 00, "WP_UNDEAD_RIGHT_DOWN_01");
};

func void Rtn_SittingShipDI_31()
{
	TA_Sit_Bench(08, 00, 23, 00, "SHIP_CREW_04");
	TA_Sit_Bench(23, 00, 08, 00, "SHIP_CREW_04");
};
