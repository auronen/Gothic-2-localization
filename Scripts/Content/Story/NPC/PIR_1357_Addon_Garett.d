instance PIR_1357_Addon_Garett(Npc_Default)
{
	// -------- NPC --------
	name							= "Garett";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 9;
	id								= 1357;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_N_NormalBart05, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness(self, 1.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	CreateInvItems(self, ItBE_Addon_Prot_EdgPoi, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Piratensaebel);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1357;
};

func void Rtn_Start_1357()
{
	TA_Stand_WP(08, 00, 20, 00, "ADW_PIRATECAMP_HUT1_01");
	TA_Stand_Drinking(20, 00, 08, 00, "ADW_PIRATECAMP_BEACH_10");
};
