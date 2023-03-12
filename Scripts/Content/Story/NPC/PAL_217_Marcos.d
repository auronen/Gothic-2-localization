instance PAL_217_Marcos(Npc_Default)
{
	// -------- NPC --------
	name							= "Marcos";
	npctype							= NPCTYPE_OCMAIN;
	guild							= GIL_OUT;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 4;
	id								= 217;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_P_Tough_Rodriguez, BodyTex_P, ITAR_PAL_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 75);

	// -------- inventory --------
	CreateInvItems(self, ItPo_Health_03, 5);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Pal_Sword);
	EquipItem(self, ItRw_Mil_Crossbow);

	// -------- daily routine --------
	daily_routine = Rtn_Start_217;
};

func void Rtn_Start_217()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_SAWHUT_MOLERAT_SPAWN01");
	TA_Stand_Guarding(23, 00, 08, 00, "OW_SAWHUT_MOLERAT_SPAWN01");
};
