
//Halo//

	//SPNKR

/obj/item/weapon/gun/launcher/rocket/m41spnkr
	name = "M41 SPNKR"
	desc = "todo"
	icon_state = "m41spnkr"
	item_state = "m41spnkr"
	max_shells = 2 //codex
	current_mag = /obj/item/ammo_magazine/m41spnkr
	aim_slowdown = 2.75
	attachable_allowed = list()
	flags_gun_features = GUN_WIELDED_FIRING_ONLY|GUN_AMMO_COUNTER
	fire_sound = 'sound/halo/Rocket_Launcher_Fire_New.wav'
	reload_sound = 'sound/halo/RocketLauncherReloadSoundEffect.ogg'
	unload_sound = 'sound/halo/RocketLauncherReloadSoundEffect.ogg'
	fire_delay = 0.6 SECONDS
	burst_delay = 0.4 SECONDS
	burst_amount = 4
	accuracy_mult = 0.8


	//M26 Bottle Rocket
/obj/item/weapon/gun/launcher/rocket/acl55
	name = "ACL-55'Bottle Rocket'"
	desc = "The Adaptive Combat Launcher or ACL-55 is a new surface to surface rocket launcher model for anti armor and anti infantry purposes desgined by insurrectionist engineers. Takes M-26 series tubes."
	icon_state = "acl55"
	item_state = "acl55"
	current_mag = /obj/item/ammo_magazine/rocket/m26
	w_class = WEIGHT_CLASS_HUGE
	flags_gun_features = GUN_WIELDED_FIRING_ONLY|GUN_AMMO_COUNTER
	fire_sound = 'sound/halo/Rocket_Launcher_Fire_New.wav'
	reload_sound = 'sound/halo/RocketLauncherReloadSoundEffect.ogg'
	unload_sound = 'sound/halo/RocketLauncherReloadSoundEffect.ogg'
