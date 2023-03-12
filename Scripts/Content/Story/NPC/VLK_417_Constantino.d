instance VLK_417_Constantino(Npc_Default)
{
	// -------- NPC --------
	name							= "Constantino";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 10;
	id								= 417;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic.", Face_N_OldBald_Jeremiah, BodyTex_N, ITAR_SMITH);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 35);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, itmw_1h_bau_axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_417;
};

func void Rtn_Start_417()
{
	TA_Potion_Alchemy(08, 00, 22, 00, "NW_CITY_ALCHEMY_VELAX");
	TA_Sleep(22, 00, 08, 00, "NW_CITY_BED_VELAX");
};
