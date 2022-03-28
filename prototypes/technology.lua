data:extend({
---Assembly ore
  {
    type = "technology",
    name = "aluminum-ore-production",
    icon_size = 64,
    icon = "__bzaluminum__/graphics/icons/aluminum-ore.png",
    effects = {
		{ type = "unlock-recipe", recipe = "aluminum-ore-production" },
    },
    prerequisites = {"automation-2"},
    unit = {
		count = 100,
		ingredients = {
			{"basic-tech-card", 1},
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 30
	},
  },
  
  {
    type = "technology",
    name = "copper-ore-production",
    icon_size = 64,
    icon = "__base__/graphics/icons/copper-ore.png",
    effects = {
		{ type = "unlock-recipe", recipe = "copper-ore-production" },
    },
    prerequisites = {"automation-2"},
    unit = {
		count = 100,
		ingredients = {
			{"basic-tech-card", 1},
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 30
	},
  },
  
  {
    type = "technology",
    name = "lead-ore-production",
    icon_size = 64,
    icon = "__bzlead__/graphics/icons/lead-ore.png",
    effects = {
		{ type = "unlock-recipe", recipe = "lead-ore-production" },
    },
    prerequisites = {"automation-2"},
    unit = {
		count = 100,
		ingredients = {
			{"basic-tech-card", 1},
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 30
	},
  },
  
  {
    type = "technology",
    name = "iron-ore-production",
    icon_size = 64,
    icon = "__base__/graphics/icons/iron-ore.png",
    effects = {
		{
			type = "unlock-recipe",
			recipe = "iron-ore-production"
		},
    },
    prerequisites = {"automation-2"},
    unit = {
		count = 100,
		ingredients = {
			{"basic-tech-card", 1},
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 30
	},
  },
  
  {
    type = "technology",
    name = "zircon-production",
    icon_size = 64,
    icon = "__bzzirconium__/graphics/icons/zircon.png",
    effects = {
		{ type = "unlock-recipe", recipe = "zircon-production" },
    },
    prerequisites = {"automation-2"},
    unit = {
		count = 100,
		ingredients = {
			{"basic-tech-card", 1},
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 30
	},
  },
	
------Entity
  {
    type = "technology",
    name = "t2-filtration-plant",
    icons = {
		{
			icon = kr_entities_icons_path .. "filtration-plant.png",
			icon_size = 64,
			tint = tiercolor.t2,
		},
	},
    effects = {
		{ type = "unlock-recipe", recipe = "t2-filtration-plant" },
    },
    prerequisites = {"electric-engine"},
    unit = {
		count = 300,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
		},
		time = 30
	},
  },
----andvance Extraction and mineral mix
  {
    type = "technology",
    name = "advanced-extraction",
    icon_size = 64,
    icon = "__SeaTorio__/graphics/icons/advanced-extraction.png",
    effects = {
		{ type = "unlock-recipe", recipe = "advanced-extraction" },
    },
    prerequisites = {"kr-silicon-processing"},
    unit = {
		count = 200,
		ingredients =  {
			{"basic-tech-card", 1},
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 30
	},
  },

  {
    type = "technology",
    name = "concrete-mineral-mix",
    icon_size = 64,
    icon = "__SeaTorio__/graphics/icons/concrete-mineral-mix.png",
    effects = {
		{ type = "unlock-recipe", recipe = "concrete-mineral-mix" },
    },
    prerequisites = {"concrete"},
    unit = {
		count = 50,
		ingredients =  {
			{"basic-tech-card", 1},
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 30
	},
  },

  {
    type = "technology",
    name = "refined-concrete-mineral-mix",
    icon_size = 64,
    icon = "__SeaTorio__/graphics/icons/refined-concrete-mineral-mix.png",
    effects = {
		{ type = "unlock-recipe", recipe = "refined-concrete-mineral-mix" },
    },
    prerequisites = {"sulfur-processing", "concrete"},
    unit = {
		count = 200,
		ingredients =  {
			{"basic-tech-card", 1},
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 30
	},
  },
  
  {
    type = "technology",
    name = "coal-dirty-water-production",
    icon_size = 64,
	icons = {
		{ icon = kr_fluids_icons_path .. "dirty-water.png", icon_size = 64 },
		{
			icon = "__base__/graphics/icons/coal.png",
			icon_size = 64,
			scale = 0.26,
			shift = { 8, -8 },
		},
	},
    effects = {
		{ type = "unlock-recipe", recipe = "coal-dirty-water-production" },
    },
    prerequisites = {"kr-steam-engine"},
    unit = {
		count = 10,
		ingredients =  {
			{"basic-tech-card", 1},
		},
		time = 30
	},
  },

  {
    type = "technology",
    name = "fluid-control",
	icons = {
		--{ icon = "__base__/graphics/technology/fluid-handling.png", icon_size = 256 },
		{
			icon = "__base__/graphics/icons/storage-tank.png",
			icon_size = 64,
			scale = 0.5,
			shift = { 1, -1 },
		},
		{
			icon = "__base__/graphics/icons/pump.png",
			icon_size = 64,
			scale = 0.5,
			shift = { 1, 8 },
		},
	},
    effects = {
		{type = 'unlock-recipe', recipe = 'pump' },
		{type = 'unlock-recipe', recipe = 'storage-tank' },
		{type = 'unlock-recipe', recipe = 'red-wire' },
		{type = 'unlock-recipe', recipe = 'green-wire' },
    },
    prerequisites = {"kr-basic-fluid-handling", "copper-processing"},
    unit = {
		count = 30,
		ingredients =  {
			{"basic-tech-card", 1},
		},
		time = 15
	},
  },


})


if mods["underground-pipe-pack"] then
data:extend({
  {
    type = "technology",
    name = "Valve",
	icons = {
		{ icon = "__underground-pipe-pack__/graphics/icons/check-valve.png", icon_size = 32 },
		{
			icon = "__underground-pipe-pack__/graphics/icons/overflow-valve.png",
			icon_size = 32,
			scale = 0.35,
			shift = { 3, -3 },
		},
		{
			icon = "__underground-pipe-pack__/graphics/icons/top-up-valve.png",
			icon_size = 32,
			scale = 0.35,
			shift = { -3, 3 },
		},
	},
    effects = {
		{type = 'unlock-recipe', recipe = '80-overflow-valve' },
		{type = 'unlock-recipe', recipe = '80-top-up-valve' },
		{type = 'unlock-recipe', recipe = 'check-valve' },
    },
    prerequisites = {"kr-basic-fluid-handling"},
    unit = {
		count = 30,
		ingredients =  {
			{"basic-tech-card", 1},
		},
		time = 15
	},
  },
})
end


