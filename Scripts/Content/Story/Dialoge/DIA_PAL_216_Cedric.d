///////////////////////////////////////////////////////////////////////
//	Info EXIT
///////////////////////////////////////////////////////////////////////
instance DIA_Cedric_EXIT(C_INFO)
{
	npc				= PAL_216_Cedric;
	nr				= 999;
	condition		= DIA_Cedric_EXIT_Condition;
	information		= DIA_Cedric_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Cedric_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Cedric_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Cedric_Hallo(C_INFO)
{
	npc				= PAL_216_Cedric;
	nr				= 2;
	condition		= DIA_Cedric_Hallo_Condition;
	information		= DIA_Cedric_Hallo_Info;
	important		= TRUE;
};

func int DIA_Cedric_Hallo_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Cedric_Hallo_Info()
{
	AI_Output(self, other, "DIA_Cedric_Hallo_12_00"); //Ich bin Schwertmeister Cedric, Paladin des Königs.
};

///////////////////////////////////////////////////////////////////////
//	Can You Teach Me?
///////////////////////////////////////////////////////////////////////
instance DIA_Cedric_CanTeach(C_INFO)
{
	npc				= PAL_216_Cedric;
	nr				= 5;
	condition		= DIA_Cedric_CanTeach_Condition;
	information		= DIA_Cedric_CanTeach_Info;
	permanent		= TRUE;
	description		= "Kannst du mich trainieren?";
};

func int DIA_Cedric_CanTeach_Condition()
{
	if (Cedric_Teach1H == FALSE)
	{
		return TRUE;
	};
};

func void DIA_Cedric_CanTeach_Info()
{
	AI_Output(other, self, "DIA_Cedric_CanTeach_15_00"); //Kannst du mich trainieren?

	if (other.guild == GIL_PAL)
	{
		AI_Output(self, other, "DIA_Cedric_CanTeach_12_01"); //Ich kann dich im Kampf mit einhändigen Waffen trainieren.
		Cedric_Teach1H = TRUE;
		B_LogEntry(TOPIC_CityTeacher, TOPIC_CityTeacher_22);
	}
	else
	{
		AI_Output(self, other, "DIA_Cedric_CanTeach_12_02"); //Ich trainiere nur Paladine.
	};
};

//**************************************
//			Ich will trainieren
//**************************************
instance DIA_Cedric_Teach(C_INFO)
{
	npc				= PAL_216_Cedric;
	nr				= 100;
	condition		= DIA_Cedric_Teach_Condition;
	information		= DIA_Cedric_Teach_Info;
	permanent		= TRUE;
	description		= "Ich will trainieren.";
};

// ----------------------------------
var int DIA_Cedric_Teach_permanent;
// ----------------------------------
func int DIA_Cedric_Teach_Condition()
{
	if ((Cedric_Teach1H == TRUE)
	&& (DIA_Cedric_Teach_permanent == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Cedric_Teach_Info()
{
	AI_Output(other, self, "DIA_Cedric_Teach_15_00"); //Ich will trainieren.

	if (other.HitChance[NPC_TALENT_1H] >= 90)
	{
		AI_Output(self, other, "DIA_DIA_Cedric_Teach_12_01"); //Du hast alles über den Schwertkampf gelernt. Mehr kann ich dir nicht zeigen.
	}
	else
	{
		Info_ClearChoices(DIA_Cedric_Teach);
		Info_AddChoice(DIA_Cedric_Teach, DIALOG_BACK, DIA_Cedric_Teach_Back);
		Info_AddChoice(DIA_Cedric_Teach, B_BuildLearnString(PRINT_Learn1h1, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1)), DIA_Cedric_Teach_2H_1);
		Info_AddChoice(DIA_Cedric_Teach, B_BuildLearnString(PRINT_Learn1h5, B_GetLearnCostTalent(other, NPC_TALENT_1H, 5)), DIA_Cedric_Teach_2H_5);
	};
};

func void DIA_Cedric_Teach_Back()
{
	Info_ClearChoices(DIA_Cedric_Teach);
};

func void DIA_Cedric_Teach_2H_1()
{
	B_TeachFightTalentPercent(self, other, NPC_TALENT_1H, 1, 90);

	Info_ClearChoices(DIA_Cedric_Teach);
	Info_AddChoice(DIA_Cedric_Teach, DIALOG_BACK, DIA_Cedric_Teach_Back);
	Info_AddChoice(DIA_Cedric_Teach, B_BuildLearnString(PRINT_Learn1h1, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1)), DIA_Cedric_Teach_2H_1);
	Info_AddChoice(DIA_Cedric_Teach, B_BuildLearnString(PRINT_Learn1h5, B_GetLearnCostTalent(other, NPC_TALENT_1H, 5)), DIA_Cedric_Teach_2H_5);
};

func void DIA_Cedric_Teach_2H_5()
{
	B_TeachFightTalentPercent(self, other, NPC_TALENT_1H, 5, 90);

	Info_ClearChoices(DIA_Cedric_Teach);
	Info_AddChoice(DIA_Cedric_Teach, DIALOG_BACK, DIA_Cedric_Teach_Back);
	Info_AddChoice(DIA_Cedric_Teach, B_BuildLearnString(PRINT_Learn1h1, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1)), DIA_Cedric_Teach_2H_1);
	Info_AddChoice(DIA_Cedric_Teach, B_BuildLearnString(PRINT_Learn1h5, B_GetLearnCostTalent(other, NPC_TALENT_1H, 5)), DIA_Cedric_Teach_2H_5);
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************
instance DIA_Cedric_PICKPOCKET(C_INFO)
{
	npc				= PAL_216_Cedric;
	nr				= 900;
	condition		= DIA_Cedric_PICKPOCKET_Condition;
	information		= DIA_Cedric_PICKPOCKET_Info;
	permanent		= TRUE;
	description		= Pickpocket_40;
};

func int DIA_Cedric_PICKPOCKET_Condition()
{
	C_Beklauen(37, 55);
};

func void DIA_Cedric_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Cedric_PICKPOCKET);
	Info_AddChoice(DIA_Cedric_PICKPOCKET, DIALOG_BACK, DIA_Cedric_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Cedric_PICKPOCKET, DIALOG_PICKPOCKET, DIA_Cedric_PICKPOCKET_DoIt);
};

func void DIA_Cedric_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Cedric_PICKPOCKET);
};

func void DIA_Cedric_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Cedric_PICKPOCKET);
};
