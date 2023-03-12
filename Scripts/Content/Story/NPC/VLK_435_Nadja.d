instance VLK_435_Nadja(Npc_Default)
{
	// -------- NPC --------
	name							= "Nadja";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 435;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_Hure, BodyTex_N, ITAR_VlkBabe_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

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

	// -------- daily routine --------
	daily_routine = Rtn_Start_435;
};

func void Rtn_Start_435() // Nadja hält sich für gewöhnlich unten auf...
{
	TA_Stand_Drinking(05, 00, 17, 00, "NW_PUFF_DANCE");
	TA_Dance(17, 00, 21, 00, "NW_PUFF_DANCE");
	TA_Stand_Drinking(21, 00, 21, 30, "NW_PUFF_DANCE");
	TA_Dance(21, 30, 05, 00, "NW_PUFF_DANCE");
};

func void Rtn_Dance_435() // Aber wenn der Spieler zahlt, dann geht sie schon mal mit ihm nach oben
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_CITY_HABOUR_PUFF_NADJA");
	TA_Stand_ArmsCrossed(22, 00, 08, 00, "NW_CITY_HABOUR_PUFF_NADJA");
};

func void Rtn_Smoke_435() //
{
	TA_Smoke_Joint(05, 00, 17, 00, "NW_PUFF_DANCE");
	TA_Dance(17, 00, 21, 00, "NW_PUFF_DANCE");
	TA_Smoke_Joint(21, 00, 21, 30, "NW_PUFF_DANCE");
	TA_Dance(21, 30, 05, 00, "NW_PUFF_DANCE");
};

func void Rtn_Tot_435() //
{
	TA_Stand_Guarding(00, 00, 12, 00, "TOT");
	TA_Stand_Guarding(12, 00, 00, 00, "TOT");
};
