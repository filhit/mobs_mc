--MCmobs v0.4
--maikerumine
--made for MC like Survival game
--License for code WTFPL and otherwise stated in readmes


--dofile(minetest.get_modpath("mobs").."/api.lua")

--###################
--################### SPIDER
--###################


-- Spider by AspireMint (fishyWET (CC-BY-SA 3.0 license for texture)
mobs:register_mob("mobs_mc:spider", {
	type = "monster",
	passive = false,
	docile_by_day = true,
	attack_type = "dogfight",
	pathfinding = 1,
	damage = 2,
	hp_min = 16,
	hp_max = 16,
	collisionbox = {-0.7, -0.01, -0.7, 0.7, 0.89, 0.7},
	rotate = -180,
	visual = "mesh",
	mesh = "mobs_mc_spider.b3d",
	textures = {
		{"mobs_mc_spider.png"},
	},
	visual_size = {x=3, y=3},
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_spider",
		attack = "mobs_spider",
		distance = 16,
	},
	walk_velocity = 3.9,
	jump = true,
	jump_height = 2,
	view_range = 16,
	floats = 1,
	drops = {
		{name = mobs_mc.items.string, chance = 1, min = 0, max = 2,},
		{name = mobs_mc.items.spider_eye, chance = 3, min = 1, max = 1,},
		{name = "mobs_mc:spider_head", chance = 200, min = 1, max = 1,},
	},
	specific_attack = { "player", "mobs_mc:iron_golem" },
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 4,
	animation = {
		speed_normal = 25,		speed_run = 50,
		stand_start = 40,		stand_end = 80,
		walk_start = 0,		walk_end = 40,
		run_start = 0,		run_end = 40,
	},
})
mobs:register_spawn("mobs_mc:spider", mobs_mc.spawn.solid, 7, 0, 9500, 2, 3000)


-- compatibility
mobs:alias_mob("mobs:spider", "mobs_mc:spider")
mobs:alias_mob("esmobs:spider", "mobs_mc:spider")

-- spawn eggs
mobs:register_egg("mobs_mc:spider", "Spider", "mobs_mc_spawn_icon_spider.png", 0)

if minetest.settings:get_bool("log_mods") then
	minetest.log("action", "MC Spiders loaded")
end
