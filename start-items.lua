st = st or {}

function st.add_start_items(items)
	local start_items = {	
		--Luxury
		["kr-sentinel"] = 4
		["transport-belt"] = 400
		["inserter"] = 10
		["burner-inserter"] = 100	
		--pipes
		["pipe"] = 200
		["pipe-to-ground"] = 100
		--power
		["small-electric-pole"] = 50
		["kr-wind-turbine"] = 50
		--land
		["landfill"] = 2000
		["stone-brick"] = 20
		--Starting buildings
		["cheap-greenhouse"] = 10
		["burner-filtration-plant"] = 4
		["slow-offshore-pump"] = 5
	}

	
	if not items['burner-lab'] then
		start_items['lab'] = 1
	end
end
