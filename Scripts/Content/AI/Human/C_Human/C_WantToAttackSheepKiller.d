// *************************
// C_WantToAttackSheepKiller
// *************************

func int C_WantToAttackSheepKiller(var C_Npc slf, var C_Npc oth)
{
	// ------ ausgenommeme Gilden ------
	if ((slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	|| (slf.guild == GIL_BDT)
	|| (slf.guild == GIL_DJG))
	{
		return FALSE;
	};

	// ------ NSC ignoriert Sheepkiller ------
	if (slf.aivar[AIV_IGNORE_Sheepkiller] == TRUE)
	{
		return FALSE;
	};

	// ------ Täter war Player und ich bin NpcType_Friend ------
	if (Npc_IsPlayer(oth) && (slf.npctype == NpcType_Friend))
	{
		return FALSE;
	};

	// ------ Täter hat gutenGrund,Schaf zu töten ------
	if (C_NpcHasAttackReasonToKill(oth))
	{
		return FALSE;
	};

	// ------ Schaf aus Versehen getroffen ------ (wichtig für Magie, z.B. bei KdF im Kloster)
	if ((other.guild < GIL_SEPERATOR_HUM)
	&& (other.aivar[AIV_ATTACKREASON] != AR_NONE))
	{
		return FALSE;
	};

	// ------ Torwachen bleiben stehen, memorizen aber News ------
	if (C_NpcIsGateGuard(slf))
	{
		return FALSE;
	};

	return TRUE;
};
