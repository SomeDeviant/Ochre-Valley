/datum/preferences/ui_data_character_creator_identity(mob/user)
	var/list/data = ..()

	data += list(
		"badge_gng" = badge_gng,
		"badge_vore" = badge_vore,
		"badge_willing" = badge_willing,
		"badge_sexuality" = badge_sexuality,
		"badge_erp" = badge_erp,
		"badge_lean" = badge_lean,
		"badge_type" = badge_type,
	)
	return data
