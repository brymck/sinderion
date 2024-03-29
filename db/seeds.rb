# Effects
print "Seeding alchemical effects..."
cure_disease = Effect.create(:name => "Cure Disease",
  :description => "Cures all diseases",
  :magnitude => 5,
  :value => 21,
  :slug => "cure_disease")
damage_health = Effect.create(:name => "Damage Health",
  :description => "Causes poison damage",
  :magnitude => 2,
  :value => 3,
  :slug => "damage_health")
damage_magicka = Effect.create(:name => "Damage Magicka",
  :description => "Drains the target's Magicka",
  :magnitude => 3,
  :value => 52,
  :slug => "damage_magicka")
damage_magicka_regen = Effect.create(:name => "Damage Magicka Regen",
  :description => "Decrease target's Magicka regeneration by 100%",
  :magnitude => 5,
  :value => 265,
  :slug => "damage_magicka_regen")
damage_stamina = Effect.create(:name => "Damage Stamina",
  :description => "Drain the target's Stamina",
  :magnitude => 3,
  :value => 43,
  :slug => "damage_stamina")
damage_stamina_regen = Effect.create(:name => "Damage Stamina Regen",
  :description => "Decrease target's Stamina regeneration by 100%",
  :magnitude => 5,
  :value => 159,
  :slug => "damage_stamina_regen")
fear = Effect.create(:name => "Fear",
  :description => "Creatures and people flee for 30 seconds",
  :magnitude => 1,
  :value => 120,
  :slug => "fear")
fortify_alteration = Effect.create(:name => "Fortify Alteration",
  :description => "Alteration spells last longer for 60 seconds",
  :magnitude => 4,
  :value => 47,
  :slug => "fortify_alteration")
fortify_barter = Effect.create(:name => "Fortify Barter",
  :description => "You haggle for better prices for 30 seconds",
  :magnitude => 1,
  :value => 48,
  :slug => "fortify_barter")
fortify_block = Effect.create(:name => "Fortify Block",
  :description => "Blocking absorbs more damage for 60 seconds",
  :magnitude => 4,
  :value => 118,
  :slug => "fortify_block")
fortify_carry_weight = Effect.create(:name => "Fortify Carry Weight",
  :description => "Carrying capacity increases for 300 seconds",
  :magnitude => 4,
  :value => 208,
  :slug => "fortify_carry_weight")
fortify_conjuration = Effect.create(:name => "Fortify Conjuration",
  :description => "Conjuration spells last longer for 60 seconds",
  :magnitude => 5,
  :value => 75,
  :slug => "fortify_conjuration")
fortify_destruction = Effect.create(:name => "Fortify Destruction",
  :description => "Destruction spells deal more damage for 60 seconds",
  :magnitude => 5,
  :value => 151,
  :slug => "fortify_destruction")
fortify_enchanting = Effect.create(:name => "Fortify Enchanting",
  :description => "For 30 seconds, items are enchanted stronger",
  :magnitude => 1,
  :value => 14,
  :slug => "fortify_enchanting")
fortify_health = Effect.create(:name => "Fortify Health",
  :description => "Health is increased for 60(300) seconds",
  :magnitude => 4,
  :value => 82,
  :slug => "fortify_health")
fortify_heavy_armor = Effect.create(:name => "Fortify Heavy Armor",
  :description => "Increase Heavy Armor skill for 60 seconds",
  :magnitude => 2,
  :value => 55,
  :slug => "fortify_heavy_armor")
fortify_illusion = Effect.create(:name => "Fortify Illusion",
  :description => "Illusion spells are stronger for 60 seconds",
  :magnitude => 4,
  :value => 94,
  :slug => "fortify_illusion")
fortify_light_armor = Effect.create(:name => "Fortify Light Armor",
  :description => "Increases Light Armor skill for 60 seconds",
  :magnitude => 2,
  :value => 55,
  :slug => "fortify_light_armor")
fortify_lockpicking = Effect.create(:name => "Fortify Lockpicking",
  :description => "Lockpicking is easier for 30 seconds",
  :magnitude => 2,
  :value => 25,
  :slug => "fortify_lockpicking")
fortify_magicka = Effect.create(:name => "Fortify Magicka",
  :description => "Magicka is increased for 60 seconds",
  :magnitude => 4,
  :value => 71,
  :slug => "fortify_magicka")
fortify_marksman = Effect.create(:name => "Fortify Marksman",
  :description => "Bows do more damage for 60 seconds",
  :magnitude => 4,
  :value => 118,
  :slug => "fortify_marksman")
fortify_one_handed = Effect.create(:name => "Fortify One Handed",
  :description => "One-handed weapons do more damage for 60 seconds",
  :magnitude => 4,
  :value => 118,
  :slug => "fortify_one_handed")
fortify_pickpocket = Effect.create(:name => "Fortify Pickpocket",
  :description => "Pickpocketing is easier for 60 seconds",
  :magnitude => 4,
  :value => 118,
  :slug => "fortify_pickpocket")
fortify_restoration = Effect.create(:name => "Fortify Restoration",
  :description => "Restoration spells are stronger for 60 seconds",
  :magnitude => 4,
  :value => 118,
  :slug => "fortify_restoration")
fortify_smithing = Effect.create(:name => "Fortify Smithing",
  :description => "For 30 seconds, weapon and armor improving is better",
  :magnitude => 4,
  :value => 82,
  :slug => "fortify_smithing")
fortify_sneak = Effect.create(:name => "Fortify Sneak",
  :description => "You are harder to detect for 60 seconds",
  :magnitude => 4,
  :value => 118,
  :slug => "fortify_sneak")
fortify_stamina = Effect.create(:name => "Fortify Stamina",
  :description => "Stamina is increased for 60 seconds",
  :magnitude => 4,
  :value => 71,
  :slug => "fortify_stamina")
fortify_two_handed = Effect.create(:name => "Fortify Two Handed",
  :description => "Two-handed weapons do more damage for 60 seconds",
  :magnitude => 4,
  :value => 118,
  :slug => "fortify_two_handed")
frenzy = Effect.create(:name => "Frenzy",
  :description => "Creatures and people will attack anything nearby for 10 seconds",
  :magnitude => 1,
  :value => 107,
  :slug => "frenzy")
invisibility = Effect.create(:name => "Invisibility",
  :description => "Invisibility",
  :magnitude => 4,
  :value => 261,
  :slug => "invisibility")
lingering_damage_health = Effect.create(:name => "Lingering Damage Health",
  :description => "Causes poison damage for 10 seconds",
  :magnitude => 1,
  :value => 86,
  :slug => "lingering_damage_health")
lingering_damage_magicka = Effect.create(:name => "Lingering Damage Magicka",
  :description => "Drains the target's Magicka for 10 seconds",
  :magnitude => 1,
  :value => 71,
  :slug => "lingering_damage_magicka")
lingering_damage_stamina = Effect.create(:name => "Lingering Damage Stamina",
  :description => "Drain the target's Stamina for 10 seconds",
  :magnitude => 1,
  :value => 12,
  :slug => "lingering_damage_stamina")
paralysis = Effect.create(:name => "Paralysis",
  :description => "Target is paralyzed",
  :magnitude => 1,
  :value => 285,
  :slug => "paralysis")
ravage_health = Effect.create(:name => "Ravage Health",
  :description => "Causes concentrated poison damage",
  :magnitude => 2,
  :value => 6,
  :slug => "ravage_health")
ravage_magicka = Effect.create(:name => "Ravage Magicka",
  :description => "Concentrated poison damages Magicka",
  :magnitude => 2,
  :value => 15,
  :slug => "ravage_magicka")
ravage_stamina = Effect.create(:name => "Ravage Stamina",
  :description => "Concentrated poison damages Stamina",
  :magnitude => 2,
  :value => 24,
  :slug => "ravage_stamina")
regenerate_health = Effect.create(:name => "Regenerate Health",
  :description => "Health regenerates faster for 300 seconds",
  :magnitude => 5,
  :value => 177,
  :slug => "regenerate_health")
regenerate_magicka = Effect.create(:name => "Regenerate Magicka",
  :description => "Magicka regenerates faster for 300 seconds",
  :magnitude => 5,
  :value => 177,
  :slug => "regenerate_magicka")
regenerate_stamina = Effect.create(:name => "Regenerate Stamina",
  :description => "Stamina regenerates faster for 300 seconds",
  :magnitude => 5,
  :value => 177,
  :slug => "regenerate_stamina")
resist_fire = Effect.create(:name => "Resist Fire",
  :description => "Resist fire damage for 60 seconds",
  :magnitude => 3,
  :value => 86,
  :slug => "resist_fire")
resist_frost = Effect.create(:name => "Resist Frost",
  :description => "Resist frost damage for 60 seconds",
  :magnitude => 3,
  :value => 86,
  :slug => "resist_frost")
resist_magic = Effect.create(:name => "Resist Magic",
  :description => "Resist magic for 60 seconds",
  :magnitude => 1,
  :value => 51,
  :slug => "resist_magic")
resist_poison = Effect.create(:name => "Resist Poison",
  :description => "Resist poison for 60 seconds",
  :magnitude => 4,
  :value => 118,
  :slug => "resist_poison")
resist_shock = Effect.create(:name => "Resist Shock",
  :description => "Resist shock damage for 60 seconds",
  :magnitude => 3,
  :value => 86,
  :slug => "resist_shock")
restore_health = Effect.create(:name => "Restore Health",
  :description => "Restore Health",
  :magnitude => 5,
  :value => 21,
  :slug => "restore_health")
restore_magicka = Effect.create(:name => "Restore Magicka",
  :description => "Restore Magicka",
  :magnitude => 5,
  :value => 25,
  :slug => "restore_magicka")
restore_stamina = Effect.create(:name => "Restore Stamina",
  :description => "Restore Stamina",
  :magnitude => 5,
  :value => 25,
  :slug => "restore_stamina")
slow = Effect.create(:name => "Slow",
  :description => "Target moves at 50% speed",
  :magnitude => 5,
  :value => 247,
  :slug => "slow")
waterbreathing = Effect.create(:name => "Waterbreathing",
  :description => "Can breath underwater",
  :magnitude => 5,
  :value => 100,
  :slug => "waterbreathing")
weakness_to_fire = Effect.create(:name => "Weakness to Fire",
  :description => "Target is weaker to fire damage for 30 seconds",
  :magnitude => 3,
  :value => 48,
  :slug => "weakness_to_fire")
weakness_to_frost = Effect.create(:name => "Weakness to Frost",
  :description => "Target is weaker to frost damage for 30 seconds",
  :magnitude => 3,
  :value => 40,
  :slug => "weakness_to_frost")
weakness_to_magic = Effect.create(:name => "Weakness to Magic",
  :description => "Target is weaker to magic for 30 seconds",
  :magnitude => 2,
  :value => 51,
  :slug => "weakness_to_magic")
weakness_to_poison = Effect.create(:name => "Weakness to Poison",
  :description => "Target is weaker to poison damage for 30 seconds",
  :magnitude => 2,
  :value => 51,
  :slug => "weakness_to_poison")
weakness_to_shock = Effect.create(:name => "Weakness to Shock",
  :description => "Target is weaker to shock damage for 30 seconds",
  :magnitude => 3,
  :value => 56,
  :slug => "weakness_to_shock")
puts " #{Effect.count} total"

# Ingredients
print "Seeding ingredients..."
Ingredient.create :name => "Abecean Longfin",
  :weight => 0.5,
  :cost => 15,
  :effects => [weakness_to_frost, fortify_sneak, weakness_to_poison, fortify_restoration],
  :slug => "abecean_longfin"
Ingredient.create :name => "Bear Claws",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_stamina, fortify_health, fortify_one_handed, damage_magicka_regen],
  :slug => "bear_claws"
Ingredient.create :name => "Bee",
  :weight => 0.1,
  :cost => 3,
  :effects => [restore_stamina, ravage_stamina, regenerate_stamina, weakness_to_shock],
  :slug => "bee"
Ingredient.create :name => "Beehive Husk",
  :weight => 1,
  :cost => 5,
  :effects => [resist_poison, fortify_light_armor, fortify_sneak, fortify_destruction],
  :slug => "beehive_husk"
Ingredient.create :name => "Bleeding Crown",
  :weight => 0.3,
  :cost => 10,
  :effects => [weakness_to_fire, fortify_block, weakness_to_poison, resist_magic],
  :slug => "bleeding_crown"
Ingredient.create :name => "Blisterwort",
  :weight => 0.2,
  :cost => 12,
  :effects => [damage_stamina, frenzy, restore_health, fortify_smithing],
  :slug => "blisterwort"
Ingredient.create :name => "Blue Butterfly Wing",
  :weight => 0.1,
  :cost => 2,
  :effects => [damage_stamina, fortify_conjuration, damage_magicka_regen, fortify_enchanting],
  :slug => "blue_butterfly_wing"
Ingredient.create :name => "Blue Dartwing",
  :weight => 0.1,
  :cost => 1,
  :effects => [resist_shock, fortify_pickpocket, restore_health, fear],
  :slug => "blue_dartwing"
Ingredient.create :name => "Blue Mountain Flower",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_health, fortify_conjuration, fortify_health, damage_magicka_regen],
  :slug => "blue_mountain_flower"
Ingredient.create :name => "Bone Meal",
  :weight => 0.5,
  :cost => 5,
  :effects => [damage_stamina, resist_fire, fortify_conjuration, ravage_stamina],
  :slug => "bone_meal"
Ingredient.create :name => "Briar Heart",
  :weight => 0.5,
  :cost => 20,
  :effects => [restore_magicka, fortify_block, paralysis, fortify_magicka],
  :slug => "briar_heart"
Ingredient.create :name => "Butterfly Wing",
  :weight => 0.1,
  :cost => 3,
  :effects => [restore_health, fortify_barter, lingering_damage_stamina, damage_magicka],
  :slug => "butterfly_wing"
Ingredient.create :name => "Canis Root",
  :weight => 0.1,
  :cost => 5,
  :effects => [damage_stamina, fortify_one_handed, fortify_marksman, paralysis],
  :slug => "canis_root"
Ingredient.create :name => "Charred Skeever Hide",
  :weight => 0.5,
  :cost => 1,
  :effects => [restore_stamina, cure_disease, resist_poison, restore_health],
  :slug => "charred_skeever_hide"
Ingredient.create :name => "Chaurus Eggs",
  :weight => 0.2,
  :cost => 10,
  :effects => [weakness_to_poison, fortify_stamina, damage_magicka, invisibility],
  :slug => "chaurus_eggs"
Ingredient.create :name => "Chicken's Egg",
  :weight => 0.5,
  :cost => 2,
  :effects => [resist_magic, damage_magicka_regen, waterbreathing, lingering_damage_stamina],
  :slug => "chickens_egg"
Ingredient.create :name => "Creep Cluster",
  :weight => 0.2,
  :cost => 1,
  :effects => [restore_magicka, damage_stamina_regen, fortify_carry_weight, weakness_to_magic],
  :slug => "creep_cluster"
Ingredient.create :name => "Crimson Nirnroot",
  :weight => 0.2,
  :cost => 10,
  :effects => [damage_health, damage_stamina, invisibility, resist_magic],
  :slug => "crimson_nirnroot"
Ingredient.create :name => "Cyrodilic Spadetail",
  :weight => 0.25,
  :cost => 15,
  :effects => [damage_stamina, fortify_restoration, fear, ravage_health],
  :slug => "cyrodilic_spadetail"
Ingredient.create :name => "Daedra Heart",
  :weight => 0.5,
  :cost => 250,
  :effects => [restore_health, damage_stamina_regen, damage_magicka, fear],
  :slug => "daedra_heart"
Ingredient.create :name => "Deathbell",
  :weight => 0.1,
  :cost => 4,
  :effects => [damage_health, ravage_stamina, slow, weakness_to_poison],
  :slug => "deathbell"
Ingredient.create :name => "Dragon's Tongue",
  :weight => 0.1,
  :cost => 5,
  :effects => [resist_fire, fortify_barter, fortify_illusion, fortify_two_handed],
  :slug => "dragons_tongue"
Ingredient.create :name => "Dwarven Oil",
  :weight => 0.25,
  :cost => 15,
  :effects => [weakness_to_magic, fortify_illusion, regenerate_magicka, restore_magicka],
  :slug => "dwarven_oil"
Ingredient.create :name => "Ectoplasm",
  :weight => 0.1,
  :cost => 25,
  :effects => [restore_magicka, fortify_destruction, fortify_magicka, damage_health],
  :slug => "ectoplasm"
Ingredient.create :name => "Elves Ear",
  :weight => 0.1,
  :cost => 10,
  :effects => [restore_magicka, fortify_marksman, weakness_to_frost, resist_fire],
  :slug => "elves_ear"
Ingredient.create :name => "Eye of Sabre Cat",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_stamina, ravage_health, damage_magicka, restore_health],
  :slug => "eye_of_sabre_cat"
Ingredient.create :name => "Falmer Ear",
  :weight => 0.2,
  :cost => 10,
  :effects => [damage_health, frenzy, resist_poison, fortify_lockpicking],
  :slug => "falmer_ear"
Ingredient.create :name => "Fire Salts",
  :weight => 0.25,
  :cost => 50,
  :effects => [weakness_to_frost, resist_fire, restore_magicka, regenerate_magicka],
  :slug => "fire_salts"
Ingredient.create :name => "Fly Amanita",
  :weight => 0.1,
  :cost => 2,
  :effects => [resist_fire, fortify_two_handed, frenzy, regenerate_stamina],
  :slug => "fly_amanita"
Ingredient.create :name => "Frost Mirriam",
  :weight => 0.1,
  :cost => 1,
  :effects => [resist_frost, fortify_sneak, ravage_magicka, damage_stamina_regen],
  :slug => "frost_mirriam"
Ingredient.create :name => "Frost Salts",
  :weight => 0.25,
  :cost => 100,
  :effects => [weakness_to_fire, resist_frost, restore_magicka, fortify_conjuration],
  :slug => "frost_salts"
Ingredient.create :name => "Garlic",
  :weight => 0.25,
  :cost => 1,
  :effects => [resist_poison, fortify_stamina, regenerate_magicka, regenerate_health],
  :slug => "garlic"
Ingredient.create :name => "Giant Lichen",
  :weight => 0.25,
  :cost => 5,
  :effects => [weakness_to_shock, ravage_health, weakness_to_poison, restore_magicka],
  :slug => "giant_lichen"
Ingredient.create :name => "Giant's Toe",
  :weight => 1,
  :cost => 20,
  :effects => [damage_stamina, fortify_health, fortify_carry_weight, damage_stamina_regen],
  :slug => "giants_toe"
Ingredient.create :name => "Glow Dust",
  :weight => 0.5,
  :cost => 20,
  :effects => [damage_magicka, damage_magicka_regen, fortify_destruction, resist_shock],
  :slug => "glow_dust"
Ingredient.create :name => "Glowing Mushroom",
  :weight => 0.2,
  :cost => 5,
  :effects => [resist_shock, fortify_destruction, fortify_smithing, fortify_health],
  :slug => "glowing_mushroom"
Ingredient.create :name => "Grass Pod",
  :weight => 0.1,
  :cost => 1,
  :effects => [resist_poison, ravage_magicka, fortify_alteration, restore_magicka],
  :slug => "grass_pod"
Ingredient.create :name => "Hagraven Claw",
  :weight => 0.25,
  :cost => 20,
  :effects => [resist_magic, lingering_damage_magicka, fortify_enchanting, fortify_barter],
  :slug => "hagraven_claw"
Ingredient.create :name => "Hagraven Feathers",
  :weight => 0.1,
  :cost => 20,
  :effects => [damage_magicka, fortify_conjuration, frenzy, weakness_to_shock],
  :slug => "hagraven_feathers"
Ingredient.create :name => "Hanging Moss",
  :weight => 0.25,
  :cost => 1,
  :effects => [damage_magicka, fortify_health, damage_magicka_regen, fortify_one_handed],
  :slug => "hanging_moss"
Ingredient.create :name => "Hawk Beak",
  :weight => 0.25,
  :cost => 15,
  :effects => [restore_stamina, resist_frost, fortify_carry_weight, resist_shock],
  :slug => "hawk_beak"
Ingredient.create :name => "Hawk Feathers",
  :weight => 0.1,
  :cost => 15,
  :effects => [cure_disease, fortify_light_armor, fortify_one_handed, fortify_sneak],
  :slug => "hawk_feathers"
Ingredient.create :name => "Histcarp",
  :weight => 0.25,
  :cost => 6,
  :effects => [restore_stamina, fortify_magicka, damage_stamina_regen, waterbreathing],
  :slug => "histcarp"
Ingredient.create :name => "Honeycomb",
  :weight => 1,
  :cost => 5,
  :effects => [restore_stamina, fortify_block, fortify_light_armor, ravage_stamina],
  :slug => "honeycomb"
Ingredient.create :name => "Human Flesh",
  :weight => 0.25,
  :cost => 1,
  :effects => [damage_health, paralysis, restore_magicka, fortify_sneak],
  :slug => "human_flesh"
Ingredient.create :name => "Human Heart",
  :weight => 1,
  :cost => 0,
  :effects => [damage_health, damage_magicka, damage_magicka_regen, frenzy],
  :slug => "human_heart"
Ingredient.create :name => "Ice Wraith Teeth",
  :weight => 0.25,
  :cost => 30,
  :effects => [weakness_to_frost, fortify_heavy_armor, invisibility, weakness_to_fire],
  :slug => "ice_wraith_teeth"
Ingredient.create :name => "Imp Stool",
  :weight => 0.3,
  :cost => 0,
  :effects => [damage_health, lingering_damage_health, paralysis, restore_health],
  :slug => "imp_stool"
Ingredient.create :name => "Jazbay Grapes",
  :weight => 0.2,
  :cost => 1,
  :effects => [weakness_to_magic, fortify_magicka, regenerate_magicka, ravage_health],
  :slug => "jazbay_grapes"
Ingredient.create :name => "Juniper Berries",
  :weight => 0.1,
  :cost => 1,
  :effects => [weakness_to_fire, fortify_marksman, regenerate_health, damage_stamina_regen],
  :slug => "juniper_berries"
Ingredient.create :name => "Large Antlers",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_stamina, fortify_stamina, slow, damage_stamina_regen],
  :slug => "large_antlers"
Ingredient.create :name => "Lavender",
  :weight => 0.1,
  :cost => 1,
  :effects => [resist_magic, fortify_stamina, ravage_magicka, fortify_conjuration],
  :slug => "lavender"
Ingredient.create :name => "Luna Moth Wing",
  :weight => 0.1,
  :cost => 5,
  :effects => [damage_magicka, fortify_light_armor, regenerate_health, invisibility],
  :slug => "luna_moth_wing"
Ingredient.create :name => "Moon Sugar",
  :weight => 0.25,
  :cost => 50,
  :effects => [weakness_to_fire, resist_frost, restore_magicka, regenerate_magicka],
  :slug => "moon_sugar"
Ingredient.create :name => "Mora Tapinella",
  :weight => 0.25,
  :cost => 4,
  :effects => [restore_magicka, lingering_damage_health, regenerate_stamina, fortify_illusion],
  :slug => "mora_tapinella"
Ingredient.create :name => "Mudcrab Chitin",
  :weight => 0.25,
  :cost => 2,
  :effects => [restore_stamina, cure_disease, resist_poison, resist_fire],
  :slug => "mudcrab_chitin"
Ingredient.create :name => "Namira's Rot",
  :weight => 0.25,
  :cost => 0,
  :effects => [damage_magicka, fortify_lockpicking, fear, regenerate_health],
  :slug => "namiras_rot"
Ingredient.create :name => "Nightshade",
  :weight => 0.1,
  :cost => 8,
  :effects => [damage_health, damage_magicka_regen, lingering_damage_stamina, fortify_destruction],
  :slug => "nightshade"
Ingredient.create :name => "Nirnroot",
  :weight => 0.2,
  :cost => 10,
  :effects => [damage_health, damage_stamina, invisibility, resist_magic],
  :slug => "nirnroot"
Ingredient.create :name => "Nordic Barnacle",
  :weight => 0.2,
  :cost => 5,
  :effects => [damage_magicka, waterbreathing, regenerate_health, fortify_pickpocket],
  :slug => "nordic_barnacle"
Ingredient.create :name => "Orange Dartwing",
  :weight => 0.1,
  :cost => 1,
  :effects => [restore_stamina, ravage_magicka, fortify_pickpocket, lingering_damage_health],
  :slug => "orange_dartwing"
Ingredient.create :name => "Pearl",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_stamina, fortify_block, restore_magicka, resist_shock],
  :slug => "pearl"
Ingredient.create :name => "Pine Thrush Egg",
  :weight => 0.5,
  :cost => 2,
  :effects => [restore_stamina, fortify_lockpicking, weakness_to_poison, resist_shock],
  :slug => "pine_thrush_egg"
Ingredient.create :name => "Powdered Mammoth Tusk",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_stamina, fortify_sneak, weakness_to_fire, fear],
  :slug => "powdered_mammoth_tusk"
Ingredient.create :name => "Purple Mountain Flower",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_stamina, fortify_sneak, lingering_damage_magicka, resist_frost],
  :slug => "purple_mountain_flower"
Ingredient.create :name => "Red Mountain Flower",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_magicka, ravage_magicka, fortify_magicka, damage_health],
  :slug => "red_mountain_flower"
Ingredient.create :name => "River Betty",
  :weight => 0.25,
  :cost => 15,
  :effects => [damage_health, fortify_alteration, slow, fortify_carry_weight],
  :slug => "river_betty"
Ingredient.create :name => "Rock Warbler Egg",
  :weight => 0.5,
  :cost => 2,
  :effects => [restore_health, fortify_one_handed, damage_stamina, weakness_to_magic],
  :slug => "rock_warbler_egg"
Ingredient.create :name => "Sabre Cat Tooth",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_stamina, fortify_heavy_armor, fortify_smithing, weakness_to_poison],
  :slug => "sabre_cat_tooth"
Ingredient.create :name => "Salt Pile",
  :weight => 0.2,
  :cost => 2,
  :effects => [weakness_to_magic, fortify_restoration, slow, regenerate_magicka],
  :slug => "salt_pile"
Ingredient.create :name => "Scaly Pholiota",
  :weight => 0.25,
  :cost => 4,
  :effects => [weakness_to_magic, fortify_illusion, regenerate_stamina, fortify_carry_weight],
  :slug => "scaly_pholiota"
Ingredient.create :name => "Silverside Perch",
  :weight => 0.25,
  :cost => 15,
  :effects => [restore_stamina, damage_stamina_regen, ravage_health, resist_frost],
  :slug => "silverside_perch"
Ingredient.create :name => "Skeever Tail",
  :weight => 0.2,
  :cost => 3,
  :effects => [damage_stamina_regen, ravage_health, damage_health, fortify_light_armor],
  :slug => "skeever_tail"
Ingredient.create :name => "Slaughterfish Egg",
  :weight => 0.2,
  :cost => 3,
  :effects => [resist_poison, fortify_pickpocket, lingering_damage_health, fortify_stamina],
  :slug => "slaughterfish_egg"
Ingredient.create :name => "Slaughterfish Scales",
  :weight => 0.1,
  :cost => 3,
  :effects => [resist_frost, lingering_damage_health, fortify_heavy_armor, fortify_block],
  :slug => "slaughterfish_scales"
Ingredient.create :name => "Small Antlers",
  :weight => 0.1,
  :cost => 2,
  :effects => [weakness_to_poison, fortify_restoration, lingering_damage_stamina, damage_health],
  :slug => "small_antlers"
Ingredient.create :name => "Small Pearl",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_stamina, fortify_one_handed, fortify_restoration, resist_frost],
  :slug => "small_pearl"
Ingredient.create :name => "Snowberries",
  :weight => 0.1,
  :cost => 4,
  :effects => [resist_fire, fortify_enchanting, resist_frost, resist_shock],
  :slug => "snowberries"
Ingredient.create :name => "Spider Egg",
  :weight => 0.2,
  :cost => 5,
  :effects => [damage_stamina, damage_magicka_regen, fortify_lockpicking, fortify_marksman],
  :slug => "spider_egg"
Ingredient.create :name => "Spriggan Sap",
  :weight => 0.2,
  :cost => 15,
  :effects => [damage_magicka_regen, fortify_enchanting, fortify_smithing, fortify_alteration],
  :slug => "spriggan_sap"
Ingredient.create :name => "Swamp Fungal Pod",
  :weight => 0.25,
  :cost => 5,
  :effects => [resist_shock, lingering_damage_magicka, paralysis, restore_health],
  :slug => "swamp_fungal_pod"
Ingredient.create :name => "Taproot",
  :weight => 0.5,
  :cost => 15,
  :effects => [weakness_to_magic, fortify_illusion, regenerate_magicka, restore_magicka],
  :slug => "taproot"
Ingredient.create :name => "Thistle Branch",
  :weight => 0.1,
  :cost => 1,
  :effects => [resist_frost, ravage_stamina, resist_poison, fortify_heavy_armor],
  :slug => "thistle_branch"
Ingredient.create :name => "Torchbug Thorax",
  :weight => 0.1,
  :cost => 1,
  :effects => [restore_stamina, lingering_damage_magicka, weakness_to_magic, fortify_stamina],
  :slug => "torchbug_thorax"
Ingredient.create :name => "Troll Fat",
  :weight => 1,
  :cost => 15,
  :effects => [resist_poison, fortify_two_handed, frenzy, damage_health],
  :slug => "troll_fat"
Ingredient.create :name => "Tundra Cotton",
  :weight => 0.1,
  :cost => 1,
  :effects => [resist_magic, fortify_magicka, fortify_block, fortify_barter],
  :slug => "tundra_cotton"
Ingredient.create :name => "Vampire Dust",
  :weight => 0.2,
  :cost => 25,
  :effects => [invisibility, restore_magicka, regenerate_health, cure_disease],
  :slug => "vampire_dust"
Ingredient.create :name => "Void Salts",
  :weight => 0.2,
  :cost => 125,
  :effects => [weakness_to_shock, resist_magic, damage_health, fortify_magicka],
  :slug => "void_salts"
Ingredient.create :name => "Wheat",
  :weight => 0.1,
  :cost => 5,
  :effects => [restore_health, fortify_health, damage_stamina_regen, lingering_damage_magicka],
  :slug => "wheat"
Ingredient.create :name => "White Cap",
  :weight => 0.3,
  :cost => 0,
  :effects => [weakness_to_frost, fortify_heavy_armor, restore_magicka, ravage_magicka],
  :slug => "white_cap"
Ingredient.create :name => "Wisp Wrappings",
  :weight => 0.1,
  :cost => 2,
  :effects => [restore_stamina, fortify_destruction, fortify_carry_weight, resist_magic],
  :slug => "wisp_wrappings"

# Rare ingredients
Ingredient.create :name => "Berit's Ashes",
  :weight => 0.2,
  :cost => 5,
  :effects => [damage_stamina, resist_fire, fortify_conjuration, ravage_stamina],
  :slug => "berits_ashes",
  :rare => true
Ingredient.create :name => "Jarrin Root",
  :weight => 0.5,
  :cost => 10,
  :effects => [damage_health, damage_magicka, damage_stamina, damage_magicka_regen],
  :slug => "jarrin_root",
  :rare => true
puts " #{Ingredient.count} total"

# Potions
puts "Seeding potions..."
running_total = 0
all_ingredients = Ingredient.all
while all_ingredients.count > 1
  # Get the first ingredient, then remove that ingredient from the list
  a = all_ingredients.delete_at(0)
  print "  #{a.name}..."
  initial_total = running_total

  # Build list of tertiary ingredients using a new copy of the list
  tertiary_ingredients = all_ingredients.clone
  all_ingredients.each do |b|
    # See whether first two ingredients combine
    a_b = (a.effects & b.effects)
    if !(a_b).empty?
      Potion.create :ingredients => [a, b],
        :effects => a_b,
        :value => a_b.map(&:value).inject(:+)
      running_total += 1
    end

    # Check third ingredients
    tertiary_ingredients.delete_at 0
    tertiary_ingredients.each do |c|
      a_c = a.effects & c.effects
      b_c = b.effects & c.effects
      total_matches = [a_b, a_c, b_c].inject(0) do |sum, arrs|
        sum += !arrs.empty? ? 1 : 0
      end
      if total_matches >= 2
        a_b_c = a_b | a_c | b_c
        Potion.create :ingredients => [a, b, c],
          :effects => a_b_c,
          :value => a_b_c.map(&:value).inject(:+)
        running_total += 1
      end
    end
  end

  puts " #{running_total - initial_total} subtotal"
end
puts " #{Potion.count} total"
