instance BDT_10023_Addon_Wache(Npc_Default)
{
	// -------- NPC --------
	name							= "Sklavenwache";
	npctype							= NpcType_Main;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 11;
	id								= 10023;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_L_Tough01, BodyTex_L, ITAR_Bloodwyn_Addon);
	Mdl_SetModelFatness(self, -1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 60);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Sld_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10023;
};

func void Rtn_Start_10023()
{
	TA_Stand_Guarding(06, 00, 12, 00, "ADW_MINE_LAGER_01");
	TA_Stand_Guarding(12, 00, 06, 00, "ADW_MINE_LAGER_01");
};

func void Rtn_SOUP_10023()
{
	TA_Stand_Eating(06, 00, 12, 00, "ADW_MINE_27");
	TA_Stand_Eating(12, 00, 06, 00, "ADW_MINE_27");
};
