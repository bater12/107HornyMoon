/obj/structure/reagent_dispensers/beerkeg
	name = "Beer Keg"
	desc = "Кега с пивом. Кега выглядит совсем немного вздутой."

/obj/structure/reagent_dispensers/beerkeg/attack_animal(mob/living/simple_animal/user)
	if(prob(10) && isdog(user))
		explosion(src, light_impact_range = 3, flame_range = 5, flash_range = 10)
		playsound(src, 'modular_zzz/sounds/misc/kega.ogg', 100, 1)
		if(!QDELETED(src))
			qdel(src)
		return TRUE
	else
		user.visible_message(span_danger("[user] играется с пивной кегой!"), \
		span_nicegreen("Ты играешься с пивной кегой!"), \
		span_hear("Кто-то катает пивную кегу рядом с вами!"))
		playsound(user, 'sound/items/weapons/thudswoosh.ogg', 100, TRUE, 1)
	. = ..()

/obj/structure/reagent_dispensers/beerkeg/attack_hand(mob/living/carbon/human/user)
	. = ..()
	if(prob(10) && (ismammal(user) || iscanine(user)))
		explosion(src, light_impact_range = 3, flame_range = 5, flash_range = 10)
		playsound(src, 'modular_zzz/sounds/misc/kega.ogg', 100, 1)
		if(!QDELETED(src))
			qdel(src)
		return TRUE
	else
		user.visible_message(span_danger("[user] играется с пивной кегой!"), \
		span_nicegreen("Ты играешься с пивной кегой!"), \
		span_hear("Кто-то катает пивную кегу рядом с вами!"))
		playsound(user, 'sound/items/weapons/thudswoosh.ogg', 100, TRUE, 1)
