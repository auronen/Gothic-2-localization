////////////////////////////////////////////////////////////////////////////////
//
//	ItSc_SummonMud
//

const int Value_Sc_SummonMud = 300; // FIXME_Noki: Tuning (zu teuer?)

instance ItSc_SummonMud(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItSc_SumDemon.3DS"; // FIXME_Noki: Eigenes Visual
	material					= MAT_LEATHER;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_Cost_Scroll;
	spell						= SPL_SummonMud;

	value						= Value_Sc_SummonMud;

	description					= NAME_SPL_SummonMud;
	text[0]						= Name_MageScroll;								count[0] = 0;
	text[1]						= NAME_Mana_Needed;								count[1] = SPL_Cost_Scroll;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

////////////////////////////////////////////////////////////////////////////////
//
//	Aya_Testmodell
//

instance Aya_Testmodell(Npc_Default)
{
	// -------- NPC --------
	name							= "Aya";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 16;
	id								= 55555;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 6);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_BlackHair, BodyTexBabe_S, ItAr_VlkBabe_H);
//	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");
//	Mdl_SetModelScale(self, 0.9, 0.9, 1.1);

	// -------- aivars --------
	aivar[AIV_RANSACKED]			= TRUE;
	aivar[AIV_DeathInvGiven]		= TRUE;
	//	aivar[AIV_PARTYMEMBER]		= TRUE;
	aivar[AIV_VictoryXPGiven]		= TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft]			= TRUE;
	aivar[AIV_IGNORE_Sheepkiller]	= TRUE;
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;
	aivar[AIV_IgnoresArmor]			= TRUE;
	aivar[AIV_IgnoresFakeGuild]		= TRUE;

	bodyStateInterruptableOverride = TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 100);

	// -------- inventory --------
	CreateInvItems(self, ItAr_BauBabe_L, 1);
	CreateInvItems(self, ItAr_BauBabe_M, 1);
	CreateInvItems(self, ItAr_VlkBabe_L, 1);
	CreateInvItems(self, ItAr_VlkBabe_M, 1);
//	CreateInvItems(self, ItAr_VlkBabe_H, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_BeliarWeapon_Fire);

	// -------- daily routine --------
	daily_routine = Rtn_Start_55555;
};

func void Rtn_Start_55555()
{
	TA_Stand_ArmsCrossed(06, 00, 23, 00, "XXX");
	TA_Stand_ArmsCrossed(23, 00, 06, 00, "XXX");
};

func void Rtn_Follow_55555()
{
	TA_Follow_Player(08, 00, 23, 00, "XXX");
	TA_Follow_Player(23, 00, 08, 00, "XXX");
};
instance DIA_Aya_KommMit(C_Info)
{
	npc				= Aya_Testmodell;
	nr				= 1;
	condition		= DIA_Aya_KommMit_Condition;
	information		= DIA_Aya_KommMit_Info;
	permanent		= TRUE;
	description		= "Okay, lass uns gehen.";
};

func int DIA_Aya_KommMit_Condition()
{
	if (self.aivar[AIV_PARTYMEMBER] == FALSE)
	{
		return TRUE;
	};
};

func void DIA_Aya_KommMit_Info()
{
	AI_Output(other, self, "DIA_Lares_GoNow_15_00"); //Okay, lass uns gehen.

	var int AyaGoldAmount;
	AyaGoldAmount = Npc_HasItems(other, ItMi_Gold);
	if (AyaGoldAmount > 1000)
	{
		AyaGoldAmount = 1000;
	};

	if (AyaGoldAmount > 0)
	{
		B_Say(self, other, "$WHERETO");
		B_GiveInvItems(other, self, ItMi_Gold, AyaGoldAmount);
		Npc_RemoveInvItems(self, ItMi_Gold, AyaGoldAmount); // :p
	}
	else
	{
		B_Say(self, other, "$SHITNOGOLD");
	};

	AI_StopProcessInfos(self);
	if (AyaGoldAmount > 0)
	{
		Npc_ExchangeRoutine(self, "Follow");
		self.aivar[AIV_PARTYMEMBER] = TRUE;
	};
};
instance DIA_Aya_WarteHier(C_Info)
{
	npc				= Aya_Testmodell;
	nr				= 1;
	condition		= DIA_Aya_WarteHier_Condition;
	information		= DIA_Aya_WarteHier_Info;
	permanent		= TRUE;
	description		= "Ich fürchte, ich muss mich von dir trennen.";
};

func int DIA_Aya_WarteHier_Condition()
{
	if (self.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Aya_WarteHier_Info()
{
	AI_Output(other, self, "DIA_Biff_GELDEINTREIBEN_zuTeuer_trennen_15_00"); //Ich fürchte, ich muss mich von dir trennen.
	B_Say(self, other, "$YESGOOUTOFHERE");
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self, "Start");
	self.aivar[AIV_PARTYMEMBER] = FALSE;
};
instance DIA_Aya_EXIT(C_Info)
{
	npc				= Aya_Testmodell;
	nr				= 999;
	condition		= DIA_Aya_EXIT_Condition;
	information		= DIA_Aya_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Aya_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Aya_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
