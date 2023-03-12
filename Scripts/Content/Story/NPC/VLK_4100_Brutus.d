instance VLK_4100_Brutus(Npc_Default)
{
	// -------- NPC --------
	name							= "Brutus";
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_MIL;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 4100;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_P_ToughBald, BodyTex_P, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4100;
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN

func void Rtn_Start_4100()
{
	TA_Smith_Sharp(08, 00, 23, 00, "OC_FOLTER_SHARP");
	TA_Smith_Sharp(23, 00, 08, 00, "OC_FOLTER_SHARP");
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN
func void Rtn_Meatbugs_4100()
{
	TA_Guard_Passage(08, 00, 23, 00, "OC_BRUTUS_MEATBUGS");
	TA_Guard_Passage(23, 00, 08, 00, "OC_BRUTUS_MEATBUGS");
};
