/obj/item/clothing/suit/toggle/noonar
	name = "Suspicious jacket"
	desc = "What a suspicious jacket..."
	icon = 'modular_zzz/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzz/icons/mob/clothing/suits.dmi'
	worn_icon_digi = 'modular_zzz/icons/mob/clothing/suits.dmi'
	icon_state = "noonar"

/obj/item/clothing/suit/toggle/noonarlong
	name = "Long Suspicious jacket"
	desc = "what a long Suspicious jacket..."
	icon = 'modular_zzz/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzz/icons/mob/clothing/suits.dmi'
	worn_icon_digi = 'modular_zzz/icons/mob/clothing/suits.dmi'
	icon_state = "noonarlong"

/obj/item/clothing/suit/hooded/ablative
	worn_icon_digi = 'modular_skyrat/master_files/icons/mob/clothing/suits/armor_digi.dmi'

/obj/item/clothing/suit/armor/rsa12
	name = "R-SA-12"
	desc = "The saboteur's lightweight armor is designed to provide sufficient protection while maintaining a high degree of freedom of movement and stealth, which is important for missions involving subversion, espionage, or stealthy infiltration. Once owned by the Asmalgan Church, but now bears the Rohai emblem on the chest."
	icon = 'modular_zzz/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzz/icons/mob/clothing/suits.dmi'
	worn_icon_digi = 'modular_zzz/icons/mob/clothing/suits.dmi'
	icon_state = "rsa12"

/obj/item/clothing/suit/armor/rohai_armor
	name = "Rohai Infantry Armor"
	desc = "Standard protective set of infantryman of the Rohai Empire, made of polymers, usually tightly adjusted to its owner. On both shoulder pads you can see a symbol with two knives."
	icon = 'modular_zzz/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzz/icons/mob/clothing/suits.dmi'
	worn_icon_digi = 'modular_zzz/icons/mob/clothing/suits.dmi'
	icon_state = "rohai_armor"

/obj/item/clothing/suit/toggle/kazeshini_cape
	name = "Kazeshini Cape"
	desc = "kazeshini cape."
	icon_state = "reaper_cape"
	icon = 'modular_zzz/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_zzz/icons/mob/clothing/suits.dmi'
	worn_icon_digi = 'modular_zzz/icons/mob/clothing/suits.dmi'
	toggle_noun = "fire"
	body_parts_covered = ARMS|CHEST

/obj/item/clothing/suit/toggle/kazeshini_cape/Initialize(mapload)
	. = ..()
	allowed = GLOB.security_vest_allowed

/obj/item/clothing/suit/toggle/kazeshini_cape/alt
	name = "Alternative Kazeshini Cape"
	desc = "Alternative kazeshini cape."
	icon_state = "sectac_w"
