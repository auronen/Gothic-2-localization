instance VLK_471_Edda(Npc_Default)
{
	// -------- NPC --------
	name							= "Edda";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 17;
	id								= 471;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe.", FaceBabe_B_RedLocks, BodyTex_B, ITAR_VlkBabe_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_471;
};

func void Rtn_Start_471()
{
	TA_Cook_Cauldron(08, 00, 22, 00, "NW_CITY_HABOUR_POOR_AREA_CAULDRON");
	TA_Cook_Cauldron(22, 00, 08, 00, "NW_CITY_HABOUR_POOR_AREA_CAULDRON");
};
