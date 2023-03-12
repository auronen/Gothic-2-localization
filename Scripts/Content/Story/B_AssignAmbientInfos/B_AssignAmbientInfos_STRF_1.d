// *************************************************************************
// 									EXIT
// *************************************************************************
instance DIA_STRF_1_EXIT(C_INFO)
{
	nr				= 999;
	condition		= DIA_STRF_1_EXIT_Condition;
	information		= DIA_STRF_1_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_STRF_1_EXIT_Condition()
{
	return TRUE;
};

func void DIA_STRF_1_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 									STANDARD
// *************************************************************************
instance DIA_STRF_1_STANDARD(C_INFO)
{
	nr				= 2;
	condition		= DIA_STRF_1_STANDARD_Condition;
	information		= DIA_STRF_1_STANDARD_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_STRF_1_STANDARD_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_STRF_1_STANDARD_Info()
{
	var int randy;
	randy = Hlp_Random(3);

	if (randy == 0)
	{
		AI_Output(self, other, "DIA_STRF_1_STANDARD_01_00"); //Wenn ich mich damals rechtzeitig abgesetzt hätte, dann müsste ich jetzt nicht wieder für die Schweine schuften!
	};

	if (randy == 1)
	{
		AI_Output(self, other, "DIA_STRF_1_STANDARD_01_01"); //Es dreht sich alles nur ums Erz. Immer wieder das gleiche. Sie wollen alle nur dieses verdammte Erz.
	};

	if (randy == 2)
	{
		AI_Output(self, other, "DIA_STRF_1_STANDARD_01_02"); //Wenn du das essen müsstest, was sie uns zum Fraß vorwerfen, würdest du auch anfangen über eine Revolte nachzudenken!
	};

	AI_StopProcessInfos(self);
};

//**************************************************************
// ----------------------------------------------------------------

func void B_AssignAmbientInfos_STRF_1(var C_Npc slf)
{
	DIA_STRF_1_EXIT.npc = Hlp_GetInstanceID(slf);
	DIA_STRF_1_STANDARD.npc = Hlp_GetInstanceID(slf);
};
