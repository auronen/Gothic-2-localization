instance PAL_267_Sengrath(Npc_Default)
{
	// -------- NPC --------
	name							= "Sengrath";
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 3;
	id								= 267;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_N_Normal03, BodyTex_N, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_NAILED;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 65);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Pal_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_267;
};

func void Rtn_Start_267()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OC_CENTER_GUARD_01");
	TA_Stand_Guarding(23, 00, 08, 00, "OC_CENTER_GUARD_01");
};

func void Rtn_ORCBARRIER_267()
{
	TA_Sleep(08, 00, 23, 00, "OW_ORCBARRIER_12");
	TA_Sleep(23, 00, 08, 00, "OW_ORCBARRIER_12");
};
