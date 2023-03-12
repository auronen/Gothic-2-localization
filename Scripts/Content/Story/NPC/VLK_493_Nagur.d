instance VLK_493_Nagur(Npc_Default)
{
	// -------- NPC --------
	name							= "Nagur";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 8;
	id								= 493;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Normal17, BodyTex_N, ITAR_Vlk_L);
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
	EquipItem(self, ItMw_1h_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_493;
};

func void Rtn_Start_493()
{
	TA_Sit_Chair(08, 00, 23, 00, "NW_CITY_HABOUR_TAVERN01_02");
	TA_Sit_Chair(23, 00, 08, 00, "NW_CITY_HABOUR_TAVERN01_02");
};

func void Rtn_Prison_493()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "NW_CITY_HABOUR_KASERN_NAGUR");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "NW_CITY_HABOUR_KASERN_NAGUR");
};
