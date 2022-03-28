local util = require('__bzaluminum__.data-util');
local fluid = require("__Krastorio2__/lib/public/data-stages/fluid-burner-util");
fluid.addBurnFluidEmissionsMultiplier("chemical-waste-water", 15.0)
--util.remove_recipe_effect(technology_name, recipe_name)
--util.add_prerequisite(technology_name, prerequisite)
--util.remove_prerequisite(technology_name, prerequisite)
function add_tech_start(recipe_start, old_technology)
	util.remove_recipe_effect(old_technology, recipe_start)
	data.raw.recipe[recipe_start].enabled = true
end
--add_tech_start("", "")
function replace_tech(recipe_name, new_tech, old_tech)
	util.remove_recipe_effect(old_tech, recipe_name)
	util.add_effect(new_tech, { type = "unlock-recipe", recipe = recipe_name })
end
--replace_tech("", "", "")
--{ type = "unlock-recipe", recipe = "burner-atmospheric-condenser" }

---------NEW START TECH
add_tech_start("dirty-water-filtration-1", "kr-enriched-ores")
add_tech_start("kr-grow-wood-with-water", "kr-greenhouse")
add_tech_start("dirty-water-filtration-aluminum", "kr-enriched-ores")
add_tech_start("dirty-water-filtration-lead", "kr-enriched-ores")
add_tech_start("dirty-water-filtration-zircon", "kr-enriched-ores")
util.remove_product("dirty-water-filtration-zircon", "titanium-ore")

add_tech_start("transport-belt", "kr-logistic")
add_tech_start("pipe", "kr-basic-fluid-handling")
add_tech_start("landfill", "landfill")

---------NEW RECIPES
util.add_effect("graphite-processing", { type = "unlock-recipe", recipe = "flake-graphite-extraction" })
util.add_effect("kr-steam-engine", { type = "unlock-recipe", recipe = "coal-filtration" })
util.add_effect("kr-steam-engine", { type = "unlock-recipe", recipe = "heavy-oil-production" })
util.add_effect("kr-greenhouse", { type = "unlock-recipe", recipe = "void-chemical-waste-water" })
util.add_effect("kr-fluids-chemistry", { type = "unlock-recipe", recipe = "raw-rare-metals-extraction" })
util.add_effect("sulfur-processing", { type = "unlock-recipe", recipe = "uranium-extraction" })
util.add_effect("kr-mineral-water-gathering", { type = "unlock-recipe", recipe = "wolframite-extraction" })
util.add_effect("kr-mineral-water-gathering", { type = "unlock-recipe", recipe = "mineral-water-production" })
util.add_effect("lubricant", { type = "unlock-recipe", recipe = "titanium-extraction" })
util.add_effect("oil-processing", { type = "unlock-recipe", recipe = "crude-oil-production" })
util.add_effect("kr-quarry-minerals-extraction", { type = "unlock-recipe", recipe = "raw-imersite-production" })
util.add_effect("kr-reinforced-plates", { type = "unlock-recipe", recipe = "Stone-from-black-reinforced-plate" })
util.add_effect("kr-reinforced-plates", { type = "unlock-recipe", recipe = "Stone-from-white-reinforced-plate" })
util.add_effect("advanced-oil-processing", { type = "unlock-recipe", recipe = "crude-oil-production-2" })

--New tech to unlock fluid handling early
util.remove_recipe_effect("fluid-handling", "storage-tank" )
util.remove_recipe_effect("fluid-handling", "pump" )
util.remove_recipe_effect("circuit-network", "red-wire" )
util.remove_recipe_effect("circuit-network", "green-wire")

--Costom fit for other mods
if mods["Flow Control"] then
	util.remove_prerequisite("flow_control_valves_tech", "fluid-handling")
	util.add_prerequisite("flow_control_valves_tech", "kr-basic-fluid-handling")
	util.remove_ingredient("overflow-valve", "electronic-circuit")
	util.remove_ingredient("underflow-valve", "electronic-circuit")
	data.raw.technology["flow_control_valves_tech"].unit = {
		count = 30,
		ingredients =  {
			{"basic-tech-card", 1},
		},
		time = 15
	}
--"pipe-junction","pipe-elbow""pipe-straight",
end
if mods["Rich-Rocks-Requiem"] then
	util.add_effect("rrr-rich-rocks-processing", { type = "unlock-recipe", recipe = "rich-rock-production" })
end -- I want the option to disable rich rock ores to be viable.

if mods["underground-pipe-pack"] then
	util.remove_recipe_effect("advanced-underground-piping", "80-overflow-valve")
	util.remove_recipe_effect("advanced-underground-piping", "80-top-up-valve")
	util.remove_recipe_effect("advanced-underground-piping", "check-valve")
end -- Add flow controll early
--------
util.add_effect("kr-basic-fluid-handling", { type = "unlock-recipe", recipe = "burner-atmospheric-condenser" })
util.add_effect("kr-basic-fluid-handling", { type = "unlock-recipe", recipe = "dissolver" })
util.add_effect("kr-basic-fluid-handling", { type = "unlock-recipe", recipe = "stone-brick-mineral-mix" })
util.add_effect("kr-basic-fluid-handling", { type = "unlock-recipe", recipe = "basic-extraction" })


--------New tech requirements
replace_tech("dirty-water-filtration-tungsten", "kr-mineral-water-gathering", "kr-enriched-ores")
replace_tech("dirty-water-filtration-2", "copper-processing", "kr-enriched-ores")
replace_tech("oxygen", "kr-basic-fluid-handling", "kr-atmosphere-condensation")

