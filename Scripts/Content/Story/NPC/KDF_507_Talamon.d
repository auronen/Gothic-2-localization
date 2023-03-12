instance KDF_507_Talamon(Npc_Default)
{
	// -------- NPC --------
	name							= "Talamon";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 4;
	id								= 507;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Saturas, BodyTex_B, ITAR_KDF_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_507;
};

func void Rtn_Start_507()
{
	TA_Guard_Passage(08, 00, 23, 00, "NW_MONASTERY_CELLAR_15");
	TA_Guard_Passage(23, 00, 08, 00, "NW_MONASTERY_CELLAR_15");
};
