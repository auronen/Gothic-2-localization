// ***********************************************************
// 							EXIT
// ***********************************************************
instance DIA_Dragomir_EXIT(C_INFO)
{
	npc				= BAU_983_Dragomir;
	nr				= 999;
	condition		= DIA_Dragomir_EXIT_Condition;
	information		= DIA_Dragomir_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Dragomir_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Dragomir_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ***********************************************************
// 							Hello
// ***********************************************************
instance DIA_Dragomir_Hello(C_INFO)
{
	npc				= BAU_983_Dragomir;
	nr				= 1;
	condition		= DIA_Dragomir_Hello_Condition;
	information		= DIA_Dragomir_Hello_Info;
	important		= TRUE;
};

func int DIA_Dragomir_Hello_Condition()
{
	if (Npc_IsInState(self, ZS_TALK))
	{
		return TRUE;
	};
};

func void DIA_Dragomir_Hello_Info()
{
	AI_Output(self, other, "DIA_Dragomir_Hello_12_00"); //Soweit von zu Hause noch unterwegs?
	AI_Output(self, other, "DIA_Dragomir_Hello_12_01"); //Hier draußen musst du vorsichtig sein, besonders, wenn du alleine unterwegs bist.
};

// ***********************************************************
// 							OutHere
// ***********************************************************
instance DIA_Dragomir_OutHere(C_INFO)
{
	npc				= BAU_983_Dragomir;
	nr				= 2;
	condition		= DIA_Dragomir_OutHere_Condition;
	information		= DIA_Dragomir_OutHere_Info;
	description		= "Was machst du denn hier draußen?";
};

func int DIA_Dragomir_OutHere_Condition()
{
	return TRUE;
};

func void DIA_Dragomir_OutHere_Info()
{
	AI_Output(other, self, "DIA_Dragomir_OutHere_15_00"); //Was machst du denn hier draußen?
	AI_Output(self, other, "DIA_Dragomir_OutHere_12_01"); //Na ja, die Taverne ist mir zu teuer, deshalb habe ich mich hier niedergelassen.
	AI_Output(self, other, "DIA_Dragomir_OutHere_12_02"); //Die vorherigen Bewohner brauchen es anscheinend nicht mehr.
};

// ***********************************************************
// 							OutHere
// ***********************************************************
instance DIA_Dragomir_Settlers(C_INFO)
{
	npc				= BAU_983_Dragomir;
	nr				= 2;
	condition		= DIA_Dragomir_Settlers_Condition;
	information		= DIA_Dragomir_Settlers_Info;
	description		= "Wer waren die Bewohner dieses Lagers?";
};

func int DIA_Dragomir_Settlers_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Dragomir_OutHere))
	{
		return TRUE;
	};
};

func void DIA_Dragomir_Settlers_Info()
{
	AI_Output(other, self, "DIA_Dragomir_Settlers_15_00"); //Wer waren die Bewohner dieses Lagers?
	AI_Output(self, other, "DIA_Dragomir_Settlers_12_01"); //Keine Ahnung, wahrscheinlich irgendwelche Jäger. Vermutlich ist es ihnen hier draußen zu gefährlich geworden.
};

// ***********************************************************
// 							Dangerous
// ***********************************************************
instance DIA_Dragomir_Dangerous(C_INFO)
{
	npc				= BAU_983_Dragomir;
	nr				= 2;
	condition		= DIA_Dragomir_Dangerous_Condition;
	information		= DIA_Dragomir_Dangerous_Info;
	description		= "Ist es hier draußen nicht zu gefährlich?";
};

func int DIA_Dragomir_Dangerous_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Dragomir_OutHere))
	{
		return TRUE;
	};
};

func void DIA_Dragomir_Dangerous_Info()
{
	AI_Output(other, self, "DIA_Dragomir_Dangerous_15_00"); //Ist es hier draußen nicht zu gefährlich?
	AI_Output(self, other, "DIA_Dragomir_Dangerous_12_01"); //Na ja, nicht wenn man sich verteidigen kann. Meine Armbrust hat mir schon so manchen guten Dienst erwiesen.
	AI_Output(other, self, "DIA_Dragomir_Dangerous_15_02"); //Besonders groß ist sie ja nicht.
	AI_Output(self, other, "DIA_Dragomir_Dangerous_12_03"); //Aber tödlich, wenn man weiß, wie man mit ihr umgehen muss. Ich hatte schon mal eine Größere. Die ist mir leider abhanden gekommen.
	AI_Output(self, other, "DIA_Dragomir_Dangerous_12_04"); //Ich hatte mich zu weit nach Norden in die Berge vorgewagt. Es gibt dort einen großen Steinkreis mit einem Opferaltar.
	AI_Output(self, other, "DIA_Dragomir_Dangerous_12_05"); //Als ich dort oben Scavenger jagte, kamen diese ekelhaften untoten Wesen aus dem Wald und griffen mich an.
	AI_Output(self, other, "DIA_Dragomir_Dangerous_12_06"); //Alles, was ich noch tun konnte, war, um mein Leben zu rennen.
	AI_Output(self, other, "DIA_Dragomir_Dangerous_12_07"); //Dabei ist mir meine Armbrust aus der Hand geglitten. Ich wette, sie liegt noch heute da oben bei dem seltsamen Steinkreis im Norden.

	Log_CreateTopic(TOPIC_DragomirsArmbrust, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_DragomirsArmbrust, LOG_RUNNING);
	B_LogEntry(TOPIC_DragomirsArmbrust, TOPIC_DragomirsArmbrust_1);

	MIS_DragomirsArmbrust = LOG_RUNNING;
};

// ***********************************************************
// 							Armbrust
// ***********************************************************
instance DIA_Dragomir_Armbrust(C_INFO)
{
	npc				= BAU_983_Dragomir;
	nr				= 2;
	condition		= DIA_Dragomir_Armbrust_Condition;
	information		= DIA_Dragomir_Armbrust_Info;
	description		= "Hier. Ich habe deine Armbrust gefunden.";
};

func int DIA_Dragomir_Armbrust_Condition()
{
	if ((MIS_DragomirsArmbrust == LOG_RUNNING)
	&& (Npc_HasItems(other, ItRw_DragomirsArmbrust_MIS)))
	{
		return TRUE;
	};
};

func void DIA_Dragomir_Armbrust_Info()
{
	AI_Output(other, self, "DIA_Dragomir_Armbrust_15_00"); //Hier. Ich habe deine Armbrust gefunden.
	B_GiveInvItems(other, self, ItRw_DragomirsArmbrust_MIS, 1);
	AI_Output(self, other, "DIA_Dragomir_Armbrust_12_01"); //Das ist tatsächlich meine. Sag nicht, du bist oben bei dem Steinkreis gewesen.
	AI_Output(other, self, "DIA_Dragomir_Armbrust_15_02"); //Und ob!
	AI_Output(self, other, "DIA_Dragomir_Armbrust_12_03"); //Ganz schön leichtsinnig. Wie auch immer, ich danke dir.
	AI_Output(self, other, "DIA_Dragomir_Armbrust_12_04"); //Ich werde dir diese Tat natürlich belohnen. Ich hoffe, das ist genug.

	CreateInvItems(self, ItMi_Gold, 150);
	B_GiveInvItems(self, other, ItMi_Gold, 150);
	MIS_DragomirsArmbrust = LOG_SUCCESS;
	B_GivePlayerXP(XP_DragomirsArmbrust);
};

// ***********************************************************
// 							Kannst du mir was beibringen?
// ***********************************************************

// ---------------------------------------
var int Dragomir_TeachPlayer;
const int Dragomir_TeachingCost = 150;
// ---------------------------------------
instance DIA_Dragomir_Learn(C_INFO)
{
	npc				= BAU_983_Dragomir;
	nr				= 2;
	condition		= DIA_Dragomir_Learn_Condition;
	information		= DIA_Dragomir_Learn_Info;
	permanent		= TRUE;
	description		= "Kannst du mir was beibringen?";
};

func int DIA_Dragomir_Learn_Condition()
{
	if ((Npc_KnowsInfo(other, DIA_Dragomir_Dangerous))
	&& (Dragomir_TeachPlayer == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Dragomir_Learn_Info()
{
	AI_Output(other, self, "DIA_Dragomir_Learn_15_00"); //Kannst du mir was beibringen?

	if (other.attribute[ATR_DEXTERITY] < 30)
	{
		AI_Output(self, other, "DIA_Dragomir_Learn_12_01"); //Bevor ich dir was beibringe, musst du erstmal geschickter werden.
	}
	else
	{
		AI_Output(self, other, "DIA_Dragomir_Learn_12_02"); //Wenn du zahlen kannst. Wie gesagt, ich bin zurzeit etwas mittellos.
		AI_Output(other, self, "DIA_Dragomir_Learn_15_03"); //Wie viel verlangst du?
		B_Say_Gold(self, other, Dragomir_TeachingCost);

		Info_ClearChoices(DIA_Dragomir_Learn);
		Info_AddChoice(DIA_Dragomir_Learn, "Später vielleicht.", DIA_Dragomir_Learn_Later);
		if (Npc_HasItems(other, ItMi_Gold) >= Dragomir_TeachingCost)
		{
			Info_AddChoice(DIA_Dragomir_Learn, "Hier hast du dein Gold.", DIA_Dragomir_Learn_Here);
		};
	};
};

func void DIA_Dragomir_Learn_Later()
{
	AI_Output(other, self, "DIA_Dragomir_Learn_Later_15_00"); //Vielleicht später.
	Info_ClearChoices(DIA_Dragomir_Learn);
};

func void DIA_Dragomir_Learn_Here()
{
	AI_Output(other, self, "DIA_Dragomir_Learn_Here_15_00"); //Hier hast du dein Gold.
	B_GiveInvItems(other, self, ItMi_Gold, Dragomir_TeachingCost);
	AI_Output(self, other, "DIA_Dragomir_Learn_Here_12_01"); //Gut, von mir aus können wir sofort anfangen.

	Dragomir_TeachPlayer = TRUE;
	Info_ClearChoices(DIA_Dragomir_Learn);
};

// ***********************************************************
// 							Teach
// ***********************************************************

// ------------------------------------------------------------
var int DIA_Dragomir_Teach_permanent;
// ------------------------------------------------------------
instance DIA_Dragomir_Teach(C_INFO)
{
	npc				= BAU_983_Dragomir;
	nr				= 2;
	condition		= DIA_Dragomir_Teach_Condition;
	information		= DIA_Dragomir_Teach_Info;
	permanent		= TRUE;
	description		= "Bring mir was bei.";
};

func int DIA_Dragomir_Teach_Condition()
{
	if ((Dragomir_TeachPlayer == TRUE)
	&& (DIA_Dragomir_Teach_permanent == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Dragomir_Teach_Info()
{
	AI_Output(other, self, "DIA_Dragomir_Teach_15_00"); //Bring mir was bei.

	Info_ClearChoices(DIA_Dragomir_Teach);
	Info_AddChoice(DIA_Dragomir_Teach, DIALOG_BACK, DIA_Dragomir_Teach_Back);
	Info_AddChoice(DIA_Dragomir_Teach, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, 1)), DIA_Dragomir_Teach_1H_1);
	Info_AddChoice(DIA_Dragomir_Teach, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, 1) * 5), DIA_Dragomir_Teach_1H_5);
};

func void DIA_Dragomir_Teach_Back()
{
	if (other.HitChance[NPC_TALENT_CROSSBOW] >= 75)
	{
		AI_Output(self, other, "DIA_Dragomir_Teach_12_00"); //Ich kann dir nichts mehr beibringen. Es ist an der Zeit, dass du einen anderen Lehrer aufsuchst.
		DIA_Dragomir_Teach_permanent = TRUE;
	};

	Info_ClearChoices(DIA_Dragomir_Teach);
};

func void DIA_Dragomir_Teach_1H_1()
{
	B_TeachFightTalentPercent(self, other, NPC_TALENT_CROSSBOW, 1, 75);

	Info_ClearChoices(DIA_Dragomir_Teach);
	Info_AddChoice(DIA_Dragomir_Teach, DIALOG_BACK, DIA_Dragomir_Teach_Back);
	Info_AddChoice(DIA_Dragomir_Teach, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, 1)), DIA_Dragomir_Teach_1H_1);
	Info_AddChoice(DIA_Dragomir_Teach, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, 1) * 5), DIA_Dragomir_Teach_1H_5);
};

func void DIA_Dragomir_Teach_1H_5()
{
	B_TeachFightTalentPercent(self, other, NPC_TALENT_CROSSBOW, 5, 75);

	Info_ClearChoices(DIA_Dragomir_Teach);
	Info_AddChoice(DIA_Dragomir_Teach, DIALOG_BACK, DIA_Dragomir_Teach_Back);
	Info_AddChoice(DIA_Dragomir_Teach, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, 1)), DIA_Dragomir_Teach_1H_1);
	Info_AddChoice(DIA_Dragomir_Teach, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, 1) * 5), DIA_Dragomir_Teach_1H_5);
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************
instance DIA_Dragomir_PICKPOCKET(C_INFO)
{
	npc				= BAU_983_Dragomir;
	nr				= 900;
	condition		= DIA_Dragomir_PICKPOCKET_Condition;
	information		= DIA_Dragomir_PICKPOCKET_Info;
	permanent		= TRUE;
	description		= Pickpocket_60;
};

func int DIA_Dragomir_PICKPOCKET_Condition()
{
	C_Beklauen(47, 70);
};

func void DIA_Dragomir_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Dragomir_PICKPOCKET);
	Info_AddChoice(DIA_Dragomir_PICKPOCKET, DIALOG_BACK, DIA_Dragomir_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Dragomir_PICKPOCKET, DIALOG_PICKPOCKET, DIA_Dragomir_PICKPOCKET_DoIt);
};

func void DIA_Dragomir_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Dragomir_PICKPOCKET);
};

func void DIA_Dragomir_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Dragomir_PICKPOCKET);
};
