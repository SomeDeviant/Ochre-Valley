/datum/preferences/ui_act_character_creator_identity(action, list/params, datum/tgui/ui, datum/ui_state/state)
	.=..()
	if(.)
		return
	var/mob/user = ui.user

	switch(action)
		if("choose_grab_and_gulp")
			var/new_choice = tgui_input_list(user, "Do you want players to be able to grab you for scenes with minimal RP build up?","Grab and Gulp",list("No","Yes"))
			if(!new_choice)
				return CHARACTER_ACT_DATA_UPDATE
			badge_gng = new_choice
			return CHARACTER_ACT_DATA_UPDATE

		if("choose_vore_pref")
			var/new_choice = tgui_input_list(user, "What are your preferences in vore for allowing digestion, absorption and endo scenes?","Digest/Absorb/Endo",list("Unset","Endo","Absorption","Digestion","Endo and Absorption","Endo and Digestion","Absorption and Digestion","All"))
			if(!new_choice)
				return CHARACTER_ACT_DATA_UPDATE
			badge_vore = new_choice
			return CHARACTER_ACT_DATA_UPDATE

		if("choose_willingness")
			var/new_choice = tgui_input_list(user, "What levels of willingness are you comfortable with in your scenes?","Willingness",list("Unset","Willing","Dubcon","Unwilling","Willing and Dubcon","Willing and Unwilling","Dubcon and Unwilling","All"))
			if(!new_choice)
				return CHARACTER_ACT_DATA_UPDATE
			badge_willing = new_choice
			return CHARACTER_ACT_DATA_UPDATE

		if("choose_sexuality")
			var/new_choice = tgui_input_list(user, "When it comes to looking for scenes, how would you describe your sexuality in regards to partners you are interested in?","Scene Partner Pref",list("Unset","Straight","Gay","Lesbian","Bisexual","Pansexual","Asexual","Demisexual"))
			if(!new_choice)
				return CHARACTER_ACT_DATA_UPDATE
			badge_sexuality = new_choice
			return CHARACTER_ACT_DATA_UPDATE

		if("choose_erp_pref")
			var/new_choice = tgui_input_list(user, "Are you looking for scenes other than vore, involving other sorts of erotic RP?","Allow ERP",list("No","Yes"))
			if(!new_choice)
				return CHARACTER_ACT_DATA_UPDATE
			badge_erp = new_choice
			return CHARACTER_ACT_DATA_UPDATE

		if("choose_vore_lean")
			var/new_choice = tgui_input_list(user, "How would you describe your character in terms of vore?","Pred/Prey lean",list("Unset","Pred Only","Pred-leaning","Switch","Prey-leaning","Prey Only"))
			if(!new_choice)
				return CHARACTER_ACT_DATA_UPDATE
			badge_lean = new_choice
			return CHARACTER_ACT_DATA_UPDATE

		if("choose_vore_type")
			var/new_choice = tgui_input_list(user, "Which methods of vore do you enjoy? OV is Oral Vore, AV is Anal Vore, CV is Cock Vore and UB in Unbirth. Other methods should be detailed in your OOC notes.","Vore Methods",list("Unset","OV","AV","CV","UB","OV and AV","OV and CV","OV and UB","AV and CV","AV and UB","CV and UB","OV, AV and CV","OV, AV and UB","OV, CV and UB","AV, CV and UB","OV, AV, CV and UB"))
			if(!new_choice)
				return CHARACTER_ACT_DATA_UPDATE
			badge_type = new_choice
			return CHARACTER_ACT_DATA_UPDATE
