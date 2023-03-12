instance NONE_Addon_114_Lance_ADW(Npc_Default)
{
	// -------- NPC --------
	name							= "Lance";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 3;
	id								= 114;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal02, BodyTex_N, ITAR_Ranger_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_NPCIsRanger]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 25); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItRi_LanceRing, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);
	EquipItem(self, ItRw_Sld_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_114;
};

func void Rtn_PreStart_114()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "ADW_PATH_TO_LOCH_00");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "ADW_PATH_TO_LOCH_00");
};
