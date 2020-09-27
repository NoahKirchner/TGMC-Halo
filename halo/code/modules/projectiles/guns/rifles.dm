
//-------------------------------------------------------
//UNSC Weapons)
//-------------------------------------------------------

/obj/item/weapon/gun/rifle/ma37
	name = "MA37 ICWS"
	desc = "The MA37 Individual Combat Weapon System, formally known as the Individual Combat Weapon System, Caliber 7.62 mm MA37 and the MA5 by the UNSC Marines and Navy, is a standard issue service rifle of the UNSC."
	icon_state = "ma37"
	item_state = "ma37"
	fire_sound = "sound/halo/MA37_Fire_New.wav"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/halo/MA37_Reload_New.wav'
	reload_sound = 'sound/halo/MA37_Reload_New.wav'
	current_mag = /obj/item/ammo_magazine/rifle/ma37
	fire_delay = 0.2 SECONDS
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)

/obj/item/weapon/gun/rifle/ma5b
	name = "MA5B ICWS"
	desc = "An update of the MA37, this assault rifle features a 60 round magazine and other improvements."
	icon_state = "ma5b"
	item_state = "ma5b"
	fire_sound = "sound/halo/Assault_Rifle_Fire_New.wav"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/halo/Assault_Rifle_Reload_New.wav'
	reload_sound = 'sound/halo/Assault_Rifle_Reload_New.wav'
	current_mag = /obj/item/ammo_magazine/rifle/ma5b
	fire_delay = 0.2 SECONDS
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)

/obj/item/weapon/gun/rifle/m392
	name = "M392 Designated Marksman Rifle"
	desc = "A high accuracy marksman rifle used extensively by the UNSC in medium to long range engagements."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "m392"
	item_state = "m392"
	fire_sound = "sound/halo/dmr_fire_new.wav"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/halo/dmr_reload_new.wav'
	fire_delay = 0.2 SECONDS
	reload_sound = 'sound/halo/dmr_reload_new.wav'
	current_mag = /obj/item/ammo_magazine/rifle/m392
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO)
	attachable_allowed = list(/obj/item/attachable/scope/unremovable/m392,/obj/item/attachable/unremovable/m392barrel)
	starting_attachment_types = list(/obj/item/attachable/scope/unremovable/m392,/obj/item/attachable/unremovable/m392barrel)

/obj/item/weapon/gun/rifle/br55
	name = "BR55 Service Rifle"
	desc = "An experimental combat rifle on Reach, this gun fires 3 round bursts of 9.5x40mm bullets. The early versions suffered from recoil issues, but packed a large punch."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "br55"
	item_state = "br55"
	fire_sound = 'sound/halo/Battle_Rifle_Fire_New.wav'
	burst_delay = 0.1 SECONDS
	fire_delay = 0.3 SECONDS
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/halo/Battle_Rifle_Reload_New.wav'
	reload_sound = 'sound/halo/Battle_Rifle_Reload_New.wav'
	current_mag = /obj/item/ammo_magazine/rifle/br55
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE)
	attachable_allowed = list(/obj/item/attachable/scope/unremovable/br55)
	starting_attachment_types = list(/obj/item/attachable/scope/unremovable/br55)

/obj/item/weapon/gun/rifle/srs99
	name = "SRS99-AM Sniper Rifle"
	desc = "initially an anti-materiel rifle, the SRS99 would transition to an anti-personel rifle as the Human-Covenant war carried on."
	icon_state = "srs99"
	item_state = "srs99"
	fire_sound = 'sound/halo/SniperShotSoundEffect.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/halo/SniperRifleReloadSoundEffect.ogg'
	reload_sound = 'sound/halo/SniperRifleReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/srs99
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO)
	attachable_allowed = list(/obj/item/attachable/scope/unremovable/srs99)
	starting_attachment_types = list(/obj/item/attachable/scope/unremovable/srs99)

/obj/item/weapon/gun/rifle/m739
	name = "M739 Squad Automatic Weapon"
	desc = "A high capacity light machine gun used in UNSC Marine and Army weapons squads. Suffers from some accuracy issues if fired while not deployed."
	icon_state = "m739"
	item_state = "m739"
	fire_sound = 'sound/halo/Assault_Rifle_Fire_New.wav'
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/halo/UNSC_Saw_Reload_Sound_Effect.ogg'
	reload_sound = 'sound/halo/UNSC_Saw_Reload_Sound_Effect.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/m739
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)

//-------------------------------------------------------
//Innsurectionist Weapons
//-------------------------------------------------------

/obj/item/weapon/gun/rifle/ma3
	name = "MA3 Assault Rifle"
	desc = "The old service rifle on the UNSC, eventually phased out in favor of the MA37. Now used widely by police and insurrectionst forces."
	icon_state = "ma3"
	item_state = "ma3"
	fire_sound = "sound/halo/MA3firefix.ogg"
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/t18_unload.ogg'
	reload_sound = 'sound/halo/MA3reload.ogg'
	force = 15
	fire_delay = 0.2 SECONDS
	current_mag = /obj/item/ammo_magazine/rifle/ma3
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)

	//.30 Caliber LMG
/obj/item/weapon/gun/rifle/lmg30cal
	name = "30 Caliber Light Machine Gun"
	desc = "todo"
	icon_state = "30cal"
	item_state = "30cal"
	fire_sound =  'sound/halo/Innie30calfirefix.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/halo/Innie30calreload.ogg'
	reload_sound = 'sound/halo/Innie30calreload.ogg'
	force = 15
	current_mag = /obj/item/ammo_magazine/rifle/lmg30cal
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER|GUN_WIELDED_FIRING_ONLY
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)

    //KV-32 Automatic Shotgun
/obj/item/weapon/gun/rifle/kv32
	name = "KV-32 automatic shotgun"
	desc = "An old and experimental model of shotgun that has seen use in the hands of rebels and insurrectionist commandos."
	icon_state = "kv32"
	item_state = "kv32"
	fire_sound = 'sound/halo/Shotgun_Shot_Sound_Effect.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/t18_unload.ogg'
	reload_sound = 'sound/halo/Shotgun_Pump_Slide.ogg'
	force = 15
	current_mag = /obj/item/ammo_magazine/rifle/kv32
	fire_delay = 0.5 SECONDS
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO)

/obj/item/weapon/gun/rifle/ssrs
	name = "SSRS Modified Subsonic Sniper Rifle System"
	desc = "The SSRS is a modified SRS pattern sniper rifle. It uses 12.7x55 subsonic rounds. "
	icon_state = "mercsniper"
	item_state = "mercsniper"
	fire_sound = 'sound/halo/Magnum_SOCOM_Fire.wav' //placeholder, probably
	dry_fire_sound = 'sound/weapons/guns/fire/m41a_empty.ogg'
	unload_sound = 'sound/halo/SniperRifleReloadSoundEffect.ogg'
	reload_sound = 'sound/halo/SniperRifleReloadSoundEffect.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/ssrs
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_LOAD_INTO_CHAMBER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO)
	attachable_allowed = list(/obj/item/attachable/scope/unremovable/srs99)
	starting_attachment_types = list(/obj/item/attachable/scope/unremovable/srs99)
