// *************************************************************************
// 									EXIT
// *************************************************************************
instance DIA_OUT_7_EXIT(C_INFO)
{
	nr				= 999;
	condition		= DIA_OUT_7_EXIT_Condition;
	information		= DIA_OUT_7_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_OUT_7_EXIT_Condition()
{
	return TRUE;
};

func void DIA_OUT_7_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 									STANDARD
// *************************************************************************
instance DIA_OUT_7_STANDARD(C_INFO)
{
	nr				= 2;
	condition		= DIA_OUT_7_STANDARD_Condition;
	information		= DIA_OUT_7_STANDARD_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_OUT_7_STANDARD_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_OUT_7_STANDARD_Info()
{
	var int randy;
	randy = Hlp_Random(3);

	if (randy == 0)
	{
		AI_Output(self, other, "DIA_OUT_7_STANDARD_07_00"); //Hier draußen ist es in letzte Zeit immer gefährlicher geworden. Und die Feldräuber werden zu einer echten Plage.
	};

	if (randy == 1)
	{
		AI_Output(self, other, "DIA_OUT_7_STANDARD_07_01"); //Wir müssen unseren Teil an die Stadt abgeben. Tun wir's nicht, bekommen wir am Ende noch Ärger mit den Paladinen.
	};

	if (randy == 2)
	{
		AI_Output(self, other, "DIA_OUT_7_STANDARD_07_02"); //Der Aufstand von Onar wird noch schwere Folgen haben. Ich halt mich lieber aus der Sache raus.
	};

	AI_StopProcessInfos(self);
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_OUT_7(var C_Npc slf)
{
	DIA_OUT_7_EXIT.npc = Hlp_GetInstanceID(slf);
	DIA_OUT_7_STANDARD.npc = Hlp_GetInstanceID(slf);
};
