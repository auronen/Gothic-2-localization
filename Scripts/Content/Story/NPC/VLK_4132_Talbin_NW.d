///////////////////////////////////////////////////////////////////////
//	 VLK_4132_Talbin_NW aus der alten Welt gerettet!
///////////////////////////////////////////////////////////////////////

instance VLK_4132_Talbin_NW(Npc_Default)
{
	// -------- NPC --------
	name							= "Talbin";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 7;
	id								= 4132;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 3); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_FatBald", Face_N_Bullit, BodyTex_N, ITAR_Leather_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Mace);
	EquipItem(self, ItRW_SLD_Bow);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_4132;
};

func void Rtn_PreStart_4132()
{
	TA_Stand_Eating(08, 00, 23, 00, "LEVELCHANGE");
	TA_Stand_Eating(23, 00, 08, 00, "LEVELCHANGE");
};

func void Rtn_Farm_4132()
{
	TA_Stand_Eating(08, 00, 23, 00, "NW_FARM2_OUT_07");
	TA_Stand_Eating(23, 00, 08, 00, "NW_FARM2_OUT_07");
};
