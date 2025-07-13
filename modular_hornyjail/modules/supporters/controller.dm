#define PLAYER_RANK_TABLE_NAME "player"

GLOBAL_LIST_EMPTY(supporter_list)
GLOBAL_PROTECT(supporter_list)

/proc/load_supporters_from_db()
	var/datum/db_query/query = SSdbcore.NewQuery(
		"SELECT ckey, supporter_tier FROM [format_table_name(PLAYER_RANK_TABLE_NAME)] WHERE supporter_tier > 0"
	)
	if(!query.warn_execute())
		qdel(query)
		log_world("❌ Не удалось загрузить донатеров из БД.")
		return

	while(query.NextRow())
		var/ckey = lowertext(query.item[1])
		var/tier = text2num(query.item[2])
		if(isnum(tier) && tier > 0)
			GLOB.supporter_list[ckey] = tier

	qdel(query)
	log_world("✅ Загружено донатеров: [length(GLOB.supporter_list)]")
