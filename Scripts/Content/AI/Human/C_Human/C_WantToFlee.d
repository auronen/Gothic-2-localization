// ************
// C_WantToFlee
// ************

func int C_WantToFlee(var C_Npc slf, var C_Npc oth)
{
	//***FIXME***
	return FALSE;

	// EXIT if...

	// ------ NpcType_Friend flieht nie ------
	if (slf.npctype == NpcType_Friend)
	{
		return FALSE;
	};

	// ------ Partymember flieht nie ------
	if (slf.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		return FALSE;
	};

	// ------ GateGuards fliehen nie ------
	if (C_NpcIsGateGuard(slf))
	{
		return FALSE;
	};

	// FUNC

	// ------ Flucht, wenn other VIEL stärker ist ------
	if ((2 * slf.level) < oth.level)
	{
		return TRUE;
	};

	return FALSE;
};
