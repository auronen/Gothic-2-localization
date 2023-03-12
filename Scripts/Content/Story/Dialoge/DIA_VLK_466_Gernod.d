// ************************************************************
// 			  				   EXIT
// ************************************************************
instance DIA_Gernod_EXIT(C_INFO)
{
	npc				= VLK_466_Gernod;
	nr				= 999;
	condition		= DIA_Gernod_EXIT_Condition;
	information		= DIA_Gernod_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Gernod_EXIT_Condition()
{
	return FALSE;
};

func void DIA_Gernod_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
