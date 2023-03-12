instance VLK_447_Cassia(Npc_Default)
{
	// -------- NPC --------
	name							= "Cassia";
	npctype							= NpcType_Main;
	guild							= GIL_OUT;
	flags							= 0;

	voice							= 16;
	id								= 447;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_BlackHair, BodyTexBabe_N, ITAR_VlkBabe_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- aivars --------
	aivar[AIV_DropDeadAndKill]		= TRUE;
	aivar[AIV_EnemyOverride]		= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 90);

	// -------- inventory --------
	B_CreateAmbientInv(self);
	CreateInvItems(self, ITKE_Thiefguildkey_Hotel_MIS, 1);
	CreateInvItems(self, ItKe_ThiefTreasure, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Meisterdegen);

	// -------- daily routine --------
	daily_routine = Rtn_Start_447;
};

func void Rtn_Start_447()
{
	TA_Read_Bookstand(07, 00, 23, 00, "NW_CITY_KANAL_ROOM_05_02");
	TA_Sleep(23, 00, 07, 00, "NW_CITY_KANAL_ROOM_05_BED_01");
};
