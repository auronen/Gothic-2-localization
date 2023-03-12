instance Pal_213_Schiffswache(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_Schiffswache;
	npctype							= NpcType_Main;
	guild							= GIL_PAL;
	flags							= NPC_FLAG_IMMORTAL; // Joly: NPC_FLAG_IMMORTAL

	voice							= 1;
	id								= 213;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_B_Cavalorn, BodyTex_B, ITAR_PAL_M);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_NAILED;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 68);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_2H_PAL_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_213;
};

func void Rtn_Start_213()
{
	TA_Guard_Passage(08, 00, 23, 00, "NW_CITY_SHIP_GUARD_01");
	TA_Guard_Passage(23, 00, 08, 00, "NW_CITY_SHIP_GUARD_01");
};

func void Rtn_ShipFree_213()
{
	TA_Smalltalk(08, 00, 23, 00, "NW_CITY_PALCAMP_01");
	TA_Smalltalk(23, 00, 08, 00, "NW_CITY_PALCAMP_01");
};
