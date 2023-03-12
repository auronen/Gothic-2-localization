instance PAL_297_Ritter(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_RITTER;
	npctype							= NpcType_Main;
	guild							= GIL_PAL;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 4;
	id								= 297;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Normal08, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItRu_TeleportPassNW, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Pal_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_297;
};

func void Rtn_Start_297()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_PASS_GATEGUARD_02");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_PASS_GATEGUARD_02");
};
