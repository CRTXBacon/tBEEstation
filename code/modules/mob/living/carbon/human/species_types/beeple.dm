/datum/species/bee
	name = "Beeperson"
	id = "bee"
	say_mod = "buzzes"
  brutemod = 1.1
  burnmod = 1.1 //bees take increased brute and burn damage
	inherent_biotypes = list(MOB_ORGANIC, MOB_HUMANOID, MOB_BUG)
	mutanttongue = /obj/item/organ/tongue/bee
	mutantliver = /obj/item/organ/liver/bee
	mutantstomach = /obj/item/organ/stomach/bee
  //add wings here at some point. Make sure they're entirely cosmetic.
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/bee
	disliked_food = VEGETABLES | GROSS
	liked_food = FRUIT | SUGAR
  toxic_food = MEAT | RAW | ALCOHOL

/datum/species/bee/handle_chemicals(datum/reagent/chem, mob/living/carbon/human/H)
	if(chem.id == "pestkiller")
		H.adjustToxLoss(3)
		H.reagents.remove_reagent(chem.id, REAGENTS_METABOLISM)
		return 1

/datum/species/bee/check_weakness(obj/item/weapon, mob/living/attacker)
	if(istype(weapon, /obj/item/melee/flyswatter))
		return 19 //Flyswatters deal 20x damage to beepeople.
	return 0
  
