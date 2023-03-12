func int B_MM_DeSynchronize()
{
	var int msec;
	msec = Hlp_Random(1000);
	AI_WaitMS(self, msec);
};
