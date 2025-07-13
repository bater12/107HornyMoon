SUBSYSTEM_DEF(redbot)
	name = "Bot Comms"
	flags = SS_NO_FIRE

/datum/controller/subsystem/redbot/Initialize(timeofday)
	var/comms_key = CONFIG_GET(string/comms_key)
	var/bot_ip = CONFIG_GET(string/bot_ip)
	var/round_id = GLOB.round_id
	if(config && bot_ip)
		var/query = "http://[bot_ip]/?serverStart=1&roundID=[round_id]&key=[comms_key]"
		world.Export(query)

	. = ..()
	return TRUE

/datum/controller/subsystem/redbot/proc/send_discord_message(var/channel, var/message, var/priority_type)
	var/bot_ip = CONFIG_GET(string/bot_ip)
	if(!config || !bot_ip)
		return

	var/list/data = list()
	data["key"] = CONFIG_GET(string/comms_key)
	data["announce_channel"] = channel
	data["announce"] = message
	data["type"] = priority_type

	world.Export("http://[bot_ip]/?[list2params(data)]")
