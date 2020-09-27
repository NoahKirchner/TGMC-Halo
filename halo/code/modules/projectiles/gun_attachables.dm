//Halo Scopes//

/obj/item/attachable/scope/unremovable/m392
	name = "M392 scope"
	icon_state = "m392scope"
	attach_icon = "none"
	desc = "A rail mounted zoom sight scope specialized for the M392 Designated Marksman Rifle. Allows zoom by activating the attachment. Use F12 if your HUD doesn't come back."
	flags_attach_features = ATTACH_ACTIVATION

/obj/item/attachable/scope/unremovable/br55
	name = "BR55 scope"
	icon_state = "br55scope_a"
	attach_icon = "none"
	desc = "A rail mounted zoom sight scope specialized for the BR55 Service Rifle. Allows zoom by activating the attachment. Use F12 if your HUD doesn't come back."
	flags_attach_features = ATTACH_ACTIVATION

obj/item/attachable/scope/unremovable/srs99
	name = "SRS99 scope"
	icon_state = "srs99scope_a"
	attach_icon = "none"
	desc = "A rail mounted zoom sight scope specialized for the SRS99 Sniper Rifle. Allows zoom by activating the attachment. Use F12 if your HUD doesn't come back."
	flags_attach_features = ATTACH_ACTIVATION


/obj/item/attachable/scope/activate_attachment(mob/living/carbon/user, turn_off)
	if(turn_off)
		if(master_gun.zoom)
			master_gun.zoom(user, zoom_offset, zoom_viewsize)
		return TRUE

	if(!master_gun.zoom && !(master_gun.flags_item & WIELDED))
		if(user)
			to_chat(user, "<span class='warning'>You must hold [master_gun] with two hands to use [src].</span>")
		return FALSE
	else
		master_gun.zoom(user, zoom_offset, zoom_viewsize)
	return TRUE


/obj/item/attachable/scope/mini
	name = "mini rail scope"
	icon_state = "miniscope"
	attach_icon = "miniscope_a"
	desc = "A small rail mounted zoom sight scope. Allows zoom by activating the attachment. Use F12 if your HUD doesn't come back."
	slot = "rail"
	wield_delay_mod = 0.2 SECONDS
	accuracy_mod = 0.05
	accuracy_unwielded_mod = -0.05
	aim_speed_mod = 0.04 SECONDS
	zoom_offset = 5
	zoom_viewsize = 7
	zoom_accuracy = SCOPE_RAIL_MINI
	scope_zoom_mod = TRUE

/obj/item/attachable/scope/mini/m4ra
	name = "T-45 rail scope"
	aim_speed_mod = 0
	attach_icon = "none"
	desc = "A rail mounted zoom sight scope specialized for the T-45 Battle Rifle . Allows zoom by activating the attachment. Use F12 if your HUD doesn't come back."
	flags_attach_features = ATTACH_ACTIVATION

/obj/item/attachable/scope/m42a
	name = "m42a rail scope"
	attach_icon = "none"
	desc = "A rail mounted zoom sight scope specialized for the M42A Sniper Rifle . Allows zoom by activating the attachment. Can activate its targeting laser while zoomed to take aim for increased damage and penetration. Use F12 if your HUD doesn't come back."
	zoom_accuracy = SCOPE_RAIL_SNIPER
	flags_attach_features = ATTACH_ACTIVATION

/obj/item/attachable/scope/slavic
	icon_state = "slavicscope"
	attach_icon = "slavicscope"

/obj/item/attachable/scope/pmc
	icon_state = "pmcscope"
	attach_icon = "pmcscope"
	flags_attach_features = ATTACH_ACTIVATION

/obj/item/attachable/scope/mini/dmr
	name = "T-37 mini rail scope"
	icon_state = "t37"
	attach_icon = "t37_a"

