

/obj/item/natural/hide
	name = "hide"
	icon_state = "hide"
	desc = "Hide from one of Dendor's creachers."
	dropshrink = 0.50
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
	resistance_flags = FLAMMABLE
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sellprice = 5

/obj/item/natural/fur
	name = "fur"
	icon_state = "wool1"
	desc = "Fur from one of Dendor's creachers."
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
	resistance_flags = FLAMMABLE
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	color = "#605c55"
	sellprice = 5

/obj/item/natural/fur/volf
	desc = "Fur from a volf."
	color = "#4b4742"

//RTD make this a storage item and make clickign on animals with things put it in storage
/obj/item/natural/saddle
	name = "saddle"
	desc = "A culmination of leather, fur and hide. Strapped onto the backs of beasts for ease of riding."
	icon_state = "saddle"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK_L
	resistance_flags = FLAMMABLE
	gripped_intents = list(/datum/intent/use)
	force = 0
	throwforce = 0
	sellprice = 80
	twohands_required = TRUE

/obj/item/natural/saddle/attack(mob/living/target, mob/living/carbon/human/user)
	if(istype(target, /mob/living/simple_animal))
		testing("yea1")
		var/mob/living/simple_animal/S = target
		if(S.can_saddle && !S.ssaddle)
			testing("yea2")
			if(!target.has_buckled_mobs())
				user.visible_message("<span class='warning'>[user] tries to saddle [target]...</span>")
				if(do_after(user, 40, target = target))
					playsound(loc, 'sound/foley/saddledismount.ogg', 100, FALSE)
					user.dropItemToGround(src)
					S.ssaddle = src
					src.forceMove(S)
					S.update_icon()
		return
	..()

/mob/living/simple_animal
	var/can_saddle = FALSE
	var/obj/item/ssaddle

