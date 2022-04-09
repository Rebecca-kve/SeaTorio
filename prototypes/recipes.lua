data:extend({
----NEW Fluids
	{
		type = "fluid",
		name = "chemical-waste-water",
		default_temperature = 25,
		max_temperature = 100,
		auto_barrel = true,
		base_color = { r = 0.13, g = 1.00, b = 0.00 },
		flow_color = { r = 0.13, g = 1.00, b = 0.00 },
	    fuel_value = "750KJ",
		emissions_multiplier = 5.0,
		icon = "__SeaTorio__/graphics/icons/chemical-waste-water.png",
		icon_size = 64,
		icon_mipmaps = 4,
		order = "a[chemical-waste-water]",
		subgroup = "seatorio-inter",
	},
	
	{
		type = "fluid",
		name = "mineral-mix",
		default_temperature = 25,
		max_temperature = 100,
		auto_barrel = true,
		base_color = { r = 0.65, g = 0.50, b = 0.20 },
		flow_color = { r = 0.65, g = 0.50, b = 0.20 },
		icon = "__SeaTorio__/graphics/icons/mineral-mix.png",
		icon_size = 64,
		icon_mipmaps = 4,
		order = "a[mineral-mix]",
		subgroup = "seatorio-inter",
	},
	
	{
		type = "fluid",
		name = "dissolver",
		default_temperature = 25,
		max_temperature = 100,
		auto_barrel = true,
		base_color = { r = 1, g = 1, b = 1 },
		flow_color = { r = 1, g = 1, b = 1 },
		icon = "__SeaTorio__/graphics/icons/dissolver.png",
		icon_size = 64,
		icon_mipmaps = 4,
		order = "a[dissolver]",
		subgroup = "seatorio-inter",
	},
	---------NESSESARY STUFF
    {
        type = "recipe",
		name = "dirty-water-production",
        energy_required = 4,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "water", amount = 1000},
			{type = "item", name = "wood", amount = 3},
			{type = "item", name = "sand", amount = 10}
        },
		results = {
			{type = "fluid", name = "dirty-water", amount = 1000}
		},
		icon = kr_fluids_icons_path .. "dirty-water.png",
		icon_size = 64,
		category = "chemistry",
		order = "a[dirty-water-production]",
		subgroup = "seatorio-fluid"
    },
	
    {
        type = "recipe",
		name = "coal-dirty-water-production",
        energy_required = 4,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "water", amount = 2000},
			{type = "item", name = "coal", amount = 5},
			{type = "item", name = "sand", amount = 10}
        },
		results = {
			{type = "fluid", name = "dirty-water", amount = 2000}
		},
		icons = {
			{ icon = kr_fluids_icons_path .. "dirty-water.png", icon_size = 64 },
			{
				icon = "__base__/graphics/icons/coal.png",
				icon_size = 64,
				scale = 0.26,
				shift = { 8, -8 },
			},
		},		
		icon_size = 64,
		category = "chemistry",
		order = "a[dirty-water-production-coal]",
		subgroup = "seatorio-fluid"
    },
	
    {
        type = "recipe",
		name = "landfill-zircon",
        energy_required = 4,
		enabled = true,
        ingredients = {
			{type = "item", name = "zircon", amount = 20}
        },
		results = {
			{type = "item", name = "landfill", amount = 5}
		},
		icons = {
			{ icon = "__base__/graphics/icons/landfill.png", icon_size = 64 },
			{
				icon = "__bzzirconium__/graphics/icons/zircon.png",
				icon_size = 64,
				scale = 0.26,
				shift = { 8, -8 },
			},
		},
    },
	
	{
        type = "recipe",
		name = "sand-from-water",
        energy_required = 2,
		enabled = true,
        ingredients = {
			{type = "fluid", name = "water", amount = 300}
        },
		results = {
			{type = "item", name = "sand", probability = 0.75, amount = 1},
		},
		icon = "__SeaTorio__/graphics/icons/sand-from-water.png",
		icon_size = 64,
		category = "fluid-filtration",
		order = "a[sand-from-water]",
		subgroup = "seatorio-basic"
    },
	
	{
        type = "recipe",
		name = "stone-washing",
        energy_required = 10,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "water", amount = 500, catalyst_amount = 500},
			{type = "item", name = "stone", amount = 3},
			{type = "item", name = "silica", amount = 10}
        },
		results = {
			{type = "item", name = "aluminum-ore", amount = 2},
			{type = "item", name = "iron-ore", probability = 0.60, amount = 2},
			{type = "fluid", name = "dirty-water", amount = 500, catalyst_amount = 500}
		},
		icons = {
			{ icon = "__base__/graphics/icons/stone.png", icon_size = 64 },
			{
				icon = "__bzaluminum__/graphics/icons/aluminum-ore.png",
				icon_size = 64,
				scale = 0.26,
				shift = { 8, -8 },
			},
			{
				icon = "__base__/graphics/icons/iron-ore.png",
				icon_size = 64,
				scale = 0.26,
				shift = { -8, 8 },
			},
		},
		icon_size = 64,
		category = "chemistry",
		order = "a[washing]",
		subgroup = "seatorio-basic"
    },	

	{
        type = "recipe",
		name = "fish-from-water",
        energy_required = 10,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "water", amount = 500, catalyst_amount = 500}
        },
		results = {
			{type = "item", name = "raw-fish", amount_min = 3, amount_max = 7 },
			{type = "fluid", name = "water", amount = 400, catalyst_amount = 400}
		},
		icon = "__base__/graphics/icons/fish.png",
		icon_size = 64,
		category = "fluid-filtration",
		order = "b[fish-from-water]",
		subgroup = "seatorio-basic"
    },

	{
        type = "recipe",
		name = "heavy-oil-production",
        energy_required = 2.5,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "steam", amount = 50},
			{type = "fluid", name = "oxygen", amount = 30},
			{type = "item", name = "wood", amount = 3},
			{type = "item", name = "raw-fish", amount = 3}
        },
		results = {
			{type = "fluid", name = "heavy-oil", amount = 120}
		},
		icon = "__base__/graphics/icons/fluid/heavy-oil.png",
		icon_size = 64,
		category = "chemistry",
		order = "a[heavy-oil-production]",
		subgroup = "seatorio-fluid"
    },
	
	{
        type = "recipe",
		name = "crude-oil-production",
        energy_required = 3,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "heavy-oil", amount = 60},
			{type = "fluid", name = "hydrogen", amount = 100},
			{type = "item", name = "graphite", amount = 5},
        },
		results = {
			{type = "fluid", name = "crude-oil", amount = 160}
		},
		icon = "__base__/graphics/icons/fluid/crude-oil.png",
		icon_size = 64,
		category = "oil-processing",
		order = "b[crude-oil-production]",
		subgroup = "seatorio-fluid"
    },

	{
        type = "recipe",
		name = "crude-oil-production-2",
        energy_required = 5,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "heavy-oil", amount = 80},
			{type = "fluid", name = "hydrogen", amount = 120},
			{type = "item", name = "graphite", amount = 5},
			{type = "item", name = "biomass", amount = 5}
        },
		results = {
			{type = "fluid", name = "crude-oil", amount = 300}
		},
		icon = "__SeaTorio__/graphics/icons/advanced-oil-processing.png",
		icon_size = 64,
		category = "oil-processing",
		order = "bb[crude-oil-production]",
		subgroup = "seatorio-fluid"
    },

	{
        type = "recipe",
		name = "mineral-water-production",
        energy_required = 3,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "chemical-waste-water", amount = 100}
        },
		results = {
			{type = "fluid", name = "mineral-water", amount = 80}
		},
		icon = kr_fluids_icons_path .. "mineral-water.png",
		icon_size = 64,
		category = "chemistry",
		order = "c[mineral-water-production]",
		subgroup = "seatorio-fluid"
    },

	{
        type = "recipe",
		name = "dissolver",
        energy_required = 2,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "water", amount = 300},
			{type = "fluid", name = "oxygen", amount = 20},
			{type = "item", name = "raw-fish", amount = 3}
        },
		results = {
			{type = "fluid", name = "dissolver", amount = 300}
		},
		icon = "__SeaTorio__/graphics/icons/dissolver.png",
		icon_size = 64,
		category = "chemistry",
		order = "c[dissolver]",
		subgroup = "seatorio-fluid"
    },
	
---------MINERAL MIX
	{
        type = "recipe",
		name = "stone-brick-mineral-mix",
        energy_required = 2,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "dissolver", amount = 25},
			{type = "item", name = "stone-brick", amount = 5}
        },
		results = {
			{type = "fluid", name = "mineral-mix", amount = 25},
		},
		icon = "__SeaTorio__/graphics/icons/stone-brick-mineral-mix.png",
		icon_size = 64,
		category = "chemistry",
		order = "a[mineral-mix]",
		subgroup = "seatorio-extraction"
    },
	
	{
        type = "recipe",
		name = "concrete-mineral-mix",
        energy_required = 2,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "dissolver", amount = 50},
			{type = "item", name = "concrete", amount = 5}
        },
		results = {
			{type = "fluid", name = "mineral-mix", amount = 50},
		},
		icon = "__SeaTorio__/graphics/icons/concrete-mineral-mix.png",
		icon_size = 64,
		category = "chemistry",
		order = "b[mineral-mix]",
		subgroup = "seatorio-extraction"
    },
	
	{
        type = "recipe",
		name = "refined-concrete-mineral-mix",
        energy_required = 4,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "dissolver", amount = 150},
			{type = "item", name = "refined-concrete", amount = 5},
			{type = "fluid", name = "sulfuric-acid", amount = 10}
        },
		results = {
			{type = "fluid", name = "mineral-mix", amount = 150},
		},
		icon = "__SeaTorio__/graphics/icons/refined-concrete-mineral-mix.png",
		icon_size = 64,
		category = "chemistry",
		order = "c[mineral-mix]",
		subgroup = "seatorio-extraction"
    },
	
	------------------EXTRACTION
	{
        type = "recipe",
		name = "basic-extraction",
        energy_required = 6,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "mineral-mix", amount = 25},
			{type = "item", name = "silica", amount = 10}
        },
		results = {
			{type = "item", name = "aluminum-ore", probability = 0.50, amount = 5},
			{type = "item", name = "lead-ore", probability = 0.30, amount = 5},
			{type = "item", name = "iron-ore", probability = 0.60, amount = 5},
			{type = "item", name = "zircon", probability = 0.40, amount = 5},
			{type = "item", name = "copper-ore", probability = 0.10, amount = 5},
			{type = "item", name = "stone", probability = 0.10, amount = 5},
		},
		icon = "__SeaTorio__/graphics/icons/basic-extraction.png",
		icon_size = 64,
		category = "chemistry",
		order = "d[mineral-mix]",
		subgroup = "seatorio-extraction"
    },

	{
        type = "recipe",
		name = "advanced-extraction",
        energy_required = 8,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "mineral-mix", amount = 25},
			{type = "item", name = "silicon", amount = 5}
        },
		results = {
			{type = "item", name = "aluminum-ore", probability = 0.50, amount = 10},
			{type = "item", name = "lead-ore", probability = 0.30, amount = 10},
			{type = "item", name = "iron-ore", probability = 0.60, amount = 10},
			{type = "item", name = "zircon", probability = 0.20, amount = 10},
			{type = "item", name = "copper-ore", probability = 0.30, amount = 10},
			{type = "item", name = "stone", probability = 0.10, amount = 10},
		},
		icon = "__SeaTorio__/graphics/icons/advanced-extraction.png",
		icon_size = 64,
		category = "chemistry",
		order = "f[mineral-mix]",
		subgroup = "seatorio-extraction"
    },
-----------ORE
	{
        type = "recipe",
		name = "flake-graphite-extraction",
        energy_required = 4,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "steam", amount = 5},
			{type = "fluid", name = "mineral-mix", amount = 25}
        },
		results = {
			{type = "item", name = "flake-graphite", amount = 8},
			{type = "fluid", name = "chemical-waste-water", amount = 15}
		},
		icon = "__bzcarbon__/graphics/icons/flake-graphite.png",
		icon_size = 64,
		
		category = "chemistry",
		subgroup = "seatorio-ore-fluid"
    },
	{
        type = "recipe",
		name = "raw-rare-metals-extraction",
        energy_required = 8,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "chlorine", amount = 3},
			{type = "fluid", name = "mineral-mix", amount = 25}
        },
		results = {
			{type = "item", name = "raw-rare-metals", amount = 8},
			{type = "fluid", name = "chemical-waste-water", amount = 15},
		},
		icon = kr_items_with_variations_icons_path .. "raw-rare-metals/raw-rare-metals.png",
		icon_size = 64,
		
		category = "chemistry",
		subgroup = "seatorio-ore-fluid"
    },
	
	{
        type = "recipe",
		name = "titanium-extraction",
        energy_required = 6,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "lubricant", amount = 4},
			{type = "fluid", name = "mineral-mix", amount = 25}
        },
		results = {
			{type = "fluid", name = "chemical-waste-water", amount = 15},
			{type = "item", name = "titanium-ore", amount = 8}
		},
		icon = "__bztitanium__/graphics/icons/titanium-ore.png",
		icon_size = 64,
		
		category = "chemistry",
		subgroup = "seatorio-ore-fluid"
    },
	
	{
        type = "recipe",
		name = "wolframite-extraction",
        energy_required = 6,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "mineral-water", amount = 3},
			{type = "fluid", name = "mineral-mix", amount = 25}
        },
		results = {
			{type = "fluid", name = "chemical-waste-water", amount = 15},
			{type = "item", name = "tungsten-ore", amount = 8}
		},
		icon = "__bztungsten__/graphics/icons/tungsten-ore.png",
		icon_size = 64,
		
		category = "chemistry",
		subgroup = "seatorio-ore-fluid"
    },
	
	{
        type = "recipe",
		name = "uranium-extraction",
        energy_required = 15,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "chemical-waste-water", amount = 100, catalyst_amount = 100}
        },
		results = {
			{type = "item", name = "uranium-ore", amount = 10},
			{type = "fluid", name = "water", amount = 50, catalyst_amount = 50}
		},
		icon = "__base__/graphics/icons/uranium-ore.png",
		icon_size = 64,
		
		category = "fluid-filtration",
		subgroup = "seatorio-ore-fluid"
    },
	
	{
        type = "recipe",
		name = "raw-imersite-production",
        energy_required = 8,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "chemical-waste-water", amount = 20},
			{type = "item", name = "ti-sapphire", amount = 1},
			{type = "item", name = "diamond", amount = 1},
        },
		results = {
			{type = "item", name = "raw-imersite", amount = 16},
		},
		icon = kr_items_with_variations_icons_path .. "raw-imersite/raw-imersite.png",
		icon_size = 64,
		category = "chemistry",

		subgroup = "seatorio-ore-fluid"
    },
-----Clean chemical waste
	{
        type = "recipe",
		name = "void-chemical-waste-water",
        energy_required = 20,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "chemical-waste-water", amount = 100},
        },
		results = { 
			{type = "item", name = "wood", amount = 10},
			{type = "item", name = "biomass", probability = 0.20, amount = 1}
		},
		icon = "__SeaTorio__/graphics/icons/clean-chemical-waste-water.png",
		icon_size = 64,
		category = "growing",
		order = "z[void-chemical-waste-water]",
		subgroup = "seatorio-fluid"
    },	
	

---------Stone production

	{
        type = "recipe",
		name = "Stone-from-black-reinforced-plate",
        energy_required = 5,
		enabled = false,
        ingredients = {
			{type = "item", name = "kr-black-reinforced-plate", amount = 1}
        },
		results = {
			{type = "item", name = "stone", amount_min = 12, amount_max = 20 },
			{type = "item", name = "coal", probability = 0.40, amount = 5}
		},
		icon = "__base__/graphics/icons/stone.png",
		icon_size = 64,
		
		category = "crushing",
		subgroup = "seatorio-basic"
    },
	
	{
        type = "recipe",
		name = "Stone-from-white-reinforced-plate",
        energy_required = 5,
		enabled = false,
        ingredients = {
			{type = "item", name = "kr-white-reinforced-plate", amount = 1}
        },
		results = {
			{type = "item", name = "stone", amount_min = 12, amount_max = 20 },
			{type = "item", name = "iron-ore", probability = 0.40, amount = 5}
		},
		icon = "__base__/graphics/icons/stone.png",
		icon_size = 64,
		
		category = "crushing",
		subgroup = "seatorio-basic"
    },

-----------------Assembly t2 ore production
    {
        type = "recipe",
		name = "aluminum-ore-production",
        energy_required = 4,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "mineral-mix", amount = 25},
			{type = "item", name = "quartz", amount = 2}
        },
		results = {
			{type = "item", name = "aluminum-ore", amount = 10}
		},
		icon = "__bzaluminum__/graphics/icons/aluminum-ore.png",
		icon_size = 64,
		order = "a[aluminum-ore-production]",
		category = "crafting-with-fluid",
		subgroup = "seatorio-ore"
    },

    {
        type = "recipe",
		name = "copper-ore-production",
        energy_required = 4,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "mineral-mix", amount = 25},
			{type = "item", name = "lead-ore", amount = 2}
        },
		results = {
			{type = "item", name = "copper-ore", amount = 10}
		},
		icon = "__base__/graphics/icons/copper-ore.png",
		icon_size = 64,
		order = "a[copper-ore-production]",
		category = "crafting-with-fluid",
		subgroup = "seatorio-ore"
    },

    {
        type = "recipe",
		name = "lead-ore-production",
        energy_required = 4,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "mineral-mix", amount = 25},
			{type = "item", name = "biomass", amount = 2}
        },
		results = {
			{type = "item", name = "lead-ore", amount = 10}
		},
		icon = "__bzlead__/graphics/icons/lead-ore.png",
		icon_size = 64,
		order = "a[lead-ore-production]",
		category = "crafting-with-fluid",
		subgroup = "seatorio-ore"
    },
	
    {
        type = "recipe",
		name = "iron-ore-production",
        energy_required = 4,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "mineral-mix", amount = 25},
			{type = "item", name = "alumina", amount = 1}
        },
		results = {
			{type = "item", name = "iron-ore", amount = 10}
		},
		icon = "__base__/graphics/icons/iron-ore.png",
		icon_size = 64,
		order = "a[iron-ore-production]",
		category = "crafting-with-fluid",
		subgroup = "seatorio-ore"
    },
	
	{
        type = "recipe",
		name = "zircon-production",
        energy_required = 4,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "mineral-mix", amount = 25},
			{type = "item", name = "silica", amount = 5}
        },
		results = {
			{type = "item", name = "zircon", amount = 10}
		},
		icon = "__bzzirconium__/graphics/icons/zircon.png",
		icon_size = 64,
		order = "a[zircon-production]",
		category = "crafting-with-fluid",
		subgroup = "seatorio-ore"
    },
	
	
---Quartz skip sand
	{
        type = "recipe",
		name = "quartz-from-water",
        energy_required = 18,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "water", amount = 4000}
        },
		results = {
			{type = "item", name = "quartz", amount = 6},
		},
		icons = {
			{ icon = kr_items_with_variations_icons_path .. "quartz/quartz.png", icon_size = 64 },
			{
				icon = "__SeaTorio__/graphics/icons/sand-from-water.png",
				icon_size = 64,
				scale = 0.26,
				shift = { 8, -8 },
			},
		},
		order = "q[quartz]",
		category = "fluid-filtration",
		subgroup = "seatorio-ore"
    },

})

------------OPTIONAL MODS
if mods["Rich-Rocks-Requiem"] then data:extend({
	{
        type = "recipe",
		name = "rich-rock-production",
        energy_required = 20,
		enabled = false,
        ingredients = {
			{type = "fluid", name = "chemical-waste-water", amount = 500},
			{type = "item", name = "cermet", amount = 1},
			{type = "fluid", name = "mineral-mix", amount = 25}
        },
		results = {
			{type = "item", name = "rrr-rich-rocks", amount = 1}
		},
		icon = "__Rich-Rocks-Requiem__/graphics/icons/rich-rocks.png",
		icon_size = 32,
		category = "chemistry",
		subgroup = "seatorio-extraction"
    },
}) end


data.raw["recipe"]["landfill"].results = {{"landfill", 5}}
data.raw["recipe"]["landfill-2"].results = {{"landfill", 5}}
data.raw["recipe"]["landfill-silica"].results = {{"landfill", 5}}