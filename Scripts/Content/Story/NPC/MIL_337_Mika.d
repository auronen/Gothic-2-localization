instance Mil_337_Mika(Npc_Default)
{
	// -------- NPC --------
	name							= "Mika";
	npctype							= NpcType_Main;
	guild							= GIL_OUT; // Joly: Wenn GIL_OUT Probleme macht, bitte mir Bescheid geben!!! Björn
	flags							= 0;

	voice							= 12;
	id								= 337;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fatbald", Face_L_ToughBart_Quentin, BodyTex_L, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItPo_Health_01, 4); // Joly: damit er frisch bei Farm2 ankommt.

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_337;
};

func void Rtn_Start_337()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_CITY_TO_FOREST_01");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_CITY_TO_FOREST_01");
};

func void Rtn_Akil_337()
{
	TA_RunToWP(06, 00, 18, 00, "NW_FARM2_PATH_03");
	TA_RunToWP(18, 00, 06, 00, "NW_FARM2_PATH_03");
};
