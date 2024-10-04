/mob/living/simple_animal/hostile/retaliate/rogue/troll
	icon = 'icons/roguetown/mob/monster/trolls.dmi'
	name = "troll"
	desc = "Elven legends say these monsters were servants of Dendor tasked to guard his realm; nowadays they are sometimes found in the company of orcs."
	icon_state = "Troll2"
	icon_living = "Troll2"
	icon_dead = "Troll2d"

	faction = list("orcs")
	footstep_type = FOOTSTEP_MOB_HEAVY
	emote_hear = null
	emote_see = null
	verb_say = "groans"
	verb_ask = "grunts"
	verb_exclaim = "roars"
	verb_yell = "roars"

	turns_per_move = 2
	see_in_dark = 10
	move_to_delay = 7
	vision_range = 6
	aggro_vision_range = 6

	botched_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/spider = 1,
						/obj/item/alch/horn = 2)
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/spider = 1,
						/obj/item/natural/hide = 2,
						/obj/item/alch/horn = 2)
	perfect_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/spider= 2,
						/obj/item/natural/hide = 3,
						/obj/item/alch/horn = 2)

	health = TROLL_HEALTH
	maxHealth = TROLL_HEALTH
	food_type = list(/obj/item/reagent_containers/food/snacks/rogue/meat,
					/obj/item/bodypart,
					/obj/item/organ)

	base_intents = list(/datum/intent/unarmed/wwolf, /datum/intent/simple/bigbite)
	attack_sound = list('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg','sound/combat/wooshes/blunt/wooshhuge (3).ogg')
	melee_damage_lower = 40
	melee_damage_upper = 60
	environment_smash = ENVIRONMENT_SMASH_STRUCTURES

	STACON = 15
	STASTR = 16
	STASPD = 2
	STAEND = 16

	retreat_distance = 0
	minimum_distance = 0
	deaggroprob = 0
	defprob = 20
	defdrain = 15
	del_on_deaggro = 99 SECONDS
	retreat_health = 0
	food_max = 250
	food = 0
	dodgetime = 20
	aggressive = TRUE
//	stat_attack = UNCONSCIOUS
	remains_type = /obj/effect/decal/remains/troll
	body_eater = TRUE
	var/critvuln = FALSE

/mob/living/simple_animal/hostile/retaliate/rogue/troll/Initialize()
	. = ..()
	if(critvuln)
		ADD_TRAIT(src, TRAIT_CRITICAL_WEAKNESS, TRAIT_GENERIC)

/mob/living/simple_animal/hostile/retaliate/rogue/troll/death(gibbed)
	..()
	update_icon()

/mob/living/simple_animal/hostile/retaliate/rogue/troll/get_sound(input)
	switch(input)
		if("aggro")
			return pick('sound/vo/mobs/troll/aggro1.ogg','sound/vo/mobs/troll/aggro2.ogg')
		if("pain")
			return pick('sound/vo/mobs/troll/pain1.ogg','sound/vo/mobs/troll/pain2.ogg')
		if("death")
			return pick('sound/vo/mobs/troll/death.ogg')
		if("idle")
			return pick('sound/vo/mobs/troll/idle1.ogg','sound/vo/mobs/troll/idle2.ogg')
		if("cidle")
			return pick('sound/vo/mobs/troll/cidle1.ogg','sound/vo/mobs/troll/aggro2.ogg')

/mob/living/simple_animal/hostile/retaliate/rogue/troll/taunted(mob/user)
	emote("aggro")
	Retaliate()
	GiveTarget(user)
	return

/mob/living/simple_animal/hostile/retaliate/rogue/troll/Life()
	..()
	if(pulledby)
		Retaliate()
		GiveTarget(pulledby)
	if(fire_stacks <= 0)
		adjustHealth(-rand(20,35))


/mob/living/simple_animal/hostile/retaliate/rogue/troll/simple_limb_hit(zone)
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

/obj/effect/decal/remains/troll
	name = "remains"
	gender = PLURAL
	icon_state = "mole_bones"
	icon = 'icons/roguetown/mob/monster/mole.dmi' // mole bones is a placeholder
