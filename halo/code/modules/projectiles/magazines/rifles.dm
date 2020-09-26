
//-------------------------------------------------------
//UNSC Ammo
//-------------------------------------------------------

/obj/item/ammo_magazine/rifle/ma37
	name = "MA37 ICWS Magazine"
	desc = "A 7.62x51mm magazine for use in the MA37 ICWS"
	caliber = "7.62x51mm"
	icon_state = "ma37"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo = /datum/ammo/bullet/ma37
	max_rounds = 32
	gun_type = /obj/item/weapon/gun/rifle/ma37

/obj/item/ammo_magazine/rifle/ma5b
	name = "MA5B ICWS Magazine"
	desc = "A 7.62x51mm magazine for use in the MA5B ICWS"
	caliber = "7.62x51mm"
	icon_state = "ma5b"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo = /datum/ammo/bullet/ma37
	max_rounds = 60
	gun_type = /obj/item/weapon/gun/rifle/ma5b

/obj/item/ammo_magazine/rifle/m392
	name = "M392 7.62mm FMJ AP Magazine"
	desc = "A 7.62x51mm magazine for use in the M392 Designated Marksman Rifle"
	caliber = "7.62x51mm"
	icon_state = "m392"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo = /datum/ammo/bullet/ma37/ap
	max_rounds = 15
	gun_type = /obj/item/weapon/gun/rifle/m392

/obj/item/ammo_magazine/rifle/br55
	name = "9.5mm BR55 HP-SX Magazine"
	desc = "A 9.5x40mm magazine for use in the BR55 Service Rifle"
	caliber = "9.5x40mm"
	icon_state = "br55"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo = /datum/ammo/bullet/br
	max_rounds = 36
	gun_type = /obj/item/weapon/gun/rifle/br55

obj/item/ammo_magazine/rifle/srs99
	name = "SRS99 14.5mm Magazine"
	desc = "A 14.5x114mm magazine for use in the SRS99 Sniper Rifle"
	caliber = "14.5x144m"
	icon_state = "srs99"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo = /datum/ammo/bullet/rifle
	max_rounds = 4
	gun_type = /obj/item/weapon/gun/rifle/srs99

obj/item/ammo_magazine/rifle/m739
	name = "M739 SAW Drum Magazine"
	desc = "A 7.62mm drum magazine for use in the M739 SAW"
	caliber = "7.62x51mm"
	icon_state = "m739"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo = /datum/ammo/bullet/rifle
	max_rounds = 72
	gun_type = /obj/item/weapon/gun/rifle/m739


//-------------------------------------------------------
//Insurrectionist Ammo
//-------------------------------------------------------

/obj/item/ammo_magazine/rifle/ma3
	name = "MA3 7.62mm Magazine"
	desc = "A 7.62x51mm magazine for use in the MA3 Assault Rifle."
	caliber = "7.62x51mm"
	icon_state = "ma3"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo = /datum/ammo/bullet/ma37
	max_rounds = 40
	gun_type = /obj/item/weapon/gun/rifle/ma3

/obj/item/ammo_magazine/rifle/lmg30cal
	name = ".30 Caliber Box Magazine"
	desc = "A .30 Caliber box magazine for use in .30 caliber light machine guns"
	caliber = "7.82mm"
	icon_state = "30cal"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo = /datum/ammo/bullet/rifle
	max_rounds = 150
	gun_type = /obj/item/weapon/gun/rifle/lmg30cal

/obj/item/ammo_magazine/rifle/kv32
	name = "16 Gauge Experimental Shotgun Magazine"
	desc = "A magazine containing 4 16 gauge shells for use in the KV-32 automatic shotgun"
	caliber = "16 gauge"
	icon_state = "kv32"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo = /datum/ammo/bullet/shotgun/buckshot/kv32
	max_rounds = 4
	gun_type = /obj/item/weapon/gun/rifle/kv32

/obj/item/ammo_magazine/rifle/ssrs
	name = "Subsonic Sniper Rifle System Magazine"
	desc = "A 12.7x55mm magazine containing subsonic cartridges."
	caliber = "12.7x55mm"
	icon_state = "mercsniper"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo = /datum/ammo/bullet/rifle
	max_rounds = 5
	gun_type = /obj/item/weapon/gun/rifle/ssrs
