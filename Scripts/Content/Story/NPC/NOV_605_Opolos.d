instance NOV_605_Opolos(Npc_Default)
{
	// -------- NPC --------
	name							= "Opolos";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 12;
	id								= 605;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_B_Tough_Silas, BodyTex_B, ITAR_NOV_L);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_605;
};

func void Rtn_Start_605()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_MONASTERY_SHEEP_05");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_MONASTERY_SHEEP_05");
};

func void Rtn_Favour_605()
{
	TA_Read_Bookstand(08, 00, 23, 00, "NW_MONASTERY_RUNEMAKER_07");
	TA_Read_Bookstand(23, 00, 08, 00, "NW_MONASTERY_RUNEMAKER_07");
};
