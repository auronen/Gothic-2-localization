///////////////////////////////////////////////////////////////////////
//	Info EXIT
///////////////////////////////////////////////////////////////////////
instance DIA_Carl_EXIT(C_INFO)
{
	npc				= VLK_461_Carl;
	nr				= 999;
	condition		= DIA_Carl_EXIT_Condition;
	information		= DIA_Carl_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Carl_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Carl_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

///////////////////////////////////////////////////////////////////////
func void B_CarlSayHallo()
{
	AI_Output(self, other, "DIA_Carl_Hallo_05_00"); //Scheint nämlich so, als hätten wir ein paar Diebe in der Stadt, die den reichen Leuten ihren Krempel klauen.
	AI_Output(self, other, "DIA_Carl_Hallo_05_01"); //Die Stadtwache hat letztens das ganze Hafenviertel auf den Kopf gestellt - aber sie haben nichts gefunden.
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************
instance DIA_Carl_PICKPOCKET(C_INFO)
{
	npc				= VLK_461_Carl;
	nr				= 900;
	condition		= DIA_Carl_PICKPOCKET_Condition;
	information		= DIA_Carl_PICKPOCKET_Info;
	permanent		= TRUE;
	description		= Pickpocket_40;
};

func int DIA_Carl_PICKPOCKET_Condition()
{
	C_Beklauen(34, 40);
};

func void DIA_Carl_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Carl_PICKPOCKET);
	Info_AddChoice(DIA_Carl_PICKPOCKET, DIALOG_BACK, DIA_Carl_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Carl_PICKPOCKET, DIALOG_PICKPOCKET, DIA_Carl_PICKPOCKET_DoIt);
};

func void DIA_Carl_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Carl_PICKPOCKET);
};

func void DIA_Carl_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Carl_PICKPOCKET);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Carl_Hallo(C_INFO)
{
	npc				= VLK_461_Carl;
	nr				= 2;
	condition		= DIA_Carl_Hallo_Condition;
	information		= DIA_Carl_Hallo_Info;
	important		= TRUE;
};

func int DIA_Carl_Hallo_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Carl_Hallo_Info()
{
	AI_Output(self, other, "DIA_Carl_Hallo_05_02"); //Was führt dich in diese arme Gegend? Was suchst du hier?

	Info_ClearChoices(DIA_Carl_Hallo);
	Info_AddChoice(DIA_Carl_Hallo, "Ich habe mich verlaufen.", DIA_Carl_Hallo_verlaufen);
	Info_AddChoice(DIA_Carl_Hallo, "Ich sehe mich nur mal um.", DIA_Carl_Hallo_umsehen);
};

func void DIA_Carl_Hallo_verlaufen()
{
	AI_Output(other, self, "DIA_Carl_Hallo_verlaufen_15_00"); //Ich habe mich verlaufen.
	AI_Output(self, other, "DIA_Carl_Hallo_verlaufen_05_01"); //Dann pass auf, dass du nicht ausgeraubt wirst.
	B_CarlSayHallo();
	Info_ClearChoices(DIA_Carl_Hallo);
};

func void DIA_Carl_Hallo_umsehen()
{
	AI_Output(other, self, "DIA_Carl_Hallo_umsehen_15_00"); //Ich sehe mich nur mal um.
	AI_Output(self, other, "DIA_Carl_Hallo_umsehen_05_01"); //Aha. Dann lass dich besser nicht beim Umsehen erwischen.
	B_CarlSayHallo();
	Info_ClearChoices(DIA_Carl_Hallo);
};

///////////////////////////////////////////////////////////////////////
//	Info Diebe
///////////////////////////////////////////////////////////////////////
instance DIA_Carl_Diebe(C_INFO)
{
	npc				= VLK_461_Carl;
	nr				= 3;
	condition		= DIA_Carl_Diebe_Condition;
	information		= DIA_Carl_Diebe_Info;
	description		= "Was weißt du über die Diebe? ";
};

func int DIA_Carl_Diebe_Condition()
{
	return TRUE;
};

func void DIA_Carl_Diebe_Info()
{
	AI_Output(other, self, "DIA_Carl_Diebe_15_00"); //Was weißt du über die Diebe?
	AI_Output(self, other, "DIA_Carl_Diebe_05_01"); //Nichts. Aber alle Bürger haben Angst und sind misstrauisch geworden - vor allem Fremden gegenüber.
	AI_Output(self, other, "DIA_Carl_Diebe_05_02"); //Lass dich nicht in fremden Häusern erwischen - darauf ist keiner gut zu sprechen.
	AI_Output(self, other, "DIA_Carl_Diebe_05_03"); //Ja, vor Dieben muss man sich schützen. Am besten mit einem dicken Knüppel.
};

///////////////////////////////////////////////////////////////////////
//	Info Lernen
///////////////////////////////////////////////////////////////////////
instance DIA_Carl_Lernen(C_INFO)
{
	npc				= VLK_461_Carl;
	nr				= 3;
	condition		= DIA_Carl_Lernen_Condition;
	information		= DIA_Carl_Lernen_Info;
	description		= "Kannst du mir was beibringen?";
};

func int DIA_Carl_Lernen_Condition()
{
	return TRUE;
};

func void DIA_Carl_Lernen_Info()
{
	AI_Output(other, self, "DIA_Carl_Lernen_15_00"); //Kannst du mir was beibringen?
	AI_Output(self, other, "DIA_Carl_Lernen_05_01"); //Ach, ich schmiede hier ein paar Beschläge und Nägel und repariere Eisenteile.
	AI_Output(self, other, "DIA_Carl_Lernen_05_02"); //Aber vom Schmieden von Waffen verstehe ich nicht genug, um dich zu unterrichten.
	AI_Output(self, other, "DIA_Carl_Lernen_05_03"); //Wenn du das lernen willst, dann geh zu Harad. Ja, der kann Waffen schmieden!
	AI_Output(self, other, "DIA_Carl_Lernen_05_04"); //Aber wenn du ein bisschen deine Muskeln trainieren willst - dabei kann ich dir helfen.

	Log_CreateTopic(Topic_CityTeacher, LOG_NOTE);
	B_LogEntry(Topic_CityTeacher, Topic_CityTeacher_3);
};

///////////////////////////////////////////////////////////////////////
//	Info Für's lernen bezahlen
///////////////////////////////////////////////////////////////////////
instance DIA_Carl_Wieviel(C_INFO)
{
	npc				= VLK_461_Carl;
	nr				= 3;
	condition		= DIA_Carl_Wieviel_Condition;
	information		= DIA_Carl_Wieviel_Info;
	description		= "Was willst du fürs Training haben?";
};

func int DIA_Carl_Wieviel_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Carl_Lernen))
	{
		return TRUE;
	};
};

func void DIA_Carl_Wieviel_Info()
{
	AI_Output(other, self, "DIA_Carl_Wieviel_15_00"); //Was willst du fürs Training haben?

	if (Npc_KnowsInfo(other, DIA_Edda_Statue))
	{
		AI_Output(self, other, "DIA_Carl_Wieviel_05_01"); //Ich hab gehört, was du für Edda getan hast. Ich trainiere dich umsonst.
		Carl_TeachSTR = TRUE;
	}
	else
	{
		AI_Output(self, other, "DIA_Carl_Wieviel_05_02"); //50 Goldstücke und ich helfe dir dabei, stärker zu werden.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info Gold zahlen
///////////////////////////////////////////////////////////////////////
instance DIA_Carl_bezahlen(C_INFO)
{
	npc				= VLK_461_Carl;
	nr				= 3;
	condition		= DIA_Carl_bezahlen_Condition;
	information		= DIA_Carl_bezahlen_Info;
	permanent		= TRUE;
	description		= "Ich will bei dir trainieren (50 Gold zahlen)";
};

func int DIA_Carl_bezahlen_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Carl_Wieviel)
	&& (Carl_TeachSTR == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Carl_bezahlen_Info()
{
	AI_Output(other, self, "DIA_Carl_bezahlen_15_00"); //Ich will bei dir trainieren.

	if (Npc_KnowsInfo(other, DIA_Edda_Statue))
	{
		AI_Output(self, other, "DIA_Carl_bezahlen_05_01"); //Ich hab gehört, was du für Edda getan hast. Ich trainiere dich umsonst.
		Carl_TeachSTR = TRUE;
	}
	else
	{
		if (B_GiveInvItems(other, self, ItMi_Gold, 50))
		{
			AI_Output(self, other, "DIA_Carl_bezahlen_05_02"); //Gut, wir können anfangen, sobald du bereit bist.
			Carl_TeachSTR = TRUE;
		}
		else
		{
			AI_Output(self, other, "DIA_Carl_bezahlen_05_03"); //Besorge dir das Gold, dann trainiere ich dich.
		};
	};
};

//*******************************************
//	TechPlayer
//*******************************************
instance DIA_Carl_Teach(C_INFO)
{
	npc				= VLK_461_Carl;
	nr				= 7;
	condition		= DIA_Carl_Teach_Condition;
	information		= DIA_Carl_Teach_Info;
	permanent		= TRUE;
	description		= "Ich will stärker werden";
};

func int DIA_Carl_Teach_Condition()
{
	if (Carl_TeachSTR == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Carl_Teach_Info()
{
	AI_Output(other, self, "DIA_Carl_Teach_15_00"); //Ich will stärker werden.

	Info_ClearChoices(DIA_Carl_Teach);
	Info_AddChoice(DIA_Carl_Teach, DIALOG_BACK, DIA_Carl_Teach_Back);
	Info_AddChoice(DIA_Carl_Teach, B_BuildLearnString(PRINT_LearnSTR1, B_GetLearnCostAttribute(other, ATR_STRENGTH)), DIA_Carl_Teach_STR_1);
	Info_AddChoice(DIA_Carl_Teach, B_BuildLearnString(PRINT_LearnSTR5, B_GetLearnCostAttribute(other, ATR_STRENGTH) * 5), DIA_Carl_Teach_STR_5);
};

func void DIA_Carl_Teach_Back()
{
	Info_ClearChoices(DIA_Carl_Teach);
};

func void DIA_Carl_Teach_STR_1()
{
	B_TeachAttributePoints(self, other, ATR_STRENGTH, 1, T_HIGH);

	Info_ClearChoices(DIA_Carl_Teach);
	Info_AddChoice(DIA_Carl_Teach, DIALOG_BACK, DIA_Carl_Teach_Back);
	Info_AddChoice(DIA_Carl_Teach, B_BuildLearnString(PRINT_LearnSTR1, B_GetLearnCostAttribute(other, ATR_STRENGTH)), DIA_Carl_Teach_STR_1);
	Info_AddChoice(DIA_Carl_Teach, B_BuildLearnString(PRINT_LearnSTR5, B_GetLearnCostAttribute(other, ATR_STRENGTH) * 5), DIA_Carl_Teach_STR_5);
};

func void DIA_Carl_Teach_STR_5()
{
	B_TeachAttributePoints(self, other, ATR_STRENGTH, 5, T_HIGH);

	Info_ClearChoices(DIA_Carl_Teach);
	Info_AddChoice(DIA_Carl_Teach, DIALOG_BACK, DIA_Carl_Teach_Back);
	Info_AddChoice(DIA_Carl_Teach, B_BuildLearnString(PRINT_LearnSTR1, B_GetLearnCostAttribute(other, ATR_STRENGTH)), DIA_Carl_Teach_STR_1);
	Info_AddChoice(DIA_Carl_Teach, B_BuildLearnString(PRINT_LearnSTR5, B_GetLearnCostAttribute(other, ATR_STRENGTH) * 5), DIA_Carl_Teach_STR_5);
};
