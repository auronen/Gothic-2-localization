instance STRF_1130_Addon_Sklave(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_Sklave;
	npctype							= NPCTYPE_BL_AMBIENT;
	guild							= GIL_STRF;
	flags							= 0;

	voice							= 3;
	id								= 1130;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_L_ToughBart_Quentin, BodyTex_L, ITAR_Prisoner);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_NoFightParker]		= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 10);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1130;
};

func void Rtn_Start_1130()
{
	TA_Pick_Ore(08, 00, 23, 00, "ADW_MINE_SLAVE_01");
	TA_Pick_Ore(23, 00, 08, 00, "ADW_MINE_SLAVE_01");
};

func void Rtn_Flucht_1130()
{
	TA_RunToWP(08, 00, 23, 00, "ADW_BL_HOEHLE_02");
	TA_RunToWP(23, 00, 08, 00, "ADW_BL_HOEHLE_02");
};
