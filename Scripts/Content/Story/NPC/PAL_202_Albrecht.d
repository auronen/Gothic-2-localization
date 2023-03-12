instance Pal_202_Albrecht(Npc_Default)
{
	// -------- NPC --------
	name							= "Albrecht";
	npctype							= NpcType_Main;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 3;
	id								= 202;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_P_Tough_Rodriguez, BodyTex_P, ITAR_PAL_H);
	Mdl_SetModelFatness(self, 1.5);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 80);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Pal_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_202;
};

func void Rtn_Start_202()
{
	TA_Read_Bookstand(08, 00, 23, 00, "NW_CITY_ALBRECHT");
	TA_Read_Bookstand(23, 00, 08, 00, "NW_CITY_ALBRECHT");
};
