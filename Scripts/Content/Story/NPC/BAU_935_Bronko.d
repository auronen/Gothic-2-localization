instance BAU_935_Bronko(Npc_Default)
{
	// -------- NPC --------
	name							= "Bronko";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 935;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Normal_Kirgo, BodyTex_B, ITAR_Bau_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItMi_Gold, 35);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_935;
};

func void Rtn_PreStart_935()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_FARM4_BRONKO");
	TA_Sit_Campfire(22, 00, 08, 00, "NW_FARM4_REST_02");
};

func void Rtn_Start_935()
{
	TA_Pick_FP(08, 00, 22, 00, "NW_FARM4_FIELD_01");
	TA_Pick_FP(22, 00, 08, 00, "NW_FARM4_FIELD_01");
};
