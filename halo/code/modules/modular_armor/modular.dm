/**
	Modular armor

	Modular armor consists of a a suit and helmet.
	The suit is able to have a storage, module, and 3x armor attachments (chest, arms, and legs)
	Helmets only have a single module slot.

	Suits have a single action, which is to toggle the flashlight.
	Helmets have diffrnet actions based on what module you have installed.

*/

//halo

/obj/item/clothing/suit/modular/unscmarine
	name = "UNSC Marine chest rig"
	desc = "A barebones UNSC Marine chest rig. It can mount and be improved with various pieces of armor and plating."
	icon_state = "marine_under"
	item_state = "marine_under"

/obj/item/clothing/head/modular/marine/unscmarine
	name = "UNSC Combat helmet"
	desc = "A helmet for UNSC Marines. It can be equipped with a tactical visor that can be toggled."
	icon_state = "marine_helmet"
	toggle_message = "You activate the tactical visor"
	alt_toggle_message = "You deactive the tactical visor."
	can_toggle = 1

/obj/item/clothing/head/modular/marine/unscmarine/item_action_slot_check(mob/user, slot)
	if(!ishuman(user))
		return FALSE
	if(slot != SLOT_HEAD)
		return FALSE
	if(!isnull(installed_module) && installed_module.module_type != ARMOR_MODULE_TOGGLE)
		return FALSE
	return TRUE //only give action button when armor is worn.


/obj/item/clothing/head/modular/attack_self(mob/user)
	if(!can_toggle || user.incapacitated())
		return

	if(world.time < cooldown + toggle_cooldown)
		return

	cooldown = world.time
	up = !up
	icon_state = "[initial(icon_state)][up ? "_visor" : ""]_icon"
	item_state = "[initial(icon_state)][up ? "_visor" : ""]"
	to_chat(user, "<span class='notice'>[up ? alt_toggle_message : toggle_message] </span>")
	user.update_inv_head()
