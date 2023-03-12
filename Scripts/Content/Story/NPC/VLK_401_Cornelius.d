instance VLK_401_Cornelius(Npc_Default)
{
	// -------- NPC --------
	name							= "Cornelius";
	npctype							= NpcType_Main;
	guild							= GIL_NONE; // Hoshi:Ich muss ihn umhauen können, ohne das mir die PALs auf den Sack gehen.
	flags							= NPC_FLAG_IMMORTAL; // Joly: immortal Hauptstory

	voice							= 13;
	id								= 401;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_Weak_Ulf_Wohlers, BodyTex_P, ITAR_Governor);
	Mdl_SetModelFatness(self, 0.9);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItWr_CorneliusTagebuch_Mis, 1);

	// -------- daily routine --------
	daily_routine = Rtn_Start_401;
};

func void Rtn_Start_401()
{
	TA_Read_Bookstand(08, 00, 23, 00, "NW_CITY_CORNELIUS");
	TA_Read_Bookstand(23, 00, 08, 00, "NW_CITY_CORNELIUS");
};

func void Rtn_Flee_401()
{
	TA_FleeToWP(08, 00, 23, 00, "NW_XARDAS_BANDITS_LEFT");
	TA_FleeToWP(23, 00, 08, 00, "NW_XARDAS_BANDITS_LEFT");
};

func void Rtn_Prison_401()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_CITY_HABOUR_KASERN_PRISON_BORKA");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_CITY_HABOUR_KASERN_PRISON_BORKA");
};
