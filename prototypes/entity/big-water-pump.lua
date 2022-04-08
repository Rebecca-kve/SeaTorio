--big pump add recipe
local recipe_category = {
	name = "pump-water",
	type = "recipe-category"
}	data:extend({recipe_category})


local Seatorio_water = {
	type = "recipe",
	name = "Seatorio-water",
	category = "pump-water",
	hidden = true,
	hide_from_stats = false,	
	icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
	icon_mipmaps = 4,
	energy_required = 1,
	ingredients = {},
	results = {
		{type = "fluid", name = "water", amount = 1000}
	},
	subgroup = "fluid-recipes",
	allow_decomposition = false
}	data:extend({Seatorio_water})

--Add Big pump
local fast_water_pump = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
fast_water_pump.name = "big-water-pump"
fast_water_pump.minable.result = "big-water-pump"
fast_water_pump.minable = {hardness = 0.2, mining_time = 0.5, result = "big-water-pump"}
fast_water_pump.flags = {"placeable-neutral", "placeable-player", "player-creation"}
fast_water_pump.icon = "__base__/graphics/icons/pumpjack.png"
fast_water_pump.icon_size = 64
fast_water_pump.icon_mipmaps = 4
fast_water_pump.collision_mask = {"ground-tile", "object-layer"}

data.raw["tile"]["landfill"].check_collision_with_entities = true --Do not get destroyed by landfill
fast_water_pump.protected_from_tile_building = true --Do not get destroyed by landfill

fast_water_pump.energy_usage = "200kW"
fast_water_pump.crafting_speed = 3
fast_water_pump.crafting_categories = {"pump-water"}
fast_water_pump.fixed_recipe = "Seatorio-water"
fast_water_pump.next_upgrade = nil
--[[fast_water_pump.fluid_boxes = {
	fluid_box =
	{
		base_area = 1,
		base_level = 1,
		pipe_covers = pipecoverspictures(),
		production_type = "output",
		pipe_connections =
		{
			{
				positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
			}
		}
	},
	off_when_no_fluid_recipe = false
}]]
fast_water_pump.radius_visualisation_picture = {
	filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
	width = 12,
	height = 12
}
fast_water_pump.base_picture = {
      sheets =
      {
        {
          filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
          priority = "extra-high",
          width = 131,
          height = 137,
          shift = util.by_pixel(-2.5, -4.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
          priority = "extra-high",
          width = 110,
          height = 111,
          draw_as_shadow = true,
          shift = util.by_pixel(6, 0.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-base-shadow.png",
            width = 220,
            height = 220,
            scale = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(6, 0.5)
          }
        }
      }
}

fast_water_pump.animation = {
	layers =
	{
		  {
			priority = "high",
			filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
			line_length = 8,
			width = 104,
			height = 102,
			frame_count = 40,
			shift = util.by_pixel(-4, -24),
			animation_speed = 0.5,
			hr_version =
			{
				priority = "high",
				filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead.png",
				animation_speed = 0.5,
				scale = 0.5,
				line_length = 8,
				width = 206,
				height = 202,
				frame_count = 40,
				shift = util.by_pixel(-4, -24)
			}
		  },
		  {
			priority = "high",
			filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
			animation_speed = 0.5,
			draw_as_shadow = true,
			line_length = 8,
			width = 155,
			height = 41,
			frame_count = 40,
			shift = util.by_pixel(17.5, 14.5),
			hr_version =
			{
				priority = "high",
				filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead-shadow.png",
				animation_speed = 0.5,
				draw_as_shadow = true,
				line_length = 8,
				width = 309,
				height = 82,
				frame_count = 40,
				scale = 0.5,
				shift = util.by_pixel(17.75, 14.5)
			}
		  }
	}
}
fast_water_pump.working_sound = {
	sound = { filename = "__base__/sound/pumpjack.ogg" },
	apparent_volume = 1.5,
}



data:extend({fast_water_pump})

