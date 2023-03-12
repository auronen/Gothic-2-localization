instance VLK_4006_Bote(Npc_Default)
{
	// -------- NPC --------
	name							= "Bote";
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 6;
	id								= 4006;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);
	attribute[ATR_HITPOINTS_MAX]	= 500;
	attribute[ATR_HITPOINTS]		= 500;

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Normal_Stone, BodyTex_N, ITAR_VLK_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

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
	daily_routine = Rtn_Start_4006;
};

func void Rtn_Start_4006()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_PATH_TO_MONASTERY_AREA_01");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_PATH_TO_MONASTERY_AREA_01");
};

func void Rtn_Rest_4006()
{
	TA_Stand_Drinking(08, 00, 22, 00, "TAVERNE");
	TA_Stand_Drinking(22, 00, 08, 00, "TAVERNE");
};
