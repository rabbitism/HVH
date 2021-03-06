-- Sniper/NS asynchronous precaching handled by HVHGameMode:_PostLoadPrecache()

--[[

[ W ResourceSystem ]: File error loading resource header "panorama/images/textures/startup_background_logo.vtex_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "panorama/images/heroes/selection/npc_dota_hero_default_png.vtex_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "sky_day01_01rt.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "sky_day01_01bk.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "sky_day01_01lf.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "sky_day01_01ft.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "sky_day01_01up.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "sky_day01_01dn.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "particles/econ/items/effigies/status_fx_effigies/frosty_base_statue_destruction_generic.vpcf_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "materials/models/props_gameplay/dota_ar_frame/dota_ar_frame.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "materials/sky_day01_01rt.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "materials/sky_day01_01bk.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "materials/sky_day01_01lf.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "materials/sky_day01_01ft.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "materials/sky_day01_01up.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "materials/sky_day01_01dn.vmat_c" (Error: ERROR_FILEOPEN)
[ W ResourceSystem ]: File error loading resource header "materials/effects/fog_world_00.vtex_c" (Error: ERROR_FILEOPEN)

]]

PRECACHE_ITEMS = {
	"item_anchor_smash",
	"item_blink_strike",
	"item_breathe_fire",
	"item_burrowstrike",
	"item_chain_frost",
	"item_crystal_nova",
	"item_doom",
	"item_drunken_haze",
	"item_exorcism",
	"item_fade_bolt",
	"item_finger_of_death",
	"item_laguna_blade",
	"item_phantom_strike",
	"item_power_cogs",
	"item_reverse_polarity",
	"item_rocket_barrage",
	"item_scream_of_pain",
	"item_toss",
	"item_wall_of_replica",
	"item_wild_axes",
	"item_winters_curse",
	"item_death_ward",
	"item_false_promise",
	"item_focusfire",
	"item_guardian_angel",
	"item_laser",
	"item_leech_seed",
	"item_living_armor",
	"item_mass_serpent_ward",
	"item_press_the_attack",
	"item_recall",
	"item_sprout",
	"item_warcry",	
	"item_nightmare",
	"item_chronosphere",
	"item_sun_strike",
	"item_starfall",
	"item_mirror_image",
	"item_thundergods_wrath",
	"item_avalanche",
	"item_brain_sap",
	"item_blood_bath",
	"item_conjure_image",
	"item_carrion_swarm",
	"item_decay",
	"item_fatal_bonds",
	"item_fissure",
	"item_frozen_sigil",
	"item_tornado",
	"item_ice_wall",
	"item_paralyzing_cask",
	"item_plasma_field",
	"item_sunder",
	"item_teleportation",
	"item_healing_ward",
	"item_nether_swap",
	"item_battle_trance",
	"item_chilling_touch",
	"item_cold_embrace",
	"item_cold_snap",
	"item_disruption",
	"item_glimpse",
	"item_death_coil",
	"item_suicide",
	"item_surge",
	"item_walrus_kick",
	"item_amplify_damage",
	"item_aphotic_shield",
	"item_assassinate",
	"item_black_hole",
	"item_ensnare",
	"item_hand_of_god",
	"item_homing_missile",
	"item_frost_armor",
	"item_land_mines",
	"item_purification",
	"item_tether",
	"item_walrus_punch",
	"item_pounce",
	"item_eye_of_the_storm",
	"item_dream_coil",
	"item_deafening_blast",
	"item_culling_blade",
	"item_chaos_meteor",
	"item_firefly",
	"item_summon_wolves",
	"item_blinding_light",
	"item_windrun",
	"item_mirana_arrow",
	"item_shackleshot",
	"item_ravage",
	"item_stampede",
	"item_kinetic_field",
	"item_meat_hook",
	"item_sun_shard_hvh"
}

-- TODO: optimize these by finding the correct particles
PRECACHE_UNITS = {
	--[[
	"npc_dota_hero_sniper",
	"npc_dota_hero_night_stalker",
	"npc_dota_hero_shredder",
	"npc_dota_hero_disruptor",
	"npc_dota_hero_centaur",
	"npc_dota_hero_juggernaut",
	"npc_dota_hero_winter_wyvern",
	"npc_dota_hero_shadow_demon",
	"npc_dota_hero_disruptor",
	"npc_dota_hero_techies",
	"npc_dota_hero_zuus",
	"npc_dota_hero_tiny",
	"npc_dota_hero_undying",
	"npc_dota_hero_warlock",
	"npc_dota_hero_earthaker",
	"npc_dota_hero_witch_doctor",
	"npc_dota_hero_razor",
	"npc_dota_hero_gyrocopter",
	"npc_dota_hero_enigma", -- black hole crashes game?
	"npc_dota_hero_pudge", -- missing hook/chain
	"npc_dota_hero_tusk",
	"npc_dota_hero_slark",
	"npc_dota_hero_razor",
	"npc_dota_hero_batrider",
	"npc_dota_hero_windrunner", -- only missing tree shackle
	"npc_dota_hero_disruptor",
	"npc_dota_hero_tidehunter",]]
	"npc_dota_hero_phoenix",
	"npc_dota_hero_ursa",
	"npc_dota_hero_techies",
	--"npc_hvh_ursa",
	--"npc_hvh_techies",
	"npc_hvh_tower",
	"npc_hvh_megacreep_ranged",
	"npc_hvh_megacreep_siege",
	"npc_hvh_eidolon",
	"npc_hvh_enigma",
	"npc_hvh_tiny",
	"npc_dota_good_guy_dog"
}

PRECACHE_MODELS = { 
  --"models/heroes/nightstalker/nightstalker_night.vmdl",
  "models/items/ursa/hat_alpine.vmdl",
  "models/items/ursa/scarf_alpine.vmdl",
  "models/items/ursa/pants_alpine.vmdl",
  "models/items/ursa/gloves_alpine.vmdl",
  "models/heroes/lycan/summon_wolves.vmdl",
  "models/items/lycan/wolves/alpha_summon_01/alpha_summon_01.vmdl",
  "models/items/lycan/wolves/ambry_summon/ambry_summon.vmdl",
  "models/items/lycan/wolves/hunter_kings_wolves/hunter_kings_wolves.vmdl",
  "models/items/lycan/wolves/icewrack_pack/icewrack_pack.vmdl",
  "models/props_gameplay/treasure_chest001.vmdl",
  "models/props_debris/merchant_debris_chest001.vmdl",
  "models/props_gameplay/dota_ar_frame/dota_ar_frame.vmdl",
  "models/development/invisiblebox.vmdl"
}

PRECACHE_MODEL_FOLDERS = {
	--"models/items/nightstalker/", -- inexplicably, no underscore in name
	--"models/heroes/nightstalker/",
	--"models/items/sniper/",
	--"models/items/lycan/",
	--"models/heroes/sniper/",
	--"models/heroes/lycan/"
}

PRECACHE_PARTICLE_FOLDERS = {
	--"particles/units/heroes/hero_sniper/",
	--"particles/units/heroes/hero_night_stalker/",
	--"particles/econ/items/sniper/", -- can't forget immortal FX!
	--"particles/econ/items/nightstalker/",
	--"particles/units/heroes/hero_keeper_of_the_light/",
	--"particles/units/heroes/hero_windrunner/",
	--"particles/units/heroes/hero_batrider/",
	--"particles/units/heroes/hero_tidehunter/",
	--"particles/units/heroes/hero_mirana/",
	--"particles/units/heroes/hero_doom_bringer/",
	--"particles/units/heroes/hero_meepo/",
	--"particles/units/heroes/hero_pudge/",
	--"particles/units/heroes/hero_lycan/"
	--"particles/units/heroes/hero_enigma/"
}

PRECACHE_PARTICLES = {
	--"particles/units/heroes/hero_sven/sven_storm_bolt_projectile_explosion_flash_b.vpcf",
	--"particles/units/heroes/hero_slardar/slardar_sprint.vpcf"
	--"particles/generic_hero_status/status_invisibility_start.vpcf",
	"particles/dropped_sunshard.vpcf",
	"particles/dropped_moonrock.vpcf",
	"particles/ui/ui_generic_treasure_impact.vpcf",
	"particles/moonrock_heal.vpcf",
	"particles/generic_gameplay/generic_stunned.vpcf",
	"particles/units/heroes/hero_alchemist/alchemist_unstable_concoction_projectile.vpcf",
	"particles/units/heroes/hero_alchemist/alchemist_unstable_concoction_explosion.vpcf",
	"particles/units/heroes/hero_alchemist/alchemist_unstableconc_bottles.vpcf",
	"particles/units/heroes/hero_alchemist/alchemist_unstable_concoction_timer.vpcf",
	"particles/units/heroes/hero_enchantress/enchantress_natures_attendant_heal_magic.vpcf",
	"particles/units/heroes/hero_enchantress/enchantress_natures_attendants_heal.vpcf",
	"particles/units/heroes/hero_shredder/shredder_timberchain.vpcf",
	"particles/units/heroes/hero_shredder/shredder_timber_chain_trail.vpcf",
	"particles/units/heroes/hero_shredder/shredder_timber_chain_tree.vpcf",
	"particles/units/heroes/hero_meepo/meepo_earthbind_projectile_fx.vpcf",
	"particles/units/heroes/hero_meepo/meepo_earthbind.vpcf",
	"particles/newplayer_fx/npx_sleeping.vpcf",
	"particles/good_guy_dog_treat.vpcf",
	"particles/thrown_sunshard.vpcf",
}
		
PRECACHE_SOUNDFILES = {
	--"soundevents/game_sounds_heroes/game_sounds_slardar.vsndevts",
	--"soundevents/game_sounds_heroes/game_sounds_pudge.vsndevts",
	"soundevents/game_sounds_creeps.vsndevts",
	"soundevents/game_sounds_heroes/game_sounds_alchemist.vsndevts",
	"soundevents/game_sounds_heroes/game_sounds_enchantress.vsndevts",
	"soundevents/game_sounds_heroes/game_sounds_enigma.vsndevts",
	"soundevents/game_sounds_heroes/game_sounds_shredder.vsndevts",
	"soundevents/game_sounds_heroes/game_sounds_meepo.vsndevts"
}