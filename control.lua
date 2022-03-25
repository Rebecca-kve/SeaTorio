--if script.level.level_name == "freeplay" then
--local function on_init()



--end
--script.on_init(on_init)e
--end

script.on_init(function()
	local freeplay = remote.interfaces.freeplay
	if not (freeplay and freeplay.get_created_items and freeplay.set_created_items) then return end
	local items = remote.call("freeplay", "get_created_items")
	
	items["lab"] = 1
	items["wood"] = 400
--	items["lead-plate"] = 100
--	items["aluminum-plate"] = 400
	items["kr-sentinel"] = 4
	items["pipe"] = 200
	items["pipe-to-ground"] = 100
	items["small-electric-pole"] = 50
	items["inserter"] = 10
	items["burner-inserter"] = 100
	items["kr-wind-turbine"] = 50
	items["transport-belt"] = 400
	items["landfill"] = 1000
	items["cheap-greenhouse"] = 10
	items["burner-filtration-plant"] = 10
	items["burner-chemical-plant"] = 2
	items["slow-offshore-pump"] = 5
	remote.call("freeplay", "set_created_items", items)
	remote.call("freeplay", "set_disable_crashsite", true)
	remote.call("freeplay", "get_disable_crashsite", true)
	
end)