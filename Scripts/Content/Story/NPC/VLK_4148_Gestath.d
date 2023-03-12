instance VLK_4148_Gestath(Npc_Default)
{
	// -------- NPC --------
	name							= "Gestath";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 9;
	id								= 4148;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_B_Thorus, BodyTex_B, ITAR_DJG_Crawler);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2h_SLD_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4148;
};

func void Rtn_Start_4148()
{
	TA_Stand_Guarding(08, 00, 23, 00, "OW_DJG_ROCKCAMP_01");
	TA_Sit_Campfire(23, 00, 08, 00, "OW_DJG_ROCKCAMP_01");
};
