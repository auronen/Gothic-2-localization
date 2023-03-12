instance BAU_973_Rukhar(Npc_Default)
{
	// -------- NPC --------
	name							= "Rukhar";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 12;
	id								= 973;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_L_NormalBart02, BodyTex_L, ITAR_Bau_M);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_973;
};

func void Rtn_Start_973()
{
	TA_Stand_Drinking(08, 00, 22, 00, "NW_TAVERNE_RUKHAR");
	TA_Sit_Bench(22, 00, 08, 00, "NW_TAVERNE_OUT_01");
};

func void Rtn_Wettkampf_973()
{
	TA_Stand_Drinking(08, 00, 22, 00, "NW_TAVERNE_RUKHAR");
	TA_Stand_Drinking(22, 00, 08, 00, "NW_TAVERNE_RUKHAR");
};

func void Rtn_WettkampfRukharWon_973()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_TAVERNE_RUKHAR");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_TAVERNE_RUKHAR");
};

func void Rtn_WettkampfRukharLost_973()
{
	TA_Sit_Bench(08, 00, 22, 00, "NW_TAVERNE_OUT_01");
	TA_Sit_Bench(22, 00, 08, 00, "NW_TAVERNE_OUT_01");
};
