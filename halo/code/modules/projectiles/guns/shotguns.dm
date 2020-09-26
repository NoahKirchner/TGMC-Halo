

/*
Shotguns always start with an ammo buffer and they work by alternating ammo and ammo_buffer1
in order to fire off projectiles. This is only done to enable burst fire for the shotgun.
Consequently, the shotgun should never fire more than three projectiles on burst as that
can cause issues with ammo types getting mixed up during the burst.
*/

/obj/item/weapon/gun/shotgun
	w_class = WEIGHT_CLASS_BULKY
	force = 14.0
	caliber = "12 gauge shotgun shells" //codex
	max_shells = 9 //codex
	load_method = SINGLE_CASING //codex
	fire_sound = 'sound/weapons/guns/fire/shotgun.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/shotgun_empty.ogg'
	reload_sound = 'sound/weapons/guns/interact/shotgun_shell_insert.ogg'
	cocked_sound = 'sound/weapons/guns/interact/shotgun_reload.ogg'
	var/opened_sound = 'sound/weapons/guns/interact/shotgun_open.ogg'
	type_of_casings = "shell"
	accuracy_mult = 1.15
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_INTERNAL_MAG|GUN_AMMO_COUNTER|GUN_WIELDED_FIRING_ONLY
	aim_slowdown = 0.35
	wield_delay = 0.6 SECONDS //Shotguns are really easy to put up to fire, since they are designed for CQC (at least compared to a rifle)
	gun_skill_category = GUN_SKILL_SHOTGUNS
	flags_item_map_variant = NONE

	fire_delay = 6
	accuracy_mult = 1.15
	accuracy_mult_unwielded = 0.85
	scatter = 20
	scatter_unwielded = 40
	recoil = 2
	recoil_unwielded = 4


/obj/item/weapon/gun/shotgun/Initialize()
	. = ..()
	replace_tube(current_mag.current_rounds) //Populate the chamber.
	if(flags_gun_features & GUN_SHOTGUN_CHAMBER)
		load_into_chamber()


/obj/item/weapon/gun/shotgun/update_icon() //Shotguns do not currently have empty states, as they look exactly the same. Other than double barrel.
	return

/obj/item/weapon/gun/shotgun/proc/replace_tube(number_to_replace)
	current_mag.chamber_contents = list()
	current_mag.chamber_contents.len = current_mag.max_rounds
	var/i
	for(i = 1 to current_mag.max_rounds) //We want to make sure to populate the tube.
		current_mag.chamber_contents[i] = i > number_to_replace ? "empty" : current_mag.default_ammo
	current_mag.chamber_position = current_mag.current_rounds //The position is always in the beginning [1]. It can move from there.

/obj/item/weapon/gun/shotgun/proc/add_to_tube(mob/user,selection) //Shells are added forward.
	current_mag.chamber_position++ //We move the position up when loading ammo. New rounds are always fired next, in order loaded.
	current_mag.chamber_contents[current_mag.chamber_position] = selection //Just moves up one, unless the mag is full.
	if(current_mag.current_rounds == 1 && !in_chamber) //The previous proc in the reload() cycle adds ammo, so the best workaround here,
		update_icon()	//This is not needed for now. Maybe we'll have loaded sprites at some point, but I doubt it. Also doesn't play well with double barrel.
		ready_in_chamber()
		cock_gun(user)
	if(user)
		playsound(user, reload_sound, 25, 1)
	return TRUE

/obj/item/weapon/gun/shotgun/proc/empty_chamber(mob/user)
	if(current_mag.current_rounds > 0)
		unload_shell(user)
		if(!current_mag.current_rounds && !in_chamber)
			update_icon()
		return TRUE
	if(!in_chamber)
		to_chat(user, "<span class='warning'>[src] is already empty.</span>")
		return TRUE
	QDEL_NULL(in_chamber)
	var/obj/item/ammo_magazine/handful/new_handful = retrieve_shell(ammo.type)
	playsound(user, reload_sound, 25, 1)
	new_handful.forceMove(get_turf(src))
	return TRUE


/obj/item/weapon/gun/shotgun/proc/unload_shell(mob/user)
	var/obj/item/ammo_magazine/handful/new_handful = retrieve_shell(current_mag.chamber_contents[current_mag.chamber_position])

	if(user)
		user.put_in_hands(new_handful)
		playsound(user, reload_sound, 25, 1)
	else new_handful.loc = get_turf(src)

	current_mag.current_rounds--
	current_mag.chamber_contents[current_mag.chamber_position] = "empty"
	current_mag.chamber_position--
	return 1

		//While there is a much smaller way to do this,
		//this is the most resource efficient way to do it.
/obj/item/weapon/gun/shotgun/proc/retrieve_shell(selection)
	var/obj/item/ammo_magazine/handful/new_handful = new /obj/item/ammo_magazine/handful()
	new_handful.generate_handful(selection, "12g", 5, 1, /obj/item/weapon/gun/shotgun)
	return new_handful

/obj/item/weapon/gun/shotgun/pump/bolt/retrieve_shell(selection)
	var/obj/item/ammo_magazine/handful/new_handful = new /obj/item/ammo_magazine/handful()
	new_handful.generate_handful(selection, "7.62x54mmR", 5, 1, /obj/item/weapon/gun/shotgun)
	return new_handful

/obj/item/weapon/gun/shotgun/pump/lever/retrieve_shell(selection)
	var/obj/item/ammo_magazine/handful/new_handful = new /obj/item/ammo_magazine/handful()
	new_handful.generate_handful(selection, ".44", 8, 1, /obj/item/weapon/gun/shotgun)
	return new_handful

/obj/item/weapon/gun/shotgun/pump/lever/mbx900/retrieve_shell(selection)
	var/obj/item/ammo_magazine/handful/new_handful = new /obj/item/ammo_magazine/handful()
	new_handful.generate_handful(selection, ".410", 8, 1, /obj/item/weapon/gun/shotgun)
	return new_handful


/obj/item/weapon/gun/shotgun/proc/check_chamber_position()
	return 1


/obj/item/weapon/gun/shotgun/reload(mob/user, obj/item/ammo_magazine/handful/magazine)
	if(flags_gun_features & GUN_BURST_FIRING)
		return FALSE

	if(!istype(magazine)) //Can only reload with handfuls.
		to_chat(user, "<span class='warning'>You can't use that to reload!</span>")
		return FALSE

	if(!check_chamber_position()) //For the double barrel.
		to_chat(user, "<span class='warning'>[src] has to be open!</span>")
		return FALSE

	//From here we know they are using shotgun type ammo and reloading via handful.
	//Makes some of this a lot easier to determine.

	var/mag_caliber = magazine.default_ammo //Handfuls can get deleted, so we need to keep this on hand for later.
	if(current_mag.transfer_ammo(magazine,user,1))
		add_to_tube(user,mag_caliber) //This will check the other conditions.


/obj/item/weapon/gun/shotgun/unload(mob/user)
	if(flags_gun_features & GUN_BURST_FIRING)
		return FALSE
	return empty_chamber(user)


/obj/item/weapon/gun/shotgun/proc/ready_shotgun_tube()
	if(current_mag.current_rounds > 0)
		ammo = GLOB.ammo_list[current_mag.chamber_contents[current_mag.chamber_position]]
		in_chamber = create_bullet(ammo)
		current_mag.current_rounds--
		current_mag.chamber_contents[current_mag.chamber_position] = "empty"
		current_mag.chamber_position--
		return in_chamber


/obj/item/weapon/gun/shotgun/ready_in_chamber()
	return ready_shotgun_tube()

/obj/item/weapon/gun/shotgun/reload_into_chamber(mob/user)
	if(active_attachable && active_attachable.flags_attach_features & ATTACH_PROJECTILE)
		make_casing(active_attachable.type_of_casings)
	else
		make_casing(type_of_casings)
		if(in_chamber)
			QDEL_NULL(in_chamber)

		//Time to move the tube position.
		ready_in_chamber() //We're going to try and reload. If we don't get anything, icon change.
		if(!current_mag.current_rounds && !in_chamber) //No rounds, nothing chambered.
			update_icon()

	return TRUE

/obj/item/weapon/gun/shotgun/get_ammo_type()
	if(in_chamber)
		return list(in_chamber.ammo.hud_state, in_chamber.ammo.hud_state_empty)
	if(!ammo)
		return list("unknown", "unknown")
	else
		return list(ammo.hud_state, ammo.hud_state_empty)

/obj/item/weapon/gun/shotgun/get_ammo_count()
	if(!current_mag)
		return in_chamber ? 1 : 0
	else
		return in_chamber ? (current_mag.current_rounds + 1) : current_mag.current_rounds

//Halo

//M90
/obj/item/weapon/gun/shotgun/pump/m90
	name = "M90 CAWS"
	desc = "The M90 shotgun, utilized by the UNSCDF. Loads 8 gauge shells. "
	flags_equip_slot = ITEM_SLOT_BACK
	icon_state = "m90"
	item_state = "m90"
	current_mag = /obj/item/ammo_magazine/internal/shotgun/pump
	fire_sound = 'sound/halo/Shotgun_Fire_New.wav'
	reload_sound = 'sound/halo/Shotgun_Reload_New.wav'
	pump_sound =  'sound/halo/Shotgun_Reload_Sound_Effect.ogg'
	max_shells = 9

	flags_item_map_variant = NONE

	fire_delay = 20
	accuracy_mult = 1.15
	accuracy_mult_unwielded = 0.85
	scatter = 20
	scatter_unwielded = 40
	recoil = 2
	recoil_unwielded = 4
	aim_slowdown = 0.55
	pump_delay = 14

//M45
/obj/item/weapon/gun/shotgun/pump/m45
	name = "M45 Tactical Shotgun"
	desc = "A shotgun formerly used by the UNSC, now sold to civilian contractors and used by rebel groups."
	flags_equip_slot = ITEM_SLOT_BACK
	icon_state = "m45"
	item_state = "m45"
	current_mag = /obj/item/ammo_magazine/internal/shotgun/pump
	fire_sound = 'sound/halo/Shotgun_Fire_New.wav'
	reload_sound = 'sound/halo/Shotgun_Reload_New.wav'
	pump_sound =  'sound/halo/Shotgun_Reload_Sound_Effect.ogg'
	max_shells = 9

	flags_item_map_variant = NONE

	fire_delay = 20
	accuracy_mult = 1.15
	accuracy_mult_unwielded = 0.85
	scatter = 20
	scatter_unwielded = 40
	recoil = 2
	recoil_unwielded = 4
	aim_slowdown = 0.55
	pump_delay = 14
