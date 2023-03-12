instance KDF_500_Pyrokar(Npc_Default)
{
	// -------- NPC --------
	name							= "Pyrokar";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	flags							= NPC_FLAG_IMMORTAL; // Joly: NPC_FLAG_IMMORTAL

	voice							= 11;
	id								= 500;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_ImportantOld, BodyTex_N, ITAR_KDF_H);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_Start_500;
};

func void Rtn_Start_500()
{
	TA_Sit_Throne(08, 00, 23, 00, "NW_MONASTERY_THRONE_01");
	TA_Sit_Throne(23, 00, 08, 00, "NW_MONASTERY_THRONE_01");
};

func void Rtn_RitualInnosEyeRepair_500()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_TROLLAREA_RITUAL_02");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_TROLLAREA_RITUAL_02");
};

func void Rtn_RitualInnosEye_500()
{
	TA_Circle(08, 00, 23, 00, "NW_TROLLAREA_RITUAL_02");
	TA_Circle(23, 00, 08, 00, "NW_TROLLAREA_RITUAL_02");
};
