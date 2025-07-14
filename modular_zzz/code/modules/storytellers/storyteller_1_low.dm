/datum/storyteller/low
	name = "Light Dynamic"
	desc = "На станции преимущественно скрытые антагонисты, как таковой резни или чересчур серьёзных угроз ожидать не стоит. \
	Этот вид динамика нацелен больше на ролевую игру с антагонистами, нежели чем на прямую конфронтацию с быстрым переходом к механу. \
	В данном режиме игры крупные антагонисты и достижение своих целей через массовый гриф запрещены, исключением является Ядерный Оперативник."
	track_data = /datum/storyteller_data/tracks/low_chaos
	tag_multipliers = list(
		TAG_COMBAT = 0.3,
		TAG_DESTRUCTIVE = 0.3,
		TAG_CHAOTIC = 0.1,
		TAG_LOW = 1,
		TAG_MEDIUM = 0.5,
		TAG_HIGH = 0.5
	)
	antag_divisor = 16

/datum/storyteller_data/tracks/low_chaos
	threshold_mundane = 1200
	threshold_moderate = 2400
	threshold_major = 4800
	threshold_crewset = 3600
	threshold_ghostset = 3600
