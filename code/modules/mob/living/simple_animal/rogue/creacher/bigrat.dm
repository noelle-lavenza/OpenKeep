/mob/living/simple_animal/hostile/retaliate/rogue/bigrat
	icon = 'icons/roguetown/mob/monster/bigrat.dmi'
	name = "rous"
	desc = "A Rodent Of Unusual Size. Some suspect the malice of the Cursed Star causes them to mutate."
	icon_state = "rat"
	icon_living = "rat"
	icon_dead = "rat1"
	pixel_x = -16
	pixel_y = -8

	faction = list("rats")
	emote_hear = list("squeaks.")
	emote_see = list("cleans its nose.")
	turns_per_move = 3
	move_to_delay = 5
	vision_range = 2
	aggro_vision_range = 2

	botched_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/mince = 1)
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/mince = 1,
						/obj/item/natural/fur/rous = 1)
	perfect_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 1,
						/obj/item/alch/sinew = 1,
						/obj/item/natural/fur/rous = 1)

	health = ROUS_HEALTH
	maxHealth = ROUS_HEALTH
	food_type = list(/obj/item/reagent_containers/food/snacks, 
					/obj/item/bodypart,
					/obj/item/organ)

	base_intents = list(/datum/intent/simple/bite)
	attack_sound = 'sound/combat/wooshes/punch/punchwoosh (2).ogg'
	melee_damage_lower = 12
	melee_damage_upper = 14

	STACON = 3
	STASTR = 3
	STASPD = 6

	retreat_distance = 0
	minimum_distance = 0
	deaggroprob = 0
	defprob = 40
	defdrain = 5
	attack_same = FALSE // Lets two share a room.
	retreat_health = 0.3
	aggressive = TRUE
	stat_attack = UNCONSCIOUS
	remains_type = /obj/effect/decal/remains/bigrat
	body_eater = TRUE

/obj/effect/decal/remains/bigrat
	name = "remains"
	gender = PLURAL
	icon_state = "ratbones"
	icon = 'icons/roguetown/mob/monster/bigrat.dmi'
	pixel_x = -16
	pixel_y = -8

/mob/living/simple_animal/hostile/retaliate/rogue/bigrat/Initialize()
	..()
	gender = MALE
	if(prob(33))
		gender = FEMALE
	if(gender == FEMALE)
		icon_state = "Frat"
		icon_living = "Frat"
		icon_dead = "Frat1"
	update_icon()

/mob/living/simple_animal/hostile/retaliate/rogue/bigrat/death(gibbed)
	..()
	update_icon()


/mob/living/simple_animal/hostile/retaliate/rogue/bigrat/update_icon()
	cut_overlays()
	..()
	if(stat != DEAD)
		var/mutable_appearance/eye_lights = mutable_appearance(icon, "bigrat-eyes")
		eye_lights.plane = 19
		eye_lights.layer = 19
		add_overlay(eye_lights)

/mob/living/simple_animal/hostile/retaliate/rogue/bigrat/get_sound(input)
	switch(input)
		if("aggro")
			return pick('sound/vo/mobs/rat/aggro (1).ogg','sound/vo/mobs/rat/aggro (2).ogg','sound/vo/mobs/rat/aggro (3).ogg')
		if("pain")
			return pick('sound/vo/mobs/rat/pain (1).ogg','sound/vo/mobs/rat/pain (2).ogg','sound/vo/mobs/rat/pain (3).ogg')
		if("death")
			return pick('sound/vo/mobs/rat/death (1).ogg','sound/vo/mobs/rat/death (2).ogg')
		if("idle")
			return pick('sound/vo/mobs/rat/rat_life.ogg','sound/vo/mobs/rat/rat_life2.ogg','sound/vo/mobs/rat/rat_life3.ogg')

/mob/living/simple_animal/hostile/retaliate/rogue/bigrat/taunted(mob/user)
	emote("aggro")
	Retaliate()
	GiveTarget(user)
	return

/mob/living/simple_animal/hostile/retaliate/rogue/bigrat/Life()
	..()
	if(pulledby)
		Retaliate()
		GiveTarget(pulledby)

/mob/living/simple_animal/hostile/retaliate/rogue/bigrat/simple_limb_hit(zone)
	if(!zone)
		return ""
	switch(zone)
		if(BODY_ZONE_PRECISE_R_EYE)
			return "head"
		if(BODY_ZONE_PRECISE_L_EYE)
			return "head"
		if(BODY_ZONE_PRECISE_NOSE)
			return "nose"
		if(BODY_ZONE_PRECISE_MOUTH)
			return "mouth"
		if(BODY_ZONE_PRECISE_SKULL)
			return "head"
		if(BODY_ZONE_PRECISE_EARS)
			return "head"
		if(BODY_ZONE_PRECISE_NECK)
			return "neck"
		if(BODY_ZONE_PRECISE_L_HAND)
			return "foreleg"
		if(BODY_ZONE_PRECISE_R_HAND)
			return "foreleg"
		if(BODY_ZONE_PRECISE_L_FOOT)
			return "leg"
		if(BODY_ZONE_PRECISE_R_FOOT)
			return "leg"
		if(BODY_ZONE_PRECISE_STOMACH)
			return "stomach"
		if(BODY_ZONE_PRECISE_GROIN)
			return "tail"
		if(BODY_ZONE_HEAD)
			return "head"
		if(BODY_ZONE_R_LEG)
			return "leg"
		if(BODY_ZONE_L_LEG)
			return "leg"
		if(BODY_ZONE_R_ARM)
			return "foreleg"
		if(BODY_ZONE_L_ARM)
			return "foreleg"
	return ..()

