data:extend({
  {
	type = "tool",
	name = "burner-chemical-plant-tool", --wooden-chest?
	localised_name = {"item-name.burner-chemical-plant"},
	icons = {
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
	},
	icon_mipmaps = 4,
	flags = {"hidden"},
	stack_size = 100,
	durability = 1
  },

  {
	type = "tool",
	name = "stone-furnace-tool",
	localised_name = {"item-name.stone-furnace"},
	icon = "__base__/graphics/icons/stone-furnace.png",
	icon_size = 64, icon_mipmaps = 4,
	flags = {"hidden"},
	stack_size = 100,
	durability = 1
  },
  
  {
	type = "tool",
	name = "basic-tech-card-tool",
	localised_name = {"item-name.basic-tech-card"},
	icon = kr_cards_icons_path .. "basic-tech-card.png",
	icon_size = 64, icon_mipmaps = 4,
	flags = {"hidden"},
	stack_size = 100,
	durability = 1
  },

  {
	type = "technology",
	name = "burner-chemical-plant-crafted",
	icons = {
		{
			icon = "__base__/graphics/icons/chemical-plant.png",
			icon_size = 64,
			tint = tiercolor.t0
		},
		{
			icon = "__SeaTorio__/graphics/icons/burner.png",
			icon_size = 64,
			scale = 0.40,
			shift = { 15, -15 },
		},
	},
	effects = {
		{type = "unlock-recipe", recipe = "dirty-water-production"},
		{type = "unlock-recipe", recipe = "dirty-water-filtration-zircon"},
		{type = "unlock-recipe", recipe = "burner-filtration-plant"},
		{type = "unlock-recipe", recipe = "stone-brick"},
		
	},
	unit = {
		count = 1,
		ingredients = {{"burner-chemical-plant-tool", 1}},
		time = 1
	}
  },
  
  {
	type = "technology",
	name = "stone-furnace-crafted",
	icon = "__base__/graphics/icons/stone-furnace.png",
	icon_size = 64,
	effects = {
		{type = "unlock-recipe", recipe = "dirty-water-filtration-1"},
		{type = "unlock-recipe", recipe = "dirty-water-filtration-aluminum"},
		{type = "unlock-recipe", recipe = "stone-washing"},
	},
	prerequisites = {"burner-chemical-plant-crafted"},
	unit = {
		count = 1,
		ingredients = {{"stone-furnace-tool", 1}},
		time = 1
	}
  },

  {
	type = "technology",
	name = "basic-tech-card-crafted",
	icon = kr_cards_icons_path .. "basic-tech-card.png",
	icon_size = 64,
	effects = {
		--Unlock the game, tutorial done
		{type = "unlock-recipe", recipe = "dirty-water-filtration-lead"},
		{type = "unlock-recipe", recipe = "fish-from-water"},
		{type = "unlock-recipe", recipe = "cheap-greenhouse"},
		{type = "unlock-recipe", recipe = "pipe"},
		{type = "unlock-recipe", recipe = "transport-belt"},
		{type = "unlock-recipe", recipe = "iron-chest"},
		{type = "unlock-recipe", recipe = "iron-stick"},
		{type = "unlock-recipe", recipe = "iron-beam"},
		{type = "unlock-recipe", recipe = "burner-inserter"},
		{type = "unlock-recipe", recipe = "small-electric-pole"},
		{type = "unlock-recipe", recipe = "repair-pack"},
	},
	prerequisites = {"stone-furnace-crafted"},
	unit = {
		count = 1,
		ingredients = {{"basic-tech-card-tool", 1}},
		time = 1
	}
  },

})
