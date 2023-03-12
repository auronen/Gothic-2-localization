///////////////////////////////////////////////////////////////////////
//	Info EXIT
///////////////////////////////////////////////////////////////////////
instance DIA_Pal_213_Schiffswache_EXIT(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 999;
	condition		= DIA_Pal_213_Schiffswache_EXIT_Condition;
	information		= DIA_Pal_213_Schiffswache_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Pal_213_Schiffswache_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Pal_213_Schiffswache_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ************************************************************
// 				  	Guard_Passage - First Warn
// ************************************************************

// ------------------------------------------------------------
const string Pal_213_Checkpoint = "SHIP_DECK_09"; // Auf dem Schiff
// ------------------------------------------------------------
instance DIA_Pal_213_Schiffswache_FirstWarn(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 1;
	condition		= DIA_Pal_213_Schiffswache_FirstWarn_Condition;
	information		= DIA_Pal_213_Schiffswache_FirstWarn_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_Pal_213_Schiffswache_FirstWarn_Condition()
{
	if ((MIS_ShipIsFree == FALSE)
	&& (self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp) == TRUE))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_FirstWarn_Info()
{
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_FirstWarn_01_00"); //Moment! Wo willst du hin?
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_FirstWarn_15_01"); //Ich wollte ...

	if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		AI_Output(self, other, "DIA_Pal_213_Schiffswache_FirstWarn_01_02"); //Tut mir Leid. Du kannst hier nicht vorbei.
	}
	else
	{
		AI_Output(self, other, "DIA_Pal_213_Schiffswache_FirstWarn_01_03"); //Hier gibt es nichts zu sehen. Und jetzt gehst du wieder.
	};

	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other, Pal_213_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************
instance DIA_Pal_213_Schiffswache_SecondWarn(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 2;
	condition		= DIA_Pal_213_Schiffswache_SecondWarn_Condition;
	information		= DIA_Pal_213_Schiffswache_SecondWarn_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_Pal_213_Schiffswache_SecondWarn_Condition()
{
	if ((MIS_ShipIsFree == FALSE)
	&& (self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp) == TRUE)
	&& (Npc_GetDistToWP(other, Pal_213_Checkpoint) < (other.aivar[AIV_LastDistToWP] - 50)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_SecondWarn_Info()
{
	if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		AI_Output(self, other, "DIA_Pal_213_Schiffswache_SecondWarn_01_00"); //Keinen Schritt weiter. Keine Ausnahmen.
	}
	else
	{
		AI_Output(self, other, "DIA_Pal_213_Schiffswache_SecondWarn_01_01"); //Du willst mich NICHT dazu zwingen, dir weh zu tun, oder?
	};

	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other, Pal_213_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;

	AI_StopProcessInfos(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************
instance DIA_Pal_213_Schiffswache_Attack(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 3;
	condition		= DIA_Pal_213_Schiffswache_Attack_Condition;
	information		= DIA_Pal_213_Schiffswache_Attack_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_Pal_213_Schiffswache_Attack_Condition()
{
	if ((MIS_ShipIsFree == FALSE)
	&& (self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp) == TRUE)
	&& (Npc_GetDistToWP(other, Pal_213_Checkpoint) < (other.aivar[AIV_LastDistToWP] - 50)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE; // wird auch in ZS_Attack resettet

	AI_StopProcessInfos(self); // dem Spieler sofort wieder die Kontrolle zurückgeben

	B_Attack(self, other, AR_GuardStopsIntruder, 1);
};

// #############################
// ### ###
// ### Kapitel 5 ###
// ### ###
// #############################

///////////////////////////////////////////////////////////////////////
//	Abziehen
///////////////////////////////////////////////////////////////////////
instance DIA_Pal_213_Schiffswache_GoOnBoard(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 5;
	condition		= DIA_Pal_213_Schiffswache_GoOnBoard_Condition;
	information		= DIA_Pal_213_Schiffswache_GoOnBoard_Info;
	description		= "Ich will auf das Schiff.";
};

func int DIA_Pal_213_Schiffswache_GoOnBoard_Condition()
{
	return TRUE;
};

func void DIA_Pal_213_Schiffswache_GoOnBoard_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_GoOnBoard_15_00"); //Ich will auf das Schiff.
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_GoOnBoard_01_01"); //Niemand darf das Schiff betreten! Ich habe meine Befehle!
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_GoOnBoard_01_02"); //Ich werde jeden töten, der das Schiff unbefugt betritt.
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_GoOnBoard_01_03"); //Im Namen Innos', ich werde das Schiff mit meinem Leben verteidigen.
};

//**********************************************************
// sc ist kdf -Du stellst den Wunsch eines eines Magiers des Feuers in Frage?
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmKDF(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmKDF_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmKDF_Info;
	description		= "Du stellst den Wunsch eines Magiers des Feuers in Frage?";
};

func int DIA_Pal_213_Schiffswache_IAmKDF_Condition()
{
	if ((Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_GoOnBoard)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmKDF_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmKDF_15_00"); //Du stellst den Wunsch eines Magiers des Feuers in Frage?
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmKDF_01_01"); //(nervös) Nein, natürlich nicht. Innos möge mir verzeihen.
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmKDF_01_02"); //(nervös) Die Magier des Feuers sind die Hüter der Weisheit Innos', ...
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmKDF_01_03"); //(nervös) ... wer sie in Frage stellt, stellt Innos in Frage und verwirkt jegliches Recht auf seine Gnade.
};

//**********************************************************
// Was passiert, wenn ich an Bord gehe?
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmKDF2(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmKDF2_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmKDF2_Info;
	description		= "Was passiert, wenn ich an Bord gehe?";
};

func int DIA_Pal_213_Schiffswache_IAmKDF2_Condition()
{
	if ((Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_IAmKDF)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmKDF2_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmKDF2_15_00"); //Was passiert, wenn ich an Bord gehe?
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmKDF2_01_01"); //(nervös) Ich werde dich töten ... ich meine, aufhalten.
};

//**********************************************************
// Du würdest einen Magier des Feuers angreifen?
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmKDF3(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmKDF3_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmKDF3_Info;
	description		= "Du würdest einen Magier des Feuers angreifen?";
};

func int DIA_Pal_213_Schiffswache_IAmKDF3_Condition()
{
	if ((Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_IAmKDF2)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmKDF3_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmKDF3_15_00"); //Du würdest einen Magier des Feuers angreifen?
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmKDF3_01_01"); //(nervös) Ich würde niemals Hand an einen Magier legen.
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmKDF3_15_02"); //Also, was würdest du tun, wenn ich an Bord ginge?
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmKDF3_01_03"); //(kleinlaut) Nichts, mein Herr.
};

//**********************************************************
// Ich werde jetzt an Bord gehen.
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmKDF4(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmKDF4_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmKDF4_Info;
	description		= "Ich werde jetzt an Bord gehen.";
};

func int DIA_Pal_213_Schiffswache_IAmKDF4_Condition()
{
	if ((Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_IAmKDF3)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmKDF4_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmKDF4_15_00"); //Ich werde jetzt an Bord gehen.
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmKDF4_01_01"); //(nervös) Das darfst du nicht, Lord Hagens Befehle waren eindeutig.
};

//**********************************************************
// Schließen Lord Hagen Befehle auch mich mit ein?.
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmKDF5(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmKDF5_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmKDF5_Info;
	description		= "Schließen Lord Hagens Befehle auch mich mit ein?";
};

func int DIA_Pal_213_Schiffswache_IAmKDF5_Condition()
{
	if ((Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_IAmKDF4)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmKDF5_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmKDF5_15_00"); //Schließen Lord Hagens Befehle auch mich mit ein?
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmKDF5_01_01"); //(nervös) Ich weiß nicht.
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmKDF5_15_02"); //Denk mal nach, würde Lord Hagen es wagen, einen Magier des Diebstahls zu verdächtigen?
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmKDF5_01_03"); //Das glaube ich nicht.
};

//**********************************************************
// Zum letzten mal: Lass mich auf das Schiff
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmKDF6(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmKDF6_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmKDF6_Info;
	description		= "Zum letzten mal: Lass mich auf das Schiff!";
};

func int DIA_Pal_213_Schiffswache_IAmKDF6_Condition()
{
	if ((Hero.guild == GIL_KDF)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_IAmKDF5)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmKDF6_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmKDF6_15_00"); //Zum letzten Mal: Lass mich auf das Schiff!
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmKDF6_01_01"); //(nervös) Verstanden. Du darfst auf das Schiff.

	MIS_ShipIsFree = TRUE;
	B_StartOtherRoutine(Girion, "WaitForShip");
};

//**********************************************************
// sc ist PA -Misstraust du mir, Ritter?
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmPAL(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmPAL_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmPAL_Info;
	description		= "Misstraust du mir, Ritter?";
};

func int DIA_Pal_213_Schiffswache_IAmPAL_Condition()
{
	if ((Hero.guild == GIL_PAL)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_GoOnBoard)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmPAL_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmPAL_15_00"); //Misstraust du mir, Ritter?
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmPAL_01_01"); //Nein, ich befolge nur meine Befehle.
};

//**********************************************************
// sc ist PA -Dann solltest du wissen, wer hier den Vorgesetzter ist.
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmPAL2(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmPAL2_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmPAL2_Info;
	description		= "Dann solltest du wissen, wer hier den höheren Rang hat.";
};

func int DIA_Pal_213_Schiffswache_IAmPAL2_Condition()
{
	if ((Hero.guild == GIL_PAL)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_IAmPAL)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmPAL2_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmPAL2_15_00"); //Dann solltest du wissen, wer hier den höheren Rang hat.
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmPAL2_01_01"); //Ja, Sir!
};

//**********************************************************
// sc ist PA -Dann solltest du wissen, wer hier den Vorgesetzter ist.
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmPAL3(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmPAL3_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmPAL3_Info;
	description		= "Hiermit befehle ich dir, mir Zugang zum Schiff zu gewähren.";
};

func int DIA_Pal_213_Schiffswache_IAmPAL3_Condition()
{
	if ((Hero.guild == GIL_PAL)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_IAmPAL2)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmPAL3_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmPAL3_15_00"); //Hiermit befehle ich dir, mir Zugang zum Schiff zu gewähren.
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmPAL3_01_01"); //Verstanden, Sir, Zugang wird gewährt.

	MIS_ShipIsFree = TRUE;
	B_StartOtherRoutine(Girion, "WaitForShip");
};

//**********************************************************
// sc ist DJG -Kann man da nichts machen?
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmDJG(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmDJG_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmDJG_Info;
	description		= "Kann man da nichts machen?";
};

func int DIA_Pal_213_Schiffswache_IAmDJG_Condition()
{
	if ((Hero.guild == GIL_DJG)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_GoOnBoard)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmDJG_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmDJG_15_00"); //Kann man da nichts machen?
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmDJG_01_01"); //Ich glaube, ich verstehe nicht.
};

//**********************************************************
// sc ist DJG -Ich könnte dir Geld geben.
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmDJG2(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmDJG2_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmDJG2_Info;
	description		= "Ich könnte dir Geld geben.";
};

func int DIA_Pal_213_Schiffswache_IAmDJG2_Condition()
{
	if ((Hero.guild == GIL_DJG)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_IAmDJG)))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmDJG2_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmDJG2_15_00"); //Ich könnte dir Geld geben. Damit du weg siehst.
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmDJG2_01_01"); //Ich bin nicht bestechlich und wenn du nicht sofort verschwindest, werde ich das als Beleidigung auffassen.
};

//**********************************************************
// sc ist DJG -Ich habe einen Brief von Lord Hagen.
//**********************************************************
instance DIA_Pal_213_Schiffswache_IAmDJG3(C_INFO)
{
	npc				= Pal_213_Schiffswache;
	nr				= 6;
	condition		= DIA_Pal_213_Schiffswache_IAmDJG3_Condition;
	information		= DIA_Pal_213_Schiffswache_IAmDJG3_Info;
	description		= "Ich habe ein Ermächtigungsschreiben.";
};

func int DIA_Pal_213_Schiffswache_IAmDJG3_Condition()
{
	if ((Hero.guild == GIL_DJG)
	&& (Npc_KnowsInfo(other, DIA_Pal_213_Schiffswache_IAmDJG))
	&& (Npc_HasItems(other, ITWr_ForgedShipLetter_MIS) >= 1))
	{
		return TRUE;
	};
};

func void DIA_Pal_213_Schiffswache_IAmDJG3_Info()
{
	AI_Output(other, self, "DIA_Pal_213_Schiffswache_IAmDJG3_15_00"); //Ich habe ein Ermächtigungsschreiben. Ich darf auf das Schiff.
	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmDJG3_01_01"); //Lass mal sehen.

	B_GiveInvItems(other, self, ItWr_ForgedShipLetter_Mis, 1);
	B_UseFakeScroll();

	AI_Output(self, other, "DIA_Pal_213_Schiffswache_IAmDJG3_01_02"); //In Ordnung, du darfst passieren.

	MIS_ShipIsFree = TRUE;
	B_StartOtherRoutine(Girion, "WaitForShip");
};
