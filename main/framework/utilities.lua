-- Version 1.2

local M = {}


-- Angle-Diff (gets the smallest angle between two angles, using radians)
function M.anglediff_rad(rad1, rad2)
	local a = rad1 - rad2
	a = (a + math.pi) % (math.pi * 2) - math.pi
	return a
end

-- Angle-Diff (gets the smallest angle between two angles, using degrees)
function M.anglediff_deg(deg1, deg2)
	local a = deg1 - deg2
	a = (a + 180) % (180 * 2) - 180
	return a
end

-- Round
function M.round(x)
	local a = x % 1
	x = x - a
	if a < 0.5 then a = 0
	else a = 1 end
	return x + a
end

-- Clamp
function M.clamp(x, min, max)
	if x > max then x = max
	elseif x < min then x = min
	end
	return x
end

--Sign
function M.sign(x)
	if x >= 0 then return 1
	else return -1
	end
end

-- Find (in array table)
function M.find(t, val)
	for i, v in ipairs(t) do
		if v == val then return i end
	end
end

-- Find & Remove (from array table)
function M.find_remove(t, val)
	for i, v in ipairs(t) do
		if v == val then
			table.remove(t, i)
			return i
		end
	end
end

-- Make a shallow copy of a table
function M.shallow_copy(t)
	local t2 = {}
	for k,v in pairs(t) do
		t2[k] = v
	end
	return t2
end

-- Make a deep copy of a table
function M.deep_copy(t)
	local t2 = {}
	for k, v in pairs(t) do
		if type(v) == "table" then
			t2[k] = M.deep_copy(v)
		else
			t2[k] = v
		end
	end
	return t2
end

-- Swap two elements in table
function M.swap_elements(t, i1, i2)
	t[i1], t[i2] = t[i2], t[i1]
end

-- Next index in array (looping)
function M.nexti(t, i)
	if #t == 0 then return 0 end
	i = i + 1
	if i > #t then i = 1 end
	return i
end

-- Previous index in array (looping)
function M.previ(t, i)
	i = i - 1
	if i < 1 then i = #t end
	return i
end

-- Next value in array (looping)
function M.nextval(t, i)
	return t[M.nexti(t, i)]
end

-- Previous value in array (looping)
function M.prevval(t, i)
	return t[M.previ(t, i)]
end

-- Vect to Quat
function M.vect_to_quat(vect)
	return vmath.quat_rotation_z(math.atan2(vect.y, vect.x))
end

-- Vect to Quat + 90 degrees (perpendicular)
function M.vect_to_quat90(vect)
	return vmath.quat_rotation_z(math.atan2(vect.y, vect.x) + math.pi/2)
end

-- Get script URL
function M.scripturl(path)
	return msg.url(nil, path, "script")
end

-- Random float from -1 to 1
function M.rand11()
	return((math.random() - 0.5) * 2)
end

-- Random float in range
function M.rand_range(min, max)
	return math.random() * (max - min) + min
end


return M
