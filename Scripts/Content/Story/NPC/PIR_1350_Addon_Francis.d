instance PIR_1350_Addon_Francis(Npc_Default)
{
	// -------- NPC --------
	name							= "Francis";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 13;
	id								= 1350;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Cipher_neu, BodyTex_N, ITAR_PIR_M_Addon);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50);

	// -------- inventory --------
	CreateInvItems(self, ITKE_Greg_ADDON_MIS, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Schwert1);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1350;
};

func void Rtn_Start_1350()
{
	TA_Sit_Bench(05, 00, 20, 00, "ADW_PIRATECAMP_HUT4_01");
	TA_Sit_Bench(20, 00, 05, 00, "ADW_PIRATECAMP_HUT4_01");
};

func void Rtn_GregIsBack_1350()
{
	TA_Saw(05, 00, 20, 00, "ADW_PIRATECAMP_BEACH_19");
	TA_Saw(20, 00, 05, 00, "ADW_PIRATECAMP_BEACH_19");
};
