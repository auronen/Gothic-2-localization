// ---------------------------------------------------------------------
//	Info EXIT
// ---------------------------------------------------------------------
instance DIA_Addon_Pardos_EXIT(C_INFO)
{
	npc				= STRF_1122_Addon_Pardos;
	nr				= 999;
	condition		= DIA_Addon_Pardos_EXIT_Condition;
	information		= DIA_Addon_Pardos_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Addon_Pardos_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Pardos_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ---------------------------------------------------------------------
//	Info Hi
// ---------------------------------------------------------------------
instance DIA_Addon_Pardos_Hi(C_INFO)
{
	npc				= STRF_1122_Addon_Pardos;
	nr				= 2;
	condition		= DIA_Addon_Pardos_Hi_Condition;
	information		= DIA_Addon_Pardos_Hi_Info;
	description		= "Wie geht's dir?";
};

func int DIA_Addon_Pardos_Hi_Condition()
{
	if (Sklaven_Flucht == FALSE)
	{
		return TRUE;
	};
};

func void DIA_Addon_Pardos_Hi_Info()
{
	AI_Output(self, other, "DIA_Addon_Pardos_Hi_03_00"); //Wie geht's dir?
	AI_Output(self, other, "DIA_Addon_Pardos_Hi_03_01"); //(müde) Ich bin fertig ... völlig fertig. Ist es ein strahlender Sonnentag oder eine dieser klaren Nächte, in der tausend Sterne funkeln?
	AI_Output(self, other, "DIA_Addon_Pardos_Hi_03_02"); //(müder) Ich weiß es nicht ... wo ist der leichte Sommerregen, wo die Kühle des Abendwindes ... ich spüre sie nicht mehr ...
	AI_Output(self, other, "DIA_Addon_Pardos_Hi_03_03"); //(resigniert) Hier drin sterben die Augen zuerst ...
};

// ---------------------------------------------------------------------
//	Info save
// ---------------------------------------------------------------------
instance DIA_Addon_Pardos_save(C_INFO)
{
	npc				= STRF_1122_Addon_Pardos;
	nr				= 2;
	condition		= DIA_Addon_Pardos_save_Condition;
	information		= DIA_Addon_Pardos_save_Info;
	description		= "Halte durch. Die Rettung naht.";
};

func int DIA_Addon_Pardos_save_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Pardos_Hi)
	&& (Sklaven_Flucht == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Pardos_save_Info()
{
	AI_Output(other, self, "DIA_Addon_Pardos_save_15_00"); //Halte durch. Die Rettung naht.
	AI_Output(self, other, "DIA_Addon_Pardos_save_03_01"); //(müde) Danke. Danke für deine Worte.
	// Falsche Stimm Nummer M.F.// AI_Output(self, other, "DIA_Addon_Pardos_save_03_02");// Hey, du wirst doch jetzt nicht schlappmachen, oder? Gib jetzt nicht auf - klar?!
};

// ---------------------------------------------------------------------
var int Pardos_Geheilt;
// ---------------------------------------------------------------------
//	Info trank
// ---------------------------------------------------------------------
instance DIA_Addon_Pardos_trank(C_INFO)
{
	npc				= STRF_1122_Addon_Pardos;
	nr				= 2;
	condition		= DIA_Addon_Pardos_trank_Condition;
	information		= DIA_Addon_Pardos_trank_Info;
	description		= "Hier, trink das. (Trank geben)";
};

func int DIA_Addon_Pardos_trank_Condition()
{
	if ((Pardos_Geheilt == FALSE)
	&& Npc_KnowsInfo(other, DIA_Addon_Pardos_save))
	{
		return TRUE;
	};
};

func void DIA_Addon_Pardos_trank_Info()
{
	AI_Output(other, self, "DIA_Addon_Pardos_trank_15_00"); //Hier, trink das.
	AI_StandUpQuick(self);

	Info_ClearChoices(DIA_Addon_Pardos_trank);

	Info_AddChoice(DIA_Addon_Pardos_trank, DIALOG_BACK, DIA_Addon_Pardos_trank_BACK);

	if (Npc_HasItems(other, ItPo_Health_01))
	{
		Info_AddChoice(DIA_Addon_Pardos_trank, "Essenz der Heilung geben", DIA_Addon_Pardos_trank_01);
	};

	if (Npc_HasItems(other, ItPo_Health_02))
	{
		Info_AddChoice(DIA_Addon_Pardos_trank, "Extrakt der Heilung geben", DIA_Addon_Pardos_trank_02);
	};

	if (Npc_HasItems(other, ItPo_Health_03))
	{
		Info_AddChoice(DIA_Addon_Pardos_trank, "Elixier der Heilung geben", DIA_Addon_Pardos_trank_03);
	};

	if (Npc_HasItems(other, ItFo_Addon_Meatsoup))
	{
		Info_AddChoice(DIA_Addon_Pardos_trank, "Fleischsuppe geben", DIA_Addon_Pardos_trank_Soup);
	};
};

func void B_SayPardosThanks()
{
	AI_Output(self, other, "DIA_Addon_Pardos_trank_03_00"); //Danke, das hat mir gut getan.
};

func void DIA_Addon_Pardos_trank_BACK()
{
	Info_ClearChoices(DIA_Addon_Pardos_trank);
};

// ---------------------------------------------------------------------
func void DIA_Addon_Pardos_trank_01()
{
	if (B_GiveInvItems(other, self, ItPo_Health_01, 1))
	{
		B_UseItem(self, ItPo_Health_01);
	};

	Info_ClearChoices(DIA_Addon_Pardos_trank);
	Pardos_Geheilt = TRUE;
	B_SayPardosThanks();
	B_GivePlayerXP(XP_Ambient);
};

// ---------------------------------------------------------------------
func void DIA_Addon_Pardos_trank_02()
{
	if (B_GiveInvItems(other, self, ItPo_Health_02, 1))
	{
		B_UseItem(self, ItPo_Health_02);
	};

	Info_ClearChoices(DIA_Addon_Pardos_trank);
	Pardos_Geheilt = TRUE;
	B_SayPardosThanks();
	B_GivePlayerXP(XP_Ambient * 2);
};

// ---------------------------------------------------------------------
func void DIA_Addon_Pardos_trank_03()
{
	if (B_GiveInvItems(other, self, ItPo_Health_01, 3))
	{
		B_UseItem(self, ItPo_Health_03);
	};

	Info_ClearChoices(DIA_Addon_Pardos_trank);
	Pardos_Geheilt = TRUE;
	B_SayPardosThanks();
	B_GivePlayerXP(XP_Ambient * 3);
};

// ---------------------------------------------------------------------
func void DIA_Addon_Pardos_trank_Soup()
{
	AI_Output(other, self, "DIA_Addon_Pardos_trank_soup_15_00"); //Hier, iss erst mal 'ne Fleischsuppe.

	if (B_GiveInvItems(other, self, ItFo_Addon_Meatsoup, 1))
	{
		B_UseItem(self, ItFo_Addon_Meatsoup);
	};

	AI_Output(self, other, "DIA_Addon_Pardos_trank_03_01"); //Danke, das hat meine Kräfte gestärkt.
	B_GivePlayerXP(XP_Ambient * 3);
};

// ---------------------------------------------------------------------
//	Info perm
// ---------------------------------------------------------------------
instance DIA_Addon_Pardos_perm(C_INFO)
{
	npc				= STRF_1122_Addon_Pardos;
	nr				= 99;
	condition		= DIA_Addon_Pardos_perm_Condition;
	information		= DIA_Addon_Pardos_perm_Info;
	permanent		= TRUE;
	description		= "Wie geht's dir?";
};

func int DIA_Addon_Pardos_perm_Condition()
{
	if (Pardos_Geheilt == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Addon_Pardos_perm_Info()
{
	AI_Output(other, self, "DIA_Addon_Pardos_perm_15_00"); //Wie geht's dir?
	AI_Output(self, other, "DIA_Addon_Pardos_perm_03_01"); //Dank dir geht es mir besser. Ich fühle wie meine Kräfte zurückkehren.
};
