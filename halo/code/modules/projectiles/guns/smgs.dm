/obj/item/weapon/gun/smg
	fire_sound = 'sound/weapons/guns/fire/m39.ogg'
	unload_sound = 'sound/weapons/guns/interact/smg_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/smg_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/smg_cocked.ogg'
	type_of_casings = "bullet"
	muzzleflash_iconstate = "muzzle_flash_light"
	load_method = MAGAZINE //codex
	force = 8
	w_class = WEIGHT_CLASS_BULKY
	movement_acc_penalty_mult = 3
	wield_delay = 0.4 SECONDS
	attachable_allowed = list(
						/obj/item/attachable/suppressor,
						/obj/item/attachable/reddot,
						/obj/item/attachable/flashlight,
						/obj/item/attachable/magnetic_harness)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_LOAD_INTO_CHAMBER|GUN_AMMO_COUNTER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)
	gun_skill_category = GUN_SKILL_SMGS

	fire_delay = 0.3 SECONDS
	burst_amount = 3
	recoil_unwielded = 0.5


/obj/item/weapon/gun/smg/unique_action(mob/user)
	return cock(user)

/obj/item/weapon/gun/smg/get_ammo_type()
	if(!ammo)
		return list("unknown", "unknown")
	else
		return list(ammo.hud_state, ammo.hud_state_empty)

/obj/item/weapon/gun/smg/get_ammo_count()
	if(!current_mag)
		return in_chamber ? 1 : 0
	else
		return in_chamber ? (current_mag.current_rounds + 1) : current_mag.current_rounds

//Halo//

/obj/item/weapon/gun/smg/m7
	name = "M7 Submachine Gun"
	desc = "A personal defense weapon used extensively by UNSC security forces in close quarters areas."
	fire_sound = 'sound/halo/SMG_Mini_Burst_Sound_Effect.ogg'
	unload_sound = 'sound/halo/SMG_Reload_New.wav'
	reload_sound = 'sound/halo/SMG_Reload_New.wav'
	icon_state = "m7"
	item_state = "m7"
	fire_delay = 0.1 SECONDS
	flags_equip_slot = ITEM_SLOT_BACK | ITEM_SLOT_BELT
	current_mag = /obj/item/ammo_magazine/smg/m7
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)

/obj/item/weapon/gun/smg/m7/m7s
	name = "M7S Submachine Gun"
	desc = "The signature weapon of UNSC Special Forces, features in inbuilt suppressor and improved weapon ergonomics."
	fire_sound = 'sound/halo/SMG_SOCOM_Fire.wav'
	unload_sound = 'sound/halo/SMG_Reload_New.wav'
	reload_sound = 'sound/halo/SMG_Reload_New.wav'
	icon_state = "m7s"
	item_state = "m7s"
	fire_delay = 0.1 SECONDS
	flags_equip_slot = ITEM_SLOT_BACK | ITEM_SLOT_BELT
	current_mag = /obj/item/ammo_magazine/smg/m7
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	accuracy_mult = 2
