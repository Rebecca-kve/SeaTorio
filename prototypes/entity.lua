local flib_data_util = require('__flib__.data-util');
require("entity.offshore-pump")

tiercolor = {
  ["t0"] = { 
    r = 200 / 255,
    g = 160 / 255,
    b = 90 / 255,
    a = 1.0 },
  ["t2"] = { 
    r = 150 / 255,
    g = 255 / 255,
    b = 150 / 255,
    a = 1.0 },
  ["t3"] = {
    r = 255 / 255,
    g = 170 / 255,
    b = 150 / 255,
    a = 1.0 },
}

local fuel = { "chemical", "vehicle-fuel" }
if mods["aai-industry"] then table.insert(fuel, "processed-chemical") end


--EARLY filtration
local burner_kr_filtration_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-filtration-plant"], "burner-filtration-plant")
burner_kr_filtration_plant_item.subgroup = "seatorio-building"
burner_kr_filtration_plant_item.order = "a[kr-filtration-plant-0]"
burner_kr_filtration_plant_item.icons = {
	{ icon = "__SeaTorio__/graphics/icons/filtration-plant.png", icon_size = 64 },
	{
		icon = "__SeaTorio__/graphics/icons/burner.png",
		icon_size = 64,
		scale = 0.40,
		shift = { 8, -8 },
	},
}
data:extend({burner_kr_filtration_plant_item})

local burner_kr_filtration_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-filtration-plant"], "burner-filtration-plant")
burner_kr_filtration_plant.module_specification = { module_slots = 0}
burner_kr_filtration_plant.energy_usage = "250kW"
burner_kr_filtration_plant.energy_source = {
	type = "burner",
	fuel_categories = fuel,
	fuel_inventory_size = 1,
	emissions_per_minute = 8,
}
burner_kr_filtration_plant.crafting_speed = 0.75
burner_kr_filtration_plant.next_upgrade = "kr-filtration-plant"
--Picture edited version
burner_kr_filtration_plant.animation = {
	filename = "__SeaTorio__/graphics/entity/filtration-plant-burner/filtration-plant.png",
	priority = "high",
	scale = scale,
	width = 300,
	height = 300,
	frame_count = 1,
	hr_version = {
		filename = "__SeaTorio__/graphics/entity/filtration-plant-burner/hr-filtration-plant.png",
		priority = "high",
		scale = scale,
		width = 600,
		height = 600,
		frame_count = 1,
		scale = 0.5,
	},
}
burner_kr_filtration_plant.working_visualisations = {{
	animation = {
		filename = "__SeaTorio__/graphics/entity/filtration-plant-burner/filtration-plant-animation.png",
		priority = "high",
		scale = scale,
		width = 200,
		height = 220,
		frame_count = 24,
		line_length = 5,
		animation_speed=0.5,
		hr_version ={
			filename = "__SeaTorio__/graphics/entity/filtration-plant-burner/hr-filtration-plant-animation.png",
			priority = "high",
			scale = scale,
			width = 400,
			height = 440,
			frame_count = 24,
			line_length = 5,
			animation_speed=0.5,
			scale = 0.5,
		},
	},
}}
data:extend({burner_kr_filtration_plant})

-------Faster filtration
local t2_kr_filtration_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-filtration-plant"], "t2-filtration-plant")
t2_kr_filtration_plant_item.subgroup = "seatorio-building"
t2_kr_filtration_plant_item.order = "a[kr-filtration-plant-2]"
t2_kr_filtration_plant_item.icons = {
	{
		icon = kr_entities_icons_path .. "filtration-plant.png",
		icon_size = 64,
		tint = tiercolor.t2,
	},
}
data:extend({t2_kr_filtration_plant_item})

local t2_kr_filtration_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-filtration-plant"], "t2-filtration-plant")
t2_kr_filtration_plant.module_specification = { module_slots = 3}
t2_kr_filtration_plant.energy_usage = "750kW"
t2_kr_filtration_plant.crafting_speed = 2.5
data.raw["assembling-machine"]["kr-filtration-plant"].next_upgrade = "t2-filtration-plant"
t2_kr_filtration_plant.animation = {
	layers = {
		{
			filename = "__SeaTorio__/graphics/entity/filtration-plant-mk3/filtration-plant.png",
			priority = "high",
			width = 230,
			height = 260,
			shift = { 0, -0.2 },
			frame_count = 1,
			scale = 1,
			hr_version = {
				filename = "__SeaTorio__/graphics/entity/filtration-plant-mk3/hr-filtration-plant.png",
				priority = "high",
				width = 460,
				height = 520,
				shift = { 0, -0.2 },
				frame_count = 1,
				scale = 0.5,
			},
        },
	},
}
t2_kr_filtration_plant.working_visualisations = {
	{
		animation = {
			filename = "__SeaTorio__/graphics/entity/filtration-plant-mk3/filtration-plant-working.png",
			priority = "high",
			width = 170,
			height = 185,
			shift = { 0.3, -0.59 },
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			scale = 1,
			hr_version = {
				filename = "__SeaTorio__/graphics/entity/filtration-plant-mk3/hr-filtration-plant-working.png",
				priority = "high",
				width = 340,
				height = 370,
				shift = { 0.3, -0.59 },
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				scale = 0.5,
			},
        },
	},
}
data:extend({t2_kr_filtration_plant})

--EARLY chemical
local burner_chemical_plant_item = flib_data_util.copy_prototype(data.raw["item"]["chemical-plant"], "burner-chemical-plant")
burner_chemical_plant_item.subgroup = "seatorio-building"
burner_chemical_plant_item.icons = {
	{
		icon = "__base__/graphics/icons/chemical-plant.png",
		icon_size = 64,
		tint = tiercolor.t0
	},
	{
		icon = "__SeaTorio__/graphics/icons/burner.png",
		icon_size = 64,
		scale = 0.40,
		shift = { 8, -8 },
	},
}
data:extend({burner_chemical_plant_item})

local burner_chemical_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["chemical-plant"], "burner-chemical-plant")
burner_chemical_plant.module_specification = { module_slots = 0}
burner_chemical_plant.energy_usage = "100kW"
burner_chemical_plant.energy_source = {
	type = "burner",
	fuel_categories = fuel,
	effectivity = 0.85,
	fuel_inventory_size = 1,
	emissions_per_minute = 4,
}
burner_chemical_plant.crafting_speed = 0.75
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "assembling-machine"
burner_chemical_plant.fast_replaceable_group = "assembling-machine"
burner_chemical_plant.next_upgrade = "chemical-plant"
burner_chemical_plant.animation = make_4way_animation_from_spritesheet({ 
	layers = {
		{
			filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
			width = 108,
			height = 148,
			frame_count = 24,
			line_length = 12,
			shift = util.by_pixel(1, -9),
			tint = tiercolor.t0,
			hr_version = {
				filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
				width = 220,
				height = 292,
				frame_count = 24,
				line_length = 12,
				shift = util.by_pixel(0.5, -9),
				scale = 0.5,
				tint = tiercolor.t0,
			}
		},
		{
			filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
			width = 154,
			height = 112,
			repeat_count = 24,
			frame_count = 1,
			shift = util.by_pixel(28, 6),
			draw_as_shadow = true,
			hr_version = {
				filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
				width = 312,
				height = 222,
				repeat_count = 24,
				frame_count = 1,
				shift = util.by_pixel(27, 6),
				draw_as_shadow = true,
				scale = 0.5
			}
		}
	}
})
data:extend({burner_chemical_plant})

--EARLY greenhouse
local cheap_greenhouse_item = flib_data_util.copy_prototype(data.raw["item"]["kr-greenhouse"], "cheap-greenhouse")
cheap_greenhouse_item.subgroup = "seatorio-building"
cheap_greenhouse_item.icons = {
	{
		icon = kr_entities_icons_path .. "greenhouse.png",
		icon_size = 64,
		tint = tiercolor.t0
	},
}
data:extend({cheap_greenhouse_item})

local cheap_greenhouse = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-greenhouse"], "cheap-greenhouse")
cheap_greenhouse.module_specification = { module_slots = 0}
cheap_greenhouse.energy_usage = "75kW"
cheap_greenhouse.ingredient_count = 0  --Can only do basic wood
if mods['aai-industry'] then
	cheap_greenhouse.crafting_speed = 1.5 -- Increse early wood as its 1/4 in this mod
else
	cheap_greenhouse.crafting_speed = 0.5
end
cheap_greenhouse.next_upgrade = "kr-greenhouse"
cheap_greenhouse.animation.layers[1].tint = tiercolor.t0
cheap_greenhouse.animation.layers[1].hr_version.tint = tiercolor.t0
data:extend({cheap_greenhouse})

--EARLY electrolyse
local burner_atmospheric_condenser_item = flib_data_util.copy_prototype(data.raw["item"]["kr-atmospheric-condenser"], "burner-atmospheric-condenser")
burner_atmospheric_condenser_item.subgroup = "seatorio-building"
burner_atmospheric_condenser_item.icons = {
	{
		icon = kr_entities_icons_path .. "atmospheric-condenser.png",
		icon_size = 64,
		tint = tiercolor.t0
	},
	{
		icon = "__SeaTorio__/graphics/icons/burner.png",
		icon_size = 64,
		scale = 0.40,
		shift = { 8, -8 },
	},
}
data:extend({burner_atmospheric_condenser_item})

local burner_atmospheric_condenser = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-atmospheric-condenser"], "burner-atmospheric-condenser")
burner_atmospheric_condenser.module_specification = { module_slots = 0}
burner_atmospheric_condenser.energy_usage = "0.12MW"
burner_atmospheric_condenser.energy_source = {
	type = "burner",
	fuel_categories = fuel,
	effectivity = 0.85,
	fuel_inventory_size = 1,
	emissions_per_minute = 5,
}
burner_atmospheric_condenser.crafting_speed = 0.75
burner_atmospheric_condenser.next_upgrade = "kr-atmospheric-condenser"
burner_atmospheric_condenser.animation.layers[1].tint = tiercolor.t0
burner_atmospheric_condenser.animation.layers[1].hr_version.tint = tiercolor.t0
data:extend({burner_atmospheric_condenser})

--EARLY pump

local slow_offshore_pump_item = util.table.deepcopy(data.raw["item"]["offshore-pump"])
slow_offshore_pump_item.name = "slow-offshore-pump"
--slow_offshore_pump_item.localised_name = {"slow-offshore-pump"}
slow_offshore_pump_item.place_result = "slow-offshore-pump"
slow_offshore_pump_item.icon = "__SeaTorio__/graphics/icons/offshore-pump.png"
slow_offshore_pump_item.subgroup = "seatorio-building"
slow_offshore_pump_item.icon_size = 32
data:extend({slow_offshore_pump_item})

data:extend({

	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "burner-filtration-plant",
        ingredients = {
			{"burner-inserter", 2},
			{"stone-brick", 5},	
			{"pipe", 5},
			{"wood", 15}
        },
		result = "burner-filtration-plant",
	},
	
	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "t2-filtration-plant",
        ingredients = {
			{"electric-engine-unit", 5},
			{"kr-filtration-plant", 1},	
			{"kr-steel-pipe", 4},
			{"tungsten-carbide", 5}
        },
		result = "t2-filtration-plant",
	},

	{
		type = "recipe",
		name = "burner-chemical-plant",
        energy_required = 5,
		enabled = true,
        ingredients = {
			{"wood", 10},
			{"burner-mining-drill", 1},
			{"sand", 10},
			{"pipe", 5}
        },
		result = "burner-chemical-plant",
    },
	
	{
		type = "recipe",
		name = "cheap-greenhouse",
        energy_required = 10,
		enabled = false,
        ingredients = {
			{"wood", 30},
			{"pipe", 5},
			{"stone-brick", 5},
			{"sand", 10}
        },
		result = "cheap-greenhouse",
    },
	
	{
		type = "recipe",
		name = "burner-atmospheric-condenser",
		energy_required = 10,
		enabled = false,
		ingredients = {
			{ "wood", 10 },
			{ "iron-gear-wheel", 3 },
			{ "aluminum-plate", 5 },
			{ "stone-brick", 10 },
		},
		result = "burner-atmospheric-condenser",
	},
	{
		type = "recipe",
		name = "slow-offshore-pump",
		energy_required = 1,
		enabled = true,
		ingredients = {
			{ "lead-plate", 2 },
			{ "aluminum-plate", 1 },
		},
		result = "slow-offshore-pump",
	},
})

data.raw["inserter"]["burner-inserter"].extension_speed = 0.07
data.raw["inserter"]["burner-inserter"].rotation_speed = 0.015

--[[ --simply tinted version
burner_kr_filtration_plant.animation.layers[1].tint = tiercolor.t0
burner_kr_filtration_plant.animation.layers[1].hr_version.tint = tiercolor.t0
burner_kr_filtration_plant.working_visualisations = {
	{
		animation = {
			filename = kr_entities_path .. "filtration-plant/filtration-plant-working.png",
			priority = "high",
			width = 170,
			height = 185,
			shift = { 0.3, -0.59 },
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			scale = 1,
			tint = tiercolor.t0,
			hr_version = {
				filename = kr_entities_path .. "filtration-plant/hr-filtration-plant-working.png",
				priority = "high",
				width = 340,
				height = 370,
				shift = { 0.3, -0.59 },
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				scale = 0.5,
				tint = tiercolor.t0,
			},
        },
	},
}
---------Another filtration plant test version

t2_kr_filtration_plant.animation = {
	filename = "__SeaTorio__/graphics/entity/filtration-plant-fast/filtration-plant.png",
	priority = "high",
	scale = scale,
	width = 300,
	height = 300,
	frame_count = 1,
	hr_version = {
		filename = "__SeaTorio__/graphics/entity/filtration-plant-fast/hr-filtration-plant.png",
		priority = "high",
		scale = scale,
		width = 600,
		height = 600,
		frame_count = 1,
		scale = 0.5,
	},
}
t2_kr_filtration_plant.working_visualisations = {{
	animation = {
		filename = "__SeaTorio__/graphics/entity/filtration-plant-fast/filtration-plant-animation.png",
		priority = "high",
		scale = scale,
		width = 200,
		height = 220,
		frame_count = 24,
		line_length = 5,
		animation_speed=0.5,
		hr_version ={
			filename = "__SeaTorio__/graphics/entity/filtration-plant-fast/hr-filtration-plant-animation.png",
			priority = "high",
			scale = scale,
			width = 400,
			height = 440,
			frame_count = 24,
			line_length = 5,
			animation_speed=0.5,
			scale = 0.5,
		},
	},
}}
]]