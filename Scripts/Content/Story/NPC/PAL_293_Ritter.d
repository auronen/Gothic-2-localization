instance Pal_293_Ritter(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Ritter;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_PAL;
	flags							= 0;

	voice							= 12;
	id								= 293;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 5);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_P_NormalBald, BodyTex_P, ITAR_PAL_M);
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
	daily_routine = Rtn_Start_293;
};

func void Rtn_Start_293()
{
	TA_Smalltalk(08, 00, 23, 00, "NW_CITY_PALCAMP_15");
	TA_Smalltalk(23, 00, 08, 00, "NW_CITY_PALCAMP_15");
};
