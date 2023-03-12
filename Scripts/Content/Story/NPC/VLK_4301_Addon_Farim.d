instance VLK_4301_Addon_Farim(Npc_Default)
{
	// -------- NPC --------
	name							= "Farim";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= NPC_FLAG_IMMORTAL; // Joly: HauptstoryCharakter Addon

	voice							= 11;
	id								= 4301;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_NormalBart08, BodyTex_N, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItMi_Aquamarine, 1); // Joly: für Mission

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4301;
};

func void Rtn_Start_4301()
{
	TA_Repair_Hut(08, 00, 12, 00, "NW_CITY_WAY_TO_SHIP_FISCHER_05");
	TA_Stand_Guarding(12, 00, 16, 00, "NW_CITY_WAY_TO_SHIP_FISCHER_06");
	TA_Repair_Hut(16, 00, 20, 00, "NW_CITY_WAY_TO_SHIP_FISCHER_05");
	TA_Stand_Guarding(20, 00, 01, 30, "NW_CITY_WAY_TO_SHIP_FISCHER_06");
	TA_Sleep(01, 30, 08, 00, "NW_CITY_WAY_TO_SHIP_FISCHER_04");
};
