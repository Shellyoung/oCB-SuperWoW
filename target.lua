local Interrupts = {
  ["Shield Bash"] = true;
  ["Pummel"] = true;
  ["Kick"] = true;
  ["Earth Shock"] = true;
  ["Concussion Blow"] = true;
  ["Charge Stun"] = true;
  ["Intercept Stun"] = true;
  ["Hammer of Justice"] = true;
  ["Cheap Shot"] = true;
  ["Gouge"] = true;
  ["Kidney Shot"] = true;
  ["Silence"] = true;
  ["Counterspell"] = true;
  ["Counterspell - Silenced"] = true;
  ["Bash"] = true;
  ["Fear"] = true;
  ["Howl of Terror"] = true;
  ["Psychic Scream"] = true;
  ["Intimidating Shout"] = true;
  ["Starfire Stun"] = true;
  ["Revenge Stun"] = true;
  ["Improved Concussive Shot"] = true;
  ["Impact"] = true;
  ["Pyroclasm"] = true;
  ["Blackout"] = true;
  ["Stun"] = true;
  ["Mace Stun Effect"] = true;
  ["Earthshaker"] = true;
  ["Repentance"] = true;
  ["Scatter Shot"] = true;
  ["Blind"] = true;
  ["Hibernate"] = true;
  ["Wyvern Sting"] = true;
  ["Rough Copper Bomb"] = true;
  ["Large Copper Bomb"] = true;
  ["Small Bronze Bomb"] = true;
  ["Big Bronze Bomb"] = true;
  ["Big Iron Bomb"] = true;
  ["Mithril Frag Bomb"] = true;
  ["Hi-Explosive Bomb"] = true;
  ["Dark Iron Bomb"] = true;
  ["Iron Grenade"] = true;
  ["M73 Frag Grenade"] = true;
  ["Thorium Grenade"] = true;
  ["Goblin Mortar"] = true;
  ["Drag me (target)"] = true;
}

local Targets = {
  ["Ambershard Destroyer"] = {p="Boulder", t=3000, ico="Ability_Throw", m="pacify"};
  ["Anvilrage Medic"] = {p="Heal", t=4000, ico="Spell_Holy_Heal02", m="silence"};
  ["Arcane Torrent"] = {p="Lightning Cloud", t=2500, ico="Spell_Nature_CallStorm", m="silence"};
  ["Archmage Arugal"] = {p="Void Bolt", t=4000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ["Argus Shadow Mage"] = {p="Shadow Bolt", t=2000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ["Ash\'ari Crystal"] = {p="Chains of Ice", t=1300, ico="Spell_Frost_ChainsOfIce", m="silence"};
  ["Black Drake"] = {p="Flame Breath", t=1700, ico="Spell_Fire_Fire", m="silence"};
  ["Blackwing Spellbinder"] = {p="Flamestrike", t=2000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ["Branch Snapper"] = {p="Deadly Poison", t=2000, ico="Spell_Nature_NullifyPoison", m="silence"};
  ["Brimgore"] = {p="Flame Breath", t=1700, ico="Spell_Fire_Fire", m="silence"};
  ["Burning Felhound"] = {p="Mana Burn", t=1000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ["Caravan Master Tset"] = {p="Frostbolt", t=1500, ico="Spell_Frost_FrostBolt02", m="silence"};
  ["Celebras the Cursed"] = {p="Wrath", t=2000, ico="Spell_Nature_Lightning", m="silence"};
  ["Chromaggus"] = {p="Corrosive Acid", t=2000, ico="Spell_Nature_Acid_01", m="silence"};
  ["Cloud Serpent"] = {p="Lightning Bolt", t=3500, ico="Spell_Nature_Lightning", m="silence"};
  ["Crimson Inquisitor"] = {p="Mana Burn", t=2000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ["Crimson Priest"] = {p="Holy Fire", t=5000, ico="Spell_Holy_SearingLight", m="silence"};
  ["Crypt Scarab"] = {p="Crypt Scarabs", t=1500, ico="Spell_Shadow_CarrionSwarm", m="pacify"};
  ["Dalaran Spellscribe"] = {p="Freeze", t=4000, ico="Spell_Frost_Glacier", m="silence"};
  ["Dark Caster"] = {p="Shadow Bolt", t=2000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ["Death Talon Hatcher"] = {p="Flamestrike", t=2000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ["Death\'s Head Acolyte"] = {p="Mana Burn", t=2000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ["Death\'s Head Adept"] = {p="Chains of Ice", t=1500, ico="Spell_Frost_ChainsOfIce", m="silence"};
  ["Defias Rogue Wizard"] = {p="Frostbolt", t=3000, ico="Spell_Frost_FrostBolt02", m="silence"};
  ["Defias Wizard"] = {p="Chains of Ice", t=1500, ico="Spell_Frost_ChainsOfIce", m="silence"};
  ["Dreaming Whelp"] = {p="Sleep", t=1000, ico="Spell_Nature_Sleep", m="silence"};
  ["Dreamstalker"] = {p="Sleep", t=1000, ico="Spell_Nature_Sleep", m="silence"};
  ["Ebonroc"] = {p="Shadow Flame", t=2000, ico="Spell_Fire_Incinerate", m="silence"};
  ["Eck\'alom"] = {p="Freeze", t=4000, ico="Spell_Frost_Glacier", m="silence"};
  ["Edan the Howler"] = {p="Frost Breath", t=250, ico="Spell_Frost_FrostNova", m="silence"};
  ["Elder Cloud Serpent"] = {p="Lightning Bolt", t=3500, ico="Spell_Nature_Lightning", m="silence"};
  ["Eldreth Apparition"] = {
    ["Chains of Ice"] = {t=1000, ico="Spell_Frost_ChainsOfIce", m="silence"};
    ["Frostbolt"] = { t=1000, ico="Spell_Frost_FrostBolt02", m="silence"};
  };
  ["Eldreth Darter"] = {p="Mana Burn", t=2000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ["Emperor Vek\'lor"] = {p="Shadow Bolt", t=1000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ["Fardel Dabyrie"] = {p="Deadly Poison", t=2000, ico="Spell_Nature_NullifyPoison", m="silence"};
  ["Firebrand Dreadweaver"] = {p="Plague Cloud", t=2500, ico="Spell_Shadow_CallofBone", m="silence"};
  ["Firemaw"] = {p="Shadow Flame", t=2000, ico="Spell_Fire_Incinerate", m="silence"};
  ["Flame Buffet Totem"] = {p="Flame Buffet", t=1500, ico="Spell_Fire_Fireball", m="silence"};
  ["Flamegor"] = {p="Shadow Flame", t=2000, ico="Spell_Fire_Incinerate", m="silence"};
  ["Flamewaker Elite"] = {p="Fireball", t=1000, ico="Spell_Fire_FlameBolt", m="silence"};
  ["Flamewaker Healer"] = {p="Shadow Bolt", t=2000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ["Flamewaker Priest"] = {p="Dark Mending", t=2000, ico="Spell_Shadow_ChillTouch", m="silence"};
  ["Flesh Hunter"] = {p="Poison Bolt", t=2000, ico="Spell_Nature_CorrosiveBreath", m="silence"};
  ["Gehennas"] = {p="Shadow Bolt", t=500, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ["Giant Yeti"] = {p="Frost Breath", t=250, ico="Spell_Frost_FrostNova", m="silence"};
  ["Hakkari Shadowcaster"] = {p="Mana Burn", t=2000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ["Hakkari Witch Doctor"] = {p="Shrink", t=1500, ico="Spell_Shadow_AntiShadow", m="silence"};
  ["Hederine Initiate"] = {p="Shadow Bolt", t=2000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ["Ice Thistle Patriarch"] = {p="Frost Breath", t=250, ico="Spell_Frost_FrostNova", m="silence"};
  ["Jadefire Felsworn"] = {p="Shadow Bolt", t=2000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ["Kobold Geomancer"] = {p="Fireball", t=1500, ico="Spell_Fire_FlameBolt", m="silence"};
  ["Kurzen Medicine Man"] = {p="Drink Potion", t=3000, ico="Spell_Holy_Heal", m="silence"};
  ["Lady Jaina Proudmoore"] = {
    ["Blizzard"] = {t=1000, ico="Spell_Frost_IceStorm", m="silence"};
    ["Fireball"] = {t=1500, ico="Spell_Fire_FlameBolt", m="silence"};
  };
  ["Living Monstrosity"] = {p="Chain Lightning", t=1000, ico="Spell_Nature_ChainLightning", m="silence"};
  ["Lokholar the Ice Lord"] = {p="Blizzard", t=1000, ico="Spell_Frost_IceStorm", m="silence"};
  ["Lord Pythas"] = {p="Healing Touch", t=2000, ico="Spell_Nature_HealingTouch", m="silence"};
  ["Lord Victor Nefarius"] = {
    ["Shadow Bolt Volley"] = {t=2000, ico="Spell_Shadow_ShadowBolt", m="silence"};
    ["Shadow Bolt"] = {t=2000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  };
  ["Mad Scientist"] = {p="Great Heal", t=2000, ico="Spell_Holy_Heal", m="silence"};
  ["Magmus"] = {p="Fiery Burst", t=2000, ico="Spell_Fire_FireBolt", m="silence"};
  ["Maleki the Pallid"] = {p="Frostbolt", t=2000, ico="Spell_Frost_FrostBolt02", m="silence"};
  ["Mana Burst"] = {p="Arcane Explosion", t=1000, ico="Spell_Nature_WispSplode", m="silence"};
  ["Manahound"] = {p="Mana Burn", t=1000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ["Maraudine Stormer"] = {p="Lightning Cloud", t=2500, ico="Spell_Nature_CallStorm", m="silence"};
  ["Marisa du\'Paige"] = {p="Chains of Ice", t=1300, ico="Spell_Frost_ChainsOfIce", m="silence"};
  ["Mazzranache"] = {p="Deadly Poison", t=2000, ico="Spell_Nature_NullifyPoison", m="silence"};
  ["Mezzir the Howler"] = {p="Frost Breath", t=250, ico="Spell_Frost_FrostNova", m="silence"};
  ["Mountain Yeti"] = {p="Frost Breath", t=250, ico="Spell_Frost_FrostNova", m="silence"};
  ["Necro Knight"] = {p="Flamestrike", t=2000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ["Nefarian"] = {p="Bellowing Roar", t=1500, ico="Spell_Shadow_Charm", m="silence"};
  ["Onyxia"] = {p="Bellowing Roar", t=1500, ico="Spell_Fire_Fire", m="silence"};
  ["Princess Tempestria"] = {p="Frostbolt", t=1000, ico="Spell_Frost_FrostBolt02", m="silence"};
  ["Princess Yauj"] = {p="Great Heal", t=2000, ico="Spell_Holy_Heal", m="silence"};
  ["Rage Talon Fire Tongue"] = {p="Flame Buffet", t=1500, ico="Spell_Fire_Fireball", m="silence"};
  ["Red Wyrmkin"] = {p="Flamestrike", t=2500, ico="Spell_Fire_SelfDestruct", m="silence"};
  ["Rogue Black Drake"] = {p="Flame Breath", t=1700, ico="Spell_Fire_Fire", m="silence"};
  ["Scarlet High Clerist"] = {p="Holy Fire", t=5000, ico="Spell_Holy_SearingLight", m="silence"};
  ["Scarlet Magus"] = {p="Fireball Volley", t=3000, ico="Spell_Fire_FlameBolt", m="silence"};
  ["Scarshield Spellbinder"] = {p="Mana Burn", t=2000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ["Scorched Guardian"] = {p="Flame Breath", t=1700, ico="Spell_Fire_Fire", m="silence"};
  ["Shazzrah"] = {p="Arcane Explosion", t=500, ico="Spell_Nature_WispSplode", m="silence"};
  ["Siege Golem"] = {p="Fireball", t=500, ico="Spell_Fire_FlameBolt", m="silence"};
  ["Spectral Death Knight"] = {p="Mana Burn", t=1000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ["Spectral Trainee"] = {p="Fear", t=1000, ico="Spell_Shadow_Possession", m="silence"};
  ["Spirestone Mystic"] = {p="Forked Lightning", t=1500, ico="Spell_Nature_ChainLightning", m="silence"};
  ["Spitting Scarab"] = {p="Acid Spit", t=2000, ico="Spell_Nature_Acid_01", m="silence"};
  ["Syndicate Conjuror"] = {p="Sleep", t=1000, ico="Spell_Nature_Sleep", m="silence"};
  ["The Prophet Skeram"] = {p="Arcane Explosion", t=1000, ico="Spell_Nature_WispSplode", m="silence"};
  ["The Windreaver"] = {p="Chain Lightning", t=2000, ico="Spell_Nature_ChainLightning", m="silence"};
  ["Twilight Fire Guard"] = {p="Fireball Volley", t=3000, ico="Spell_Fire_FlameBolt", m="silence"};
  ["Tyranis Malem"] = {p="Wrath", t=2000, ico="Spell_Nature_Lightning", m="silence"};
  ["Unholy Staff"] = {p="Arcane Explosion", t=500, ico="Spell_Nature_WispSplode", m="silence"};
  ["Unrelenting Rider"] = {p="Shadow Bolt Volley", t=1500, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ["Venomous Cloud Serpent"] = {p="Deadly Poison", t=2000, ico="Spell_Nature_NullifyPoison", m="silence"};
  ["Wendigo"] = {p="Frost Breath", t=250, ico="Spell_Frost_FrostNova", m="silence"};
  ["Wrathtail Priestess"] = {p="Sleep", t=1000, ico="Spell_Nature_Sleep", m="silence"};
  ["Wushoolay"] = {p="Chain Lightning", t=1500, ico="Spell_Nature_ChainLightning", m="silence"};
  ["Wyrmkin Dreamwalker"] = {p="Sleep", t=1000, ico="Spell_Nature_Sleep", m="silence"};
  ["Wyrmkin Firebrand"] = {p="Shadow Bolt", t=2000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ["Young Wendigo"] = {p="Frost Breath", t=250, ico="Spell_Frost_FrostNova", m="silence"};
}

local Spells = {
  ["Drag me (target)"] = {t=3500, ico="Trade_Engineering", s=0, m="silence"};
  ["Drag me"] = {t=3500, ico="Trade_Engineering", s=0, m="silence"};
  ['[PH] Teleport to Auberdine'] = {t=2000, ico="Temp", m="silence"};
  ['[PH] Teleport to Balthule'] = {t=2000, ico="Temp", m="silence"};
  ['[PH] Teleport to Booty Bay'] = {t=2000, ico="Temp", m="silence"};
  ['[PH] Teleport to Felwood'] = {t=2000, ico="Temp", m="silence"};
  ['[PH] Teleport to Grom\'Gol'] = {t=2000, ico="Temp", m="silence"};
  ['[PH] Teleport to Menethil Harbor'] = {t=2000, ico="Temp", m="silence"};
  ['[PH] Teleport to Orgrimmar'] = {t=2000, ico="Temp", m="silence"};
  ['[PH] Teleport to Ratchet'] = {t=2000, ico="Temp", m="silence"};
  ['[PH] Teleport to Theramore'] = {t=2000, ico="Temp", m="silence"};
  ['[PH] Teleport to Undercity'] = {t=2000, ico="Temp", m="silence"};
  ['Abomination Spit'] = {t=2500, ico="Spell_Nature_CorrosiveBreath", m="silence"};
  ['Acid of Hakkar'] = {t=1000, ico="Spell_Nature_Acid_01", m="silence"};
  ['Acid Spit'] = {t=3000, ico="Spell_Nature_Acid_01", m="silence"};
  ['Acid Spray'] = {t=2000, ico="Spell_Nature_Acid_01", m="silence"};
  ['Amplify Flames'] = {t=1000, ico="Spell_Fire_Fireball", m="silence"};
  ['Arcane Bolt'] = {t=1000, ico="Spell_Arcane_StarFire", m="silence"};
  ['Arcane Bomb'] = {t=1500, ico="Spell_Holy_Silence", m="pacify"};
  ['Arcane Explosion'] = {t=1500, ico="Spell_Nature_WispSplode", m="silence"};
  ['Area Burn'] = {t=3000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Arugal\'s Gift'] = {t=2500, ico="Spell_Shadow_ChillTouch", m="silence"};
  ['Ashcrombe\'s Teleport'] = {t=2000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Astral Recall'] = {t=10000, ico="Spell_Nature_AstralRecal", m="silence"};
  ['Attack'] = {t=2000, ico="Spell_Fire_SearingTotem", m="silence"};
  ['Banish'] = {t=1000, ico="Spell_Shadow_Cripple", m="silence"};
  ['Banshee Curse'] = {t=2000, ico="Spell_Nature_Drowsy", m="silence"};
  ['Banshee Wail'] = {t=1500, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ['Big Bronze Bomb'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Big Iron Bomb'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Blizzard'] = {t=2000, ico="Spell_Frost_IceStorm", m="silence"};
  ['Blood Howl'] = {t=1000, ico="Spell_Shadow_LifeDrain", m="silence"};
  ['Bombard'] = {t=3000, ico="Ability_GolemStormBolt", m="pacify"};
  ['Bombard II'] = {t=3000, ico="Ability_GolemStormBolt", m="pacify"};
  ['Boulder'] = {t=2000, ico="Ability_Throw", m="pacify"};
  ['Breath of Sargeras'] = {t=2000, ico="Spell_Shadow_Metamorphosis", m="silence"};
  ['Burning Winds'] = {t=1000, ico="Spell_Nature_Cyclone", m="silence"};
  ['Call of the Grave'] = {t=2000, ico="Spell_Shadow_ChillTouch", m="silence"};
  ['Call of the Void'] = {t=3000, ico="Spell_Shadow_DeathCoil", m="silence"};
  ['Chain Bolt'] = {t=2500, ico="Spell_Nature_ChainLightning", m="silence"};
  ['Chain Burn'] = {t=3000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ['Chain Heal'] = {t=2500, ico="Spell_Nature_HealingWaveGreater", m="silence"};
  ['Chain Lightning'] = {t=3000, ico="Spell_Nature_ChainLightning", m="silence"};
  ['Chained Bolt'] = {t=1800, ico="Spell_Nature_ChainLightning", m="silence"};
  ['Charged Arcane Bolt'] = {t=7000, ico="Spell_Arcane_StarFire", m="silence"};
  ['Chilling Breath'] = {t=1000, ico="Spell_Frost_Wisp", m="silence"};
  ['Cleave'] = {t=2500, ico="Ability_Warrior_Cleave", m="pacify"};
  ['Clone'] = {t=2500, ico="Spell_Shadow_BlackPlague", m="silence"};
  ['Coarse Dynamite'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Cookie\'s Cooking'] = {t=2000, ico="Spell_Holy_Heal", m="silence"};
  ['Copy of Fear'] = {t=1500, ico="Spell_Shadow_Possession", m="silence"};
  ['Copy of Great Heal'] = {t=2000, ico="Spell_Holy_Heal", m="silence"};
  ['Copy of Healing Wave'] = {t=3000, ico="Spell_Nature_MagicImmunity", m="silence"};
  ['Corrosive Acid'] = {t=1500, ico="Spell_Nature_Acid_01", m="silence"};
  ['Corrosive Acid Spit'] = {t=3000, ico="Spell_Nature_Acid_01", m="silence"};
  ['Corrosive Poison'] = {t=1500, ico="Spell_Nature_CorrosiveBreath", m="silence"};
  ['Corrosive Venom Spit'] = {t=2500, ico="Spell_Nature_CorrosiveBreath", m="silence"};
  ['Crash of Waves'] = {t=2000, ico="Spell_Frost_FrostNova", m="silence"};
  ['Create Sapta'] = {t=3000, ico="INV_Misc_Food_09", m="silence"};
  ['Creeper Venom'] = {t=2000, ico="Spell_Nature_NullifyPoison", m="silence"};
  ['Creeping Mold'] = {t=3000, ico="Spell_Shadow_CreepingPlague", m="silence"};
  ['Cripple'] = {t=3000, ico="Spell_Shadow_Cripple", m="silence"};
  ['Crypt Scarabs'] = {t=2000, ico="Spell_Shadow_CarrionSwarm", m="pacify"};
  ['Crystal Gaze'] = {t=2000, ico="Ability_GolemThunderClap", m="silence"};
  ['Crystalline Slumber'] = {t=2000, ico="Spell_Nature_Sleep", m="silence"};
  ['Curse of Blood'] = {t=2000, ico="Spell_Shadow_RitualOfSacrifice", m="silence"};
  ['Curse of Hakkar'] = {t=2500, ico="Spell_Shadow_GatherShadows", m="silence"};
  ['Curse of Mending'] = {t=1000, ico="Spell_Shadow_AntiShadow", m="silence"};
  ['Curse of the Darkmaster'] = {t=2000, ico="Spell_Shadow_AntiShadow", m="silence"};
  ['Curse of the Deadwood'] = {t=2000, ico="Spell_Shadow_GatherShadows", m="silence"};
  ['Curse of the Firebrand'] = {t=2000, ico="Ability_Creature_Cursed_03", m="silence"};
  ['Curse of the Plague Rat'] = {t=1500, ico="Spell_Shadow_UnholyFrenzy", m="silence"};
  ['Curse of the Tribes'] = {t=2000, ico="Spell_Shadow_CurseOfMannoroth", m="silence"};
  ['Curse of Thorns'] = {t=2000, ico="Spell_Shadow_AntiShadow", m="silence"};
  ['Curse of Thule'] = {t=2000, ico="Spell_Shadow_ShadowPact", m="silence"};
  ['Dark Iron Bomb'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Dark Mending'] = {t=3500, ico="Spell_Shadow_ChillTouch", m="silence"};
  ['Dark Whispers'] = {t=3000, ico="Spell_Shadow_Haunting", m="silence"};
  ['Darken Vision'] = {t=2000, ico="Spell_Shadow_Fumble", m="silence"};
  ['Deadly Poison'] = {t=2000, ico="Spell_Nature_CorrosiveBreath", m="silence"};
  ['Death & Decay'] = {t=2000, ico="Spell_Shadow_DeathAndDecay", m="silence"};
  ['Decayed Agility'] = {t=2000, ico="Spell_Holy_HarmUndeadAura", m="silence"};
  ['Decayed Strength'] = {t=2000, ico="Spell_Holy_HarmUndeadAura", m="silence"};
  ['Deep Slumber'] = {t=1000, ico="Spell_Shadow_Cripple", m="silence"};
  ['Dense Dynamite'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Detonation'] = {t=5000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Disease Buffet'] = {t=1500, ico="Spell_Nature_EarthBind", m="silence"};
  ['Diseased Shot'] = {t=2000, ico="Spell_Shadow_CallofBone", m="pacify"};
  ['Diseased Slime'] = {t=2000, ico="Spell_Shadow_CreepingPlague", m="silence"};
  ['Diseased Spit'] = {t=3000, ico="Spell_Shadow_CreepingPlague", m="silence"};
  ['Dominate Mind'] = {t=2000, ico="Spell_Shadow_ShadowWordDominate", m="silence"};
  ['Domination'] = {t=1000, ico="Spell_Shadow_ShadowWordDominate", m="silence"};
  ['Draw of Thistlenettle'] = {t=2000, ico="Spell_Shadow_Haunting", m="silence"};
  ['Drink Minor Potion'] = {t=3000, ico="Spell_Holy_Heal", m="silence"};
  ['Drink Potion'] = {t=2000, ico="Spell_Holy_Heal", m="silence"};
  ['Druid\'s Slumber'] = {t=2500, ico="Spell_Nature_Sleep", m="silence"};
  ['Dust Cloud'] = {t=1500, ico="Ability_Hibernation", m="silence"};
  ['Earth Elemental'] = {t=3000, ico="Ability_Temp", m="silence"};
  ['Editor Test Spell'] = {t=250, ico="Temp", m="silence"};
  ['Electrified Net'] = {t=500, ico="Ability_Ensnare", m="pacify"};
  ['Enchanted Quickness'] = {t=3000, ico="Spell_Nature_Invisibilty", m="silence"};
  ['Enchanting Lullaby'] = {t=1000, ico="Spell_Shadow_SoothingKiss", m="silence"};
  ['Enervate'] = {t=1500, ico="Ability_Creature_Poison_03", m="silence"};
  ['Enfeeble'] = {t=2000, ico="Spell_Shadow_CurseOfMannoroth", m="silence"};
  ['Entangling Roots'] = {t=1500, ico="Spell_Nature_StrangleVines", m="silence"};
  ['Enveloping Winds'] = {t=2000, ico="Spell_Nature_Cyclone", m="silence"};
  ['Evil Eye'] = {t=1500, ico="Spell_Shadow_Charm", m="silence"};
  ['Eye Beam'] = {t=2000, ico="Spell_Nature_CallStorm", m="silence"};
  ['Eye of Immol\'thar'] = {t=2000, ico="Spell_Shadow_AntiMagicShell", m="silence"};
  ['Eye of Kilrogg'] = {t=5000, ico="Spell_Shadow_EvilEye", m="silence"};
  ['Ez-Thro Dynamite'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Faerie Fire'] = {t=2000, ico="Spell_Nature_FaerieFire", m="silence"};
  ['Fake Shot'] = {t=2000, ico="Ability_Marksmanship", m="pacify"};
  ['Far Sight'] = {t=2000, ico="Spell_Nature_FarSight", m="silence"};
  ['Fear'] = {t=1500, ico="Spell_Shadow_Possession", m="silence"};
  ['Feeblemind'] = {t=1000, ico="Spell_Shadow_MindSteal", m="silence"};
  ['Feeblemind II'] = {t=1000, ico="Spell_Shadow_MindSteal", m="silence"};
  ['Feeblemind III'] = {t=1000, ico="Spell_Shadow_MindSteal", m="silence"};
  ['Feral Spirit'] = {t=3000, ico="Spell_Nature_SpiritWolf", m="silence"};
  ['Feral Spirit II'] = {t=3000, ico="Spell_Nature_SpiritWolf", m="silence"};
  ['Fevered Fatigue'] = {t=3000, ico="Spell_Nature_NullifyDisease", m="silence"};
  ['Fevered Plague'] = {t=4500, ico="Spell_Nature_NullifyDisease", m="silence"};
  ['Fiery Burst'] = {t=1500, ico="Spell_Fire_FireBolt", m="silence"};
  ['Fire Elemental'] = {t=3000, ico="Ability_Temp", m="silence"};
  ['Fire Shield'] = {t=1000, ico="Spell_Fire_Immolation", m="silence"};
  ['Fire Shield II'] = {t=1000, ico="Spell_Fire_Immolation", m="silence"};
  ['Fire Shield III'] = {t=1000, ico="Spell_Fire_Immolation", m="silence"};
  ['Fire Shield IV'] = {t=1000, ico="Spell_Fire_Immolation", m="silence"};
  ['Fire Storm'] = {t=2000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Fireball'] = {t=3000, ico="Spell_Fire_FlameBolt", m="silence"};
  ['Fireball Volley'] = {t=2000, ico="Spell_Fire_FlameBolt", m="silence"};
  ['Firebolt'] = {t=3000, ico="Spell_Fire_FireBolt02", m="silence"};
  ['Firebolt II'] = {t=3000, ico="Spell_Fire_FireBolt02", m="silence"};
  ['Firebolt III'] = {t=3000, ico="Spell_Fire_FireBolt02", m="silence"};
  ['Firebolt IV'] = {t=3000, ico="Spell_Fire_FireBolt02", m="silence"};
  ['First Aid'] = {t=3000, ico="Spell_Holy_GreaterHeal", m="silence"};
  ['Flame Blast'] = {t=7000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Flame Breath'] = {t=2000, ico="Spell_Fire_Fire", m="silence"};
  ['Flame Buffet'] = {t=2200, ico="Spell_Fire_Fireball", m="silence"};
  ['Flame Burst'] = {t=3000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Flame Cannon'] = {t=1500, ico="Spell_Fire_FlameBolt", m="silence"};
  ['Flame Lash'] = {t=1000, ico="Spell_Fire_Fireball", m="silence"};
  ['Flame Spike'] = {t=3000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Flame Spray'] = {t=1700, ico="Spell_Fire_Fire", m="silence"};
  ['Flamecrack'] = {t=2500, ico="Spell_Fire_Fire", m="silence"};
  ['Flamespit'] = {t=3000, ico="Spell_Fire_FlameBolt", m="silence"};
  ['Flamestrike'] = {t=3000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Flash of Light'] = {t=1500, ico="Spell_Holy_Heal", m="silence"};
  ['Force Punch'] = {t=1000, ico="INV_Gauntlets_31", m="pacify"};
  ['Freeze'] = {t=3500, ico="Spell_Frost_Glacier", m="silence"};
  ['Freeze Solid'] = {t=2500, ico="Spell_Frost_Glacier", m="silence"};
  ['Frost Breath'] = {t=2000, ico="Spell_Frost_FrostNova", m="silence"};
  ['Frost Burn'] = {t=2000, ico="Spell_Frost_ChillingBlast", m="silence"};
  ['Frostbolt'] = {t=3000, ico="Spell_Frost_FrostBolt02", m="silence"};
  ['Frostbolt Volley'] = {t=2000, ico="Spell_Frost_FrostBolt02", m="silence"};
  ['Fumble'] = {t=1000, ico="Spell_Shadow_Fumble", m="silence"};
  ['Fumble II'] = {t=1000, ico="Spell_Shadow_Fumble", m="silence"};
  ['Fumble III'] = {t=1000, ico="Spell_Shadow_Fumble", m="silence"};
  ['Gargoyle Strike'] = {t=1500, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ['Gas Bomb'] = {t=1000, ico="INV_Misc_Ammo_Bullet_01", m="pacify"};
  ['Glare'] = {t=500, ico="Temp", m="pacify"};
  ['Goldshire Portal'] = {t=5000, ico="Temp", m="silence"};
  ['Grasping Vines'] = {t=1000, ico="Spell_Nature_Earthquake", m="silence"};
  ['Great Heal'] = {t=4000, ico="Spell_Holy_Heal", m="silence"};
  ['Gust of Wind'] = {t=2000, ico="Spell_Nature_EarthBind", m="silence"};
  ['Haunting Phantoms'] = {t=2000, ico="Spell_Shadow_BlackPlague", m="silence"};
  ['Haunting Spirits'] = {t=2000, ico="Spell_Shadow_BlackPlague", m="silence"};
  ['Heal'] = {t=3500, ico="Spell_Holy_Heal", m="silence"};
  ['Healing Tongue'] = {t=1000, ico="Spell_Holy_Heal", m="silence"};
  ['Healing Tongue II'] = {t=1000, ico="Spell_Holy_Heal", m="silence"};
  ['Healing Touch'] = {t=3000, ico="Spell_Nature_HealingTouch", m="silence"};
  ['Healing Ward'] = {t=2000, ico="Spell_Holy_LayOnHands", m="silence"};
  ['Healing Wave'] = {t=3000, ico="Spell_Nature_MagicImmunity", m="silence"};
  ['Healing Wave of Antu\'sul'] = {t=1000, ico="Spell_Holy_Heal02", m="silence"};
  ['Heavy Dynamite'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Hellfire'] = {t=3000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Hellfire II'] = {t=3000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Hellfire III'] = {t=3000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Hex'] = {t=2000, ico="Spell_Nature_Polymorph", m="silence"};
  ['Hex of Ravenclaw'] = {t=2000, ico="Spell_Shadow_Charm", m="silence"};
  ['Hi-Explosive Bomb'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Holy Light'] = {t=2500, ico="Spell_Holy_HolyBolt", m="silence"};
  ['Holy Smite'] = {t=2500, ico="Spell_Holy_HolySmite", m="silence"};
  ['Holy Wrath'] = {t=2000, ico="Spell_Holy_Excorcism", m="silence"};
  ['Hooked Net'] = {t=500, ico="Ability_Ensnare", m="pacify"};
  ['Ice Tomb'] = {t=1500, ico="Spell_Frost_Glacier", m="silence"};
  ['Icebolt'] = {t=2000, ico="Spell_Frost_FrostBolt02", m="silence"};
  ['Icicle'] = {t=1500, ico="Spell_Frost_FrostBolt02", m="silence"};
  ['Ignite Flesh'] = {t=2000, ico="Spell_Fire_Fire", m="silence"};
  ['Immolate'] = {t=2000, ico="Spell_Fire_Immolation", m="silence"};
  ['Incinerate'] = {t=2000, ico="Spell_Shadow_ChillTouch", m="silence"};
  ['Inferno'] = {t=3000, ico="Spell_Shadow_SummonInfernal", m="silence"};
  ['Inferno Shell'] = {t=3000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Ink Spray'] = {t=1000, ico="Spell_Nature_Sleep", m="pacify"};
  ['Intense Pain'] = {t=1000, ico="Spell_Shadow_ShadowWordPain", m="silence"};
  ['Jumping Lightning'] = {t=3000, ico="Spell_Nature_Lightning", m="silence"};
  ['Kev'] = {t=3000, ico="Spell_Fire_FireBolt", m="silence"};
  ['Large Copper Bomb'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Lethal Toxin'] = {t=3000, ico="Spell_Nature_CorrosiveBreath", m="silence"};
  ['Life Steal'] = {t=1500, ico="Spell_Shadow_LifeDrain02", m="silence"};
  ['Lightning Blast'] = {t=3200, ico="Spell_Nature_Lightning", m="silence"};
  ['Lightning Bolt'] = {t=3000, ico="Spell_Nature_Lightning", m="silence"};
  ['Lightning Breath'] = {t=2000, ico="Spell_Nature_Lightning", m="silence"};
  ['Lightning Cloud'] = {t=3000, ico="Spell_Nature_CallStorm", m="silence"};
  ['Lizard Bolt'] = {t=2000, ico="Spell_Nature_Lightning", m="silence"};
  ['Longshot II'] = {t=4000, ico="Ability_Marksmanship", m="pacify"};
  ['Longshot III'] = {t=4000, ico="Ability_Marksmanship", m="pacify"};
  ['Machine Gun'] = {t=500, ico="Ability_Marksmanship", m="pacify"};
  ['Magma Blast'] = {t=1000, ico="Spell_Fire_FlameShock", m="silence"};
  ['Mana Burn'] = {t=3000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ['Manastorm'] = {t=2000, ico="Spell_Frost_IceStorm", m="silence"};
  ['Mark of Flames'] = {t=1000, ico="Spell_Fire_Fireball", m="silence"};
  ['Marksman Hit'] = {t=2000, ico="Ability_Marksmanship", m="pacify"};
  ['Massive Geyser'] = {t=1500, ico="Spell_Frost_SummonWaterElemental", m="silence"};
  ['Megavolt'] = {t=2000, ico="Spell_Nature_ChainLightning", m="silence"};
  ['Might of Ragnaros'] = {t=500, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Mind Blast'] = {t=1500, ico="Spell_Shadow_UnholyFrenzy", m="silence"};
  ['Mind Rot'] = {t=2000, ico="Spell_Shadow_MindRot", m="silence"};
  ['Miring Mud'] = {t=1000, ico="Spell_Nature_StrangleVines", m="silence"};
  ['Mirkfallon Fungus'] = {t=3000, ico="Spell_Holy_HarmUndeadAura", m="silence"};
  ['Mithril Frag Bomb'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Molten Blast'] = {t=2000, ico="Spell_Fire_Fire", m="silence"};
  ['Naralex\'s Nightmare'] = {t=2000, ico="Spell_Nature_Sleep", m="silence"};
  ['Parasite'] = {t=2000, ico="Ability_Poisons", m="pacify"};
  ['Pickpocket (PT)'] = {t=5000, ico="Temp", m="pacify"};
  ['Piercing Shadow'] = {t=2000, ico="Spell_Shadow_ChillTouch", m="silence"};
  ['Plague Cloud'] = {t=2000, ico="Spell_Shadow_CallofBone", m="silence"};
  ['Plague Mind'] = {t=4000, ico="Spell_Shadow_CallofBone", m="silence"};
  ['Pointy Spike'] = {t=500, ico="Ability_ImpalingBolt", m="pacify"};
  ['Poison Bolt'] = {t=2500, ico="Spell_Nature_CorrosiveBreath", m="silence"};
  ['Poison Cloud'] = {t=1000, ico="Spell_Nature_Regenerate", m="silence"};
  ['Poison Stinger'] = {t=2000, ico="INV_Misc_MonsterTail_03", m="pacify"};
  ['Poisoned Harpoon'] = {t=2000, ico="Ability_Poisons", m="silence"};
  ['Poisoned Shot'] = {t=2000, ico="Ability_Poisons", m="pacify"};
  ['Polymorph'] = {t=1500, ico="Spell_Nature_Polymorph", m="silence"};
  ['Potion Toss'] = {t=2000, ico="Spell_Misc_Drink", m="silence"};
  ['Prayer of Healing'] = {t=3000, ico="Spell_Holy_PrayerOfHealing02", m="silence"};
  ['Presence of Death'] = {t=1000, ico="Spell_Shadow_ShadeTrueSight", m="silence"};
  ['Pyroblast'] = {t=10000, ico="Spell_Fire_Immolation", m="silence"};
  ['Quick Bloodlust'] = {t=2000, ico="Spell_Nature_BloodLust", m="silence"};
  ['Radiation Bolt'] = {t=3000, ico="Spell_Shadow_CorpseExplode", m="silence"};
  ['Rage of Thule'] = {t=1500, ico="Spell_Shadow_UnholyFrenzy", m="silence"};
  ['Rain of Fire'] = {t=3000, ico="Spell_Shadow_RainOfFire", m="silence"};
  ['Raise Dead'] = {t=1000, ico="Spell_Shadow_RaiseDead", m="silence"};
  ['Redemption'] = {t=10000, ico="Spell_Holy_Resurrection", m="silence"};
  ['Regrowth'] = {t=2000, ico="Spell_Nature_ResistNature", m="silence"};
  ['Renew'] = {t=2000, ico="Spell_Holy_Renew", m="silence"};
  ['Replenish Spirit'] = {t=3000, ico="Spell_Nature_MoonGlow", m="silence"};
  ['Replenish Spirit II'] = {t=3000, ico="Spell_Nature_MoonGlow", m="silence"};
  ['Resupply'] = {t=2000, ico="Spell_Misc_Drink", m="silence"};
  ['Retching Plague'] = {t=2000, ico="Spell_Shadow_CallofBone", m="silence"};
  ['Riding Turtle'] = {t=3000, ico="ability_hunter_pet_turtle", m="pacify"};
  ['Righteous Flame On'] = {t=4000, ico="Spell_Holy_InnerFire", m="silence"};
  ['Ritual of Summoning'] = {t=5000, ico="Spell_Shadow_Twilight", m="silence"};
  ['Rough Copper Bomb'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Rough Dynamite'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Ryson\'s Eye in the Sky'] = {t=1000, ico="Ability_Hunter_EagleEye", m="silence"};
  ['Sacrifice'] = {t=1000, ico="Spell_Shadow_AntiMagicShell", m="silence"};
  ['Sand Blast'] = {t=2000, ico="Spell_Nature_Cyclone", m="silence"};
  ['Sand Breath'] = {t=2000, ico="Spell_Fire_WindsofWoe", m="silence"};
  ['Sapper Explode'] = {t=5000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Scare Beast'] = {t=1500, ico="Ability_Druid_Cower", m="silence"};
  ['Scry on Azrethoc'] = {t=1000, ico="INV_Misc_Orb_03", m="silence"};
  ['Searing Flames'] = {t=2000, ico="Spell_Fire_Immolation", m="silence"};
  ['Shackle Undead'] = {t=2000, ico="Spell_Nature_Slow", m="silence"};
  ['Shadow Bolt'] = {t=3000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ['Shadow Bolt Misfire'] = {t=2000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ['Shadow Bolt Volley'] = {t=3000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ['Shadow Flame'] = {t=250, ico="Spell_Fire_Fire", m="pacify"};
  ['Shadow Nova II'] = {t=3000, ico="Spell_Shadow_ShadeTrueSight", m="silence"};
  ['Shadow Port'] = {t=250, ico="Spell_Shadow_AntiShadow", m="pacify"};
  ['Shared Bonds'] = {t=1500, ico="Spell_Shadow_UnsummonBuilding", m="silence"};
  ['Shockwave'] = {t=2000, ico="Ability_Whirlwind", m="pacify"};
  ['Shrink'] = {t=3000, ico="Spell_Shadow_AntiShadow", m="silence"};
  ['Silence'] = {t=1500, ico="Spell_Holy_Silence", m="silence"};
  ['Silithid Pox'] = {t=2000, ico="Spell_Nature_NullifyDisease", m="silence"};
  ['Skeletal Miner Explode'] = {t=5000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Slave Drain'] = {t=1000, ico="Spell_Shadow_ChillTouch", m="silence"};
  ['Sleep'] = {t=1300, ico="Spell_Nature_Sleep", m="silence"};
  ['Slime Bolt'] = {t=2500, ico="Spell_Nature_CorrosiveBreath", m="silence"};
  ['Sling Dirt'] = {t=1000, ico="Spell_Nature_Sleep", m="pacify"};
  ['Slow Poison'] = {t=1000, ico="Spell_Nature_SlowPoison", m="silence"};
  ['Slow Poison II'] = {t=1000, ico="Spell_Nature_SlowPoison", m="silence"};
  ['Slowing Poison'] = {t=1000, ico="Spell_Nature_SlowPoison", m="silence"};
  ['Sludge Toxin'] = {t=2000, ico="Spell_Nature_Regenerate", m="silence"};
  ['Small Bronze Bomb'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Solid Dynamite'] = {t=1000, ico="Spell_Fire_SelfDestruct", m="pacify"};
  ['Soul Bite'] = {t=2000, ico="Spell_Shadow_SiphonMana", m="silence"};
  ['Soul Consumption'] = {t=4000, ico="Ability_Racial_Cannibalize", m="silence"};
  ['Soul Drain'] = {t=2000, ico="Spell_Shadow_LifeDrain02", m="silence"};
  ['Soulstone Resurrection'] = {t=3000, ico="Spell_Shadow_SoulGem", m="silence"};
  ['Southsea Cannon Fire'] = {t=5000, ico="Spell_Fire_FireBolt02", m="pacify"};
  ['Spark'] = {t=2000, ico="Spell_Nature_Lightning", m="silence"};
  ['Spike Volley'] = {t=500, ico="Ability_ImpalingBolt", m="pacify"};
  ['Spirit Decay'] = {t=2000, ico="Spell_Holy_HarmUndeadAura", m="silence"};
  ['Storm Bolt'] = {t=1000, ico="INV_Hammer_01", m="silence"};
  ['Strength of Arko\'narin'] = {t=4000, ico="Spell_Nature_AstralRecal", m="silence"};
  ['Strike'] = {t=2000, ico="Temp", m="pacify"};
  ['Summon Blackhand Dreadweaver'] = {t=5000, ico="Spell_Nature_Purge", m="silence"};
  ['Summon Blackhand Veteran'] = {t=5000, ico="Spell_Nature_Purge", m="silence"};
  ['Summon Charger'] = {t=3000, ico="Ability_Mount_Charger", m="silence"};
  ['Summon Cyclonian'] = {t=10000, ico="Spell_Nature_EarthBind", m="pacify"};
  ['Summon Dreadsteed'] = {t=3000, ico="Ability_Mount_Dreadsteed", m="silence"};
  ['Summon Felsteed'] = {t=3000, ico="Spell_Nature_Swiftness", m="silence"};
  ['Summon Infernal Servant'] = {t=2000, ico="Spell_Shadow_SummonInfernal", m="silence"};
  ['Summon Netherwalker'] = {t=4000, ico="Spell_Shadow_GatherShadows", m="silence"};
  ['Summon Risen Lackey'] = {t=2000, ico="Spell_Shadow_RaiseDead", m="silence"};
  ['Summon Rockwing Gargoyles'] = {t=10000, ico="Spell_Shadow_UnsummonBuilding", m="silence"};
  ['Summon Shield Guard'] = {t=5000, ico="Spell_Nature_Purge", m="silence"};
  ['Summon Spirit of Old'] = {t=4000, ico="Spell_Nature_Purge", m="silence"};
  ['Summon Theurgist'] = {t=5000, ico="Spell_Nature_Purge", m="silence"};
  ['Summon Warhorse'] = {t=3000, ico="Spell_Nature_Swiftness", m="silence"};
  ['Summon Water Elemental'] = {t=2000, ico="Spell_Shadow_SealOfKings", m="silence"};
  ['Summon Witherbark Felhunter'] = {t=3000, ico="Spell_Shadow_SummonFelHunter", m="silence"};
  ['Summon Zombie'] = {t=2000, ico="Spell_Shadow_RaiseDead", m="silence"};
  ['Superior Healing Ward'] = {t=2000, ico="Spell_Holy_LayOnHands", m="silence"};
  ['Sweep'] = {t=1500, ico="Spell_Nature_Thorns", m="pacify"};
  ['Symbol of Life'] = {t=10000, ico="Spell_Holy_Resurrection", m="silence"};
  ['Teleport Altar of the Tides'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Anvilmar'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Barracks'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Cemetary'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Darkshire'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Duskwood'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Elwynn'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Goldshire'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Lighthouse'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Monastery'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Moonbrook'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Northshire Abbey'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport to Darnassus - Event'] = {t=1000, ico="Temp", m="silence"};
  ['Teleport Treant'] = {t=2000, ico="Temp", m="silence"};
  ['Teleport Westfall'] = {t=2000, ico="Temp", m="silence"};
  ['Tharnariun Cure 1'] = {t=750, ico="Spell_Nature_RemoveDisease", m="silence"};
  ['Throw Rock'] = {t=3000, ico="Ability_GolemStormBolt", m="pacify"};
  ['Throw Rock II'] = {t=3000, ico="Ability_GolemStormBolt", m="pacify"};
  ['Time Lapse'] = {t=2000, ico="Spell_Arcane_PortalOrgrimmar", m="silence"};
  ['Touch of Death'] = {t=3000, ico="Spell_Shadow_UnsummonBuilding", m="silence"};
  ['Touch of Ravenclaw'] = {t=1500, ico="Spell_Shadow_Requiem", m="pacify"};
  ['Toxic Saliva'] = {t=500, ico="Spell_Nature_CorrosiveBreath", m="silence"};
  ['Trelane\'s Freezing Touch'] = {t=3000, ico="Spell_Shadow_UnsummonBuilding", m="silence"};
  ['Turn Undead'] = {t=1500, ico="Spell_Holy_TurnUndead", m="silence"};
  ['Veil of Shadow'] = {t=1500, ico="Spell_Shadow_GatherShadows", m="silence"};
  ['Venom Spit'] = {t=2500, ico="Spell_Nature_CorrosiveBreath", m="silence"};
  ['Void Bolt'] = {t=3000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ['Volatile Infection'] = {t=2000, ico="Spell_Holy_HarmUndeadAura", m="silence"};
  ['Volley'] = {t=3000, ico="Ability_TheBlackArrow", m="pacify"};
  ['Volley II'] = {t=3000, ico="Ability_TheBlackArrow", m="pacify"};
  ['Wandering Plague'] = {t=2000, ico="Spell_Shadow_CallofBone", m="silence"};
  ['War Stomp'] = {t=500, ico="Ability_WarStomp", m="pacify"};
  ['Weak Frostbolt'] = {t=2200, ico="Spell_Frost_FrostBolt02", m="silence"};
  ['Wide Sweep'] = {t=4000, ico="Ability_Whirlwind", m="pacify"};
  ['Wild Regeneration'] = {t=3000, ico="Spell_Nature_Rejuvenation", m="silence"};
  ['Wing Buffet'] = {t=1000, ico="INV_Misc_MonsterScales_14", m="pacify"};
  ['Wither'] = {t=1500, ico="Spell_Nature_NullifyDisease", m="silence"};
  ['Wither Touch'] = {t=2000, ico="Spell_Nature_Drowsy", m="pacify"};
  ['Wrath'] = {t=1500, ico="Spell_Nature_Lightning", m="silence"};
}

local PlayerSpells = {
  ['Aimed Shot'] = {t=3000, ico="INV_Spear_07", m="pacify"};
  ['Ancestral Spirit'] = {t=10000, ico="Spell_Nature_Regenerate", m="silence"};
  ['Attack'] = {t=2200, ico="Spell_Fire_SearingTotem", m="silence"};
  ['Banish'] = {t=1500, ico="Spell_Shadow_Cripple", m="silence"};
  ['Bounty of the Harvest'] = {t=3000, ico="INV_Misc_Food_33", m="silence"};
  ['Chain Heal'] = {t=2500, ico="Spell_Nature_HealingWaveGreater", m="silence"};
  ['Chain Lightning'] = {t=2500, ico="Spell_Nature_ChainLightning", m="silence"};
  ['Conjure Food'] = {t=3000, ico="INV_Misc_Food_11", m="silence"};
  ['Conjure Mana Agate'] = {t=3000, ico="INV_Misc_Gem_Emerald_01", m="silence"};
  ['Conjure Mana Citrine'] = {t=3000, ico="INV_Misc_Gem_Opal_01", m="silence"};
  ['Conjure Mana Jade'] = {t=3000, ico="INV_Misc_Gem_Emerald_02", m="silence"};
  ['Conjure Mana Ruby'] = {t=3000, ico="INV_Misc_Gem_Ruby_01", m="silence"};
  ['Conjure Water'] = {t=3000, ico="INV_Drink_07", m="silence"}; --CHANGED from INV_Drink_06
  ['Copy of Frostbolt'] = {t=1500, ico="Spell_Frost_FrostBolt02", m="silence"};
  ['Copy of Portal: Undercity'] = {t=10000, ico="Spell_Arcane_PortalUnderCity", m="silence"};
  ['Corruption'] = {t=0, ico="Spell_Shadow_AbominationExplosion", m="silence"}; --CHANGED t from 2000
  ['Create Firestone'] = {t=3000, ico="INV_Ammo_FireTar", m="silence"};
  ['Create Firestone (Greater)'] = {t=3000, ico="INV_Ammo_FireTar", m="silence"};
  ['Create Firestone (Lesser)'] = {t=3000, ico="INV_Ammo_FireTar", m="silence"};
  ['Create Firestone (Major)'] = {t=3000, ico="INV_Ammo_FireTar", m="silence"};
  ['Create Healthstone'] = {t=3000, ico="INV_Stone_04", m="silence"};
  ['Create Healthstone (Greater)'] = {t=3000, ico="INV_Stone_04", m="silence"};
  ['Create Healthstone (Lesser)'] = {t=3000, ico="INV_Stone_04", m="silence"};
  ['Create Healthstone (Major)'] = {t=3000, ico="INV_Stone_04", m="silence"};
  ['Create Healthstone (Minor)'] = {t=3000, ico="INV_Stone_04", m="silence"};
  ['Create Soulstone'] = {t=3000, ico="Spell_Shadow_SoulGem", m="silence"};
  ['Create Soulstone (Greater)'] = {t=3000, ico="Spell_Shadow_SoulGem", m="silence"};
  ['Create Soulstone (Lesser)'] = {t=3000, ico="Spell_Shadow_SoulGem", m="silence"};
  ['Create Soulstone (Major)'] = {t=3000, ico="Spell_Shadow_SoulGem", m="silence"};
  ['Create Soulstone (Minor)'] = {t=3000, ico="Spell_Shadow_SoulGem", m="silence"};
  ['Create Spellstone'] = {t=5000, ico="INV_Misc_Gem_Sapphire_01", m="silence"};
  ['Create Spellstone (Greater)'] = {t=5000, ico="INV_Misc_Gem_Sapphire_01", m="silence"};
  ['Create Spellstone (Major)'] = {t=5000, ico="INV_Misc_Gem_Sapphire_01", m="silence"};
  ['Cure Disease'] = {t=2500, ico="Spell_Holy_NullifyDisease", m="silence"};
  ['Dispel'] = {t=1000, ico="Spell_Holy_DispelMagic", m="silence"};
  ['Dominion of Soul'] = {t=3000, ico="Spell_Shadow_ShadowWordDominate", m="silence"};
  ['Enslave Demon'] = {t=3000, ico="Spell_Shadow_EnslaveDemon", m="silence"};
  ['Entangling Roots'] = {t=1500, ico="Spell_Nature_StrangleVines", m="silence"};
  ['Eyes of the Beast'] = {t=2000, ico="Ability_EyeOfTheOwl", m="silence"};
  ['Fear'] = {t=1500, ico="Spell_Shadow_Possession", m="silence"};
  ['Fireball'] = {t=3000, ico="Spell_Fire_FlameBolt", m="silence"}; --CHANGED from 3500
  ['Firebolt'] = {t=2000, ico="Spell_Fire_FireBolt", m="silence"};
  ['Flamestrike'] = {t=3000, ico="Spell_Fire_SelfDestruct", m="silence"};
  ['Flash Heal'] = {t=1500, ico="Spell_Holy_FlashHeal", m="silence"};
  ['Flash of Light'] = {t=1500, ico="Spell_Holy_FlashHeal", m="silence"};
  ['Frostbolt'] = {t=2500, ico="Spell_Frost_FrostBolt02", m="silence"}; --CHANGED from 3000
  ['Ghost Wolf'] = {t=3000, ico="Spell_Nature_SpiritWolf", m="silence"};
  ['Greater Heal'] = {t=3000, ico="Spell_Holy_GreaterHeal", m="silence"};
  ['Greater Invisibility'] = {t=3000, ico="Spell_Nature_Invisibilty", m="silence"};
  ['Hammer of Wrath'] = {t=1000, ico="Ability_ThunderClap", m="silence"};
  ['Heal'] = {t=3000, ico="Spell_Holy_Heal02", m="silence"};
  ['Healing Touch'] = {t=3500, ico="Spell_Nature_HealingTouch", m="silence"};
  ['Healing Wave'] = {t=3000, ico="Spell_Nature_MagicImmunity", m="silence"};
  ['Hibernate'] = {t=1500, ico="Spell_Nature_Sleep", m="silence"};
  ['Holy Fire'] = {t=3500, ico="Spell_Holy_SearingLight", m="silence"};
  ['Holy Light'] = {t=2500, ico="Spell_Holy_HolyBolt", m="silence"};
  ['Howl of Terror'] = {t=2000, ico="Spell_Shadow_DeathScream", m="silence"};
  ['Immolate'] = {t=2000, ico="Spell_Fire_Immolation", m="silence"};
  ['Invisibility'] = {t=3000, ico="Spell_Nature_Invisibilty", m="silence"};
  ['Khadgar\'s Unlocking'] = {t=10000, ico="INV_Misc_Key_05", m="silence"};
  ['Lesser Heal'] = {t=2500, ico="Spell_Holy_LesserHeal", m="silence"};
  ['Lesser Healing Wave'] = {t=1500, ico="Spell_Nature_HealingWaveLesser", m="silence"};
  ['Lesser Invisibility'] = {t=3000, ico="Spell_Magic_LesserInvisibilty", m="silence"};
  ['Lightning Bolt'] = {t=3000, ico="Spell_Nature_Lightning", m="silence"};
  ['Lightwell'] = {t=1500, ico="Spell_Holy_SummonLightwell", m="silence"};
  ['Lunar Invititation'] = {t=5000, ico="Spell_Arcane_TeleportMoonglade", m="silence"};
  ['Mana Burn'] = {t=3000, ico="Spell_Shadow_ManaBurn", m="silence"};
  ['Mind Blast'] = {t=1500, ico="Spell_Shadow_UnholyFrenzy", m="silence"};
  ['Mind Control'] = {t=3000, ico="Spell_Shadow_ShadowWordDominate", m="silence"};
  ['Polymorph'] = {t=1500, ico="Spell_Nature_Polymorph", m="silence"};
  ['Polymorph: Cow'] = {t=1500, ico="Spell_Nature_Polymorph_Cow", m="silence"};
  ['Polymorph: Pig'] = {t=1500, ico="Spell_Magic_PolymorphPig", m="silence"};
  ['Polymorph: Turtle'] = {t=1500, ico="Ability_Hunter_Pet_Turtle", m="silence"};
  ['Portal: Darnassus'] = {t=10000, ico="Spell_Arcane_PortalDarnassus", m="silence"};
  ['Portal: Ironforge'] = {t=10000, ico="Spell_Arcane_PortalIronForge", m="silence"};
  ['Portal: Karazhan'] = {t=10000, ico="Spell_Arcane_PortalUnderCity", m="silence"};
  ['Portal: Orgrimmar'] = {t=10000, ico="Spell_Arcane_PortalOrgrimmar", m="silence"};
  ['Portal: Stormwind'] = {t=10000, ico="Spell_Arcane_PortalStormWind", m="silence"};
  ['Portal: Thunder Bluff'] = {t=10000, ico="Spell_Arcane_PortalThunderBluff", m="silence"};
  ['Portal: Undercity'] = {t=10000, ico="Spell_Arcane_PortalUnderCity", m="silence"};
  ['Prayer of Healing'] = {t=3000, ico="Spell_Holy_PrayerOfHealing02", m="silence"};
  ['Princess Summons Portal'] = {t=10000, ico="Spell_Arcane_PortalIronForge", m="silence"};
  ['Pyroblast'] = {t=6000, ico="Spell_Fire_Fireball02", m="silence"};
  ['Rebirth'] = {t=2000, ico="Spell_Nature_Reincarnation", m="silence"};
  ['Regrowth'] = {t=2000, ico="Spell_Nature_ResistNature", m="silence"};
  ['Resurrection'] = {t=10000, ico="Spell_Holy_Resurrection", m="silence"};
  ['Revive Pet'] = {t=10000, ico="Ability_Hunter_BeastSoothe", m="silence"};
  ['Ritual of Doom'] = {t=10000, ico="Spell_Shadow_AntiMagicShell", m="silence"};
  ['Scorch'] = {t=1500, ico="Spell_Fire_SoulBurn", m="silence"};
  ['Searing Pain'] = {t=1500, ico="Spell_Fire_SoulBurn", m="silence"};
  ['Seduction'] = {t=1500, ico="Spell_Shadow_MindSteal", m="silence"};
  ['Shackle Undead'] = {t=1500, ico="Spell_Nature_Slow", m="silence"};
  ['Shadow Bolt'] = {t=3000, ico="Spell_Shadow_ShadowBolt", m="silence"};
  ['Shoot Bow'] = {t=1000, ico="Ability_Marksmanship", m="pacify"};
  ['Shoot Crossbow'] = {t=1000, ico="Ability_Marksmanship", m="pacify"};
  ['Shoot Gun'] = {t=1000, ico="Ability_Marksmanship", m="pacify"};
  ['Slam'] = {t=1500, ico="Ability_Warrior_DecisiveStrike", m="pacify"};
  ['Sleep'] = {t=1500, ico="Spell_Nature_Sleep", m="silence"};
  ['Smite'] = {t=2500, ico="Spell_Holy_HolySmite", m="silence"};
  ['Soothe Animal'] = {t=1500, ico="Ability_Hunter_BeastSoothe", m="silence"};
  ['Soul Fire'] = {t=6000, ico="Spell_Fire_Fireball02", m="silence"};
  ['Starfire'] = {t=3500, ico="Spell_Arcane_StarFire", m="silence"};
  ['Summon Felhunter'] = {t=10000, ico="Spell_Shadow_SummonFelHunter", m="silence"};
  ['Summon Imp'] = {t=10000, ico="Spell_Shadow_SummonImp", m="silence"};
  ['Summon Succubus'] = {t=10000, ico="Spell_Shadow_SummonSuccubus", m="silence"};
  ['Summon Voidwalker'] = {t=10000, ico="Spell_Shadow_SummonVoidWalker", m="silence"};
  ['Summon Voidwalker'] = {t=10000, ico="Spell_Shadow_SummonVoidWalker", m="silence"};
  ['Teleport: Darnassus'] = {t=10000, ico="Spell_Arcane_TeleportDarnassus", m="silence"};
  ['Teleport: Ironforge'] = {t=10000, ico="Spell_Arcane_TeleportIronForge", m="silence"};
  ['Teleport: Moonglade'] = {t=10000, ico="Spell_Arcane_TeleportMoonglade", m="silence"};
  ['Teleport: Orgrimmar'] = {t=10000, ico="Spell_Arcane_TeleportOrgrimmar", m="silence"};
  ['Teleport: Stormwind'] = {t=10000, ico="Spell_Arcane_TeleportStormWind", m="silence"};
  ['Teleport: Thunder Bluff'] = {t=10000, ico="Spell_Arcane_TeleportThunderBluff", m="silence"};
  ['Teleport: Undercity'] = {t=10000, ico="Spell_Arcane_TeleportUnderCity", m="silence"};
  ['Wrath'] = {t=2000, ico="Spell_Nature_AbolishMagic", m="silence"};  
}

local TargetChannel ={
  ["Azshir the Sleepless"] = {p="Soul Siphon", t=12000, ico="Spell_Shadow_LifeDrain02", m="silence"};
  ["Baron Vardus"] = {p="Blizzard", t=10000, ico="Spell_Frost_IceStorm", m="silence"};
  ["Doomguard Commander"] = {p="Rain of Fire", t=9000, ico="Spell_Shadow_RainOfFire", m="silence"};
  ["Doomguard"] = {p="Rain of Fire", t=10000, ico="Spell_Shadow_RainOfFire", m="silence"};
  ["Firemane Flamecaller"] = {p="Rain of Fire", t=9000, ico="Spell_Shadow_RainOfFire", m="silence"};
  ["Fizzle Darkstorm"] = {p="Soul Siphon", t=10000, ico="Spell_Shadow_LifeDrain02", m="silence"};
  ["Herod"] = {p="Whirlwind", t=10000, ico="Ability_Whirlwind", m="pacify"};
  ["High Priestess Jeklik"] = {p="Mind Flay", t=10000, ico="Spell_Shadow_SiphonMana", m="silence"};
  ["High Priestess Mar\'li"] = {p="Drain Life", t=7000, ico="Spell_Shadow_LifeDrain02", m="silence"};
  ["Jadefire Hellcaller"] = {p="Rain of Fire", t=10000, ico="Spell_Shadow_RainOfFire", m="silence"};
  ["Qiraji Brainwasher"] = {p="Mind Flay", t=8000, ico="Spell_Shadow_SiphonMana", m="silence"};
  ["Qiraji Mindslayer"] = {p="Mind Flay", t=8000, ico="Spell_Shadow_SiphonMana", m="silence"};
  ["Ravenclaw Servant"] = {p="Soul Siphon", t=10000, ico="Spell_Shadow_LifeDrain02", m="silence"};
  ["Sandfury Firecaller"] = {p="Rain of Fire", t=9000, ico="Spell_Shadow_RainOfFire", m="silence"};
  ["Surgical Assistant"] = {p="Mind Flay", t=8000, ico="Spell_Shadow_SiphonMana", m="silence"};
  ["Twilight Geomancer"] = {p="Rain of Fire", t=9000, ico="Spell_Shadow_RainOfFire", m="silence"};
  ["Wildspawn Hellcaller"] = {p="Rain of Fire", t=9000, ico="Spell_Shadow_RainOfFire", m="silence"};
  ["Wyrmkin Firebrand"] = {p="Rain of Fire", t=9000, ico="Spell_Shadow_RainOfFire", m="silence"};
}

local PlayerChannel = {
  ["Arcane Missiles"] = {t=5000, ico="Spell_Nature_StarFall", m="silence"};
  ["Blizzard"] = {t=8000, ico="Spell_Frost_IceStorm", m="silence"};
  ["Drain Life"] = {t=5000, ico="Spell_Shadow_LifeDrain02", m="silence"};
  ["Drain Mana"] = {t=5000, ico="Spell_Shadow_SiphonMana", m="silence"};
  ["Drain Soul"] = {t=15000, ico="Spell_Shadow_Haunting", m="silence"};
  ["Eagle Eye"] = {t=60000, ico="Ability_Hunter_EagleEye", m="silence"};
  ["Evocation"] = {t=8000, ico="Spell_Nature_Purge", m="silence"};
  ["Health Funnel"] = {t=10000, ico="Spell_Shadow_LifeDrain", m="silence"};
  ["Hellfire"] = {t=15000, ico="Spell_Fire_Incinerate", m="silence"};
  ["Hurricane"] = {t=10000, ico="Spell_Nature_Cyclone", m="silence"};
  ["Mend Pet"] = {t=5000, ico="Ability_Hunter_MendPet", m="silence"};
  ["Mind Flay"] = {t=3000, ico="Spell_Shadow_SiphonMana", m="silence"};
  ["Mind Vision"] = {t=60000, ico="Spell_Holy_MindVision", m="silence"};
  ["Rain of Fire"] = {t=8000, ico="Spell_Shadow_RainOfFire", m="silence"};
  ["Starfall"] = {t=10000, ico="Spell_Arcane_StarFire", m="silence"};
  ["Starshards"] = {t=6000, ico="Spell_Arcane_StarFire", m="silence"};
  ["Tranquility"] = {t=10000, ico="Spell_Nature_Tranquility", m="silence"};
  ["Volley"] = {t=6000, ico="Ability_Marksmanship", m="pacify"};
}

local SpellChannel = {
  ["Arantir\'s Anger"] = {t=4000, ico="Ability_Whirlwind", m="pacify"};
  ["Arcane Missiles"] = {t=5000, ico="Spell_Nature_StarFall", m="silence"};
  ["Baron Rivendare\'s Soul Drain"] = {t=3000, ico="Spell_Shadow_SiphonMana", m="silence"};
  ["Blizzard"] = {t=8000, ico="Spell_Frost_IceStorm", m="silence"};
  ["Consume Shadows"] = {t=10000, ico="Spell_Shadow_AntiShadow", m="silence"};
  ["Consuming Shadows"] = {t=15000, ico="Spell_Shadow_Haunting", m="silence"};
  ["Drain Life"] = {t=5000, ico="Spell_Shadow_LifeDrain02", m="silence"};
  ["Drain Mana"] = {t=5000, ico="Spell_Shadow_SiphonMana", m="silence"};
  ["Gout of Flame"] = {t=10000, ico="Spell_Fire_Incinerate", m="silence"};
  ["Heal Ragnaros"] = {t=10000, ico="Spell_Fire_SoulBurn", m="silence"};
  ["Mend Dragon"] = {t=20000, ico="Spell_Shadow_LifeDrain", m="silence"};
  ["Mind Flay"] = {t=3000, ico="Spell_Shadow_SiphonMana", m="silence"};
  ["Rain of Fire"] = {t=8000, ico="Spell_Shadow_RainOfFire", m="silence"};
  ["Rebuild"] = {t=20000, ico="Spell_Shadow_LifeDrain", m="silence"};
  ["Reconstruct"] = {t=20000, ico="Spell_Shadow_LifeDrain", m="silence"};
  ["Soul Tap"] = {t=12000, ico="Spell_Shadow_LifeDrain02", m="silence"};
  ["Twisted Tranquility"] = {t=10000, ico="Spell_Nature_Tranquility", m="silence"};
  ["Void Zone"] = {t=90000, ico="Spell_Frost_IceStorm", m="silence"};
  ["Whirlwind"] = {t=2000, ico="Ability_Whirlwind", m="pacify"};
}

local elapsed = 0
local Casters = {}
local PlayerCasters = {}
local NPCCasters = {}

function oCB:ShowTargetBar(icon, spellname, silence, channeling)
	local color
	local Bar = self.frames.TargetBar

	if silence == "silence" then
		color = oCB.db.profile.Colors.TargetCasting
	elseif channeling then
		color = oCB.db.profile.Colors.TargetChannel
	else
		color = oCB.db.profile.Colors.Unsilenceable
	end

	oCB.targetFadeOut = nil
	Bar.Spell:SetText(spellname)
	Bar.Bar:SetStatusBarColor(color.r, color.g, color.b)
	
	Bar.Icon.Texture:SetTexture(icon)
	Bar:SetAlpha(1)
	Bar.Time:Show()
	Bar.Spark:Show()
	Bar:Show()
	
	self:SetIconVisibility(Bar, self.db.profile.TargetBar)
end

function oCB:HideTargetBar()
	if oCB.frames.TargetBar:IsVisible() then
		oCB.frames.TargetBar:Hide()
	end
end

function oCB:IsInstantCastsAllowed(event)
	return event == "MAINHAND" 
			or event == "OFFHAND"
end

function oCB:IsSpellIgnored(spellID)
	return spellID == 6603 --Attack
end

function oCB:TargetCastStart(casterGUID, targetGUID, eventType, spellID, castDuration)
	local name, spell, rank, icon
	
	if casterGUID == "TargetBar" then
		name = casterGUID
		spell = targetGUID
		icon = "Interface\\Icons\\Trade_Engineering"
		casttime = 3.5
	else
		name = UnitName(casterGUID)
		spell, rank, icon = SpellInfo(spellID)
		
		if spellID == 22810 then --Opening - No Text
			spell = SpellInfo(3365) --Opening
		end
		
		if icon == "Interface\\Icons\\Temp"
		or icon == "Interface\\Icons\\Spell_Shadow_SealOfKings" then
			icon = nil
		end
		
		casttime = castDuration / 1000
	end
	
	self:Debug("Target Cast Start. Name == "..name..". Spell == "..spell..". spellID == "..tostring(spellID)..". icon == "..tostring(icon)) --CHANGED added commented
	
	local test = not self.db.profile.lock
	local now = nil
	local SpellFound = false
	local silence
	
	--local uname = UnitExists("target") and UnitName("target") or name or false
	_, targetGUID = UnitExists("target")
	local IsPlayer = UnitExists("target") and UnitIsPlayer("target")
	
	if test then
		if (casterGUID == "TargetBar") and (spell == "Drag me (target)") then
			now = GetTime()
			silence = Spells[spell].m
			Casters[casterGUID] = {cast = spell, starttime = now, casttime = casttime, icon = icon, casting = true, silence = silence}
			oCB:ShowTargetBar(icon, spell, silence)
		end
	else
		if not ((targetGUID == casterGUID) and not IsPlayer and Casters[casterGUID] and (UnitExists("target") and Casters[casterGUID].casting)) or UnitIsDeadOrGhost("target") then
			now = GetTime()
		
			local channeling = eventType == "CHANNEL"
		
			if Targets[casterGUID] ~= nil then 
				if Targets[casterGUID].p ~= nil and Targets[casterGUID].p == spell then
					silence = Targets[casterGUID].m
				elseif Targets[casterGUID][spell] ~= nil then
					silence = Targets[casterGUID][spell].m
				end
				
				Casters[casterGUID] = {cast = spell, starttime = now, casttime = casttime, icon = icon, casting = true, silence = silence, channeling = channeling}
			else
				if PlayerSpells[spell] ~= nil then
					silence = PlayerSpells[spell].m
				end
				
				if Spells[spell] ~= nil then
					silence = Spells[spell].m
				end
				
				Casters[casterGUID] = {cast = spell, starttime = now, casttime = casttime, icon = icon, casting = true, silence = silence, channeling = channeling}
			end
			
			SpellFound = casttime > 0
				
			if UnitExists("target") and not UnitIsDeadOrGhost("target") and targetGUID == casterGUID then
				if SpellFound then
					oCB:ShowTargetBar(icon, spell, silence, channeling)
				elseif IsPlayer then
					oCB:HideTargetBar()
				end
			end
		end
	end
end

local fadeOutStart = 0

function oCB:OnTargetCasting()	
	elapsed = elapsed + arg1
	
	local color
	local now = GetTime()
	local test = not oCB.db.profile.lock
	local _, targetGUID = UnitExists("target")
	local Bar = oCB.frames.TargetBar
	local db = oCB.db.profile.TargetBar
	
	if (targetGUID and not UnitIsDeadOrGhost("target")) or test then
		if Casters[targetGUID] and Casters[targetGUID].casting or test then
			local spellname, starttime, casttime
			
			if test then
				starttime = Casters["TargetBar"].starttime or 0
				casttime = Casters["TargetBar"].casttime or 0
			else
				starttime = Casters[targetGUID].starttime or 0
				casttime = Casters[targetGUID].casttime or 0
			end
			
			Bar.Bar:SetMinMaxValues(0, casttime)

			if starttime + casttime > now then
				local val = now - starttime
				local w = Bar.Bar:GetWidth() --CHANGED fixed, added .Bar
				local sp = (val/casttime) * w
				
				if (sp < 0) then 
					sp = 0 
				end
				
				if (sp > w) then
					sp = w
					Bar.Time:Hide()
					Bar.Spark:Hide()
				end
				
				local channeling = Casters[targetGUID] and Casters[targetGUID].channeling
				local timeleft
				
				if channeling then
					Bar.Bar:SetValue(casttime - val)
					timeleft = casttime - (now - starttime)
					sp = (1 - (val/casttime)) * w
				else
					Bar.Bar:SetValue(val)
					timeleft = now - starttime
					
				end
				
				if db.TimeFormat == "4.5 / 10" then
					Bar.Time:SetText(oCB:FormatTime(timeleft) .. " / " .. oCB:FormatTime(casttime))
				elseif db.TimeFormat == "4.5" then
					Bar.Time:SetText(oCB:FormatTime(timeleft))
				end
				
				Bar.Spark:SetPoint("CENTER", Bar.Bar, "LEFT", sp, 0)
			else
				color = oCB.db.profile.Colors.TargetComplete
				Bar.Bar:SetStatusBarColor(color.r, color.g, color.b)
				
				if not test then	
					oCB.targetFadeOut = 1
					Casters[targetGUID].casting = false
				end
			end
		end
	elseif Bar:IsVisible() and (oCB.targetFadeOut == nil) then
		oCB:HideTargetBar()
	end
	
	if oCB.targetFadeOut then
		local a = 0
		
		if oCB.db.profile.TargetBar.showInstantCasts and fadeOutStart > 0 then
			local passed = GetTime() - fadeOutStart
			
			a = 1 - passed / oCB.db.profile.TargetBar.instantCastsDuration
		else
			a = this:GetAlpha() - 0.05
		end
		
		if a > 0 then
			Bar:SetAlpha(a)
		else
			oCB:HideTargetBar()
		end
	end
end

function oCB:TargetChanged()
	local Found = true
	local test = not oCB.db.profile.lock
	
	if UnitExists("target") then
		local _, targetGUID = UnitExists("target")
		local IsPlayer = UnitIsPlayer("target")
		
		if Casters[targetGUID] == nil then
			Found = false
		end

		if Found then
			local starttime = Casters[targetGUID].starttime or 0
			local casttime = Casters[targetGUID].casttime or 0
			local icon = Casters[targetGUID].icon or nil
			
			if starttime + casttime > GetTime() then
				Casters[targetGUID].casting = true
				oCB:ShowTargetBar(icon, Casters[targetGUID].cast, Casters[targetGUID].silence, Casters[targetGUID].channeling)
			elseif not test then
				Casters[targetGUID].casting = false
				oCB:HideTargetBar()
			end
		elseif not test then
			oCB:HideTargetBar()
		end
	end
end

function oCB:TargetCastStop(casterGUID, targetGUID, eventType, spellID, castDuration)
	local spell, name, icon, target
	local Bar = oCB.frames.TargetBar
	
	if casterGUID == "TargetBar" then
		name = casterGUID
		target = casterGUID		
		spell = targetGUID
	else
		spell, _, icon = SpellInfo(spellID)
		
		if icon == "Interface\\Icons\\Temp" then
			if spellID == 6603 then
				icon = "Interface\\Icons\\inv_sword_04"
			end
		end
		
		if spellID == 22810 then --Opening - No Text
			spell = SpellInfo(3365) --Opening
		end
		
		name = UnitName(casterGUID)
		_, target = UnitExists("target")
	end
	
	if not self.db.profile.lock and casterGUID ~= "TargetBar"  then
		return
	end
	
	if not Casters[casterGUID] and casterGUID == target and not oCB:IsSpellIgnored(spellID) and oCB.db.profile.TargetBar.showInstantCasts then -- Instant cast
		oCB:ShowTargetBar(icon, spell)
		Bar.Bar:SetMinMaxValues(0, 1)
		Bar.Bar:SetValue(1)
		Bar.Spark:Hide()
		Bar.Time:Hide()
		
		local c
		
		if eventType == "FAIL" then
			c = oCB.db.profile.Colors.Failed
		else
			c = oCB.db.profile.Colors.TargetComplete
		end
		
		Bar.Bar:SetStatusBarColor(c.r, c.g, c.b)
		oCB.targetFadeOut = 1
		fadeOutStart = GetTime()
	elseif (Casters[casterGUID] and Casters[casterGUID].cast == spell and (Casters[casterGUID].casting or spell == "Drag me (target)")) then
		Casters[casterGUID] = nil
		
		if casterGUID == target then
			if eventType == "CAST" then
				local c = oCB.db.profile.Colors.TargetComplete
				
				Bar.Bar:SetStatusBarColor(c.r, c.g, c.b)
				oCB.targetFadeOut = 1
				fadeOutStart = 0
			else
				oCB:HideTargetBar()
			end
		end
		
		self:Debug("Target Cast Stop. Target == "..name..". Spell == "..spell..".") --CHANGED added commented
	end
end