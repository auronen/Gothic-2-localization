// *************************************************************************
// 									EXIT
// *************************************************************************
instance DIA_PAL_9_EXIT(C_INFO)
{
	nr				= 999;
	condition		= DIA_PAL_9_EXIT_Condition;
	information		= DIA_PAL_9_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_PAL_9_EXIT_Condition()
{
	return TRUE;
};

func void DIA_PAL_9_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
instance DIA_PAL_9_JOIN(C_INFO)
{
	nr				= 4;
	condition		= DIA_PAL_9_JOIN_Condition;
	information		= DIA_PAL_9_JOIN_Info;
	permanent		= TRUE;
	description		= "Wie kann ich Paladin werden?";
};

func int DIA_PAL_9_JOIN_Condition()
{
	if (other.guild == GIL_NONE)
	{
		return TRUE;
	};
};

func void DIA_PAL_9_JOIN_Info()
{
	AI_Output(other, self, "DIA_PAL_9_JOIN_15_00"); //Wie kann ich Paladin werden?
	AI_Output(self, other, "DIA_PAL_9_JOIN_09_01"); //Diejenigen, die sich im Dienste Innos' oder des Königs würdig erweisen, werden erwählt!
	AI_Output(self, other, "DIA_PAL_9_JOIN_09_02"); //Das heißt im Klartext: Nur die Besten werden genommen. Aber davon bist DU noch sehr weit entfernt, mein Junge!
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
instance DIA_PAL_9_PEOPLE(C_INFO)
{
	nr				= 3;
	condition		= DIA_PAL_9_PEOPLE_Condition;
	information		= DIA_PAL_9_PEOPLE_Info;
	permanent		= TRUE;
	description		= "Wer hat hier das Kommando?";
};

func int DIA_PAL_9_PEOPLE_Condition()
{
	if (other.guild != GIL_PAL)
	{
		return TRUE;
	};
};

func void DIA_PAL_9_PEOPLE_Info()
{
	AI_Output(other, self, "DIA_PAL_9_PEOPLE_15_00"); //Wer hat hier das Kommando?
	AI_Output(self, other, "DIA_PAL_9_PEOPLE_09_01"); //Lord Hagen.
	AI_Output(other, self, "DIA_PAL_9_PEOPLE_15_02"); //Und?
	AI_Output(self, other, "DIA_PAL_9_PEOPLE_09_03"); //Und sonst niemand. Lord Hagen ist der Oberbefehlshaber über die ganze Insel.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
instance DIA_PAL_9_LOCATION(C_INFO)
{
	nr				= 2;
	condition		= DIA_PAL_9_LOCATION_Condition;
	information		= DIA_PAL_9_LOCATION_Info;
	permanent		= TRUE;
	description		= "Warum seid ihr Paladine nach Khorinis gekommen?";
};

func int DIA_PAL_9_LOCATION_Condition()
{
	if (Kapitel == 1)
	{
		return TRUE;
	};
};

func void DIA_PAL_9_LOCATION_Info()
{
	AI_Output(other, self, "DIA_PAL_9_LOCATION_15_00"); //Warum seid ihr Paladine nach Khorinis gekommen?
	AI_Output(self, other, "DIA_PAL_9_LOCATION_09_01"); //Das geht dich nichts an, Bursche! Für dich muss es reichen zu wissen, dass wir im Dienste Innos' und des Königs handeln!
};

// *************************************************************************
// 									NEWS
// *************************************************************************
instance DIA_PAL_9_STANDARD(C_INFO)
{
	nr				= 1;
	condition		= DIA_PAL_9_STANDARD_Condition;
	information		= DIA_PAL_9_STANDARD_Info;
	permanent		= TRUE;
	description		= "Wie sieht's aus?";
};

func int DIA_PAL_9_STANDARD_Condition()
{
	return TRUE;
};

func void DIA_PAL_9_STANDARD_Info()
{
	AI_Output(other, self, "DIA_PAL_9_STANDARD_15_00"); //Wie sieht's aus?

	if ((other.guild == GIL_PAL)
	|| (other.guild == GIL_KDF))
	{
		if (Kapitel <= 4)
		{
			if (MIS_OLDWORLD == LOG_SUCCESS)
			{
				AI_Output(self, other, "DIA_PAL_9_STANDARD_09_01"); //Jetzt, da wir wissen, dass wir es mit Drachen zu tun haben, wird unser Kommandant sicherlich bald etwas unternehmen.
			}
			else
			{
				AI_Output(self, other, "DIA_PAL_9_STANDARD_09_02"); //Wir haben noch immer keine Nachricht von unserem Trupp im Minental. Das ist sehr beunruhigend.
			};
		};

		if (Kapitel >= 5)
		{
			AI_Output(self, other, "DIA_PAL_9_STANDARD_09_03"); //Innos sei Dank! Die Bedrohung der Drachen ist abgewendet. Jetzt müssen wir uns nur noch um die Orks kümmern, um an das Erz zu kommen.
		};
	}
	else // KEIN Paladin
	{
		AI_Output(self, other, "DIA_PAL_9_STANDARD_09_04"); //Wenn du nichts Wichtigeres vorzubringen hast, verschwinde, Bursche!
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_PAL_9(var C_Npc slf)
{
	DIA_PAL_9_EXIT.npc = Hlp_GetInstanceID(slf);
	DIA_PAL_9_JOIN.npc = Hlp_GetInstanceID(slf);
	DIA_PAL_9_PEOPLE.npc = Hlp_GetInstanceID(slf);
	DIA_PAL_9_LOCATION.npc = Hlp_GetInstanceID(slf);
	DIA_PAL_9_STANDARD.npc = Hlp_GetInstanceID(slf);
};
