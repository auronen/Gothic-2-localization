// *******************
// C_WantToAttackThief
// *******************

func int C_WantToAttackThief(var C_Npc slf, var C_Npc oth)
{
	// ------ ausgenommeme Gilden ------
	if ((slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	// || (slf.guild == GIL_BDT) Fürs Addon rausgenommen
	|| (slf.guild == GIL_DJG))
	{
		return FALSE;
	};

	// ------ NSC ignoriert Diebstahl ------
	if (slf.aivar[AIV_IGNORE_Theft] == TRUE)
	{
		return FALSE;
	};

	if (slf.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	{
		return FALSE;
	};

	// ------ Täter war Player und ich bin NpcType_Friend ------
	if (Npc_IsPlayer(oth) && (slf.npctype == NpcType_Friend))
	{
		return FALSE;
	};

	// ------ Torwachen bleiben stehen, memorizen aber Theft ------
	if (C_NpcIsGateGuard(slf))
	{
		return FALSE;
	};

	return TRUE;
};
