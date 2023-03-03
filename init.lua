greenery_galore = {}
local path = minetest.get_modpath("greenery_galore")

local replacements = {}
local nodes_to_replace = {}

local group_spawn_nodes = {}

greenery_galore.colors = {}

local default_bounds = {-.3125, -.5, -.3125, .3125, .3125, .3125}
local default_biomes = {"grassland", "deciduous_forest", "coniferous_forest",
	"floatland_grassland", "floatland_coniferous_forest"}

greenery_galore.register_plantlike_plant = function(data)
	local groups = {snappy = 3, attached_node = data.waterPlace and 0 or 1, flower = 1, flammable = 1}
	groups["color_" .. (data.color or "")] = 1

	if data.color and not greenery_galore.colors[data.color] then
		greenery_galore.colors[data.color] = true
	end

	minetest.register_node("greenery_galore:" .. data.name, {
		description = data.desc or "Flower",
		drawtype = "plantlike",
		tiles = {"greenery_galore_" .. data.name .. ".png"},
		inventory_image = data.inv_image or "greenery_galore_" .. data.name .. ".png",
		wield_image = data.wield_image or "greenery_galore_" .. data.name .. ".png",
		sunlight_propagates = true,
		paramtype = data.paramtype or "light",
		paramtype2 = data.randomRotate and "degrotate" or (data.specialDraw and "meshoptions"),
		visual_scale = data.scale or 1,
		waving = data.waving,
		liquids_pointable = data.liquids_pointable,
		walkable = data.walkable or false,
		damage_per_second = data.damage_per_second,
		groups = groups,
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = data.bounds or default_bounds
		},
		node_placement_prediction = data.waterPlace and "",
		on_punch = data.damageOnPunch and function(pos, node, puncher, pointed_thing)
			if minetest.get_item_group(puncher:get_wielded_item():get_name(), "sword") == 0 then
				puncher:set_hp(puncher:get_hp() - data.damageOnPunch)
			end
		end,
		on_place = data.waterPlace and function(itemstack, placer, pointed_thing)
			if minetest.get_node(pointed_thing.above) and minetest.get_node(pointed_thing.above).name == "air"
				and minetest.get_node(pointed_thing.under) and minetest.get_node(pointed_thing.under).name == "default:water_source"
				and not minetest.is_protected(pointed_thing.above, placer:get_player_name() or "") then
					itemstack:take_item()
					minetest.set_node(pointed_thing.above, {name = "greenery_galore:" .. data.name})
			end
		end,
	})

	if not data.noSpawn then
		minetest.register_decoration({
			deco_type = "simple",
			place_on = data.spawn_on or {"default:dirt_with_grass"},
			sidelen = 16,
			noise_params = {
				offset = -0.015,
				scale = data.density or 0.025,
				spread = {x = data.spread or 100, y = data.spread or 100, z = data.spread or 100},
				seed = data.seed or "933402367",
				octaves = 3,
				persist = data.persist or .4
			},
			biomes = data.biomes or default_biomes,
			y_min = data.y_min or 1,
			y_max = data.y_max or 31000,
			spawn_by = data.spawn_by,
			num_spawn_by = data.num_spawn_by,
			decoration = "greenery_galore:".. data.name,
			param2 = (data.randomRotate and 0) or (data.specialDraw and data.specialDraw),
			param2_max = data.randomRotate and 44,
			place_offset_y = data.place_offset_y
		})
	end

	flowerpot.register_node("greenery_galore:" .. data.name)
end

greenery_galore.register_plantlike_rooted_plant = function(data)
	local groups = {snappy = 3, attached_node = data.waterPlace and 0 or 1, flower = 1, flammable = 1}
	groups["color_" .. (data.color or "")] = 1

	if data.color and not greenery_galore.colors[data.color] then
		greenery_galore.colors[data.color] = true
	end

	minetest.register_node("greenery_galore:" .. data.name, {
		description = data.desc or "Flower",
		drawtype = "plantlike_rooted",
		tiles = {data.base_image},
		special_tiles = {{name = "greenery_galore_" .. data.name .. ".png", tileable_vertical = true}},
		inventory_image = data.inv_image or "greenery_galore_" .. data.name .. ".png",
		wield_image = data.wield_image or "greenery_galore_" .. data.name .. ".png",
		paramtype = data.paramtype or "light",
		paramtype2 = "leveled",
		node_dig_prediction = data.base,
		node_placement_prediction = "",
		visual_scale = data.scale or 1,
		waving = data.waving,
		liquids_pointable = data.liquids_pointable,
		walkable = data.walkable or false,
		damage_per_second = data.damage_per_second,
		groups = groups,
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = data.bounds or default_bounds
		},
		node_placement_prediction = data.waterPlace and "",
		on_punch = data.damageOnPunch and function(pos, node, puncher, pointed_thing)
			if minetest.get_item_group(puncher:get_wielded_item():get_name(), "sword") == 0 then
				puncher:set_hp(puncher:get_hp() - data.damageOnPunch)
			end
		end,
		on_place =  function(itemstack, placer, pointed_thing)
			minetest.set_node(pointed_thing.under, {name = "greenery_galore:" .. data.name, param2 = math.random(data.min_height or 16, data.max_height or 16)})
		end,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = data.spawn_on or {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = data.density or 0.025,
			spread = {x = data.spread or 100, y = data.spread or 100, z = data.spread or 100},
			seed = data.seed or math.random(1000),
			octaves = 3,
			persist = data.persist or .4
		},
		biomes = data.biomes or default_biomes,
		y_min = data.y_min or 1,
		y_max = data.y_max or 31000,
		flags = "force_placement",
		spawn_by = data.spawn_by,
		num_spawn_by = data.num_spawn_by,
		decoration = "greenery_galore:".. data.name,
		param2 = data.min_height,
		param2_max = data.max_height,
		place_offset_y = data.place_offset_y
	})

	flowerpot.register_node("greenery_galore:" .. data.name)
end

greenery_galore.register_nodebox_plant = function(data)
	local groups = {snappy = 3, attached_node = data.waterPlace and 0 or 1, flower = 1, flammable = 1}
	groups["color_" .. (data.color or "")] = 1

	if data.color and not greenery_galore.colors[data.color] then
		greenery_galore.colors[data.color] = true
	end

	minetest.register_node("greenery_galore:" .. data.name, {
		description = data.desc or "Flower",
		drawtype = "nodebox",
		tiles = {"greenery_galore_" .. data.name .. ".png", "greenery_galore_" .. data.name .. ".png^[transformFY", "greenery_galore_trans.png", "greenery_galore_trans.png", "greenery_galore_trans.png", "greenery_galore_trans.png"},
		inventory_image = data.inv_image or "greenery_galore_" .. data.name .. ".png",
		wield_image = data.wield_image or "greenery_galore_" .. data.name .. ".png",
		paramtype = "light",
		paramtype2 = "facedir",
		visual_scale = data.scale or 1,
		waving = data.waving,
		liquids_pointable = data.liquids_pointable,
		walkable = data.walkable or false,
		damage_per_second = data.damage_per_second,
		groups = groups,
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = data.bounds or default_bounds
		},
		node_box = {
			type = "fixed",
			fixed = data.bounds or default_bounds
		},
		node_placement_prediction = data.waterPlace and "",
		on_punch = data.damageOnPunch and function(pos, node, puncher, pointed_thing)
			if minetest.get_item_group(puncher:get_wielded_item():get_name(), "sword") == 0 then
				puncher:set_hp(puncher:get_hp() - data.damageOnPunch)
			end
		end,
		on_place = data.waterPlace and function(itemstack, placer, pointed_thing)
			if minetest.get_node(pointed_thing.above) and minetest.get_node(pointed_thing.above).name == "air"
				and minetest.get_node(pointed_thing.under) and minetest.get_node(pointed_thing.under).name == "default:water_source"
				and not minetest.is_protected(pointed_thing.above, placer:get_player_name() or "") then
					itemstack:take_item()
					minetest.set_node(pointed_thing.above, {name = "greenery_galore:" .. data.name})
			end
		end,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = data.spawn_on or {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = data.density or 0.025,
			spread = {x = data.spread or 100, y = data.spread or 100, z = data.spread or 100},
			seed = data.seed or math.random(1000),
			octaves = 3,
			persist = data.persist or .4
		},
		biomes = data.biomes or default_biomes,
		y_min = data.y_min or 1,
		y_max = data.y_max or 31000,
		spawn_by = data.spawn_by,
		num_spawn_by = data.num_spawn_by,
		decoration = "greenery_galore:".. data.name,
		param2 = data.randomRotate and 0,
		param2_max = data.randomRotate and 3,
		place_offset_y = data.place_offset_y
	})
end

greenery_galore.register_mesh_plant = function(data)
	local groups = {snappy = 3, attached_node = data.waterPlace and 0 or 1, flower = 1, flammable = 1}
	groups["color_" .. (data.color or "")] = 1

	if data.color and not greenery_galore.colors[data.color] then
		greenery_galore.colors[data.color] = true
	end

	minetest.register_node("greenery_galore:" .. data.name, {
		description = data.desc or "Flower",
		drawtype = "mesh",
		mesh = data.mesh,
		tiles = {"greenery_galore_" .. data.name .. ".png"},
		inventory_image = data.inv_image or "greenery_galore_" .. data.name .. ".png",
		wield_image = data.wield_image or "greenery_galore_" .. data.name .. ".png",
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		visual_scale = data.scale or 1,
		waving = data.waving,
		liquids_pointable = data.liquids_pointable,
		walkable = data.walkable or false,
		damage_per_second = data.damage_per_second,
		groups = groups,
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = data.bounds or default_bounds
		},
		node_placement_prediction = data.waterPlace and "",
		on_punch = data.damageOnPunch and function(pos, node, puncher, pointed_thing)
			if minetest.get_item_group(puncher:get_wielded_item():get_name(), "sword") == 0 then
				puncher:set_hp(puncher:get_hp() - data.damageOnPunch)
			end
		end,
		on_place = data.waterPlace and function(itemstack, placer, pointed_thing)
			if minetest.get_node(pointed_thing.above) and minetest.get_node(pointed_thing.above).name == "air"
				and minetest.get_node(pointed_thing.under) and minetest.get_node(pointed_thing.under).name == "default:water_source"
				and not minetest.is_protected(pointed_thing.above, placer:get_player_name() or "") then
					itemstack:take_item()
					minetest.set_node(pointed_thing.above, {name = "greenery_galore:" .. data.name})
			end
		end,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = data.spawn_on or {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = data.density or 0.025,
			spread = {x = data.spread or 100, y = data.spread or 100, z = data.spread or 100},
			seed = data.seed or 933402367,
			octaves = 3,
			persist = data.persist or .4
		},
		biomes = data.biomes or default_biomes,
		y_min = data.y_min or 1,
		y_max = data.y_max or 31000,
		spawn_by = data.spawn_by,
		num_spawn_by = data.num_spawn_by,
		decoration = "greenery_galore:".. data.name,
		param2 = data.randomRotate and 0,
		param2_max = data.randomRotate and 3,
		place_offset_y = data.place_offset_y
	})
end

greenery_galore.register_replacement = function(data)
	replacements[data.replace] = data
	table.insert(nodes_to_replace, data.replace)
end

minetest.register_on_generated(function(minp, maxp, seed)
	if maxp.y < 0 or minp.y > 50 then return end
  local nodes, list = minetest.find_nodes_in_area(minp, maxp, nodes_to_replace)
	for _, pos in pairs(nodes) do
		local data
		local flag = true
		if minetest.get_node(pos) and minetest.get_node(pos).name then
			data = replacements[minetest.get_node(pos).name]
		end
		local under = {x=pos.x, y=pos.y-1, z=pos.z}
		local above = {x=pos.x, y=pos.y+1, z=pos.z}

		--under check
		if flag and data and data.under then
			local nodeName
			if minetest.get_node(under) then
				nodeName = minetest.get_node(under).name
			end
			if flag and type(data.under) == "table" then
				flag = false
				for _,node in pairs(data.under) do
					if node == nodeName then
						flag = true
					end
				end
			elseif flag and string.find(data.under, "group:") then
				if minetest.get_item_group(nodeName, string.gsub(data.under, "group:", "")) == 0 then
					flag = false
				end
			elseif flag then
				if nodeName ~= data.under then
					flag = false
				end
			end
		end

		-- above check
		if flag and data and data.above then
			local nodeName
			if minetest.get_node(above) then
				nodeName = minetest.get_node(above).name
			end
			if flag and type(data.above) == "table" then
				flag = false
				for _,node in pairs(data.above) do
					if node == nodeName then
						flag = true
					end
				end
			elseif flag and string.find(data.above, "group:") then
				if minetest.get_item_group(nodeName, string.gsub(data.above, "group:", "")) == 0 then
					flag = false
				end
			elseif flag then
				if nodeName ~= data.above then
					flag = false
				end
			end
		end

		if data and data.chance and (math.random(100) > data.chance) then
			flag = false
		end

		if data and flag then
			if data.y_offset then
				pos.y = pos.y + data.y_offset
			end

			if data.height_range then
				local startOffset = math.random(0, data.height_range)
				pos.y = pos.y + startOffset

				local length = math.random(1, data.height_range - startOffset + 1)
				while length > 0  do
					minetest.swap_node(pos, {name = data.replace_with, param2 = (data.randomRotate and math.random(0,3) or 0)})
					pos.y = pos.y + 1
					length = length - 1
				end
			else
				minetest.swap_node(pos, {name = data.replace_with, param2 = (data.randomRotate and math.random(0,3) or 0)})
			end

		end
  end
end)

greenery_galore.register_group_spawn = function(data)
	group_spawn_nodes[data.node] = data
end

minetest.register_on_generated(function(minp, maxp, seed)
	if maxp.y < 0 or minp.y > 50 then return end
	for node, data in pairs(group_spawn_nodes) do
		if data.spawn_length_max then
			maxp = {x=minp.x+data.spawn_length_max, y=maxp.y, z=minp.z+data.spawn_length_max}
		end
	  local nodes, list = minetest.find_nodes_in_area(minp, maxp, data.spawn_near)
		if #nodes >= data.spawn_near_count and (math.random(100) <= data.chance) then
			local nodes, list = minetest.find_nodes_in_area_under_air(minp, maxp, data.spawn_on)
			local count = 0
			for _, pos in pairs(nodes) do
				if math.random(100) > data.spread then
						pos.y = pos.y + (data.y_offset or 1)
					minetest.swap_node(pos, {name = "greenery_galore:" .. node, param2 = (data.randomRotate and math.random(0,3) or 0)})
					count = count + 1
					if count >= data.amount then break end
				end
			end
		end
	end
end)

greenery_galore.register_colored_node = function(data)
	for color, _ in pairs(greenery_galore.colors) do
		if color == "black" then
			color = "gray"
		end
		minetest.register_node("greenery_galore:" .. data.name .. "_" .. color, {
			description = data.desc.." ".."("..color..")",
			drawtype = data.drawtype,
			use_texture_alpha = data.alpha or "true",
			sunlight_propagates = data.sunlight_propagates or "false",
			place_param2 = 0,
			color = color,
			paramtype = data.paramtype,
			tiles = data.tiles,
			is_ground_content = false,
			groups = data.groups or {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
			sounds = data.sounds or default.node_sound_wood_defaults(),
		})

		local hasDye = ""
		if dye and dye.dyes then
			hasDye = "dye,"
		end

		minetest.register_craft({
			output = "greenery_galore:" .. data.name .. "_" .. color .. (data.craftQty and " "..data.craftQty or " 1"),
			recipe = {
				data.recipe,
				{"", "group:" .. hasDye .. "color_"..color, ""},
				data.recipe
			}
		})
	end
end

greenery_galore.register_craftitem = function(name, desc)
	minetest.register_craftitem("greenery_galore:" .. name, {
		inventory_image = "greenery_galore_" .. name .. ".png",
		description = (desc or name),
	})
end

greenery_galore.register_tool = function(data)
	minetest.register_tool("greenery_galore:" .. data.name, {
		description = data.desc or data.name,
		inventory_image = "greenery_galore_" .. data.name .. ".png",
		tool_capabilities = {
			full_punch_interval = data.punch_time or 1,
			max_drop_level= data.max_drop_level or 3,
			groupcaps={
				[(data.use_type or "cracky")] = {times = (data.times or {[2]=2.0, [3]=1.00}), uses = (data.uses or 20), maxlevel = (data.maxLevel or 1)},
			},
			damage_groups = {fleshy = (data.damage or 3)},
		},
		sound = {breaks = "default_tool_breaks"},
		groups = data.groups or {pickaxe = 1}
	})
end

greenery_galore.register_normal_node = function(data)
	local tiles
	if data.ends then
		if data.sides then
			if type(data.sides) == "table" then
				tiles = {data.ends, data.ends, data.sides[1], data.sides[2], data.sides[3], data.sides[4]}
			else
				tiles = {data.ends, data.ends, data.sides}
			end
		else
			tiles = {data.ends, data.ends, "greenery_galore_" .. data.name .. ".png"}
		end
	else
		tiles = {"greenery_galore_" .. data.name .. ".png"}
	end

	minetest.register_node("greenery_galore:" .. data.name, {
		description = data.desc or "",
		drawtype = "normal",
		tiles = tiles,
		inventory_image = data.inv_image or "greenery_galore_" .. data.name .. ".png",
		wield_image = data.wield_image or "greenery_galore_" .. data.name .. ".png",
		paramtype = "light",
		paramtype2 = "facedir",
		liquids_pointable = data.liquids_pointable,
		walkable = data.walkable or false,
		damage_per_second = data.damage_per_second,
		groups = data.groups or {snappy = 3, flammable = 1},
		sounds = default.node_sound_leaves_defaults(),
		on_punch = data.damageOnPunch and function(pos, node, puncher, pointed_thing)
			if minetest.get_item_group(puncher:get_wielded_item():get_name(), "sword") == 0 then
				puncher:set_hp(puncher:get_hp() - data.damageOnPunch)
			end
		end,
	})
end

greenery_galore.register_structures = function(data)
	minetest.register_decoration({
		name = data.name,
		deco_type = "schematic",
		schematic = data.schematic,
		place_on = data.spawn_on or {"default:dirt_with_grass"},
		sidelen = 16,
		flags = "place_center_x, place_center_z,force_placement",
		place_offset_y = data.place_offset_y,
		noise_params = {
			offset = -0.015,
			scale = data.density or 0.025,
			spread = {x = data.spread or 100, y = data.spread or 100, z = data.spread or 100},
			seed = data.seed,
			octaves = 3,
			persist = data.persist or .4,
                        lacunarity = 4.0,
			flags = "absvalue"
		},
		biomes = data.biomes or default_biomes,
		y_min = data.y_min or 1,
		y_max = data.y_max or 31000,
		rotation = "random",
		spawn_by = data.spawn_by,
		num_spawn_by = 8
	})
end


dofile(path .. "/crafting.lua")
dofile(path .. "/flowerpot.lua")
dofile(path .. "/flowers.lua")
dofile(path .. "/mushrooms.lua")
dofile(path .. "/plants.lua")
dofile(path .. "/nodes.lua")
dofile(path .. "/tools.lua")
dofile(path .. "/waterplants.lua")