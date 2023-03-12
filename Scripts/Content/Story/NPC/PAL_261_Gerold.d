instance PAL_261_Gerold(Npc_Default)
{
	// -------- NPC --------
	name							= "Gerold";
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 12;
	id								= 261;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Normal_Blade, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_Pal_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_261;
};

func void Rtn_Start_261()
{
	TA_Stand_Guarding(08, 00, 22, 00, "OC_PRISON_GUARD_01");
	TA_Stand_Guarding(22, 00, 08, 00, "OC_PRISON_GUARD_01");
};

func void Rtn_Food_261()
{
	TA_Stand_Guarding(08, 00, 23, 10, "OC_PRISON_GUARD_01");
	TA_Stand_Guarding(23, 10, 08, 00, "OC_MAGE_IN");
};
