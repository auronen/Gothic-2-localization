instance BDT_1098_Addon_Snaf(Npc_Default)
{
	// -------- NPC --------
	name							= "Snaf";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 1;
	id								= 1098;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Snaf, BodyTex_N, ITAR_BARKEEPER);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItFo_Addon_LousHammer, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1098;
};

func void Rtn_Start_1098()
{
	TA_Stand_Sweeping(07, 00, 10, 00, "BL_INN_BAR_02");
	TA_Stand_WP(10, 00, 15, 00, "BL_INN_BAR_05");
	TA_Cook_Cauldron(15, 00, 21, 00, "BL_INN_BAR_05");
	TA_Stand_WP(21, 00, 07, 00, "BL_INN_BAR_05");
};
