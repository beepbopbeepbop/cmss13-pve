/datum/faction/canc
	name = "Chinese/Asian Nation Cooperative"
	faction_tag = FACTION_CANC

/datum/faction/canc/modify_hud_holder(image/holder, mob/living/carbon/human/H)
	var/hud_icon_state
	var/obj/item/card/id/ID = H.get_idcard()
	var/_role
	if(H.mind)
		_role = H.job
	else if(ID)
		_role = ID.rank
	switch(_role)
		if(JOB_CANC_MEDIC)
			hud_icon_state = "med"
		if(JOB_CANC_ENGI)
			hud_icon_state = "sapper"
		if(JOB_CANC_MACHINEGUNNER)
			hud_icon_state = "spec"
		if(JOB_CANC_SPECIALIST)
			hud_icon_state = "spec"
		if(JOB_CANC_TEAM_LEADER)
			hud_icon_state = "sl"
		if(JOB_CANC_PLATOON_LEADER)
			hud_icon_state = "lt"
		if(JOB_CANC_COMPANY_LEADER)
			hud_icon_state = "slt"
		if(JOB_CANC_BATTALION_LEADER)
			hud_icon_state = "xo"
		if(JOB_CANC_BRIGADE_LEADER)
			hud_icon_state = "co"
		if(JOB_CANC_CORPS_LEADER)
			hud_icon_state = "co"
		if(JOB_CANC_SYNTH_SUPPORT)
			hud_icon_state = "synth"
		if(JOB_CANC_SYNTH_COMBAT)
			hud_icon_state = "synth"
		if(JOB_CANC_VEHICLE_CREW)
			hud_icon_state = "vc"
		if(JOB_CANC_VEHICLE_LEADER)
			hud_icon_state = "vc"
		if(JOB_CANC_SUPPORT_MEDIC)
			hud_icon_state = "doc"
		if(JOB_CANC_SUPPORT_LOGI)
			hud_icon_state = "log"
	if(hud_icon_state)
		holder.overlays += image('icons/mob/hud/marine_hud.dmi', H, "upp_[hud_icon_state]")

// CANC PVE Section
	var/datum/squad/squad = H.assigned_squad
	if(istype(squad, /datum/squad/marine/canc))
		var/squad_clr = H.assigned_squad.equipment_color
		switch(GET_DEFAULT_ROLE(_role))
			if(JOB_CANC_MEDIC) hud_icon_state = "med"
			if(JOB_CANC_MACHINEGUNNER) hud_icon_state = "gun"
			if(JOB_CANC_SPECIALIST) hud_icon_state = "gun"
			if(JOB_CANC_TEAM_LEADER) hud_icon_state = "tl"
			if(JOB_CANC_SECTION_LEADER) hud_icon_state = "leader_a"
		if(squad.fireteam_leaders["SQ1"] == H || squad.fireteam_leaders["SQ2"] == H)
			H.langchat_styles = "langchat_smaller_bolded"
		else
			H.langchat_styles = initial(H.langchat_styles)
		H.langchat_color = H.assigned_squad.chat_color

		if(!hud_icon_state) hud_icon_state = H.rank_fallback
		if(hud_icon_state)
			var/image/IMG = image('icons/mob/hud/marine_hud.dmi', H, "hudsquad")
			if(squad_clr)
				IMG.color = squad_clr
			else
				IMG.color = "#5A934A"
			holder.overlays += IMG
			holder.overlays += image('icons/mob/hud/marine_hud.dmi', H, "hudsquad_[hud_icon_state]")
		if(H.assigned_squad && H.assigned_fireteam)
			var/image/IMG2 = image('icons/mob/hud/marine_hud.dmi', H, "hudsquad_[H.assigned_fireteam]")
			IMG2.color = squad_clr
			holder.overlays += IMG2
			if(H.assigned_squad.fireteam_leaders[H.assigned_fireteam] == H)
				var/image/IMG3 = image('icons/mob/hud/marine_hud.dmi', H, "hudsquad_ftl")
				IMG3.color = squad_clr
				holder.overlays += IMG3
