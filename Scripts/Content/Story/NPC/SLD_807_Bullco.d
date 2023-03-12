instance SLD_807_Bullco(Npc_Default)
{
	// -------- NPC --------
	name							= "Bullco";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 6;
	id								= 807;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal_Olli_Kahn, BodyTex_N, ITAR_SLD_M);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- aivars --------
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_807;
};

func void Rtn_Start_807()
{
	TA_Sit_Chair(08, 00, 22, 00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Sit_Chair(22, 00, 08, 00, "NW_BIGFARM_KITCHEN_SYLVIO");
};

func void Rtn_Pee_807()
{
	TA_Pee(08, 00, 08, 15, "NW_BIGFARM_TREE");
	TA_Sit_Chair(08, 15, 10, 00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee(10, 00, 10, 15, "NW_BIGFARM_TREE");
	TA_Sit_Chair(10, 15, 12, 00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee(12, 00, 12, 15, "NW_BIGFARM_TREE");
	TA_Sit_Chair(12, 15, 14, 00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee(14, 00, 14, 15, "NW_BIGFARM_TREE");
	TA_Sit_Chair(14, 15, 16, 00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee(16, 00, 16, 15, "NW_BIGFARM_TREE");
	TA_Sit_Chair(16, 15, 18, 00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee(18, 00, 18, 15, "NW_BIGFARM_TREE");
	TA_Sit_Chair(18, 15, 20, 00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee(20, 00, 20, 15, "NW_BIGFARM_TREE");
	TA_Sit_Chair(20, 15, 08, 00, "NW_BIGFARM_KITCHEN_SYLVIO");
};

func void Rtn_Tot_807()
{
	TA_Sleep(08, 00, 23, 00, "TOT");
	TA_Sleep(23, 00, 08, 00, "TOT");
};
