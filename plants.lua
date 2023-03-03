-- Grassland
greenery_galore.register_plantlike_plant({
	name = "meadow_grass",
	desc = "Meadow Grass",
	scale = 1.4,
	persist = 1.3,
	density = .07,
	spread = 180,
	biomes = {"grassland", "grassland_dunes", "grassland_ocean", "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "forest_weed",
	desc = "Forest Weed",
	waving = 1,
	scale = 1.2,
	randomRotate = true,
	persist = 0.85,
	density = 0.15,
	spread = 300,
	biomes = {"coniferous_forest", "deciduous_forest", "rainforest"},
	spawn_on = {"default:dirt_with_grass", "default:dirt"},
	specialDraw = 1

})

greenery_galore.register_plantlike_plant({
	name = "average_grass",
	desc = "Average grass",
	waving = 1,
	scale = 1.3,
	randomRotate = true,
	bounds = {-.350, -.5, -.350, .350, 0.04, .350},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"},
	persist = 2.2,
	density = .099,
	spread = 300,
        seed = 1
})

greenery_galore.register_plantlike_plant({
	name = "festuca",
	desc = "Festuca",
	waving = 1,
	scale = 1.5,
	persist = 0.8,
	density = .045,
	spread = 30,
	specialDraw = 4
})

greenery_galore.register_plantlike_plant({
	name = "small_grass",
	desc = "Small grass",
	bounds = {-.3, -.5, -.3, .3, -0.20, .3},
	persist = 2.3,
	scale = 1.2,
	randomRotate = true,
	biomes = {"deciduous_forest",
		"deciduous_forest_shore",
		"deciduous_forest_ocean",
		"rainforest",
		"rainforest_swamp",
		"rainforest_ocean",},
	spawn_on = {"default:dirt_with_grass"},
	persist = 1.2,
	density = .2,
	spread = 100,
	specialDraw = 1
})

greenery_galore.register_plantlike_plant({
	name = "small_grass2",
	desc = "Small grass",
	bounds = {-.3, -.5, -.3, .3, -0.20, .3},
	persist = 1.0,
	scale = 1.1,
	density = .4,
	spread = 70,
	randomRotate = true,
	biomes = {"coniferous_forest",
                "coniferous_forest_dunes",
                "coniferous_forest_ocean"},
	spawn_on = {"default:dirt_with_grass",
                "default:dirt_with_coniferous_litter"}
})

greenery_galore.register_plantlike_plant({
	name = "fern",
	desc = "Large Fern",
	waving = 1,
	randomRotate = true,
	scale = 2.7,
	biomes = {"coniferous_forest",
                "coniferous_forest_ocean",
                "floatland_coniferous_forest"},
	spawn_on = {"default:dirt_with_grass",
                "default:dirt_with_coniferous_litter"},
	persist = 1.8,
	density = .085,
	spread = 300
})

greenery_galore.register_plantlike_plant({
	name = "dill",
	desc = "Dill",
	color = "green",
	randomRotate = true,
	waving = 1,
	scale = 1.5,
	persist = 0.9,
	density = .025,
	spread = 10
})

greenery_galore.register_plantlike_plant({
	name = "dry_bush",
	desc = "Dry Bush",
	scale = 2.1,
	persist = 1.4,
	density = .02,
	spread = 100,
	randomRotate = true,
	biomes = {"coniferous_forest", "coniferous_forest_dunes", "coniferous_forest_ocean"},
	spawn_on = {"default:dirt_with_grass", "default:dirt_with_coniferous_litter","default:sand"},
})

greenery_galore.register_mesh_plant({
	name = "astilboides",
	desc = "Astilboides",
	mesh = "astilboides.obj",
	inv_image  = "greenery_galore_astilboides_inv.png",
	wield_image = "greenery_galore_astilboides_inv.png",
	color = "dark_green",
	randomRotate = true,
	bounds = {-.5, -.5, -.5, .5, 0.3, .5},
	biomes = {"deciduous_forest",
		"deciduous_forest_shore",
		"rainforest",
		"rainforest_swamp"},
	spawn_on = {"default:dirt_with_grass"},
        seed = 5,
	persist = .01,
	density = .07,
	spread = 120
})

greenery_galore.register_mesh_plant({
	name = "burdock",
	desc = "Burdock",
	mesh = "burdock.obj",
--	inv_image  = " ",
--	wield_image = " ",
	color = "dark_green",
	randomRotate = true,
	bounds = {-.5, -.5, -.5, .5, 0.3, .5},
	biomes = {"deciduous_forest", "deciduous_forest_shore", "rainforest", "rainforest_swamp"},
	spawn_on = {"default:dirt_with_grass"},
        seed = 6,
	persist = .05,
	density = .09,
	spread = 50
})

--Nettle
greenery_galore.register_plantlike_plant({
	name = "nettle_bush",
	desc = "Nettle Bush",
	waving = 1,
	damage_per_second = 3,0,
	damageOnPunch = 1,
        scale = 2.3,
	noSpawn = true
})

greenery_galore.register_group_spawn({
	node = "nettle_bush",
	spawn_on = {"default:dirt", "default:dirt_with_grass"},
	spawn_near = {"default:tree"},
	spawn_near_count = 10,
	spawn_length_max = 10,
	chance = 75,
	spread = 50,
	amount = 20,
	randomRotate = true,
	y_offset = 1,
})

-- Desert plants
greenery_galore.register_plantlike_plant({
	name = "camel_thorn",
	desc = "Camel Thorn",
	color = "green",
	biomes = {"desert",
                "sandstone_desert",
                "grassland",
                "grassland_dunes",
                "grassland_ocean"},
	spawn_on = {"default:sand",
                "default:desert_sand",
                "default:silver_sand",
                "default:dirt_with_grass"},
        scale = 1.2,
	damage_per_second = 3,0,
	randomRotate = true,
	persist = 1.7,
	density = .010,
	spread = 300,
	damageOnPunch = 2
})

greenery_galore.register_plantlike_plant({
	name = "albuca",
	desc = "Desert Albuca",
	color = "green",
	randomRotate = true,
	bounds = {-.29, -.5, -.29, .29, 0.19, .29},
	biomes = {"desert", "sandstone_desert", "grassland"},
	spawn_on = {"default:sand", "default:desert_sand", "default:silver_sand",},
	density = .05,
	spread = 50
})

greenery_galore.register_plantlike_plant({
	name = "agave",
	desc = "Agave",
	color = "green",
	randomRotate = true,
	bounds = {-.3, -.5, -.3, .3, 0.3, .3},
	biomes = {"cold_desert",
                "grassland",
                "grassland_dunes",
                "grassland_ocean"},
	spawn_on = {"default:sand",
                "default:silver_sand"},
	persist = 0.9,
	density = .03,
	spread = 100
})


-- Desert grass
greenery_galore.register_plantlike_plant({
	name = "desert_grass",
	desc = "Dead grass",
	color = "brown",
	biomes = {"desert",
                "savanna",
                "sandstone_desert",
                "cold_desert",
                "grassland",
                "grassland_dunes",
                "grassland_ocean"},
	spawn_on = {"default:sand",
                "default:dry_dirt_with_dry_grass",
                "default:desert_sand",
                "default:silver_sand"},
	waving = 1,
	randomRotate = true,
	bounds = {-.35, -.5, -.35, .35, 0.8, .35},
	scale = 1.6,
	persist = 0.3,
	density = .1,
})

greenery_galore.register_plantlike_plant({
	name = "dead_small_grass",
	desc = "Dead small grass",
	color = "brown",
	biomes = {"desert",
                "savanna",
                "sandstone_desert",
                "cold_desert",
                "grassland",
                "grassland_dunes",
                "grassland_ocean"},
	spawn_on = {"default:sand", "default:dry_dirt_with_dry_grass", "default:desert_sand", "default:silver_sand"},
	waving = 1,
	randomRotate = true,
	bounds = {-.45, -.5, -.45, .45, 0.1, .45},
	scale = 1.3,
	persist = 0.3,
	density = .1,
})


greenery_galore.register_plantlike_plant({
	name = "desert_tumbleweed",
	desc = "Desert Tumbleweed",
	color = "brown",
	biomes = {"desert",
                "sandstone_desert",
                "cold_desert",
                "savanna"},
	spawn_on = {"default:sand",
                "default:desert_sand",
                "default:silver_sand"},
	waving = 1,
	randomRotate = true,
	bounds = {-.5, -.5, -.5, .5, 1.1, .5},
	scale = 1.9,
	persist = .1,
	density = .03,
	spread = 50
})


-- Winter grass
greenery_galore.register_plantlike_plant({
	name = "frozen_grass",
	desc = "Frozen grass",
	scale = 1.5,
	bounds = {-.4, -.5, -.4, .4, -0.20, .4},
	biomes = {"snowy_grassland",
                "snowy_grassland_ocean",
                "icesheet",
                "icesheet_ocean"},
	spawn_on = {"default:snowblock",
                "default:dirt",
                "default:dirt_with_snow",
                "default:snow"},
	persist = 2,
	y_min = 1,
	density = .040,
	spread = 20,
	specialDraw = 3
})

greenery_galore.register_plantlike_plant({
	name = "frozen_meadow_grass",
	desc = "Frozen meadow grass",
	bounds = {-.3, -.5, -.3, .3, -0.20, .3},
	biomes = {"snowy_grassland",
                "snowy_grassland_ocean",
                "icesheet",
                "icesheet_ocean"},
	spawn_on = {"default:snowblock",
                "default:dirt",
                "default:dirt_with_snow"},
	persist = 2.1,
	scale = 1.2,
	density = .060,
	spread = 40,
	specialDraw = 3
})
