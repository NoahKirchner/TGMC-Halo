//Halo

//Rifles
/datum/ammo/bullet/ma37       //for use in ma3, ma5b, and ma37
	name = "M118 7.62x51"
	hud_state = "rifle"
	hud_state_empty = "rifle_empty"
	flags_ammo_behavior = AMMO_BALLISTIC
	damage = 30 //on automatic this is a 2.5s ttk assuming all bullets hit point blank
	accurate_range = 12 //just out of sight
	damage_falloff = 1 // lowers ttk at range

/datum/ammo/bullet/ma37/ap  //dmr
	name = "M118 7.62x51 FMJ AP"
	damage = 20 //lower than ma5b for additional armor pen + better range + no dmg falloff
	accurate_range = "18" //~2x view range
	penetration = 10
	damage_falloff = 0 //its a long range weapon, no dmg falloff

/datum/ammo/bullet/br
	name = "9.5x40mm M634 Experimental HP SAP"
	hud_state = "rifle"
	hud_state_empty = "rifle_empty"
	flags_ammo_behavior = AMMO_BALLISTIC
	damage = 35 //bigger bullet than 7.62
	accurate_range = 15 //less than dmr, more than ar
	damage_falloff = 1 // lowers ttk at range longer range
	accuracy_var_low = 7 // big as fuck bullets, hard to control
	accuracy_var_high = 7




//SMG

/datum/ammo/bullet/halosmg //smgs foe today???
	name = "5x23mm M443 Caseless Full Metal Jacket"
	damage = 15 // technically a 2s ttk at pb, but will have dmg falloff & worse accuracy at range, truly a short range weapon
	hud_state = "smg"
	hud_state_empty = "smg_empty"
	flags_ammo_behavior = AMMO_BALLISTIC
	accuracy_var_low = 6 //makes it less accurate
	accuracy_var_high = 6
	accurate_range = 8 //pretty much viewing range
	damage_falloff = 0.5 //not sure if this should be 1 or .5 but fuck it

//Pistol

/datum/ammo/bullet/magnum
	name = "12.7 12.7x40mm M225 SAP HE"
	damage = 50
	flags_ammo_behavior = AMMO_BALLISTIC
	hud_state = "pistol_heavy"
	hud_state_empty = "pistol_empty"
	accurate_range = 6 // intentionally not accurace at long range
	damage_falloff = 2 // not for use at long range, its not a sniper

/datum/ammo/bullet/magnum/socom
	name = "12.7x40mm M225 SAP HP" // for use in m6s
	damage = 40
	penetration = 10
	accurate_range = 10
	damage_falloff = 1

/datum/ammo/bullet/Handgonne
	name = "14.5x40mm Experimental AP"
	damage = 50 // more damage because its 1 shot lol
	flags_ammo_behavior = AMMO_BALLISTIC
	hud_state = "pistol_heavy"
	hud_state_empty = "pistol_empty"
	accurate_range = 6 // intentionally not accurace at long range
	damage_falloff = 4 // not for use at long range, its not a sniper

/datum/ammo/bullet/Handgonne/on_hit_mob(mob/M, obj/projectile/P) //handgonne knockback
		staggerstun(M, P, weaken = 1, stagger = 1, knockback = 2, slowdown = 0.5, max_range = 6)




//Shotguns
/datum/ammo/bullet/shotgun/buckshot/halo
	name = "8 Gauge 000 Buckshot"
	icon_state = "buckshot"
	hud_state = "shotgun_buckshot"
	flags_ammo_behavior = AMMO_BALLISTIC
	bonus_projectiles_type = /datum/ammo/bullet/shotgun/spread
	bonus_projectiles_amount = 5
	bonus_projectiles_scatter = 10
	accuracy_var_low = 9
	accuracy_var_high = 9
	accurate_range = 3
	max_range = 10
	damage = 40
	damage_falloff = 4
	penetration = 0

/datum/ammo/bullet/shotgun/slug/halo
	name = "8 Gauge Sabot Slug"
	hud_state = "shotgun_slug"
	flags_ammo_behavior = AMMO_BALLISTIC
	shell_speed = 3
	max_range = 15
	damage = 65
	penetration = 40
	damage_falloff = 3

/datum/ammo/bullet/shotgun/buckshot/kv32
	name = "16 Gauge Experimental Buckshot"
	icon_state = "buckshot"
	hud_state = "shotgun_buckshot"
	flags_ammo_behavior = AMMO_BALLISTIC
	bonus_projectiles_type = /datum/ammo/bullet/shotgun/spread/halo
	bonus_projectiles_amount = 4
	bonus_projectiles_scatter = 10
	accuracy_var_low = 9
	accuracy_var_high = 9
	accurate_range = 5
	max_range = 10
	damage = 25
	damage_falloff = 3
	penetration = 0

//special kv32 spread
/datum/ammo/bullet/shotgun/spread/halo
	name = "additional buckshot"
	icon_state = "buckshot"
	shell_speed = 2
	accuracy_var_low = 9
	accuracy_var_high = 9
	accurate_range = 3
	max_range = 10
	damage = 20
	damage_falloff = 4
	penetration = 0
//Plasma

//Special

/datum/ammo/rocket/m41spnkr
	name = "M41 SPNKR Rocket"
	hud_state = "rocket_he"

/datum/ammo/rocket/m26
	name = "M26 high explosive rocket"
	icon_state = "m26_exp"
	hud_state = "rocket_he"
	hud_state_empty = "rocket_empty"
	ping = null //no bounce off.
	sound_bounce	= "rocket_bounce"
	flags_ammo_behavior = AMMO_EXPLOSIVE|AMMO_ROCKET|AMMO_SUNDERING
	armor_type = "bomb"
	damage_falloff = 0
	shell_speed = 2
	accuracy = 40
	accurate_range = 20
	max_range = 30
	damage = 200
	penetration = 100
	sundering = 100

/datum/ammo/rocket/m26/incendiary
	name = "M26 incendiary rocket"
	icon_state = "m26_inc"
	hud_state = "rocket_fire"
	flags_ammo_behavior = AMMO_ROCKET|AMMO_INCENDIARY|AMMO_EXPLOSIVE|AMMO_SUNDERING
	armor_type = "fire"
	damage_type = BURN
	accuracy_var_low = 7
	accurate_range = 15
	damage = 200
	penetration = 75
	max_range = 20
	sundering = 100
