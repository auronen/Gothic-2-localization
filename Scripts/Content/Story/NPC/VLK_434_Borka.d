instance VLK_434_Borka(Npc_Default)
{
	// -------- NPC --------
	name							= "Borka";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 11;
	id								= 434;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_L_Ian, BodyTex_L, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	CreateInvItems(self, ItMi_Joint, 20);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_Start_434;
};

func void Rtn_Start_434()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_CITY_HABOUR_PUFF_ENTRANCE");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_CITY_HABOUR_PUFF_ENTRANCE");
};

func void Rtn_Prison_434() // nach seiner Verhaftung M.F.
{
	TA_Sit_Campfire(08, 00, 22, 00, "NW_CITY_HABOUR_KASERN_BORKA");
	TA_Sit_Campfire(22, 00, 08, 00, "NW_CITY_HABOUR_KASERN_BORKA");
};
