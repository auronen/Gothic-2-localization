instance Mil_311_Andre(Npc_Default)
{
	// -------- NPC --------
	name							= "Andre";
	npctype							= NpcType_Main;
	guild							= GIL_MIL;
	flags							= NPC_FLAG_IMMORTAL; // Joly: NPC_FLAG_IMMORTAL

	voice							= 8;
	id								= 311;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Weak12, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_311;
};

func void Rtn_PreStart_311()
{
	TA_Stand_Guarding(00, 00, 12, 00, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY");
	TA_Stand_Guarding(12, 00, 00, 00, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY");
};

func void Rtn_Start_311()
{
	TA_Read_Bookstand(08, 00, 00, 10, "NW_CITY_ANDRE");
	TA_Smalltalk(00, 10, 05, 00, "NW_CITY_ANDRE_SMALLTALK");
	TA_Read_Bookstand(05, 00, 08, 00, "NW_CITY_ANDRE");
};
