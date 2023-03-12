instance Pal_203_Lothar(Npc_Default)
{
	// -------- NPC --------
	name							= "Lothar";
	npctype							= NpcType_Main;
	guild							= GIL_PAL;
	flags							= NPC_FLAG_IMMORTAL; // Bitte nicht ändern er stirbt zum 3. Kapitel

	voice							= 1;
	id								= 203;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Psionic", Face_P_NormalBart_Nefarius, BodyTex_P, ITAR_PAL_H);
	Mdl_SetModelFatness(self, 1);
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
	daily_routine = Rtn_preStart_203;
};

func void Rtn_PreStart_203()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_CITY_MAINSTREET_01_B");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_CITY_MAINSTREET_01_B");
};

func void Rtn_Start_203()
{
	TA_Stand_Guarding(08, 00, 23, 00, "NW_CITY_LOTHAR");
	TA_Stand_Guarding(23, 00, 08, 00, "NW_CITY_LOTHAR");
};

func void Rtn_Tot_203()
{
	TA_Sleep(08, 00, 23, 00, "TOT");
	TA_Sleep(23, 00, 08, 00, "TOT");
};
