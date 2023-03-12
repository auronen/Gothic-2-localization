// ***************
// Trank der Story
// ***************

instance ItPo_Story(C_Item)
{
	name						= "Gluck";

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItPo_Perm_STR.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseItPo_Story;

	description					= "Macht, daß es weitergeht bei Raven Video I";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void UseItPo_Story()
{
	B_RAVENSESCAPEINTOTEMPELAVI();
};

//**************************************
// Storyhelper
//**************************************
instance SH(NPC_DEFAULT)
{
	// -------- NPC --------
	name							= "Storyhelper";
	npctype							= NpcType_Friend;
	guild							= GIL_NONE;
	flags							= 0;

	voice							= 15;
	id								= 9999;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", FACE_N_Player, bodyTex_Player, -1);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	// B_SetFightSkills (self, 70);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- daily routine --------
	daily_routine = Rtn_Start_9999;
};

func void Rtn_Start_9999()
{
	TA_Stand_ArmsCrossed(08, 00, 23, 00, "XXX");
	TA_Stand_ArmsCrossed(23, 00, 08, 00, "XXX");
};

//***************************************************************************
//	Rahmen-Infos
//***************************************************************************
instance StoryHelper_Exit(C_INFO)
{
	npc				= SH;
	nr				= 999;
	condition		= StoryHelper_Exit_Condition;
	information		= StoryHelper_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int StoryHelper_Exit_Condition()
{
	return 1;
};

func void StoryHelper_Exit_Info()
{
	AI_StopProcessInfos(self);
};

//**************************************************************************
//								KAPITEL 1
//							--------------------
//***************************************************************************
instance StoryHelper_INFO1(C_INFO)
{
	npc				= SH;
	nr				= 0;
	condition		= StoryHelper_INFO1_Condition;
	information		= StoryHelper_INFO1_Info;
	permanent		= TRUE;
	description		= "Kapitel 1";
};

func int StoryHelper_INFO1_Condition()
{
	return TRUE;
};

func void StoryHelper_INFO1_Info()
{
	Info_ClearChoices(StoryHelper_INFO1);
	Info_AddChoice(StoryHelper_INFO1, DIALOG_BACK, StoryHelper_BACK1);
	Info_AddChoice(StoryHelper_INFO1, "KAPITELANFANG", StoryHelper_KAPITEL1ANFANG);
	Info_AddChoice(StoryHelper_INFO1, "ADDON Ready for first Meeting with Saturas (forget Lares)", StoryHelper_SATURAS);
	Info_AddChoice(StoryHelper_INFO1, "ADDON Cavalorn bug ", StoryHelper_Cavalorn);
};

func void StoryHelper_SATURAS()
{
	MIS_Addon_Lares_Ornament2Saturas = LOG_RUNNING;
	CreateInvItems(other, ItMi_Ornament_Addon, 1);
	SC_KnowsRanger = TRUE;
	B_Kapitelwechsel(1, NEWWORLD_ZEN);
	AI_StopProcessInfos(self);
};

func void StoryHelper_Cavalorn()
{
	B_Kapitelwechsel(1, NEWWORLD_ZEN);

	// Vatras den Brief gegeben
	MIS_Addon_Cavalorn_Letter2Vatras = LOG_SUCCESS;
	// Für Vatras den Banditen Händler gefunden
	MIS_Vatras_FindTheBanditTrader = LOG_SUCCESS;
	// Wo sind die vermissten Leute?
	MIS_Addon_Vatras_WhereAreMissingPeople = LOG_SUCCESS;

	// Der Ring des Rings :)
	CreateInvItems(hero, ItRi_Ranger_Addon, 1);

	// Suche die Steinkreise auf
	MIS_Addon_Nefarius_BringMissingOrnaments = LOG_RUNNING;
	// ...und Cavalorn zum Steinkreis schicken
	B_StartotherRoutine(BAU_4300_Addon_Cavalorn, "OrnamentSteinring");
	// Spieler die Karte geben
	CreateInvItems(hero, ItWr_Map_NewWorld_Ornaments_Addon, 1);

	AI_StopProcessInfos(self);
};

// ---------------------------------------------------------------------
//	BACK
// ---------------------------------------------------------------------
func void StoryHelper_BACK1()
{
	Info_ClearChoices(StoryHelper_INFO1);
};

// ---------------------------------------------------------------------
//	Kapitelanfang
// ---------------------------------------------------------------------
func void StoryHelper_KAPITEL1ANFANG()
{
	// -------- was davor geschah --------

	// -------- was neu geschieht --------

	B_Kapitelwechsel(1, NEWWORLD_ZEN);

	// -------- Menü --------
	// Info_ClearChoices( StoryHelper_INFO1 );
	AI_StopProcessInfos(self);
};

//**************************************************************************
//								KAPITEL 2
//							--------------------
//***************************************************************************
instance StoryHelper_INFO2(C_INFO)
{
	npc				= SH;
	nr				= 0;
	condition		= StoryHelper_INFO2_Condition;
	information		= StoryHelper_INFO2_Info;
	permanent		= TRUE;
	description		= "Kapitel 2";
};

func int StoryHelper_INFO2_Condition()
{
	return TRUE;
};

func void StoryHelper_INFO2_Info()
{
	Info_ClearChoices(StoryHelper_INFO2);
	Info_AddChoice(StoryHelper_INFO2, DIALOG_BACK, StoryHelper_BACK2);
	Info_AddChoice(StoryHelper_INFO2, "KAPITELANFANG", StoryHelper_KAPITEL2ANFANG);
};

// ---------------------------------------------------------------------
//	BACK
// ---------------------------------------------------------------------
func void StoryHelper_BACK2()
{
	Info_ClearChoices(StoryHelper_INFO2);
};

// ---------------------------------------------------------------------
//	Kapitelanfang
// ---------------------------------------------------------------------
func void StoryHelper_KAPITEL2ANFANG()
{
	// -------- was davor geschah --------

	// -------- was neu geschieht --------
	MIS_OLDWORLD = LOG_RUNNING;
	B_Kapitelwechsel(2, NEWWORLD_ZEN);

	// -------- Menü --------
	// Info_ClearChoices( StoryHelper_INFO2 );
	AI_StopProcessInfos(self);
};

//**************************************************************************
//								KAPITEL 3
//							--------------------
//***************************************************************************
instance StoryHelper_INFO3(C_INFO)
{
	npc				= SH;
	nr				= 0;
	condition		= StoryHelper_INFO3_Condition;
	information		= StoryHelper_INFO3_Info;
	permanent		= TRUE;
	description		= "Kapitel 3";
};

func int StoryHelper_INFO3_Condition()
{
	return TRUE;
};

func void StoryHelper_INFO3_Info()
{
	Info_ClearChoices(StoryHelper_INFO3);
	Info_AddChoice(StoryHelper_INFO3, DIALOG_BACK, StoryHelper_BACK3);
	Info_AddChoice(StoryHelper_INFO3, "KAPITELANFANG", StoryHelper_KAPITEL3ANFANG);
};

// ---------------------------------------------------------------------
//	BACK
// ---------------------------------------------------------------------
func void StoryHelper_BACK3()
{
	Info_ClearChoices(StoryHelper_INFO3);
};

// ---------------------------------------------------------------------
//	Kapitelanfang
// ---------------------------------------------------------------------
func void StoryHelper_KAPITEL3ANFANG()
{
	// -------- was davor geschah --------
	MIS_OLDWORLD = LOG_RUNNING;
	// -------- was neu geschieht --------
	CreateInvItems(hero, ItWr_PaladinLetter_MIS, 1);
	KnowsPaladins_Ore = TRUE;
	MIS_ScoutMine = LOG_SUCCESS;
	MIS_ReadyForChapter3 = TRUE;
	B_NPC_IsAliveCheck(OldWorld_Zen);
	B_Kapitelwechsel(3, NEWWORLD_ZEN);

	// -------- Menü --------
	Info_ClearChoices(StoryHelper_INFO3);
	AI_StopProcessInfos(self);
};

//**************************************************************************
//								KAPITEL 4
//							--------------------
//***************************************************************************
instance StoryHelper_INFO4(C_INFO)
{
	npc				= SH;
	nr				= 0;
	condition		= StoryHelper_INFO4_Condition;
	information		= StoryHelper_INFO4_Info;
	permanent		= TRUE;
	description		= "Kapitel 4";
};

func int StoryHelper_INFO4_Condition()
{
	return TRUE;
};

func void StoryHelper_INFO4_Info()
{
	Info_ClearChoices(StoryHelper_INFO4);
	Info_AddChoice(StoryHelper_INFO4, DIALOG_BACK, StoryHelper_BACK4);
	Info_AddChoice(StoryHelper_INFO4, "KAPITELANFANG", StoryHelper_KAPITEL4ANFANG);
};

// ---------------------------------------------------------------------
//	BACK
// ---------------------------------------------------------------------
func void StoryHelper_BACK4()
{
	Info_ClearChoices(StoryHelper_INFO4);
};

// ---------------------------------------------------------------------
//	Kapitelanfang
// ---------------------------------------------------------------------
func void StoryHelper_KAPITEL4ANFANG()
{
	// -------- was davor geschah --------
	MIS_OLDWORLD = LOG_RUNNING;
	// -------- was neu geschieht --------
	CreateInvItems(hero, ItWr_PaladinLetter_MIS, 1);
	KnowsPaladins_Ore = TRUE;
	MIS_ScoutMine = LOG_SUCCESS;
	MIS_ReadyForChapter3 = TRUE;
	B_NPC_IsAliveCheck(OldWorld_Zen);
	B_Kapitelwechsel(3, NEWWORLD_ZEN);

	// -------- was neu geschieht --------
	PLAYER_TALENT_ALCHEMY[Charge_InnosEye] = TRUE;
	PrintScreen(PRINT_LearnAlchemyInnosEye, -1, -1, FONT_Screen, 2);
	CreateInvItems(self, ItMi_InnosEye_MIS, 1);
	MIS_ReadyforChapter4 = TRUE;
	B_NPC_IsAliveCheck(NEWWORLD_ZEN);
	B_Kapitelwechsel(4, NEWWORLD_ZEN);

	// -------- Menü --------
	Info_ClearChoices(StoryHelper_INFO4);
	AI_StopProcessInfos(self);
};

//**************************************************************************
//								KAPITEL 5
//							--------------------
//***************************************************************************
instance StoryHelper_INFO5(C_INFO)
{
	npc				= SH;
	nr				= 0;
	condition		= StoryHelper_INFO5_Condition;
	information		= StoryHelper_INFO5_Info;
	permanent		= TRUE;
	description		= "Kapitel 5";
};

func int StoryHelper_INFO5_Condition()
{
	return TRUE;
};

func void StoryHelper_INFO5_Info()
{
	Info_ClearChoices(StoryHelper_INFO5);
	Info_AddChoice(StoryHelper_INFO5, DIALOG_BACK, StoryHelper_BACK5);
	Info_AddChoice(StoryHelper_INFO5, "KAPITELANFANG", StoryHelper_KAPITEL5ANFANG);
};

// ---------------------------------------------------------------------
//	BACK
// ---------------------------------------------------------------------
func void StoryHelper_BACK5()
{
	Info_ClearChoices(StoryHelper_INFO5);
};

// ---------------------------------------------------------------------
//	Kapitelanfang
// ---------------------------------------------------------------------
func void StoryHelper_KAPITEL5ANFANG()
{
	// -------- was davor geschah --------
	MIS_OLDWORLD = LOG_RUNNING;
	// -------- was neu geschieht --------
	CreateInvItems(hero, ItWr_PaladinLetter_MIS, 1);
	KnowsPaladins_Ore = TRUE;
	MIS_ScoutMine = LOG_SUCCESS;
	MIS_ReadyForChapter3 = TRUE;
	B_NPC_IsAliveCheck(OldWorld_Zen);
	B_Kapitelwechsel(3, NEWWORLD_ZEN);

	// -------- was neu geschieht --------
	PLAYER_TALENT_ALCHEMY[Charge_InnosEye] = TRUE;
	PrintScreen(PRINT_LearnAlchemyInnosEye, -1, -1, FONT_Screen, 2);
	CreateInvItems(hero, ItMi_InnosEye_MIS, 1);
	MIS_ReadyforChapter4 = TRUE;
	B_NPC_IsAliveCheck(NEWWORLD_ZEN);
	B_Kapitelwechsel(4, NEWWORLD_ZEN);
	// -------- was neu geschieht --------
	CreateInvItems(hero, ItAt_IcedragonHeart, 1); // damit man eins für die DI hat!!
	MIS_AllDragonsDead = TRUE;
	B_Kapitelwechsel(5, NEWWORLD_ZEN);

	// -------- Menü --------
	Info_ClearChoices(StoryHelper_INFO5);
	AI_StopProcessInfos(self);
};

//**************************************************************************
//								KAPITEL 6
//							--------------------
//***************************************************************************
instance StoryHelper_INFO6(C_INFO)
{
	npc				= SH;
	nr				= 0;
	condition		= StoryHelper_INFO6_Condition;
	information		= StoryHelper_INFO6_Info;
	permanent		= TRUE;
	description		= "Kapitel 6";
};

func int StoryHelper_INFO6_Condition()
{
	return TRUE;
};

func void StoryHelper_INFO6_Info()
{
	Info_ClearChoices(StoryHelper_INFO6);
	Info_AddChoice(StoryHelper_INFO6, DIALOG_BACK, StoryHelper_BACK6);
	Info_AddChoice(StoryHelper_INFO6, "KAPITELANFANG", StoryHelper_KAPITEL6ANFANG);
};

// ---------------------------------------------------------------------
//	BACK
// ---------------------------------------------------------------------
func void StoryHelper_BACK6()
{
	Info_ClearChoices(StoryHelper_INFO6);
};

// ---------------------------------------------------------------------
//	Kapitelanfang
// ---------------------------------------------------------------------
func void StoryHelper_KAPITEL6ANFANG()
{
	// -------- was davor geschah --------

	// -------- was neu geschieht --------
	B_Kapitelwechsel(6, NEWWORLD_ZEN);

	// -------- Menü --------
	Info_ClearChoices(StoryHelper_INFO6);
	AI_StopProcessInfos(self);
};
