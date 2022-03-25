local flib_data_util = require('__flib__.data-util');
--local burner_kr_filtration_plant_item = util.table.deepcopy(data.raw["item"]["kr-filtration-plant"])
--burner_kr_filtration_plant_item.name = "burner-filtration-plant"
--burner_kr_filtration_plant_item.localised_name = {"burner-filtration-plant"}
--burner_kr_filtration_plant_item.place_result = "burner-filtration-plant"

--[[burner_kr_filtration_plant_item.icons = {
	icon = burner_kr_filtration_plant_item.icon,
	tint = {r=130/255, g=100/255, b=70/255}
}
]]
tiercolor = {
  ["t0"] = { 
    r = 200 / 255,
    g = 160 / 255,
    b = 90 / 255,
    a = 1.0 },
  ["t2"] = { 
    r = 255 / 255,
    g = 170 / 255,
    b = 150 / 255,
    a = 1.0 },
}


--EARLY filtration
local burner_kr_filtration_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-filtration-plant"], "burner-filtration-plant")
burner_kr_filtration_plant_item.subgroup = "seatorio-building"
burner_kr_filtration_plant_item.order = "a[kr-filtration-plant-0]"
burner_kr_filtration_plant_item.icon = "__SeaTorio__/graphics/filtration-plant.png"
data:extend({burner_kr_filtration_plant_item})

local burner_kr_filtration_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-filtration-plant"], "burner-filtration-plant")
burner_kr_filtration_plant.module_specification = { module_slots = 0}
burner_kr_filtration_plant.energy_usage = "250kW"
burner_kr_filtration_plant.energy_source = {
	type = "burner",
	fuel_category = "chemical",
	fuel_inventory_size = 1,
	emissions_per_minute = 8,
}
burner_kr_filtration_plant.crafting_speed = 0.75
burner_kr_filtration_plant.next_upgrade = "kr-filtration-plant"
burner_kr_filtration_plant.animation.layers[1].tint = tiercolor.t0
burner_kr_filtration_plant.animation.layers[1].hr_version.tint = tiercolor.t0
data:extend({burner_kr_filtration_plant})

-------Faster filtration
local t2_kr_filtration_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-filtration-plant"], "t2-filtration-plant")
t2_kr_filtration_plant_item.subgroup = "seatorio-building"
t2_kr_filtration_plant_item.order = "a[kr-filtration-plant-2]"
t2_kr_filtration_plant_item.icon = "__SeaTorio__/graphics/fast-filtration-plant.png"
data:extend({t2_kr_filtration_plant_item})

local t2_kr_filtration_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-filtration-plant"], "t2-filtration-plant")
t2_kr_filtration_plant.module_specification = { module_slots = 3}
t2_kr_filtration_plant.energy_usage = "750kW"
t2_kr_filtration_plant.crafting_speed = 2.5
data.raw["assembling-machine"]["kr-filtration-plant"].next_upgrade = "t2-filtration-plant"
t2_kr_filtration_plant.animation.layers[1].tint = tiercolor.t2
t2_kr_filtration_plant.animation.layers[1].hr_version.tint = tiercolor.t2
data:extend({t2_kr_filtration_plant})

--EARLY chemical
local burner_chemical_plant_item = flib_data_util.copy_prototype(data.raw["item"]["chemical-plant"], "burner-chemical-plant")
burner_chemical_plant_item.subgroup = "seatorio-building"
burner_chemical_plant_item.icon = "__SeaTorio__/graphics/chemical-plant.png"
data:extend({burner_chemical_plant_item})

local burner_chemical_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["chemical-plant"], "burner-chemical-plant")
burner_chemical_plant.module_specification = { module_slots = 0}
burner_chemical_plant.energy_usage = "100kW"
burner_chemical_plant.energy_source = {
	type = "burner",
	fuel_category = "chemical",
	effectivity = 0.85,
	fuel_inventory_size = 1,
	emissions_per_minute = 4,
}
burner_chemical_plant.crafting_speed = 0.75
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "assembling-machine"
burner_chemical_plant.fast_replaceable_group = "assembling-machine"
burner_chemical_plant.next_upgrade = "chemical-plant"
data:extend({burner_chemical_plant})

--EARLY greenhouse
local cheap_greenhouse_item = flib_data_util.copy_prototype(data.raw["item"]["kr-greenhouse"], "cheap-greenhouse")
cheap_greenhouse_item.subgroup = "seatorio-building"
cheap_greenhouse_item.icon = "__SeaTorio__/graphics/greenhouse.png"
data:extend({cheap_greenhouse_item})

local cheap_greenhouse = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-greenhouse"], "cheap-greenhouse")
cheap_greenhouse.module_specification = { module_slots = 0}
cheap_greenhouse.energy_usage = "75kW"
cheap_greenhouse.crafting_speed = 0.5
cheap_greenhouse.next_upgrade = "kr-greenhouse"
cheap_greenhouse.animation.layers[1].tint = tiercolor.t0
cheap_greenhouse.animation.layers[1].hr_version.tint = tiercolor.t0
data:extend({cheap_greenhouse})

--EARLY electrolyse
local burner_atmospheric_condenser_item = flib_data_util.copy_prototype(data.raw["item"]["kr-atmospheric-condenser"], "burner-atmospheric-condenser")
burner_atmospheric_condenser_item.subgroup = "seatorio-building"
burner_atmospheric_condenser_item.icon = "__SeaTorio__/graphics/atmospheric-condenser.png"
data:extend({burner_atmospheric_condenser_item})

local burner_atmospheric_condenser = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-atmospheric-condenser"], "burner-atmospheric-condenser")
burner_atmospheric_condenser.module_specification = { module_slots = 0}
burner_atmospheric_condenser.energy_usage = "0.12MW"
burner_atmospheric_condenser.energy_source = {
	type = "burner",
	fuel_category = "chemical",
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

local burner_offshore_pump_item = flib_data_util.copy_prototype(data.raw["item"]["offshore-pump"], "slow-offshore-pump")
burner_offshore_pump_item.subgroup = "seatorio-building"
burner_offshore_pump_item.icon = "__SeaTorio__/graphics/offshore-pump.png"
data:extend({burner_offshore_pump_item })

local burner_offshore_pump = flib_data_util.copy_prototype(data.raw["offshore-pump"]["offshore-pump"], "slow-offshore-pump")
burner_offshore_pump.pumping_speed = 5
data:extend({burner_offshore_pump})

--[[
local items = {
	{name = "burner-filtration-plant"},
	{name = "burner-chemical-plant"},
	{name = "cheap-greenhouse"},
	{name = "burner-electrolysis-plant"},
}
--]]

data:extend({

	{
		type = "recipe",
		enabled = true,
		energy_required = 10,
		name = "burner-filtration-plant",
        ingredients = {
			{"stone-brick", 2},
			{"iron-gear-wheel", 1},	
			{"lead-plate", 5},
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
			{"iron-gear-wheel", 2},
			{"stone-brick", 5},
			{"pipe", 5}
        },
		result = "burner-chemical-plant",
    },
	
	{
		type = "recipe",
		name = "cheap-greenhouse",
        energy_required = 10,
		enabled = true,
        ingredients = {
			{"wood", 30},
			{"aluminum-plate", 5},
			{"stone-brick", 5},
			{"iron-gear-wheel", 2}
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
