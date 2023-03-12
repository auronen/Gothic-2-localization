instance VLK_413_Bosper(Npc_Default)
{
	// -------- NPC --------
	name							= "Bosper";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 11;
	id								= 413;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald.", Face_L_Tough_Santino, BodyTex_L, ITAR_LEATHER_L);
	Mdl_SetModelFatness(self, 0.8);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 35);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_VLK_Dagger);
	EquipItem(self, ItRw_SLD_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_413;
};

func void Rtn_Start_413()
{
	TA_Stand_Guarding(05, 00, 00, 00, "NW_CITY_MERCHANT_SHOP01_IN_02");
	TA_Sleep(00, 00, 05, 00, "NW_CITY_BED_GRITTA");
};
