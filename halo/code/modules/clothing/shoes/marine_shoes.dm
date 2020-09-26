

/obj/item/clothing/shoes/marine
	name = "marine combat boots"
	desc = "Standard issue combat boots for combat scenarios or combat situations. All combat, all the time."
	icon_state = "marine"
	item_state = "marine"
	flags_armor_protection = FEET
	soft_armor = list("melee" = 15, "bullet" = 20, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 0, "fire" = 10, "acid" = 25)
	flags_cold_protection = FEET
	flags_heat_protection = FEET
	min_cold_protection_temperature = SHOE_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = SHOE_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.7
	var/obj/item/storage/internal/pockets = /obj/item/storage/internal/shoes/boot_knife

/obj/item/storage/internal/shoes/boot_knife
	max_storage_space = 3
	storage_slots = 1
	draw_mode = TRUE
	can_hold = list(
		/obj/item/weapon/combat_knife,
		/obj/item/weapon/gun/pistol/standard_pocketpistol,
		/obj/item/attachable/bayonetknife,
		/obj/item/weapon/throwing_knife
	)

/obj/item/clothing/shoes/marine/Initialize()
	. = ..()
	pockets = new pockets(src)

/obj/item/clothing/shoes/marine/attack_hand(mob/living/user)
	if(pockets.handle_attack_hand(user))
		return ..()


/obj/item/clothing/shoes/marine/MouseDrop(over_object, src_location, over_location)
	if(!pockets)
		return ..()
	if(pockets.handle_mousedrop(usr, over_object))
		return ..()


/obj/item/clothing/shoes/marine/attackby(obj/item/I, mob/user, params)
	. = ..()
	if(.)
		return
	if(!pockets)
		return

	return pockets.attackby(I, user, params)


/obj/item/clothing/shoes/marine/emp_act(severity)
	pockets?.emp_act(severity)
	return ..()

/obj/item/clothing/shoes/marine/update_icon()
	if(length(pockets.contents))
		icon_state = "[initial(icon_state)]-knife"
	else
		icon_state = initial(icon_state)

//halo

/obj/item/clothing/shoes/marine/unscmarine
	name = "UNSC marine combat boots"
	desc = "Standard issue combat boots for combat scenarios or combat situations."
	icon_state = "unsc_marine"
	item_state = "unsc_marine"

/obj/item/clothing/shoes/marine/urf
	name = "combat boots (brown)"
	desc = "A pair of combat boots that provides minor protection. May protect against toe stubs."
	icon_state = "urf_brown"
	item_state = "urf_brown"

/obj/item/clothing/shoes/marine/urf/black
	name = "combat boots (black)"
	desc = "A pair of combat boots that provides minor protection. May protect against toe stubs."
	icon_state = "urf_black"
	item_state = "urf_black"

/obj/item/clothing/shoes/marine/urf/green
	name = "combat boots (green)"
	desc = "A pair of combat boots that provides minor protection. May protect against toe stubs."
	icon_state = "urf_green"
	item_state = "urf_green"

/obj/item/clothing/shoes/marine/urf/white
	name = "combat boots (white)"
	desc = "A pair of combat boots that provides minor protection. May protect against toe stubs."
	icon_state = "urf_white"
	item_state = "urf_white"
