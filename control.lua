st = st or {}


function st.have_item(player, itemname, crafted)
	if (itemname == "burner-chemical-plant" or itemname == "stone-furnace" or itemname == "basic-tech-card") then
		if player.force.technologies[itemname .. "-crafted"] then
			player.force.technologies[itemname .. "-crafted"].researched = true
		end
	end
end


script.on_init(function()
	local freeplay = remote.interfaces.freeplay
	if not (freeplay and freeplay.get_created_items and freeplay.set_created_items) then return end
	local items = remote.call("freeplay", "get_created_items")
	
	--Luxury
	items["kr-sentinel"] = 4
	items["transport-belt"] = 400
	items["inserter"] = 10
	items["burner-inserter"] = 100	
	--pipes
	items["pipe"] = 200
	items["pipe-to-ground"] = 100
	--power
	items["small-electric-pole"] = 50
	items["kr-wind-turbine"] = 50
	--land
	items["landfill"] = 2000
	items["stone-brick"] = 20
	--Starting buildings
	items["cheap-greenhouse"] = 10
	items["burner-filtration-plant"] = 4
	items["slow-offshore-pump"] = 5
	
	remote.call("freeplay", "set_created_items", items)
	remote.call("freeplay", "set_disable_crashsite", true)
	remote.call("freeplay", "get_disable_crashsite", true)


	local num = 0
	for _, surface in pairs(game.surfaces) do
		for _, entity in pairs(surface.find_entities_filtered({force="enemy", type={"turret", "unit-spawner", "unit"}, area})) do
			if entity.destroy() then num = num + 1 end
		end
	end
--[[
	for _, surface in pairs(game.surfaces) do
		for _, entity in pairs(surface.find_entities_filtered({ area, type = "tree" })) do
			if entity.destroy() then num = num + 1 end
		end
	end
]]
	for _, surface in pairs(game.surfaces) do
		for _, entity in pairs(surface.find_entities_filtered({ area, type = 'simple-entity' })) do
			if entity.destroy() then num = num + 1 end
		end
	end
	
		
end)


script.on_event(defines.events.on_player_crafted_item,
  function(e)
    local player = game.players[e.player_index]
    if e.item_stack.valid_for_read then
      st.have_item(player, e.item_stack.name, true)
    end
  end
)
--[[
script.on_event(defines.events.on_picked_up_item,
  function(e)
    local player = game.players[e.player_index]
    if e.item_stack.valid_for_read then
      st.have_item(player, e.item_stack.name, false)
    end
  end
)
]]
