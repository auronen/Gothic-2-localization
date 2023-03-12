instance VLK_4112_Den(Npc_Default)
{
	// -------- NPC --------
	name							= "Den";
	npctype							= NPCTYPE_OCAMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 5;
	id								= 4112;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 1;
	attribute[ATR_HITPOINTS]		= 1;

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart_Grim, BodyTex_N, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	CreateInvItems(self, ItMi_Gold, 200);
	CreateInvItems(self, ItMi_SilverRing, 1);
	CreateInvItems(self, ItMi_GoldRing, 1);
	CreateInvItems(self, ItMi_SilverCandleHolder, 1);
	CreateInvItems(self, ItMi_GoldNecklace, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4112;
};

func void Rtn_Start_4112()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_PATH_182");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_PATH_182");
};
