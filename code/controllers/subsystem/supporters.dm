SUBSYSTEM_DEF(supporters)
	name = "Supporters"
	init_stage = 4  // После dbcore
	flags = SS_NO_FIRE
	wait = 0

/datum/controller/subsystem/supporters/Initialize()
	load_supporters_from_db()
	return SS_INIT_SUCCESS
