/datum/round_event_control/anomaly/anomaly_bioscrambler
	name = "Anomaly: Bioscrambler"
	typepath = /datum/round_event/anomaly/anomaly_bioscrambler

	min_players = 10
	max_occurrences = 5
	weight = 20
	description = "This anomaly replaces the limbs of nearby people."
	min_wizard_trigger_potency = 0
	max_wizard_trigger_potency = 2

/datum/round_event/anomaly/anomaly_bioscrambler
	start_when = ANOMALY_START_MEDIUM_TIME
	announce_when = ANOMALY_ANNOUNCE_MEDIUM_TIME
	anomaly_path = /obj/effect/anomaly/bioscrambler

/datum/round_event/anomaly/anomaly_bioscrambler/announce(fake)
	if(isnull(impact_area))
		impact_area = placer.findValidArea()
	priority_announce("Био-аномалия [ANOMALY_ANNOUNCE_MEDIUM_TEXT] [impact_area.name]. Надевайте биокостюмы или другие защитные средства, чтобы противостоять последствиям.", "Оповещение Об Аномалии", ANNOUNCER_SCRAMBLER_ANOMALY) // BUBBER EDIT - ANNOUNCER_ANOMALIES // SPLURT EDIT - ANNOUNCER_SCRAMBLER_ANOMALY
