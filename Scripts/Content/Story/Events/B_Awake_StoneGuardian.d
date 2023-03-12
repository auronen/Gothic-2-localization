// B_AWAKE_STONEGUARDIAN

func void B_AWAKE_STONEGUARDIAN(var C_Npc slf)
{
	if (slf.aivar[AIV_EnemyOverride] == TRUE)
	{
		Wld_PlayEffect("spellFX_INCOVATION_WHITE", slf, slf, 0, 0, 0, FALSE);
		Wld_PlayEffect("spellFX_LIGHTSTAR_RingRitual", slf, slf, 0, 0, 0, FALSE);
		slf.aivar[AIV_EnemyOverride] = FALSE;
	};
};
