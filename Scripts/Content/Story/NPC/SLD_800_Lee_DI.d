// #############################################
// ##
// ## Dracheninsel
// ##
// ############################################

instance SLD_800_Lee_DI(Npc_Default)
{
	// -------- NPC --------
	name							= "Lee";
	npctype							= NpcType_Friend;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 4;
	id								= 8000;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Lee, BodyTex_N, ITAR_SLD_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_PARTYMEMBER]			= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_8000;
};

func void Rtn_Start_8000()
{
	TA_Stand_Guarding(08, 00, 23, 00, "SHIP_CREW_01");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_06");
};

func void Rtn_UNDEADDRAGONDEAD_8000()
{
	TA_Stand_Guarding(08, 00, 23, 00, "DI_ORKAREA_14");
	TA_Stand_Guarding(23, 00, 08, 00, "DI_ORKAREA_14");
};
