instance STRF_1131_Addon_Sklave(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Addon_Sklave;
	npctype							= NpcType_Main;
	guild							= GIL_STRF;
	flags							= 0;

	voice							= 3;
	id								= 1131;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_Weak_Asghan, BodyTex_N, ITAR_Prisoner);
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
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1131;
};

func void Rtn_Start_1131()
{
	TA_Stand_WP(08, 00, 23, 00, "ADW_MINE_SKLAVENTOD_01");
	TA_Stand_WP(23, 00, 08, 00, "ADW_MINE_SKLAVENTOD_01");
};
