// ----------------------------------------------------------------------
//	Info EXIT
// ----------------------------------------------------------------------
instance DIA_Addon_Logan_EXIT(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 999;
	condition		= DIA_Addon_Logan_EXIT_Condition;
	information		= DIA_Addon_Logan_EXIT_Info;
	permanent		= TRUE;
	description		= "Ich komme später wieder...";
};

func int DIA_Addon_Logan_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Logan_EXIT_Info()
{
	AI_Output(other, self, "DIA_Addon_Logan_EXIT_15_00"); //Ich komme später wieder ...

	if (((!MIS_HlpLogan == LOG_RUNNING)
	|| (!MIS_HlpLogan == LOG_SUCCESS))
	&& (Logan_Inside == FALSE))
	{
		AI_Output(self, other, "DIA_Addon_Logan_EXIT_10_01"); //(knurrt) Jaaa, lauf du nur weg. Ich werde hier stehen und alles aufhalten, was zu dicht rankommt.
	};

	AI_StopProcessInfos(self);
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************
instance DIA_Addon_Logan_PICKPOCKET(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 900;
	condition		= DIA_Addon_Logan_PICKPOCKET_Condition;
	information		= DIA_Addon_Logan_PICKPOCKET_Info;
	permanent		= TRUE;
	description		= Pickpocket_60;
};

func int DIA_Addon_Logan_PICKPOCKET_Condition()
{
	C_Beklauen(59, 50);
};

func void DIA_Addon_Logan_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Addon_Logan_PICKPOCKET);
	Info_AddChoice(DIA_Addon_Logan_PICKPOCKET, DIALOG_BACK, DIA_Addon_Logan_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Addon_Logan_PICKPOCKET, DIALOG_PICKPOCKET, DIA_Addon_Logan_PICKPOCKET_DoIt);
};

func void DIA_Addon_Logan_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Addon_Logan_PICKPOCKET);
};

func void DIA_Addon_Logan_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Addon_Logan_PICKPOCKET);
};

// ----------------------------------------------------------------------
//	Info Mine
// ----------------------------------------------------------------------
instance DIA_Addon_BDT_1072_Logan_Mine(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 2;
	condition		= DIA_Addon_Logan_Mine_Condition;
	information		= DIA_Addon_Logan_Mine_Info;
	description		= DIALOG_ADDON_MINE_DESCRIPTION;
};

func int DIA_Addon_Logan_Mine_Condition()
{
	if ((MIS_Send_Buddler == LOG_RUNNING)
	&& (Player_SentBuddler < 3)
	&& (Npc_HasItems(other, ItmI_Addon_Stone_01) >= 1)
	&& (Npc_GetDistToWP(self, "BL_INN_CORNER_02") <= 1000))
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_Mine_Info()
{
	B_Say(other, self, "$MINE_ADDON_DESCRIPTION");
	B_GiveInvItems(other, self, ItmI_Addon_Stone_01, 1);
	AI_Output(self, other, "DIA_Addon_BDT_1072_Logan_Mine_10_00"); //Du hast es also geschafft, hm? Okay, gut, dass du mich nicht hängen lässt.

	Player_SentBuddler = (Player_SentBuddler + 1);
	B_GivePlayerXP(XP_Addon_MINE);
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self, "MINE");
};

// ---------------------------------------------------------------------
//	Info INSIDE
// ---------------------------------------------------------------------
instance DIA_Addon_Logan_How2(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 2;
	condition		= DIA_Addon_Logan_How2_Condition;
	information		= DIA_Addon_Logan_How2_Info;
	description		= "Wie läuft's bei dir?";
};

func int DIA_Addon_Logan_How2_Condition()
{
	if ((Logan_Inside == TRUE)
	&& (Npc_GetDistToWP(self, "BL_INN_CORNER_02") <= 1000))
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_How2_Info()
{
	AI_Output(other, self, "DIA_Addon_Logan_How2_15_00"); //Wie läuft's bei dir?
	AI_Output(self, other, "DIA_Addon_Logan_How2_10_01"); //Na ja, wenigstens bin ich schon mal drin. Lucia brennt einen harten Schnaps.
	AI_Output(self, other, "DIA_Addon_Logan_How2_10_02"); //Aber Esteban lässt mich nicht in die Mine. Jedenfalls noch nicht. Er hat mir noch 'ne andere Aufgabe gegeben.
	AI_Output(other, self, "DIA_Addon_Logan_How2_15_03"); //Und? Was will er von dir?
	AI_Output(self, other, "DIA_Addon_Logan_How2_10_04"); //Es wurde ein Attentat auf Esteban verübt. Er will wissen, wer dahinter steckt.
	AI_Output(self, other, "DIA_Addon_Logan_How2_10_05"); //(leise) Esteban glaubt, daß Snaf da mit drin hängt. Ich soll ihn im Auge behalten...
};

// ---------------------------------------------------------------------
//	Info Attentat
// ---------------------------------------------------------------------
instance DIA_Addon_Logan_Attentat(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 9;
	condition		= DIA_Addon_Logan_Attentat_Condition;
	information		= DIA_Addon_Logan_Attentat_Info;
	description		= DIALOG_ADDON_ATTENTAT_DESCRIPTION;
};

func int DIA_Addon_Logan_Attentat_Condition()
{
	if ((MIS_Judas == LOG_RUNNING)
	&& (Logan_Inside == TRUE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_Attentat_Info()
{
	B_Say(other, self, "$ATTENTAT_ADDON_DESCRIPTION");
	AI_Output(self, other, "DIA_Addon_Logan_Attentat_10_00"); //Du suchst nach den Typen, die dahinter stecken, was?
	AI_Output(self, other, "DIA_Addon_Logan_Attentat_10_01"); //Aber ich weiß nichts darüber. Wie sollte ich auch? Zu der Zeit saß ich noch im Sumpf ...
};

// ---------------------------------------------------------------------
//	Info HI
// ---------------------------------------------------------------------
instance DIA_Addon_Logan_HI(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 2;
	condition		= DIA_Addon_Logan_HI_Condition;
	information		= DIA_Addon_Logan_HI_Info;
	important		= TRUE;
};

func int DIA_Addon_Logan_HI_Condition()
{
	if ((Logan_Inside == FALSE)
	&& Npc_IsInState(self, ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_HI_Info()
{
	AI_Output(self, other, "DIA_Addon_Logan_HI_10_00"); //Schau an, ein neues Gesicht.
	AI_Output(self, other, "DIA_Addon_Logan_HI_10_01"); //Willst du nur im Weg rumstehen oder bist du gekommen, um mir zu helfen?

	if (Npc_KnowsInfo(other, DIA_Addon_Franco_HI))
	{
		AI_Output(other, self, "DIA_Addon_Logan_HI_15_02"); //Franco schickt mich. Er meint, du kannst Hilfe brauchen. Also was gibt's?
	}
	else
	{
		AI_Output(other, self, "DIA_Addon_Logan_HI_15_03"); //Kommt darauf an - wobei brauchst du denn Hilfe?
	};

	AI_Output(self, other, "DIA_Addon_Logan_HI_10_04"); //Die Sumpfhaie kommen mir ein bisschen zu nahe - wird Zeit, ein paar von ihnen zu erledigen.

	Log_CreateTopic(Topic_Addon_Logan, LOG_MISSION);
	Log_SetTopicStatus(Topic_Addon_Logan, LOG_RUNNING);
	B_LogEntry(Topic_Addon_Logan, Topic_Addon_Logan_1);
};

// ---------------------------------------------------------------------
//	Info Why
// ---------------------------------------------------------------------
instance DIA_Addon_Logan_Why(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 2;
	condition		= DIA_Addon_Logan_Why_Condition;
	information		= DIA_Addon_Logan_Why_Info;
	description		= "Was kriege ich für meine Hilfe?";
};

func int DIA_Addon_Logan_Why_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Logan_HI)
	&& (Logan_Inside == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_Why_Info()
{
	AI_Output(other, self, "DIA_Addon_Logan_Why_15_00"); //Was kriege ich für meine Hilfe?
	AI_Output(self, other, "DIA_Addon_Logan_Why_10_01"); //(knurrt) Franco lässt dich hier verschimmeln, wenn du nichts tust.
	AI_Output(self, other, "DIA_Addon_Logan_Why_10_02"); //Wenn du in's Lager willst, musst du schon mit anpacken. Nur mit Worten kommst du hier nicht weiter.
	AI_Output(self, other, "DIA_Addon_Logan_Why_10_03"); //Außerdem kann ich dir zeigen, wie du die Viecher ausweiden kannst.
	AI_Output(self, other, "DIA_Addon_Logan_Why_10_04"); //Aber bild' dir ja nicht ein, dass Franco dich direkt ins Lager schickt, nur weil wir beide hier ein bisschen Spaß mit Sumpfhaien hatten.
	AI_Output(self, other, "DIA_Addon_Logan_Why_10_05"); //Es gibt Leute hier draußen, die warten schon 'ne ganze Weile darauf, reinzukommen.
	AI_Output(self, other, "DIA_Addon_Logan_Why_10_06"); //Und der Nächste, der reinkommt, bin ich ... (knurrt) ... und wehe nicht ...

	Log_CreateTopic(Topic_Addon_BDT_Teacher, LOG_NOTE);
	B_LogEntry(Topic_Addon_BDT_Teacher, Topic_Addon_BDT_Teacher_3);
};

// ---------------------------------------------------------------------
//	Info Lager
// ---------------------------------------------------------------------
instance DIA_Addon_Logan_Lager(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 3;
	condition		= DIA_Addon_Logan_Lager_Condition;
	information		= DIA_Addon_Logan_Lager_Info;
	description		= "Was gibt's denn im Lager?";
};

func int DIA_Addon_Logan_Lager_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Logan_Why)
	&& (Logan_Inside == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_Lager_Info()
{
	AI_Output(other, self, "DIA_Addon_Logan_Lager_15_00"); //Was gibt's denn im Lager?
	AI_Output(self, other, "DIA_Addon_Logan_Lager_10_01"); //(knurrt) Die Frage ist doch was gibt es NICHT im Lager. Es gibt dort keine Sumpfhaie, keine Sumpflöcher ... keinen SUMPF halt.
	AI_Output(self, other, "DIA_Addon_Logan_Lager_10_02"); //Stattdessen haben sie Schnaps und Gold. Soviel ich weiß, haben sie da auch eine Frau. Alles klar?
};

// ---------------------------------------------------------------------
//	Info von Franco geschickt (MISsion)
// ---------------------------------------------------------------------
instance DIA_Addon_Logan_MIS(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 99;
	condition		= DIA_Addon_Logan_MIS_Condition;
	information		= DIA_Addon_Logan_MIS_Info;
	description		= "Lass uns die Sumpfhaie angreifen.";
};

func int DIA_Addon_Logan_MIS_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Logan_HI))
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_MIS_Info()
{
	AI_Output(other, self, "DIA_Addon_Logan_MIS_15_00"); //Lass uns die Sumpfhaie angreifen.
	AI_Output(self, other, "DIA_Addon_Logan_MIS_10_01"); //(knurrt) Du hast begriffen, wie du hier weiterkommst. Gefällt mir. Psst ... hörst du das? Jaaa, ich höre sie.
	AI_Output(other, self, "DIA_Addon_Logan_MIS_15_02"); //Verstehe - und was machen wir jetzt?
	AI_Output(self, other, "DIA_Addon_Logan_MIS_10_03"); //Sie kommen. Sie haben Appetit auf 'nen Happen Menschenfleisch. Wollen wir doch mal sehen, WER hier wen fressen wird ... Auf geht's

	Snd_Play("SWA_Warn");
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self, "JAGD");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
	MIS_HlpLogan = LOG_RUNNING;

	Wld_InsertNpc(MIS_Addon_Swampshark_01, "ADW_SWAMPSHARK_01");
	Wld_InsertNpc(MIS_Addon_Swampshark_02, "ADW_SWAMPSHARK_02");
	Wld_InsertNpc(MIS_Addon_Swampshark_03, "ADW_BANDIT_VP3_06");
};

// ---------------------------------------------------------------------
//	Info Sumpfhaie TOT
// ---------------------------------------------------------------------
instance DIA_Addon_Logan_tot(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 2;
	condition		= DIA_Addon_Logan_tot_Condition;
	information		= DIA_Addon_Logan_tot_Info;
	important		= TRUE;
};

func int DIA_Addon_Logan_tot_Condition()
{
	if (Npc_IsDead(MIS_Addon_Swampshark_01)
	&& Npc_IsDead(MIS_Addon_Swampshark_02)
	&& Npc_IsDead(MIS_Addon_Swampshark_03)
	&& Npc_KnowsInfo(other, DIA_Addon_Logan_MIS))
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_tot_Info()
{
	AI_Output(self, other, "DIA_Addon_Logan_tot_10_00"); //Nur tote Sumpfhaie sind gute Sumpfhaie. Das wird ihren Brüdern eine Warnung sein!
	AI_Output(other, self, "DIA_Addon_Logan_tot_15_01"); //Alles klar, gibt's noch was zu tun? Sonst hau ich mal wieder ab ...
	AI_Output(self, other, "DIA_Addon_Logan_tot_10_02"); //Mach das. Wenn du noch was lernen willst - du weißt, wo du mich finden kannst.

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	MIS_HlpLogan = LOG_SUCCESS;
	B_CheckLog();
	B_LogEntry(Topic_Addon_Franco, Topic_Addon_Franco_12);

	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self, "START");
};

///////////////////////////////////////////////////////////////////////
//	Info Lernen
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Logan_Lern(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 100;
	condition		= DIA_Addon_Logan_Lern_Condition;
	information		= DIA_Addon_Logan_Lern_Info;
	description		= "Zeig mir, wie ich Tiere ausnehmen kann ...";
};

func int DIA_Addon_Logan_Lern_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Logan_Why))
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_Lern_Info()
{
	AI_Output(other, self, "DIA_Addon_Logan_Lern_15_00"); //Zeig mir, wie ich Tiere ausnehmen kann ...
	AI_Output(self, other, "DIA_Addon_Logan_Lern_10_01"); //Wenn du was über Blutfliegen wissen willst, geh zu Edgor. Der Mann hat Ahnung davon.
	AI_Output(self, other, "DIA_Addon_Logan_Lern_10_02"); //Und wenn du Sumpfhaie oder Echsen ausnehmen willst, musst du wissen, wie du Felle und Zähne reißen kannst. Das kann ich dir zeigen.
};

///////////////////////////////////////////////////////////////////////
//	Info Allgemeine Talente
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Logan_Allg(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 3;
	condition		= DIA_Addon_Logan_Allg_Condition;
	information		= DIA_Addon_Logan_Allg_Info;
	permanent		= TRUE;
	description		= "Ich will lernen ...";
};

func int DIA_Addon_Logan_Allg_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Logan_Lern)
	&& ((PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Teeth] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Claws] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Fur] == FALSE)))
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_Allg_Info()
{
	Info_ClearChoices(DIA_Addon_Logan_Allg);
	Info_AddChoice(DIA_Addon_Logan_Allg, DIALOG_BACK, DIA_Addon_Logan_Allg_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Teeth] == FALSE)
	{
		Info_AddChoice(DIA_Addon_Logan_Allg, B_BuildLearnString(NAME_LEARN_TEETH, B_GetLearnCostTalent(other, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), DIA_Addon_Logan_Allg_Teeth);
	};

	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Claws] == FALSE)
	{
		Info_AddChoice(DIA_Addon_Logan_Allg, B_BuildLearnString(NAME_LEARN_CLAWS, B_GetLearnCostTalent(other, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), DIA_Addon_Logan_Allg_Claws);
	};

	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Fur] == FALSE)
	{
		Info_AddChoice(DIA_Addon_Logan_Allg, B_BuildLearnString(NAME_LEARN_FUR, B_GetLearnCostTalent(other, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), DIA_Addon_Logan_Allg_Fur);
	};
};

// ------------------------------------------------------------------------------------------------
//			Allgemeine Talente
// ------------------------------------------------------------------------------------------------
func void DIA_Addon_Logan_Allg_BACK()
{
	Info_ClearChoices(DIA_Addon_Logan_Allg);
};

func void DIA_Addon_Logan_Allg_Teeth()
{
	B_TeachPlayerTalentTakeAnimalTrophy(self, other, TROPHY_Teeth);
};

func void DIA_Addon_Logan_Allg_Claws()
{
	B_TeachPlayerTalentTakeAnimalTrophy(self, other, TROPHY_Claws);
};

func void DIA_Addon_Logan_Allg_Fur()
{
	B_TeachPlayerTalentTakeAnimalTrophy(self, other, TROPHY_Fur);
};

// ----------------------------------------------------------------------
var int Logan_Lohn;
// ----------------------------------------------------------------------
//	Info Hacker
// ----------------------------------------------------------------------
instance DIA_Addon_Logan_Hacker(C_INFO)
{
	npc				= BDT_1072_Addon_Logan;
	nr				= 9;
	condition		= DIA_Addon_Logan_Hacker_Condition;
	information		= DIA_Addon_Logan_Hacker_Info;
	permanent		= TRUE;
	description		= "Wie läuft's?";
};

func int DIA_Addon_Logan_Hacker_Condition()
{
	if (Npc_GetDistToWP(self, "ADW_MINE_PICK_08") <= 500)
	{
		return TRUE;
	};
};

func void DIA_Addon_Logan_Hacker_Info()
{
	AI_Output(other, self, "DIA_Addon_BDT_10004_Logan_Hacker_15_00"); //Wie läuft's?
	AI_Output(self, other, "DIA_Addon_BDT_10004_Logan_Hacker_10_01"); //Hey, dank dir habe ich es geschafft. Ich bin in der Mine!
	AI_Output(self, other, "DIA_Addon_BDT_10004_Logan_Hacker_10_02"); //Ich hab zwar noch nicht viel Ahnung vom Goldhacken, aber das wird schon.

	if (Logan_Lohn == FALSE)
	{
		AI_Output(self, other, "DIA_Addon_BDT_10004_Logan_Hacker_10_03"); //Ich habe schon das Wichtigste gelernt. Beine fest auf den Boden und immer feste drauf kloppen!
		B_Upgrade_Hero_HackChance(10);
		Logan_Lohn = TRUE;
	};
};
