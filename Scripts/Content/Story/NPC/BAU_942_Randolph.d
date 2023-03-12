instance BAU_942_Randolph(Npc_Default)
{
	// -------- NPC --------
	name							= "Randolph";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= NPC_FLAG_IMMORTAL; // Joly:nur solange Alnveres da ist!

	voice							= 6;
	id								= 942;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Normal_Kharim, BodyTex_B, ITAR_Bau_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_NORMAL;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 20);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);

	// -------- daily routine --------
	daily_routine = Rtn_preStart_942;
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN
func void Rtn_preStart_942()
{
	TA_Stand_Guarding(08, 00, 22, 00, "NW_FARM2_FIELD_04_B");
	TA_Stand_Guarding(22, 00, 08, 00, "NW_FARM2_FIELD_04_B");
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN
func void Rtn_Start_942()
{
	TA_Pick_FP(05, 00, 21, 00, "NW_FARM2_FIELD_04");
	TA_Stand_Eating(21, 00, 05, 00, "NW_FARM2_OUT_07");
};

// Joly: NIE AUF EINE BANK ODER THRON SETZEN
func void Rtn_Wettkampf_942()
{
	TA_Stand_Drinking(08, 00, 22, 00, "NW_TAVERNE_RUKHAR");
	TA_Stand_Drinking(22, 00, 08, 00, "NW_TAVERNE_RUKHAR");
};
