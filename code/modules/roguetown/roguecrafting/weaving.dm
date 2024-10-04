/datum/crafting_recipe/roguetown/weaving
	structurecraft = /obj/machinery/loom
	skillcraft = /datum/skill/misc/sewing

/datum/crafting_recipe/roguetown/weaving/rags
	name = "webbed shirt"
	result = list(/obj/item/clothing/suit/roguetown/shirt/undershirt/webs)
	reqs = list(/obj/item/natural/silk = 1)
	craftdiff = 1
	sellprice = 6

/datum/crafting_recipe/roguetown/weaving/webbing
	name = "webbed leggings"
	result = list(/obj/item/clothing/under/roguetown/webs)
	reqs = list(/obj/item/natural/silk = 2)
	craftdiff = 1
	sellprice = 9

/datum/crafting_recipe/roguetown/weaving/cloak
	name = "silk half cloak"
	result = list(/obj/item/clothing/cloak/half)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/silk = 1)
	craftdiff = 3
	sellprice = 19

/datum/crafting_recipe/roguetown/weaving/shirt
	name = "formal silks"
	result = list(/obj/item/clothing/suit/roguetown/shirt/undershirt/puritan)
	reqs = list(/obj/item/natural/silk = 5)
	craftdiff = 3
	sellprice = 35

/datum/crafting_recipe/roguetown/weaving/shepardmask
	name = "half-mask"
	result = list(/obj/item/clothing/mask/rogue/shepherd)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/silk = 1)
	craftdiff = 1
	sellprice = 30

/datum/crafting_recipe/roguetown/weaving/astratarobe
	name = "astrata robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/astrata)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/silk = 1)
	craftdiff = 4
	sellprice = 25

/datum/crafting_recipe/roguetown/weaving/astratahood
	name = "solar hood"
	result = list(/obj/item/clothing/head/roguetown/roguehood/astrata)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/silk = 1)
	craftdiff = 3
	sellprice = 25

/datum/crafting_recipe/roguetown/weaving/dendorrobe
	name = "dendor robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/dendor)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/silk = 1)
	craftdiff = 4
	sellprice = 25

/datum/crafting_recipe/roguetown/weaving/necrarobe
	name = "necra robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/necra)
	reqs = list(/obj/item/natural/cloth = 3,
				/obj/item/natural/silk = 1)
	craftdiff = 4
	sellprice = 25

/datum/crafting_recipe/roguetown/weaving/necrahood
	name = "necra hood"
	result = list(/obj/item/clothing/head/roguetown/necrahood)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/silk = 1)
	craftdiff = 3
	sellprice = 20

/datum/crafting_recipe/roguetown/weaving/eoramask
	name = "eora mask"
	result = list(/obj/item/clothing/head/roguetown/eoramask)
	reqs = list(/obj/item/ingot/silver,
				/obj/item/natural/silk = 4)
	craftdiff = 3
	sellprice = 20

/datum/crafting_recipe/roguetown/weaving/eorarobes
	name = "eora robes"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/eora)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/silk = 1)
	craftdiff = 3
	sellprice = 20

/datum/crafting_recipe/roguetown/weaving/eorastraps
	name = "eora straps"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/eora/alt)
	reqs = list(/obj/item/ingot/gold,
				/obj/item/natural/silk = 5)
	craftdiff = 5
	sellprice = 50

/datum/crafting_recipe/roguetown/weaving/nunhood
	name = "nun hood"
	result = list(/obj/item/clothing/head/roguetown/nun)
	reqs = list(/obj/item/natural/silk = 2)
	craftdiff = 3
	sellprice = 20

/datum/crafting_recipe/roguetown/weaving/nunrobe
	name = "nun robe"
	result = list(/obj/item/clothing/suit/roguetown/shirt/robe/nun)
	reqs = list(/obj/item/natural/silk = 3)
	craftdiff = 3
	sellprice = 20

/datum/crafting_recipe/roguetown/weaving/barmaid
	name = "bar dress"
	result = list (/obj/item/clothing/suit/roguetown/shirt/dress)
	reqs = list(/obj/item/natural/cloth = 2,
				/obj/item/natural/silk = 2)
	craftdiff = 5
	sellprice = 27

/datum/crafting_recipe/roguetown/weaving/silkdress
	name = "chemise"
	result = list (/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/random)
	reqs = list(/obj/item/natural/fibers = 2,
				/obj/item/natural/silk = 3)
	craftdiff = 5
	sellprice = 30

/datum/crafting_recipe/roguetown/weaving/silkcoat
	name = "silk coat"
	result = list (/obj/item/clothing/suit/roguetown/armor/silkcoat)
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/silk = 3,
				/obj/item/natural/fur/gote = 2)
	craftdiff = 5
	sellprice = 60

/datum/crafting_recipe/roguetown/weaving/silkcoat/two
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/silk = 3,
				/obj/item/natural/fur/volf = 2)

/datum/crafting_recipe/roguetown/weaving/silkcoat/three
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/silk = 3,
				/obj/item/natural/fur/mole = 2)

/datum/crafting_recipe/roguetown/weaving/silkcoat/four
	reqs = list(/obj/item/natural/cloth = 1,
				/obj/item/natural/silk = 3,
				/obj/item/natural/fur/rous = 2)

/datum/crafting_recipe/roguetown/weaving/paddedgambeson
    name = "padded gambeson"
    result = list(/obj/item/clothing/suit/roguetown/armor/gambeson/heavy)
    reqs = list(/obj/item/natural/cloth = 6,
                /obj/item/natural/fibers = 4)
    craftdiff = 4

/datum/crafting_recipe/roguetown/weaving/armordress
	name = "padded dress"
	result = /obj/item/clothing/suit/roguetown/armor/armordress
	reqs = list(/obj/item/natural/silk = 4,
				/obj/item/natural/fibers = 2,
				/obj/item/natural/hide = 1)
	craftdiff = 4
	sellprice = 80