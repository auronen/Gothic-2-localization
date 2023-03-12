instance VLK_418_Gritta(Npc_Default)
{
	// -------- NPC --------
	name							= "Gritta";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 418;

	// -------- attributes --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 5;
	attribute[ATR_HITPOINTS]		= 5;

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_YoungBlonde, BodyTex_N, ITAR_VlkBabe_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	// KEIN AmbientInv!!!
	CreateInvItems(self, ItMi_Gold, 100); // für die Matteo Mission

	// -------- daily routine --------
	daily_routine = Rtn_Start_418;
};

func void Rtn_Start_418()
{
	TA_Stand_Sweeping(08, 00, 12, 00, "NW_CITY_MERCHANT_HUT_01_IN");
	TA_Cook_Stove(12, 00, 14, 00, "NW_CITY_BED_BOSPER_B");
	TA_Stand_Sweeping(14, 00, 18, 00, "NW_CITY_MERCHANT_HUT_01_IN");
	TA_Cook_Stove(18, 00, 20, 00, "NW_CITY_BED_BOSPER_B");
	TA_Read_Bookstand(20, 00, 23, 00, "NW_CITY_MERCHANT_HUT_01_IN");
	TA_Sleep(23, 00, 08, 00, "NW_CITY_BED_BOSPER_B");
};
