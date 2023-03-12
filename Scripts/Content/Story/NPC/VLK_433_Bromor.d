instance VLK_433_Bromor(Npc_Default)
{
	// -------- NPC --------
	name							= "Bromor";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 7;
	id								= 433;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Fingers, BodyTex_N, ITAR_Vlk_H);
	Mdl_SetModelFatness(self, 1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 45);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ItKE_Bromor, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_433;
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN
func void Rtn_Start_433()
{
	TA_Stand_ArmsCrossed(08, 00, 20, 00, "NW_CITY_PUFF_COUNTER");
	TA_Stand_ArmsCrossed(20, 00, 08, 00, "NW_CITY_PUFF_COUNTER");
};
