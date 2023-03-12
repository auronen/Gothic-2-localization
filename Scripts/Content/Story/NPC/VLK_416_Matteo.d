instance VLK_416_Matteo(Npc_Default)
{
	// -------- NPC --------
	name							= "Matteo";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 9;
	id								= 416;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_Gomez, BodyTex_N, ITAR_VLK_M);
	Mdl_SetModelFatness(self, 1.8);
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 35);

	// -------- inventory --------

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_416;
};

func void Rtn_Start_416()
{
	TA_Stand_ArmsCrossed(08, 00, 22, 00, "NW_CITY_MATTEO");
	TA_Sleep(22, 00, 08, 00, "NW_CITY_BED_MATTEO");
};
