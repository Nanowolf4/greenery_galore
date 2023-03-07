local function butterfly_logic(self)
	mob_core.vitals(self)

    if self.hp <= 0 then
        mob_core.on_die(self)
        return
    end

	if mobkit.is_queue_empty_high(self) then
		mob_core.hq_fly_and_soar(self, 0, 1.5)
	end

end

-- local variables
local l_skins = {
	"bf1.png^bf2.png^bf3.png^bf4.png^bf5.png",

	"(bf1.png^[colorize:orange)"
	.."^(bf2.png^[colorize:violet)^(bf3.png^[colorize:yellow)"
	.."^(bf4.png^[colorize:cyan)^(bf5.png^[colorize:black)",

	"(bf1.png^[colorize:magenta)"
	.."^(bf2.png^[colorize:green)"
	.."^(bf3.png^[colorize:red)"
	.."^(bf4.png^[colorize:blue)"
	.."^(bf5.png^[colorize:white)",

	"(bf1.png^[colorize:yellow)"
	.."^(bf2.png^[colorize:cyan)"
	.."^(bf3.png^[colorize:green)"
	.."^(bf4.png^[colorize:violet)"
	.."^(bf5.png^[colorize:darkgray)",

	"(bf1.png^[colorize:pink)"
	.."^(bf2.png^[colorize:white)"
	.."^(bf3.png^[colorize:blue)"
	.."^(bf4.png^[colorize:orange)"
	.."^(bf5.png^[colorize:gray)",

	"(bf1.png^[colorize:darkgreen)"
	.."^(bf2.png^[colorize:brown)"
	.."^(bf3.png^[colorize:black)"
	.."^(bf4.png^[colorize:darkgray)"
	.."^(bf5.png^[colorize:red)"
}

minetest.register_entity("greenery_galore:butterfly",{
	max_hp = 2,
    view_range = 5,					-- nodes/meters
	height = 5,

    physical = true,
    collide_with_objects = false,
	collisionbox = {-1, -0.3, -1, 1, 0.3, 1},
	visual_size = {x=1,y=1},

	visual = "mesh",
    mesh = "greenery_galore_butterfly.x",
	textures = l_skins,
    animation = {
		stand={range={x=0,y=90},speed=15,loop=true},
        fly={range={x=0,y=90},speed=30,loop=true},	-- single
        -- land={range={x=0,y=40},speed=80,loop=true},
		-- idle={range={x=0,y=0},speed=0,loop=true},
	},

	-- obstacle_avoidance_range = 1,
	-- surface_avoidance_range = 0,
	floor_avoidance_range = 1,

	max_speed = 2,				-- m/s
    stepheight = 1.2,
    jump_height = 1.2,				-- nodes/meters
    buoyancy = 0.1,			-- (0,1) - portion of collisionbox submerged
                            -- = 1 - controlled buoyancy (fish, submarine)
                            -- > 1 - drowns
                            -- < 0 - MC like water trampolining
	lung_capacity = 1, 		-- seconds
    timeout = 500,			-- entities are removed after this many seconds inactive
                            -- 0 is never
                            -- mobs having memory entries are not affected
	ignore_liquidflag = false,			-- range is distance between attacker's collision box center

	push_on_collide = true,

    drops = {
		--{name = "water_life:meat_raw", chance = 1, min = 2, max = 5},
    },

	on_step = mobkit.stepfunc,	-- required
	on_activate = mobkit.actfunc,		-- required
	get_staticdata = mobkit.statfunc,

	logic = butterfly_logic,

	on_punch = function(self, puncher, _, tool_capabilities, dir)
		--apply damage
		mob_core.on_punch_basic(self, puncher, tool_capabilities, dir)
	end,
})

mob_core.register_spawn_egg("greenery_galore:butterfly", "9aff92" ,"ff92e5")

mob_core.register_spawn({
	name = "greenery_galore:butterfly",
	nodes = {"group:flower"},
	min_light = 10,
	max_light = 15,
	min_height = 2,
	max_height = 200,
	min_rad = 15,
	max_rad = 150,
	group = 3,
}, 3, 3)
