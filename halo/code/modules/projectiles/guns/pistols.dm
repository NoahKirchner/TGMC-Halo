//Base pistol for inheritance/
//--------------------------------------------------

/obj/item/weapon/gun/pistol
	icon_state = "" //Defaults to revolver pistol when there's no sprite.
	fire_sound = 'sound/weapons/guns/fire/pistol.ogg'
	unload_sound = 'sound/weapons/guns/interact/pistol_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/pistol_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/pistol_cocked.ogg'
	muzzleflash_iconstate = "muzzle_flash_light"
	load_method = MAGAZINE //codex
	flags_equip_slot = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_NORMAL
	force = 6
	movement_acc_penalty_mult = 0
	wield_delay = 0.2 SECONDS //If you modify your pistol to be two-handed, it will still be fast to aim
	type_of_casings = "bullet"
	gun_skill_category = GUN_SKILL_PISTOLS
	attachable_allowed = list(
						/obj/item/attachable/suppressor,
						/obj/item/attachable/reddot,
						/obj/item/attachable/flashlight,
						/obj/item/attachable/compensator,
						/obj/item/attachable/lasersight,
						/obj/item/attachable/extended_barrel,
						/obj/item/attachable/heavy_barrel,
						/obj/item/attachable/gyro,
						/obj/item/attachable/burstfire_assembly)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER

/obj/item/weapon/gun/pistol/unique_action(mob/user)
	return cock(user)

/obj/item/weapon/gun/pistol/get_ammo_type()
	if(!ammo)
		return list("unknown", "unknown")
	else
		return list(ammo.hud_state, ammo.hud_state_empty)

/obj/item/weapon/gun/pistol/get_ammo_count()
	if(!current_mag)
		return in_chamber ? 1 : 0
	else
		return in_chamber ? (current_mag.current_rounds + 1) : current_mag.current_rounds


//Halo//

/obj/item/weapon/gun/pistol/m6
	name = "M6G PDWS"
	desc = "The M6G PDWS is a handgun commonly used by all branches of the UNSC. It is known for its extreme reliability and high stopping power."
	icon_state = "m6g"
	item_state = "m6g"
	fire_sound = 'sound/halo/MagnumShotSoundEffect.ogg'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m6

/obj/item/weapon/gun/pistol/m6/m6b_officer
	name = "M6B PDWS"
	desc = "The M6B is an officers model variant of M6 series of pistols, and is noted for its comfort."
	icon_state = "m6b"
	item_state = "m6b"
	fire_sound = 'sound/halo/MagnumShotSoundEffect.ogg'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m6

/obj/item/weapon/gun/pistol/m6/m6b_security
	name = "M6B PDWS Security Model"
	desc = "The M6B is an officers model variant of M6 series of pistols, and is noted for its comfort. This version has been designed for security officers."
	icon_state = "m6b_police"
	item_state = "m6b_police"
	fire_sound = 'sound/halo/MagnumShotSoundEffect.ogg'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m6

/obj/item/weapon/gun/pistol/m6/captain
	name = "M6G PDWS"
	desc = "The M6B is an officers model variant of M6 series of pistols, and is noted for its comfort."
	icon_state = "m6gold"
	item_state = "m6gold"
	fire_sound = 'sound/halo/MagnumShotSoundEffect.ogg'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m6

/obj/item/weapon/gun/pistol/m6/SOCOM
	name = "M6C SOCOM"
	desc = "The M6C/SOCOM is a special issued handgun to UNSC special operations forces. It has an integrated suppressor and is commonly seen in the hands of ODSTs."
	icon_state = "socom"
	item_state = "socom"
	fire_sound = 'sound/halo/Magnum_SOCOM_Fire.wav'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/m6

/obj/item/weapon/gun/pistol/handgonne
	name = "Handgonne"
	desc = "A very rare sidearm made for some kind of big game hunting. Rebel cells often equip themselves with these to take out large targets."
	icon_state = "handgonne"
	item_state = "handgonne"
	fire_sound = 'sound/halo/MagnumShotSoundEffect.ogg'
	reload_sound = 'sound/halo/MagnumReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/pistol/handgonne
