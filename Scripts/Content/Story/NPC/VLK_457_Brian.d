instance VLK_457_Brian(Npc_Default)
{
	// -------- NPC --------
	name							= "Brian";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 4;
	id								= 457;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_B_Normal_Kirgo, BodyTex_B, ITAR_SMITH);
	Mdl_SetModelFatness(self, 0.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_457;
};

func void Rtn_Start_457()
{
	TA_Smith_Sharp(07, 05, 20, 35, "NW_CITY_SMITH_SHARP");
	TA_Smalltalk(20, 35, 00, 25, "NW_CITY_MERCHANT_PATH_14");
	TA_Sleep(00, 25, 07, 05, "NW_CITY_BED_BRIAN");
};

func void Rtn_Lighthouse_457()
{
	TA_Stand_Guarding(08, 00, 20, 00, "NW_LIGHTHOUSE_IN_01");
	TA_Sit_Throne(20, 00, 08, 00, "NW_LIGHTHOUSE_IN_03");
};
