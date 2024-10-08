///////////////////////////////////////////////////////////////////////
//	Info EXIT
///////////////////////////////////////////////////////////////////////
instance DIA_PAL_269_EXIT(C_INFO)
{
	npc				= PAL_269_Ritter;
	nr				= 999;
	condition		= DIA_PAL_269_EXIT_Condition;
	information		= DIA_PAL_269_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_PAL_269_EXIT_Condition()
{
	return TRUE;
};

func void DIA_PAL_269_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

///////////////////////////////////////////////////////////////////////
//	Info HERO
///////////////////////////////////////////////////////////////////////
instance DIA_Ritter_HERO(C_INFO)
{
	npc				= PAL_269_Ritter;
	condition		= DIA_PAL_269_HERO_Condition;
	information		= DIA_PAL_269_HERO_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_PAL_269_HERO_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return TRUE;
	};
};

var int DIA_Ritter_HERO_NoPerm;
func void DIA_PAL_269_HERO_Info()
{
	AI_Output(self, other, "DIA_Ritter_HERO_04_00"); //Dein Auftauchen hier ist ein Zeichen für uns alle. Wir alle schöpfen daraus neuen Mut.

	if (DIA_Ritter_HERO_NoPerm == FALSE)
	{
		AI_Output(self, other, "DIA_Ritter_HERO_04_01"); //Wir wissen, dass unsere Jungs in der Stadt uns nicht vergessen werden. Innos' Auge blickt auf uns.
		AI_Output(self, other, "DIA_Ritter_HERO_04_02"); //Und wenn auch die Orks und Drachen die Tore stürmen, dann werden wir ihnen aufrecht entgegen gehen, bis zum Sieg oder zum Tod.
		DIA_Ritter_HERO_NoPerm = TRUE;
	};
};
