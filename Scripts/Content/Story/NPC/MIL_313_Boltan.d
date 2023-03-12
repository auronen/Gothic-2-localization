instance Mil_313_Boltan(Npc_Default)
{
	// -------- NPC --------
	name							= "Boltan";
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_MIL;
	flags							= 0;

	voice							= 5;
	id								= 313;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_B_Normal01, BodyTex_B, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 55);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_313;
};

func void Rtn_Start_313()
{
	TA_Sit_Chair(06, 55, 21, 00, "NW_CITY_HABOUR_KASERN_PRISON_SIT");
	TA_Stand_Guarding(21, 00, 06, 55, "NW_CITY_HABOUR_KASERN_PRISON_02");
};
