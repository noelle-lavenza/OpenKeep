
/mob/living/simple_animal/hostile/retaliate/rogue/saiga/update_icon()
	cut_overlays()
	..()
	if(stat != DEAD)
		if(ssaddle)
			var/mutable_appearance/saddlet = mutable_appearance(icon, "saddle-f-above", 4.3)
			add_overlay(saddlet)
			saddlet = mutable_appearance(icon, "saddle-f")
			add_overlay(saddlet)
		if(has_buckled_mobs())
			var/mutable_appearance/mounted = mutable_appearance(icon, "saiga_mounted", 4.3)
			add_overlay(mounted)

/mob/living/simple_animal/hostile/retaliate/rogue/saiga/tamed(mob/user)
	..()
	deaggroprob = 30
	if(can_buckle)
		var/datum/component/riding/D = LoadComponent(/datum/component/riding)
		D.set_riding_offsets(RIDING_OFFSET_ALL, list(TEXT_NORTH = list(0, 8), TEXT_SOUTH = list(0, 8), TEXT_EAST = list(-2, 8), TEXT_WEST = list(2, 8)))
		D.set_vehicle_dir_layer(SOUTH, OBJ_LAYER)
		D.set_vehicle_dir_layer(NORTH, OBJ_LAYER)
		D.set_vehicle_dir_layer(EAST, OBJ_LAYER)
		D.set_vehicle_dir_layer(WEST, OBJ_LAYER)

/mob/living/simple_animal/hostile/retaliate/rogue/saiga/UniqueAttack()
	if(istype(target, /obj/structure/spacevine))
		var/obj/structure/spacevine/SV = target
		SV.eat(src)
		food = max(food + 30, food_max + 50)
		return
	return ..()

/mob/living/simple_animal/hostile/retaliate/rogue/saiga
	icon = 'icons/roguetown/mob/monster/saiga.dmi'
	name = "saiga"
	desc = "Proud beasts of burden, warmounts, and symbols of luxury alike. Especially sacred to the steppe people of the Northeast Regions."
	icon_state = "saiga"
	icon_living = "saiga"
	icon_dead = "saiga_dead"
	icon_gib = "saiga_gib"
	pixel_x = -8

	animal_species = /mob/living/simple_animal/hostile/retaliate/rogue/saigabuck
	faction = list("saiga")
	gender = FEMALE
	footstep_type = FOOTSTEP_MOB_SHOE
	emote_see = list("looks around.", "chews some leaves.")
	move_to_delay = 7

	botched_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 1,
						/obj/item/reagent_containers/food/snacks/fat = 1,
						/obj/item/natural/hide = 1,
						/obj/item/alch/bone = 1)
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 2,
						/obj/item/reagent_containers/food/snacks/fat = 1,
						/obj/item/natural/hide = 2,
						/obj/item/alch/sinew = 2,
						/obj/item/alch/bone = 1)
	perfect_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 3,
						/obj/item/reagent_containers/food/snacks/fat = 1,
						/obj/item/natural/hide = 4,
						/obj/item/alch/sinew = 2,
						/obj/item/alch/bone = 1)

	health = FEMALE_MOOBEAST_HEALTH
	maxHealth = FEMALE_MOOBEAST_HEALTH
	food_type = list(/obj/item/reagent_containers/food/snacks/produce/wheat,
					/obj/item/reagent_containers/food/snacks/produce/oat,
					/obj/item/reagent_containers/food/snacks/produce/berries/rogue,
					/obj/item/reagent_containers/food/snacks/produce/apple)
	tame_chance = 25
	bonus_tame_chance = 15
	pooptype = /obj/item/natural/poo/horse

	base_intents = list(/datum/intent/simple/headbutt)
	attack_sound = list('sound/vo/mobs/saiga/attack (1).ogg','sound/vo/mobs/saiga/attack (2).ogg')
	attack_verb_continuous = "headbutts"
	attack_verb_simple = "headbutt"
	melee_damage_lower = 10
	melee_damage_upper = 20
	retreat_distance = 10
	minimum_distance = 10
	STASPD = 15
	STACON = 8
	STASTR = 9
	childtype = list(/mob/living/simple_animal/hostile/retaliate/rogue/saiga/saigakid = 70, 
					/mob/living/simple_animal/hostile/retaliate/rogue/saiga/saigakid/boy = 30)
	can_buckle = TRUE
	buckle_lying = FALSE
	can_saddle = TRUE
	aggressive = TRUE
	remains_type = /obj/effect/decal/remains/saiga

/obj/effect/decal/remains/saiga
	name = "remains"
	gender = PLURAL
	icon_state = "skele"
	icon = 'icons/roguetown/mob/monster/saiga.dmi'

/mob/living/simple_animal/hostile/retaliate/rogue/saiga/get_sound(input)
	switch(input)
		if("aggro")
			return pick('sound/vo/mobs/saiga/attack (1).ogg','sound/vo/mobs/saiga/attack (2).ogg')
		if("pain")
			return pick('sound/vo/mobs/saiga/pain (1).ogg','sound/vo/mobs/saiga/pain (2).ogg','sound/vo/mobs/saiga/pain (3).ogg')
		if("death")
			return pick('sound/vo/mobs/saiga/death (1).ogg','sound/vo/mobs/saiga/death (2).ogg')
		if("idle")
			return pick('sound/vo/mobs/saiga/idle (1).ogg','sound/vo/mobs/saiga/idle (2).ogg','sound/vo/mobs/saiga/idle (3).ogg','sound/vo/mobs/saiga/idle (4).ogg','sound/vo/mobs/saiga/idle (5).ogg','sound/vo/mobs/saiga/idle (6).ogg','sound/vo/mobs/saiga/idle (7).ogg')


/mob/living/simple_animal/hostile/retaliate/rogue/saiga/simple_limb_hit(zone)
	if(!zone)
		return ""
	switch(zone)
		if(BODY_ZONE_PRECISE_R_EYE)
			return "head"
		if(BODY_ZONE_PRECISE_L_EYE)
			return "head"
		if(BODY_ZONE_PRECISE_NOSE)
			return "snout"
		if(BODY_ZONE_PRECISE_MOUTH)
			return "snout"
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

/mob/living/simple_animal/hostile/retaliate/rogue/saigabuck
	icon = 'icons/roguetown/mob/monster/saiga.dmi'
	name = "saiga"
	icon_state = "buck"
	icon_living = "buck"
	icon_dead = "buck_dead"
	icon_gib = "buck_gib"
	pixel_x = -8

	faction = list("saiga")
	footstep_type = FOOTSTEP_MOB_SHOE
	emote_see = list("stares.")
	turns_per_move = 3

	botched_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 1,
						/obj/item/reagent_containers/food/snacks/fat = 1,
						/obj/item/natural/hide = 1,
						/obj/item/alch/bone = 1)
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 2,
						/obj/item/reagent_containers/food/snacks/fat = 1,
						/obj/item/natural/hide = 3,
						/obj/item/alch/sinew = 2,
						/obj/item/alch/bone = 1)
	perfect_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 3,
						/obj/item/reagent_containers/food/snacks/fat = 1,
						/obj/item/natural/hide = 5,
						/obj/item/alch/sinew = 2,
						/obj/item/alch/bone = 1)

	health = MALE_MOOBEAST_HEALTH
	maxHealth = MALE_MOOBEAST_HEALTH
	food_type = list(/obj/item/reagent_containers/food/snacks/produce/wheat,
					/obj/item/reagent_containers/food/snacks/produce/oat,
					/obj/item/reagent_containers/food/snacks/produce/berries/rogue,
					/obj/item/reagent_containers/food/snacks/produce/apple)
	pooptype = /obj/item/natural/poo/horse

	base_intents = list(/datum/intent/simple/headbutt)
	attack_sound = list('sound/vo/mobs/saiga/attack (1).ogg','sound/vo/mobs/saiga/attack (2).ogg')
	attack_verb_continuous = "headbutts"
	attack_verb_simple = "headbutt"
	melee_damage_lower = 15
	melee_damage_upper = 20
	environment_smash = ENVIRONMENT_SMASH_NONE
	retreat_distance = 0
	minimum_distance = 0
	retreat_health = 0.3
	STACON = 15
	STASTR = 11
	STASPD = 12

	can_buckle = TRUE
	buckle_lying = 0
	can_saddle = TRUE
	tame_chance = 25
	bonus_tame_chance = 15
	aggressive = TRUE
	remains_type = /obj/effect/decal/remains/saiga

/mob/living/simple_animal/hostile/retaliate/rogue/saigabuck/update_icon()
	cut_overlays()
	..()
	if(stat != DEAD)
		if(ssaddle)
			var/mutable_appearance/saddlet = mutable_appearance(icon, "saddle-above", 4.3)
			add_overlay(saddlet)
			saddlet = mutable_appearance(icon, "saddle")
			add_overlay(saddlet)
		if(has_buckled_mobs())
			var/mutable_appearance/mounted = mutable_appearance(icon, "buck_mounted", 4.3)
			add_overlay(mounted)


/mob/living/simple_animal/hostile/retaliate/rogue/saigabuck/get_sound(input)
	switch(input)
		if("aggro")
			return pick('sound/vo/mobs/saiga/attack (1).ogg','sound/vo/mobs/saiga/attack (2).ogg')
		if("pain")
			return pick('sound/vo/mobs/saiga/pain (1).ogg','sound/vo/mobs/saiga/pain (2).ogg','sound/vo/mobs/saiga/pain (3).ogg')
		if("death")
			return pick('sound/vo/mobs/saiga/death (1).ogg','sound/vo/mobs/saiga/death (2).ogg')
		if("idle")
			return pick('sound/vo/mobs/saiga/idle (1).ogg','sound/vo/mobs/saiga/idle (2).ogg','sound/vo/mobs/saiga/idle (3).ogg','sound/vo/mobs/saiga/idle (4).ogg','sound/vo/mobs/saiga/idle (5).ogg','sound/vo/mobs/saiga/idle (6).ogg','sound/vo/mobs/saiga/idle (7).ogg')

/mob/living/simple_animal/hostile/retaliate/rogue/saigabuck/Initialize()
	..()
	if(tame)
		tamed(owner)

/mob/living/simple_animal/hostile/retaliate/rogue/saigabuck/taunted(mob/user)
	emote("aggro")
	Retaliate()
	GiveTarget(user)
	return


/mob/living/simple_animal/hostile/retaliate/rogue/saigabuck/tamed(mob/user)
	..()
	deaggroprob = 20
	if(can_buckle)
		var/datum/component/riding/D = LoadComponent(/datum/component/riding)
		D.set_riding_offsets(RIDING_OFFSET_ALL, list(TEXT_NORTH = list(0, 8), TEXT_SOUTH = list(0, 8), TEXT_EAST = list(-2, 8), TEXT_WEST = list(2, 8)))
		D.set_vehicle_dir_layer(SOUTH, ABOVE_MOB_LAYER)
		D.set_vehicle_dir_layer(NORTH, OBJ_LAYER)
		D.set_vehicle_dir_layer(EAST, OBJ_LAYER)
		D.set_vehicle_dir_layer(WEST, OBJ_LAYER)


/mob/living/simple_animal/hostile/retaliate/rogue/saigabuck/eat_plants()
	//..()
	var/obj/structure/spacevine/SV = locate(/obj/structure/spacevine) in loc
	if(SV)
		SV.eat(src)
		food = max(food + 30, 100)


/mob/living/simple_animal/hostile/retaliate/rogue/saigabuck/simple_limb_hit(zone)
	if(!zone)
		return ""
	switch(zone)
		if(BODY_ZONE_PRECISE_R_EYE)
			return "head"
		if(BODY_ZONE_PRECISE_L_EYE)
			return "head"
		if(BODY_ZONE_PRECISE_NOSE)
			return "snout"
		if(BODY_ZONE_PRECISE_MOUTH)
			return "snout"
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


/mob/living/simple_animal/hostile/retaliate/rogue/saiga/saigakid
	icon = 'icons/roguetown/mob/monster/saiga.dmi'
	name = "saiga"
	icon_state = "saigakid"
	icon_living = "saigakid"
	icon_dead = "saigakid_dead"
	icon_gib = "saigakid_gib"

	animal_species = null
	gender = FEMALE
	pass_flags = PASSTABLE | PASSMOB
	mob_size = MOB_SIZE_SMALL

	botched_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/mince = 1)
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 1)
	perfect_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 1,
								/obj/item/natural/hide = 1)

	health = CALF_HEALTH
	maxHealth = CALF_HEALTH

	base_intents = list(/datum/intent/simple/headbutt)
	melee_damage_lower = 1
	melee_damage_upper = 6

	STACON = 5
	STASTR = 5
	STASPD = 5
	defprob = 50
	pixel_x = -16
	adult_growth = /mob/living/simple_animal/hostile/retaliate/rogue/saiga
	tame = TRUE
	can_buckle = FALSE
	aggressive = TRUE

/mob/living/simple_animal/hostile/retaliate/rogue/saiga/saigakid/boy
	icon_state = "saigaboy"
	icon_living = "saigaboy"
	icon_dead = "saigaboy_dead"
	icon_gib = "saigaboy_gib"

	gender = MALE

	health = CALF_HEALTH
	maxHealth = CALF_HEALTH

	adult_growth = /mob/living/simple_animal/hostile/retaliate/rogue/saigabuck

/mob/living/simple_animal/hostile/retaliate/rogue/saiga/tame
	tame = TRUE

/mob/living/simple_animal/hostile/retaliate/rogue/saigabuck/tame
	tame = TRUE

/mob/living/simple_animal/hostile/retaliate/rogue/saigabuck/tame/saddled/Initialize()
	. = ..()
	var/obj/item/natural/saddle/S = new(src)
	ssaddle = S
	update_icon()

/mob/living/simple_animal/hostile/retaliate/rogue/saiga/tame/saddled/Initialize()
	. = ..()
	var/obj/item/natural/saddle/S = new(src)
	ssaddle = S
	update_icon()
