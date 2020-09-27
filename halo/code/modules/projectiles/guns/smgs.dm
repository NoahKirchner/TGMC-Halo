
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
