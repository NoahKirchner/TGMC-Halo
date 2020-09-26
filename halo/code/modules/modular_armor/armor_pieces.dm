
/**
	Modular armor pieces

	These are straight armor attachments that equip into 1 of 3 slots on modular armor
	There are chest arms and leg variants, each with their own light medium and heavy armor (not mentioning special types)

	Each armor will merge its armor with the modular armor on attachment and remove it when detached, similar with other stats like slowdown.
*/

//halo

/obj/item/armor_module/armor/chest/unsc
	name = "UNSC Marine chest plate"
	desc = "Attachable chest plate for use with UNSC Marine armor."
	icon_state = "marine_chest"
	soft_armor = list("melee" = 40, "bullet" = 25, "laser" = 25, "energy" = 30, "bomb" = 35, "bio" = 10, "rad" = 10, "fire" = 10, "acid" = 10)
	slowdown = 0.25

/obj/item/armor_module/armor/arms/unsc
	name = "UNSC Marine shoulder plates"
	desc = "Attachable shoulder plates for use with UNSC Marine armor."
	icon_state = "marine_arms"
	soft_armor = list("melee" = 40, "bullet" = 25, "laser" = 25, "energy" = 30, "bomb" = 35, "bio" = 10, "rad" = 10, "fire" = 10, "acid" = 10)
	slowdown = 0.10

/obj/item/armor_module/armor/legs/unsc
	name = "UNSC Marine knee pads"
	desc = "UNSC Marine knee pads for use with UNSC Marine armor."
	icon_state = "marine_legs"
	soft_armor = list("melee" = 40, "bullet" = 25, "laser" = 25, "energy" = 30, "bomb" = 35, "bio" = 10, "rad" = 10, "fire" = 10, "acid" = 9)
	slowdown = 0.15
