instance Vlk_2001_Syra(Npc_Default)
{
	// -------- NPC --------
	name							= "Syra";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= NPC_FLAG_IMMORTAL; // NPC_FLAG_IMMORTAL oder 0

	voice							= 16;
	id								= 2001;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_PinkHair, BodyTex_N, NO_ARMOR);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 50); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItPo_Health_02, 1);

	// -------- equipped weapons --------
	// EquipItem(self, ItMw_1h_Vlk_Dagger);
	// EquipItem(self, ItRw_Crossbow_L_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_2001;
};

func void Rtn_start_2001()
{
	TA_Stand_Eating(22, 00, 06, 00, "XXX");
	TA_Sleep(06, 00, 22, 00, "XXX");
};
