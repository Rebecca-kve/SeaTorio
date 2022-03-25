local matter = require("__Krastorio2__/lib/public/data-stages/matter-util")
matter.removeMatterRecipe("wood")
matter.removeMatterRecipe("quartz")

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