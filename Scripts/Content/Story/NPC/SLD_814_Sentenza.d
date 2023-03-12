instance SLD_814_Sentenza(Npc_Default)
{
	// -------- NPC --------
	name							= "Sentenza";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 9;
	id								= 814;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Tough_Okyl, BodyTex_N, ITAR_SLD_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_MM_FollowTime]		= 60;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	CreateInvItems(self, itfo_apple, 1); // KEIN Ambient-Inv

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_814;
};

func void Rtn_Start_814()
{
	TA_Stand_Eating(08, 00, 22, 00, "NW_BIGFARM_ALLEE_01");
	TA_Stand_Eating(22, 00, 08, 00, "NW_BIGFARM_ALLEE_01");
};

func void Rtn_Follow_814()
{
	TA_Follow_Player(08, 00, 22, 00, "NW_BIGFARM_VORPOSTEN1_02");
	TA_Follow_Player(22, 00, 08, 00, "NW_BIGFARM_VORPOSTEN1_02");
};
