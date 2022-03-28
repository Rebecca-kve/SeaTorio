local matter = require("__Krastorio2__/lib/public/data-stages/matter-util")
local util = require('__bzaluminum__.data-util');
matter.removeMatterRecipe("wood")
matter.removeMatterRecipe("quartz")

if krastorio.general.getSafeSettingValue("kr-rebalance-fuels") then 
	data.raw.item["wood"].fuel_value = "2MJ"
end

local mineral_mix_matter = {
    item_name = "mineral-mix",
    minimum_conversion_quantity = 100,
    matter_value = 30,
    energy_required = 3,
    need_stabilizer = false,
	only_conversion = true,
    --unlocked_by_technology = "mineral-mix-matter-processing"
	unlocked_by_technology = "kr-matter-processing"
}
matter.createMatterRecipe(mineral_mix_matter)

local seatorio_wood = {
    item_name = "wood",
    minimum_conversion_quantity = 10,
    matter_value = 2,
    energy_required = 1,
    need_stabilizer = false,
	only_deconversion = true,
	unlocked_by_technology = "kr-matter-processing",
}
matter.createMatterRecipe(seatorio_wood)


------------------- Changes to BZ:
--This mod will benefit from early game fluid handling
util.remove_ingredient("pump", "graphite")
util.remove_ingredient("pump", "engine-unit")
util.remove_ingredient("pump", "steel-plate")
util.add_ingredient("pump", "iron-beam", 3)
util.add_ingredient("pump", "copper-cable", 5)
util.add_ingredient("pump", "lead-plate", 5)
util.replace_ingredient("red-wire", "optical-fiber", "copper-cable")
util.replace_ingredient("green-wire", "optical-fiber", "copper-cable")
util.replace_ingredient("red-wire", "automation-core", "aluminum-cable")
util.replace_ingredient("green-wire", "automation-core", "aluminum-cable")

if mods["Flow Control"] then
	replace_tech("pipe-junction", "flow_control_valves_tech", "kr-basic-fluid-handling")
	replace_tech("pipe-elbow", "flow_control_valves_tech", "kr-basic-fluid-handling")
	replace_tech("pipe-straight", "flow_control_valves_tech", "kr-basic-fluid-handling")
end
---------------------------------
--[[
data:extend({
	{
		type = "technology",
		name = "mineral-mix-matter-processing",
		icons = {
			{ icon =  kr_technologies_icons_path .. "matter-oil.png", icon_size = 256, },
			{ icon = "__SeaTorio__/graphics/mineral-mix.png", icon_size = 64, scale = 1.4, }
		},
		effects = {
			{ type = "unlock-recipe", recipe = "mineral-mix-to-matter" },
		},
		prerequisites = {"kr-matter-processing"},
		unit = {
			count = 350,
			ingredients = {
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "matter-tech-card", 1 },
			},
			time = 45
		},
	},
})
]]