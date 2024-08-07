// *************************************************************************
// 									EXIT
// *************************************************************************
instance DIA_VLK_6_EXIT(C_INFO)
{
	nr				= 999;
	condition		= DIA_VLK_6_EXIT_Condition;
	information		= DIA_VLK_6_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_VLK_6_EXIT_Condition()
{
	return TRUE;
};

func void DIA_VLK_6_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
instance DIA_VLK_6_JOIN(C_INFO)
{
	nr				= 4;
	condition		= DIA_VLK_6_JOIN_Condition;
	information		= DIA_VLK_6_JOIN_Info;
	permanent		= TRUE;
	description		= "Wie werde ich Bürger dieser Stadt?";
};

func int DIA_VLK_6_JOIN_Condition()
{
	if ((hero.guild == GIL_NONE)
	&& (Player_IsApprentice == APP_NONE))
	{
		return TRUE;
	};
};

func void DIA_VLK_6_JOIN_Info()
{
	AI_Output(other, self, "DIA_VLK_6_JOIN_15_00"); //Wie werde ich Bürger dieser Stadt?
	AI_Output(self, other, "DIA_VLK_6_JOIN_06_01"); //Du willst dich hier niederlassen? Jetzt? Wo hier alle Anzeichen auf Weltuntergang stehen?
	AI_Output(other, self, "DIA_VLK_6_JOIN_15_02"); //Ich hatte nicht vor, ewig zu bleiben.
	AI_Output(self, other, "DIA_VLK_6_JOIN_06_03"); //Also, ich würde dir raten, dich hier zu verkrümeln, solange du noch kannst, aber wenn du's darauf anlegst, solltest du mit einem der einflussreichen Bürger hier reden.
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
instance DIA_VLK_6_PEOPLE(C_INFO)
{
	nr				= 3;
	condition		= DIA_VLK_6_PEOPLE_Condition;
	information		= DIA_VLK_6_PEOPLE_Info;
	permanent		= TRUE;
	description		= "Wer sind die einflussreichen Bürger von Khorinis?";
};

func int DIA_VLK_6_PEOPLE_Condition()
{
	return TRUE;
};

func void DIA_VLK_6_PEOPLE_Info()
{
	AI_Output(other, self, "DIA_VLK_6_PEOPLE_15_00"); //Wer sind die einflussreichen Bürger von Khorinis?
	AI_Output(self, other, "DIA_VLK_6_PEOPLE_06_01"); //Probier's mal beim Schmied oder beim Tischler in der Unterstadt. Es gibt dort auch noch ein paar andere angesehene Meister.
	AI_Output(self, other, "DIA_VLK_6_PEOPLE_06_02"); //Wenn hier jemand abgesehen von der Stadtwache und den Paladinen was zu sagen hat, dann diese Männer.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
instance DIA_VLK_6_LOCATION(C_INFO)
{
	nr				= 2;
	condition		= DIA_VLK_6_LOCATION_Condition;
	information		= DIA_VLK_6_LOCATION_Info;
	permanent		= TRUE;
	description		= "Woran kann ich mich hier in der Stadt am besten orientieren?";
};

func int DIA_VLK_6_LOCATION_Condition()
{
	return TRUE;
};

func void DIA_VLK_6_LOCATION_Info()
{
	AI_Output(other, self, "DIA_VLK_6_LOCATION_15_00"); //Woran kann ich mich hier in der Stadt am besten orientieren?
	AI_Output(self, other, "DIA_VLK_6_LOCATION_06_01"); //Ist gar nicht so leicht, sich hier zurechtzufinden, was? Da helfen selbst die Wegweiser nicht immer.
	AI_Output(self, other, "DIA_VLK_6_LOCATION_06_02"); //Wenn du einen schlechten Orientierungssinn hast, wird es das Beste sein, du gehst zum Hafen - den wirst du ja wohl noch finden - und suchst das Haus des Kartenzeichners.
	AI_Output(self, other, "DIA_VLK_6_LOCATION_06_03"); //Es ist direkt neben der Kneipe, an der Hafenmauer. Brahim hat bestimmt einen Plan von der Stadt für dich.
};

// *************************************************************************
// 									NEWS
// *************************************************************************
instance DIA_VLK_6_STANDARD(C_INFO)
{
	nr				= 1;
	condition		= DIA_VLK_6_STANDARD_Condition;
	information		= DIA_VLK_6_STANDARD_Info;
	permanent		= TRUE;
	description		= "Was gibt's Neues?";
};

func int DIA_VLK_6_STANDARD_Condition()
{
	return TRUE;
};

func void DIA_VLK_6_STANDARD_Info()
{
	AI_Output(other, self, "DIA_VLK_6_STANDARD_15_00"); //Was gibt's Neues?

	if (Kapitel == 1)
	{
		AI_Output(self, other, "DIA_VLK_6_STANDARD_06_01"); //Seitdem die Barriere weg ist, wimmelt es in der Gegend um die Stadt nur so von Banditen. Aber die Paladine unternehmen nichts. Warum zum Teufel sind die Kerle dann hier?
	};

	if (Kapitel == 2)
	{
		AI_Output(self, other, "DIA_VLK_6_STANDARD_06_02"); //In letzter Zeit ist es schon besser geworden mit den Banditen. Es sieht so aus, als ob endlich mal jemand etwas unternehmen würde.
	};

	if (Kapitel == 3)
	{
		if (MIS_RescueBennet == LOG_SUCCESS)
		{
			AI_Output(self, other, "DIA_VLK_6_STANDARD_06_03"); //Sie haben den dreckigen Söldner, der den Paladin ermordet hat, laufen lassen. Ihn zu hängen wäre sicherlich auch kein Fehler gewesen.
		}
		else
		{
			AI_Output(self, other, "DIA_VLK_6_STANDARD_06_04"); //Es heißt, einer von Onars Söldnern hat einen der Paladine umgebracht. Sie haben den Kerl geschnappt und eingelocht. Bald wird er hängen.
		};
	};

	if (Kapitel == 4)
	{
		AI_Output(self, other, "DIA_VLK_6_STANDARD_06_05"); //Ich frage mich, on an den Geschichten über die Drachen was dran ist ...
	};

	if (Kapitel >= 5)
	{
		AI_Output(self, other, "DIA_VLK_6_STANDARD_06_06"); //Es heißt, Lord Hagen sammelt seine Männer, um das Minental befreien. Endlich geht es los!
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_VLK_6(var C_Npc slf)
{
	DIA_VLK_6_EXIT.npc = Hlp_GetInstanceID(slf);
	DIA_VLK_6_JOIN.npc = Hlp_GetInstanceID(slf);
	DIA_VLK_6_PEOPLE.npc = Hlp_GetInstanceID(slf);
	DIA_VLK_6_LOCATION.npc = Hlp_GetInstanceID(slf);
	DIA_VLK_6_STANDARD.npc = Hlp_GetInstanceID(slf);
};
