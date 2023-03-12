// ***************************************************
// B_ClearDeadTrader (Händler die gellert werden sollen, wenn sie sterben!)
// ***************************************************

func void B_ClearDeadTrader(var C_Npc Trader)
{
	Npc_ClearInventory(Trader);

	if (Trader.aivar[AIV_VictoryXPGiven] == FALSE) // Joly:gegen TraderExploid bei bewusstlos
	{
		B_CreateAmbientInv(Trader);
	};

	Trader.aivar[AIV_ChapterInv] = (Kapitel - 1); // Joly: wenn er nach unconscious wieder handeln soll
};
