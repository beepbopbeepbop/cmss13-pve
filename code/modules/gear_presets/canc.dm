/datum/equipment_preset/canc
	languages = list(LANGUAGE_CHINESE)
	ethnicity = CHINESE_ETHNICITY
	faction = FACTION_CANC
	faction_group = FACTION_LIST_CANC
	origin_override = ORIGIN_CANC
	idtype = /obj/item/card/id/dogtag

///
/// CANC Infantry
///
/datum/equipment_preset/canc/rifleman
	name = "CANC Orbital Army Rifleman (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = JOB_CANC_RIFLEMAN
	role_comm_title = "RFN"
	rank = JOB_SQUAD_MARINE
	paygrades = list(PAY_SHORT_CAE1 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE2 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_2)
	skills = /datum/skills/pfc
	access = list(ACCESS_CANC_GENERAL, ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_BRIG, ACCESS_CIVILIAN_COMMAND)

/datum/equipment_preset/canc/rifleman/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "undershirt"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/roller/bedroll(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/tool/kitchen/can_opener(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen(new_human), WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/canc(new_human), WEAR_L_EAR)
	var/random_neckwear_canc = rand(1,4)
	switch(random_neckwear_canc)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/neckerchief/red(new_human), WEAR_FACE)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf/tacticalmask/red(new_human), WEAR_FACE)
	//head
	var/random_headwear = rand(1, 6)
	switch(random_headwear)
		if(1 to 4)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/canc(new_human), WEAR_HEAD)
		if(5)
			var/random_hat = pick(/obj/item/clothing/head/uppcap/boonie/canc, /obj/item/clothing/head/cmcap/flap/canc, /obj/item/clothing/head/headband/red)
			new_human.equip_to_slot_or_del(new random_hat(new_human), WEAR_HEAD)
	//uniform
	add_canc_uniform(new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/smallpouch/upp, WEAR_ACCESSORY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/CANC(new_human), WEAR_JACKET)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/guard/canc(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/brown(new_human), WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/stack/medical/bruise_pack, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/flare/full(new_human), WEAR_R_STORE)
	if(prob(25))
		new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/l42a/abr40/canc/infantry(new_human), WEAR_J_STORE)
		new_human.equip_to_slot_or_del(new /obj/item/storage/belt/marine/upp, WEAR_WAIST)
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type40, WEAR_IN_BELT)
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/type40, WEAR_IN_BELT)
	else
		new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/smg/pps43/flashlight(new_human), WEAR_J_STORE)
		new_human.equip_to_slot_or_del(new /obj/item/storage/belt/marine/upp, WEAR_WAIST)
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/pps43, WEAR_IN_BELT)
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/pps43, WEAR_IN_BELT)
		new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/pps43, WEAR_IN_BELT)
	if(prob(30))
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/mgoggles/orange(new_human), WEAR_IN_HELMET)

/datum/equipment_preset/canc/machinegunner
	name = "CANC Orbital Army Machinegunner (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = JOB_CANC_MACHINEGUNNER
	role_comm_title = "MG"
	rank = JOB_SQUAD_SMARTGUN
	paygrades = list(PAY_SHORT_CAE2 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_2)
	skills = /datum/skills/smartgunner
	access = list(ACCESS_CANC_GENERAL, ACCESS_CANC_MACHINEGUN)

/datum/equipment_preset/canc/machinegunner/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "undershirt"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/roller/bedroll(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/tool/kitchen/can_opener(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen(new_human), WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/canc(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/canc_monoscope(new_human), WEAR_EYES)
	//head
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/canc(new_human), WEAR_HEAD)
	//uniform
	add_canc_uniform(new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/smallpouch/upp, WEAR_ACCESSORY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/smartgunner/upp/canc(new_human), WEAR_JACKET)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/guard/canc(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/brown(new_human), WEAR_HANDS)
	//pockets
	var/pouch_type = pick(/obj/item/storage/pouch/firstaid/full/alternate, /obj/item/storage/pouch/firstaid/full)
	new_human.equip_to_slot_or_del(new pouch_type(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/pistol/alt(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/pistol/t73, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/pkp/standard_fmj(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/general_belt/upp, WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp/standard_fmj, WEAR_IN_BELT)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pkp/standard_fmj, WEAR_IN_BELT)

/datum/equipment_preset/canc/at
	name = "CANC Orbital Army Specialist (Equipped, AT)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = JOB_CANC_SPECIALIST
	role_comm_title = "SPEC"
	rank = JOB_SQUAD_SPECIALIST
	paygrades = list(PAY_SHORT_CAE2 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_2)
	skills = /datum/skills/upp/specialist
	access = list(ACCESS_CANC_GENERAL)

/datum/equipment_preset/canc/at/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "undershirt"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/launcher/rocket/upp, WEAR_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/canc(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/canc_monoscope(new_human), WEAR_EYES)
	//head
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/canc(new_human), WEAR_HEAD)
	//uniform
	add_canc_uniform(new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/smallpouch/upp, WEAR_ACCESSORY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/CANC, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/general_belt/upp, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_J_STORE)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/guard/canc(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/brown(new_human), WEAR_HANDS)
	//pockets
	var/pouch_type = pick(/obj/item/storage/pouch/firstaid/full/alternate, /obj/item/storage/pouch/firstaid/full)
	new_human.equip_to_slot_or_del(new pouch_type(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/general_belt/upp, WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_BELT)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_BELT)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/upp/at, WEAR_IN_BELT)

/datum/equipment_preset/canc/marksman
	name = "CANC Orbital Army Specialist (Equipped, Marksman)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = JOB_CANC_SPECIALIST
	role_comm_title = "SPEC"
	rank = JOB_SQUAD_SPECIALIST
	paygrades = list(PAY_SHORT_CAE2 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_2)
	skills = /datum/skills/upp/specialist
	access = list(ACCESS_CANC_GENERAL)

/datum/equipment_preset/canc/marksman/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "undershirt"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/marine/smock(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/roller/bedroll(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/tool/kitchen/can_opener(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen(new_human), WEAR_IN_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/canc(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/canc_monoscope(new_human), WEAR_EYES)
	var/obj/item/facepaint/sniper/paint = new()
	paint.paint_face(new_human, new_human)
	qdel(paint)
	//head
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/canc(new_human), WEAR_HEAD)
	//uniform
	add_canc_uniform(new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/smallpouch/upp, WEAR_ACCESSORY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/CANC(new_human), WEAR_JACKET)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/guard/canc(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/brown(new_human), WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/type47/t73, WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/lw317/dmr(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/lw317/ap(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/lw317/ap(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/lw317/ap(new_human), WEAR_IN_R_STORE)

/datum/equipment_preset/canc/sapper
	name = "CANC Orbital Army Sapper (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = JOB_CANC_SAPPER
	role_comm_title = "SAP"
	rank = JOB_SQUAD_ENGI
	paygrades = list(PAY_SHORT_CAE2 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_2)
	skills = /datum/skills/upp/combat_engineer
	access = list(ACCESS_CANC_GENERAL, ACCESS_CANC_ENGINEERING)

/datum/equipment_preset/canc/medic
	name = "CANC Orbital Army Medic (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = JOB_CANC_MEDIC
	role_comm_title = "MED"
	rank = JOB_SQUAD_MEDIC
	paygrades = list(PAY_SHORT_CAE2 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_2)
	skills = /datum/skills/upp/combat_medic
	access = list(ACCESS_CANC_GENERAL, ACCESS_CANC_MEDICAL, ACCESS_CANC_MEDPREP)

/datum/equipment_preset/canc/medic/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "undershirt"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/marine/medic/upp, WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/softpack/adv/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/firstaid/softpack/adv/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/healthanalyzer/soul, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/roller, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen, WEAR_IN_BACK)
	//uniform
	add_canc_uniform(new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/droppouch/upp, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/device/healthanalyzer/soul, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/armband/med(new_human), WEAR_ACCESSORY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/CANC(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/smg/pps43/flashlight(new_human), WEAR_J_STORE)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/canc/medic, WEAR_L_EAR)
	if(new_human.disabilities & NEARSIGHTED)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/hud/health/prescription, WEAR_EYES)
	else
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/hud/health, WEAR_EYES)
	var/random_neckwear_canc = rand(1,4)
	switch(random_neckwear_canc)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/neckerchief/red(new_human), WEAR_FACE)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf/tacticalmask/red(new_human), WEAR_FACE)
	//head
	var/random_headwear = pick(/obj/item/clothing/head/helmet/marine/veteran/canc, /obj/item/clothing/head/cmcap/flap/canc)
	new_human.equip_to_slot_or_del(new random_headwear(new_human), WEAR_HEAD)
	//waist
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/medical/lifesaver/upp/full, WEAR_WAIST)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/guard/canc(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/brown(new_human), WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/pps43, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/pps43, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/pps43, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/medical, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/surgery/surgical_line, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/surgery/synthgraft, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/hypospray/autoinjector/adrenaline_concentrated, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/hypospray/tricordrazine, WEAR_IN_L_STORE)
	if(prob(30))
		new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/mgoggles/orange(new_human), WEAR_IN_HELMET)

/datum/equipment_preset/canc/team_leader
	name = "CANC Orbital Army Fireteam Leader (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = JOB_CANC_TEAM_LEADER
	role_comm_title = "FTL"
	rank = JOB_SQUAD_TEAM_LEADER
	paygrades = list(PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE5 = JOB_PLAYTIME_TIER_1)
	skills = /datum/skills/upp/SL
	access = list(ACCESS_CANC_GENERAL, ACCESS_CANC_SECURITY, ACCESS_CANC_TLPREP)

/datum/equipment_preset/canc/team_leader/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "undershirt"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/roller/bedroll(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/tool/kitchen/can_opener(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen(new_human), WEAR_IN_BACK)

	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/canc(new_human), WEAR_L_EAR)
	var/random_neckwear_canc = rand(1,4)
	switch(random_neckwear_canc)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/neckerchief/red(new_human), WEAR_FACE)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf/tacticalmask/red(new_human), WEAR_FACE)
	//head
	if(prob(25))
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/canc(new_human), WEAR_HEAD)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/cm/canc(new_human), WEAR_IN_BACK)
	else
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/cm/canc(new_human), WEAR_HEAD)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/canc(new_human), WEAR_IN_BACK)

	//uniform
	add_canc_uniform(new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/droppouch/upp, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/device/binoculars/range/designator/upp, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/map, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/tool/pen, WEAR_IN_ACCESSORY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/CANC(new_human), WEAR_JACKET)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/canc(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine(new_human), WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/flare/full(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/lw317(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/marine/upp, WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/lw317, WEAR_IN_BELT)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/lw317, WEAR_IN_BELT)

/datum/equipment_preset/canc/rto
	name = "CANC Orbital Army Radio/Telephone Operator (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE, LANGUAGE_ENGLISH)
	assignment = JOB_CANC_RADIO
	role_comm_title = "RTO"
	rank = JOB_CANC_RADIO
	paygrades = list(PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_1)
	skills = /datum/skills/upp/SL
	access = list(ACCESS_CANC_GENERAL, ACCESS_CANC_FLIGHT)

/datum/equipment_preset/canc/rto/load_gear(mob/living/carbon/human/new_human)
	new_human.undershirt = "undershirt"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/marine/satchel/rto/canc(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/roller/bedroll(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/tool/kitchen/can_opener(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/canteen(new_human), WEAR_IN_BACK)

	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/canc(new_human), WEAR_L_EAR)
	var/random_neckwear_canc = rand(1,4)
	switch(random_neckwear_canc)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/neckerchief/red(new_human), WEAR_FACE)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/rebreather/scarf/tacticalmask/red(new_human), WEAR_FACE)
	//head
	if(prob(25))
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/canc(new_human), WEAR_HEAD)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/cm/canc(new_human), WEAR_IN_BACK)
	else
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/cm/canc(new_human), WEAR_HEAD)
		new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/canc(new_human), WEAR_IN_BACK)

	//uniform
	add_canc_uniform(new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/droppouch/upp, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/device/binoculars/range/designator/upp, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/map, WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/tool/pen, WEAR_IN_ACCESSORY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/marine/faction/UPP/CANC(new_human), WEAR_JACKET)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/canc(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine(new_human), WEAR_HANDS)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/flare/full(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/lw317(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/marine/upp, WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/lw317, WEAR_IN_BELT)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/lw317, WEAR_IN_BELT)

/datum/equipment_preset/canc/section_leader
	name = "CANC Orbital Army Section Leader (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE, LANGUAGE_ENGLISH)
	assignment = JOB_CANC_SECTION_LEADER
	role_comm_title = "SL"
	rank = JOB_SQUAD_LEADER
	paygrades = list(PAY_SHORT_CAE6 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE7 = JOB_PLAYTIME_TIER_1)
	skills = /datum/skills/upp/officer
	access = list(
		ACCESS_CANC_GENERAL,
		ACCESS_CANC_ARMORY,
		ACCESS_CANC_ENGINEERING,
		ACCESS_CANC_FLIGHT,
		ACCESS_CANC_LEADERSHIP,
		ACCESS_CANC_MACHINEGUN,
		ACCESS_CANC_MEDICAL,
		ACCESS_CANC_MEDPREP,
		ACCESS_CANC_RESEARCH,
		ACCESS_CANC_SECURITY,
		ACCESS_CANC_TLPREP
	)
/// *

///
/// CANC Vehicle Crew
///
/datum/equipment_preset/canc/vehicle_crew
	name = "CANC Orbital Army Vehicle Crewman"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = JOB_CANC_VEHICLE_CREW
	role_comm_title = "VIC-CREW"
	rank = JOB_TANK_CREW
	paygrades = list(PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE5 = JOB_PLAYTIME_TIER_2)
	skills = /datum/skills/tank_crew
	access = list(ACCESS_CANC_GENERAL, ACCESS_CANC_ENGINEERING, ACCESS_CANC_FLIGHT)

/datum/equipment_preset/canc/vehicle_leader
	name = "CANC Orbital Army Vehicle Leader"
	flags = EQUIPMENT_PRESET_EXTRA
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE, LANGUAGE_ENGLISH)
	assignment = JOB_CANC_VEHICLE_LEADER
	role_comm_title = "VIC-LEAD"
	rank = JOB_SQUAD_LEADER
	paygrades = list(PAY_SHORT_CAE5 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE6 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE7 = JOB_PLAYTIME_TIER_2)
	skills = /datum/skills/tank_crew
	access = list(
		ACCESS_CANC_GENERAL,
		ACCESS_CANC_ARMORY,
		ACCESS_CANC_ENGINEERING,
		ACCESS_CANC_FLIGHT,
		ACCESS_CANC_LEADERSHIP,
		ACCESS_CANC_MACHINEGUN,
		ACCESS_CANC_MEDICAL,
		ACCESS_CANC_MEDPREP,
		ACCESS_CANC_RESEARCH,
		ACCESS_CANC_SECURITY,
		ACCESS_CANC_TLPREP
	)

/datum/equipment_preset/canc/pilot
	name = "CANC Orbital Army Aviation Pilot"
	flags = EQUIPMENT_PRESET_EXTRA
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE, LANGUAGE_ENGLISH)
	assignment = "Orbital Army Aviation Pilot"
	role_comm_title = "PILOT"
	rank = JOB_DROPSHIP_PILOT
	paygrades = list(PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_1)
	skills = /datum/skills/pilot
	access = list(
		ACCESS_CANC_GENERAL,
		ACCESS_CANC_ARMORY,
		ACCESS_CANC_ENGINEERING,
		ACCESS_CANC_FLIGHT,
		ACCESS_CANC_LEADERSHIP,
		ACCESS_CANC_MACHINEGUN,
		ACCESS_CANC_MEDICAL,
		ACCESS_CANC_MEDPREP,
		ACCESS_CANC_RESEARCH,
		ACCESS_CANC_SECURITY,
		ACCESS_CANC_TLPREP
	)
/// *

///
/// CANC Support Personnel
///
/datum/equipment_preset/canc/eng_tech

	name = "CANC Orbital Army Engineering Support Technician"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = JOB_CANC_SUPPORT_ENGI
	role_comm_title = "ENG-TECH"
	rank = JOB_CANC_SUPPORT_ENGI
	paygrades = list(PAY_SHORT_CAE1 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE2 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_2, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_3)
	skills = /datum/skills/upp/combat_engineer
	access = list(ACCESS_CANC_GENERAL, ACCESS_CANC_ENGINEERING, ACCESS_CANC_FLIGHT)

/datum/equipment_preset/canc/log_tech

	name = "CANC Orbital Army Logistics Support Technician"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = JOB_CANC_SUPPORT_LOGI
	role_comm_title = "LOG-TECH"
	rank = JOB_CANC_SUPPORT_LOGI
	paygrades = list(PAY_SHORT_CAE1 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE2 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_2, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_3)
	skills = /datum/skills/upp/logistics_technician
	access = list(ACCESS_CANC_GENERAL, ACCESS_CANC_ENGINEERING, ACCESS_CANC_FLIGHT)

/datum/equipment_preset/canc/med_tech
	name = "CANC Orbital Army Medical Support Technician"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = JOB_CANC_SUPPORT_MEDIC
	role_comm_title = "MED-TECH"
	rank = JOB_CANC_SUPPORT_MEDIC
	paygrades = list(PAY_SHORT_CAE2 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAE3 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAE4 = JOB_PLAYTIME_TIER_2)
	skills = /datum/skills/doctor
	access = list(ACCESS_CANC_GENERAL, ACCESS_CANC_MEDICAL, ACCESS_CANC_MEDPREP)
/// *

///
/// CANC Commissioned Officers
///
/datum/equipment_preset/canc/junior_officer
	flags = EQUIPMENT_PRESET_EXTRA
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE, LANGUAGE_ENGLISH)
	skills = /datum/skills/upp/officer
	access = list(
		ACCESS_CANC_GENERAL,
		ACCESS_CANC_ARMORY,
		ACCESS_CANC_ENGINEERING,
		ACCESS_CANC_FLIGHT,
		ACCESS_CANC_LEADERSHIP,
		ACCESS_CANC_MACHINEGUN,
		ACCESS_CANC_MEDICAL,
		ACCESS_CANC_MEDPREP,
		ACCESS_CANC_RESEARCH,
		ACCESS_CANC_SECURITY,
		ACCESS_CANC_TLPREP
	)

/datum/equipment_preset/canc/junior_officer/load_gear(mob/living/carbon/human/new_human)

	new_human.undershirt = "undershirt"
	//back
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/satchel, WEAR_BACK)
	//face
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/marine/solardevils/canc/command, WEAR_L_EAR)
	//head
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/cm/canc/leader, WEAR_HEAD)
	//uniform
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/canc, WEAR_BODY)
	//jacket
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/upp, WEAR_JACKET)
	//waist
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/type47/t73, WEAR_WAIST)
	//limbs
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup, WEAR_FEET)
	//pockets
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium, WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/notepad, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/pen/clicky, WEAR_IN_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate, WEAR_R_STORE)

/datum/equipment_preset/canc/junior_officer/platoon_commander
	name = "CANC Orbital Army Platoon Commander (Equipped)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE
	assignment = JOB_CANC_PLATOON_LEADER
	role_comm_title = "PLAT-CO"
	rank = JOB_CANC_PLATOON_LEADER
	paygrades = list(PAY_SHORT_CAO1 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAO2 = JOB_PLAYTIME_TIER_1, PAY_SHORT_CAO3 = JOB_PLAYTIME_TIER_2)

/datum/equipment_preset/canc/junior_officer/company_commander
	name = "CANC Orbital Army Company Commander (Equipped)"
	assignment = JOB_CANC_COMPANY_LEADER
	role_comm_title = "COMP-CO"
	rank = JOB_CANC_COMPANY_LEADER
	paygrades = list(PAY_SHORT_CAO3 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAO4 = JOB_PLAYTIME_TIER_1)

/datum/equipment_preset/canc/senior_officer
	flags = EQUIPMENT_PRESET_EXTRA
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE, LANGUAGE_ENGLISH)
	skills = /datum/skills/upp/kapitan
	access = list(
		ACCESS_CANC_GENERAL,
		ACCESS_CANC_ARMORY,
		ACCESS_CANC_ENGINEERING,
		ACCESS_CANC_FLIGHT,
		ACCESS_CANC_LEADERSHIP,
		ACCESS_CANC_MACHINEGUN,
		ACCESS_CANC_MEDICAL,
		ACCESS_CANC_MEDPREP,
		ACCESS_CANC_RESEARCH,
		ACCESS_CANC_SECURITY,
		ACCESS_CANC_SENIOR_LEAD,
		ACCESS_CANC_TLPREP
	)

/datum/equipment_preset/canc/senior_officer/battalion_commander
	name = "CANC Orbital Army Battalion Commander (Equipped)"
	assignment = JOB_CANC_BATTALION_LEADER
	role_comm_title = "BATT-CO"
	rank = JOB_CANC_BATTALION_LEADER
	paygrades = list(PAY_SHORT_CAO5 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAO6 = JOB_PLAYTIME_TIER_1)

/datum/equipment_preset/canc/senior_officer/brigade_commander
	name = "CANC Orbital Army Brigade Commander (Equipped)"
	assignment = JOB_CANC_BRIGADE_LEADER
	role_comm_title = "BRIG-CO"
	rank = JOB_CANC_BRIGADE_LEADER
	paygrades = list(PAY_SHORT_CAO6 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAO7 = JOB_PLAYTIME_TIER_1)

/datum/equipment_preset/canc/general_officer
	flags = EQUIPMENT_PRESET_EXTRA
	languages = list(LANGUAGE_RUSSIAN, LANGUAGE_CHINESE, LANGUAGE_ENGLISH)
	skills = /datum/skills/upp/commander
	access = list(
		ACCESS_CANC_GENERAL,
		ACCESS_CANC_ARMORY,
		ACCESS_CANC_COMMANDO,
		ACCESS_CANC_ENGINEERING,
		ACCESS_CANC_FLIGHT,
		ACCESS_CANC_LEADERSHIP,
		ACCESS_CANC_MACHINEGUN,
		ACCESS_CANC_MEDICAL,
		ACCESS_CANC_MEDPREP,
		ACCESS_CANC_RESEARCH,
		ACCESS_CANC_SECURITY,
		ACCESS_CANC_SENIOR_LEAD,
		ACCESS_CANC_TLPREP
	)

/datum/equipment_preset/canc/general_officer/corps_commander
	name = "CANC Orbital Army Corps Commander (Equipped)"
	assignment = JOB_CANC_CORPS_LEADER
	role_comm_title = "CORP-CO"
	rank = JOB_CANC_CORPS_LEADER
	paygrades = list(PAY_SHORT_CAO8 = JOB_PLAYTIME_TIER_0, PAY_SHORT_CAO9 = JOB_PLAYTIME_TIER_1)
/// *
