/datum/job/command/senior
	title = JOB_DI
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT|ROLE_ADMIN_NOTIFY|ROLE_WHITELISTED
	flags_whitelist = WHITELIST_MENTOR
	gear_preset = /datum/equipment_preset/uscm_ship/di

	job_options = list("Gunnery Sergeant" = "GySGT", "Master Sergeant" = "MSgt", "First Sergeant" = "1Sgt", "Master Gunnery Sergeant" = "MGySgt", "Sergeant Major" = "SgtMaj")

/datum/job/command/senior/on_config_load()
	entry_message_body = "<a href='"+WIKI_PLACEHOLDER+"'>You are</a> held to a higher standard and are required to obey not only the Server Rules but <a href='"+LAW_PLACEHOLDER+"'>Marine Law</a> and <a href='[CONFIG_GET(string/wikiarticleurl)]/[URL_WIKI_SOP]'>Standard Operating Procedure</a>. Failure to do so may result in your Mentorship Removal. Your primary job is to teach others the game and its mechanics, and offer advice to all USCM Departments and Personnel on-board."
	return ..()

/datum/job/command/senior/announce_entry_message(mob/living/carbon/human/H)
	addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(all_hands_on_deck), "Attention all hands, [H.get_paygrade(0)] [H.real_name] on deck!"), 1.5 SECONDS)
	return ..()

/datum/job/command/senior/filter_job_option(mob/job_applicant)
	. = ..()

	var/list/filtered_job_options = list(job_options[1])

	if(job_applicant?.client?.prefs)
		if(get_job_playtime(job_applicant.client, JOB_DI) >= JOB_PLAYTIME_TIER_1)
			filtered_job_options += list(job_options[2]) + list(job_options[3])
		if(get_job_playtime(job_applicant.client, JOB_DI) >= JOB_PLAYTIME_TIER_3)
			filtered_job_options += list(job_options[4]) + list(job_options[5])

	return filtered_job_options

/obj/effect/landmark/start/senior
	name = JOB_DI
	icon_state = "sea_spawn"
	job = /datum/job/command/senior

/datum/job/command/upp_adjutant
	title = JOB_UPP_ADJUTANT
	total_positions = 1
	spawn_positions = 1
	prime_priority = TRUE
	supervisors = "the State Adjutant's Office"
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT|ROLE_ADD_TO_SQUAD
	gear_preset = /datum/equipment_preset/uscm/upp_adjutant
	gear_preset_secondary = /datum/equipment_preset/upp/adjutant
	entry_message_body = "<a href='"+WIKI_PLACEHOLDER+"'> \
	A State Adjutant is a specialized advisory and morale support role assigned to larger UPP military formations, \
	present in all major branches of the armed forces. They are a volunteer-only position which is primarily concerned \
	with providing advice, ideological direction and various support duties such as mental-health counselling, discussing \
	ideological issues with troops and providing support with communications back home or to higher offices outside of their \
	immediate chain of command without fear of reprisal. \
	<br><b>You remember that you've stored your personal gear and uniform are located in the dorm or locker rooms.</b>"

/obj/effect/landmark/start/upp_adjutant
	name = JOB_UPP_ADJUTANT
	icon_state = "sea_spawn"
	job = /datum/job/command/upp_adjutant
