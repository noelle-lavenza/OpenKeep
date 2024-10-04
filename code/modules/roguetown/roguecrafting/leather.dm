// LEATHER AND FUR CRAFTING RECIPES

/datum/crafting_recipe/roguetown/leather
	tools = list(/obj/item/needle)
	structurecraft = /obj/structure/fluff/dryingrack
	skillcraft = /datum/skill/craft/tanning
	craftdiff = 0
	subtype_reqs = TRUE // so you can use any subtype of fur
	reqs = list(/obj/item/natural/hide = 1)


/*.............. recipes requiring no skill..............*/

/datum/crafting_recipe/roguetown/leather/pouch
	name = "leather pouch"
	result = list(/obj/item/storage/belt/rogue/pouch,
				/obj/item/storage/belt/rogue/pouch)
	reqs = list(/obj/item/natural/hide = 1,
				/obj/item/natural/fibers = 1)
	sellprice = 6

/datum/crafting_recipe/roguetown/leather/gloves
	name = "leather gloves (x2)"
	result = list(/obj/item/clothing/gloves/roguetown/leather, 
	/obj/item/clothing/gloves/roguetown/leather)

/datum/crafting_recipe/roguetown/leather/bracers
	name = "leather bracers (x2)"
	result = list(/obj/item/clothing/wrists/roguetown/bracers/leather,
			/obj/item/clothing/wrists/roguetown/bracers/leather)

/datum/crafting_recipe/roguetown/leather/pants
	name = "leather pants"
	result = list(/obj/item/clothing/under/roguetown/trou/leather)

/datum/crafting_recipe/roguetown/leather/shoes
	name = "leather shoes (x2)"
	result = list(/obj/item/clothing/shoes/roguetown/simpleshoes,
				/obj/item/clothing/shoes/roguetown/simpleshoes,)

/datum/crafting_recipe/roguetown/leather/boots
	name = "leather boots"
	result = /obj/item/clothing/shoes/roguetown/boots/leather

/datum/crafting_recipe/roguetown/leather/sandals
	name = "sandals"
	result = /obj/item/clothing/shoes/roguetown/sandals

/datum/crafting_recipe/roguetown/leather/gladiator
	name = "gladiator sandals"
	result = /obj/item/clothing/shoes/roguetown/gladiator
	reqs = list(/obj/item/natural/hide = 2)
	sellprice = 17

/datum/crafting_recipe/roguetown/leather/hood
	name = "leather hood"
	result = /obj/item/clothing/head/roguetown/roguehood

/datum/crafting_recipe/roguetown/leather/cloak
	name = "leather cloak"
	result = /obj/item/clothing/cloak/raincloak/brown
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/cloakfur
	name = "fur cloak"
	result = /obj/item/clothing/cloak/raincloak/furcloak
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)

/datum/crafting_recipe/roguetown/leather/quiver
	name = "quiver"
	result = /obj/item/quiver
	reqs = list(/obj/item/natural/hide = 2, /obj/item/natural/fibers = 2)

/datum/crafting_recipe/roguetown/leather/tribal_cloak
	name = "tribal pelt"
	result = /obj/item/clothing/cloak/tribal

/datum/crafting_recipe/roguetown/leather/tribal_shoes
	name = "tribal shoes"
	result = list(/obj/item/clothing/shoes/roguetown/tribal)



/*.............. recipes requiring skill 1 ..............*/

/datum/crafting_recipe/roguetown/leather/saddle
	name = "saddle"
	result = /obj/item/natural/saddle
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/satchel
	name = "leather satchel"
	result = /obj/item/storage/backpack/rogue/satchel
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fibers = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/waterskin
	name = "waterskin"
	result = /obj/item/reagent_containers/glass/bottle/waterskin
	reqs = list(/obj/item/natural/hide = 1,
				/obj/item/natural/fibers = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/heavygloves
	name = "heavy leather gloves"
	result = /obj/item/clothing/gloves/roguetown/angle
	reqs = list(/obj/item/natural/hide = 1,
				/obj/item/natural/fur/gote = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/helmet
	name = "leather helmet"
	result = /obj/item/clothing/head/roguetown/helmet/leather
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/armor
	name = "leather armor"
	result = /obj/item/clothing/suit/roguetown/armor/leather
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/papakha
	name = "papakha hat"
	result = /obj/item/clothing/head/roguetown/papakha
	reqs = list(/obj/item/natural/fur = 1,
				/obj/item/natural/fibers = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/whip
	name = "leather whip"
	result = /obj/item/rogueweapon/whip
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1


/*.............. recipes requiring skill 2 ..............*/

/datum/crafting_recipe/roguetown/leather/backpack
	name = "leather backpack"
	result = /obj/item/storage/backpack/rogue/backpack
	reqs = list(/obj/item/natural/hide = 3,
				/obj/item/natural/fibers = 2)
	craftdiff = 2

/datum/crafting_recipe/roguetown/leather/hidearmor
	name = "hide armor"
	result = /obj/item/clothing/suit/roguetown/armor/leather/hide
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/leather/coif
	name = "leather coif"
	result = /obj/item/clothing/neck/roguetown/coif
	reqs = list(/obj/item/natural/hide = 1)
	craftdiff = 2




