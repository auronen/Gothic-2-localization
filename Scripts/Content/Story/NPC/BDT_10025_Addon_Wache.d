instance BDT_10025_Addon_Wache(Npc_Default)
{
	// -------- NPC --------
	name							= "Koch";
	npctype							= NPCTYPE_BL_MAIN;
	guild							= GIL_BDT;
	flags							= 0;

	voice							= 7;
	id								= 10025;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fatbald", Face_B_Normal_Kharim, BodyTex_B, ITAR_BARKEEPER);
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

	// -------- equipped weapons --------
	// EquipItem(self, ItMw_2h_Sld_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_10025;
};

func void Rtn_Start_10025()
{
	TA_Cook_Cauldron(06, 00, 12, 00, "ADW_MINE_CAULDRON");
	TA_Cook_Cauldron(12, 00, 06, 00, "ADW_MINE_CAULDRON");
};
