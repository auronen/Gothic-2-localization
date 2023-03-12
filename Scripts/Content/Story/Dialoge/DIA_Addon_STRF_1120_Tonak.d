// ---------------------------------------------------------------------
//	Info EXIT
// ---------------------------------------------------------------------
instance DIA_Addon_Tonak_EXIT(C_INFO)
{
	npc				= STRF_1120_Addon_Tonak;
	nr				= 999;
	condition		= DIA_Addon_Tonak_EXIT_Condition;
	information		= DIA_Addon_Tonak_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Addon_Tonak_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Tonak_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ---------------------------------------------------------------------
//	Info Hi
// ---------------------------------------------------------------------
instance DIA_Addon_Tonak_Hi(C_INFO)
{
	npc				= STRF_1120_Addon_Tonak;
	nr				= 2;
	condition		= DIA_Addon_Tonak_Hi_Condition;
	information		= DIA_Addon_Tonak_Hi_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_Addon_Tonak_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk)
	&& (Sklaven_Flucht == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Tonak_Hi_Info()
{
	AI_Output(self, other, "DIA_Addon_Tonak_Hi_03_00"); //Was willst du? Ich bin nur ein gefangener Arbeiter. Ich habe nichts getan.
	AI_StopProcessInfos(self);
};
