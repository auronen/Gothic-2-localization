instance Vlk_2000_Thorus(Npc_Default)
{
	// -------- NPC --------
	name							= "Thorus";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 9;
	id								= 2000;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_B_Thorus, BodyTex_B, ITAR_MIL_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	// CreateInvItems(self, ItFo_Potion_Health_02, 1);

	// -------- equipped weapons --------
	// EquipItem(self, Thorus_Schwert);
	// EquipItem(self, ItRw_Crossbow_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_2000;
};

func void Rtn_Start_2000()
{
	TA_Sit_Bench(08, 00, 23, 00, "XXX");
	TA_Sit_Bench(23, 00, 08, 00, "XXX");
};
