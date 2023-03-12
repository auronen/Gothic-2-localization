instance NOV_651_ToterNovize(Npc_Default)
{
	// -------- NPC --------
	name							= Name_ToterNovize;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_NOV;
	flags							= 0;

	voice							= 3;
	id								= 651;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Mordrag, BodyTex_N, ITAR_NOV_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	// EquipItem(self, ItMw_1h_Nov_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_651;
};

func void Rtn_Start_651()
{
	TA_Sleep(08, 00, 22, 00, "NW_TROLLAREA_PATH_70");
	TA_Sleep(22, 00, 08, 00, "NW_TROLLAREA_PATH_70");
};
