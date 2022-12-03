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
	--remote.call("freeplay", "get_disable_crashsite", true) --Why was this here again?


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
---Copyed from mods.factorio.com/mod/cargo-ships
local function st_OnEnterShip(e)
  local player_index = e.player_index
  local player = game.players[player_index]
  local surface = player.surface
  local pos = player.position
  local X = pos.x
  local Y = pos.y

  if player.vehicle == nil then
    -- Only enter vehicle if player has a character
    if player.character then
      for dis = 1,10 do
        local targets = surface.find_entities_filtered{
          area={{X-dis, Y-dis}, {X+dis, Y+dis}},
          name={"basic-ship"}}
        local done = false
        for _, target in pairs(targets) do
          if target and target.get_driver() == nil then
            target.set_driver(player)
            done = true
          elseif target and target.name == "basic-ship" and target.get_passenger() == nil then
            target.set_passenger(player)
          end
        end
        if done then break end
      end
    end
  else
    local new_pos = surface.find_non_colliding_position("st_tile_player_test_item", pos, 10, 0.5, true)
    if new_pos then
      local old_vehicle = player.vehicle
      if old_vehicle.name == "basic-ship" then
        local driver = old_vehicle.get_driver()  -- Can return either LuaEntity or LuaPlayer
        if driver then
          if not driver.is_player() then
            if driver.type == "character" then
              driver = driver.player  -- Get the player associated with this character, if any
            else
              driver = nil
            end
          end
          if driver and driver == player then
            old_vehicle.set_driver(nil)
          end
        end
        local passenger = old_vehicle.get_passenger()  -- Can return either LuaEntity or LuaPlayer
        if passenger then
          if not passenger.is_player() then
            if passenger.type == "character" then
              passenger = passenger.player  -- Get the player associated with this character, if any
            else
              passenger = nil
            end
          end
          if passenger and passenger == player then
            old_vehicle.set_passenger(nil)
          end
        end
      else
        old_vehicle.set_driver(nil)
      end
      player.driving = false
      player.teleport(new_pos)
    end
  end
end

script.on_event("st_enter_ship", st_OnEnterShip)