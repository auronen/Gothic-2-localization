instance VLK_494_Attila(Npc_Default)
{
	// -------- NPC --------
	name							= "Attila";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 9;
	id								= 494;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Tough_Santino, BodyTex_L, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_DropDeadAndKill]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	CreateInvItem(self, ItKe_ThiefGuildKey_MIS); // Schlüssel zur geheimen Diebesgilde

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Axe);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_494;
};

func void Rtn_Start_494()
{
	TA_Stand_Guarding(04, 00, 22, 00, "NW_CITY_HABOUR_POOR_AREA_BACK_ALLEY_02");
	TA_Stand_Guarding(22, 00, 04, 00, "NW_CITY_HABOUR_POOR_AREA_BACK_ALLEY_02");
};

func void Rtn_After_494()
{
	TA_Stand_Guarding(04, 00, 22, 00, "NW_CITY_HABOUR_POOR_AREA_CAULDRON");
	TA_Stand_Guarding(22, 00, 04, 00, "NW_CITY_HABOUR_POOR_AREA_CAULDRON");
};
