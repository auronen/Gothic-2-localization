//******************************************
//   Gorn in der Oldworld
//******************************************

instance PC_Fighter_OW(Npc_Default)
{
	// -------- NPC --------
	name							= "Gorn";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL; // Joly: nicht IMMORTAL

	voice							= 12;
	id								= 3;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Fighter", Face_B_Gorn, BodyTex_B, ITAR_SLD_H);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_3;
};

// sitzt in einer Zelle in der Burg im Minental
// -------------------------------------
func void Rtn_Start_3()
{
	TA_Sit_Campfire(08, 00, 23, 00, "OC_PRISON_CELL_03_SIT_GROUND");
	TA_Sit_Campfire(23, 00, 08, 00, "OC_PRISON_CELL_03_SIT_GROUND");
};

func void Rtn_Free_3()
{
	TA_Smalltalk(08, 00, 23, 00, "OC_MAGE_LIBRARY_IN");
	TA_Smalltalk(23, 00, 08, 00, "OC_MAGE_LIBRARY_IN");
};

func void Rtn_Tot_3()
{
	TA_Sit_Campfire(08, 00, 23, 00, "TOT");
	TA_Sit_Campfire(23, 00, 08, 00, "TOT");
};
