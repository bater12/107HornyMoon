/datum/preferences/refresh_membership()
	. = ..()
	donator_status = !!GLOB.supporter_list[parent.ckey]
	if(unlock_content || donator_status)
		max_save_slots = 100
