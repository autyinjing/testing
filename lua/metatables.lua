--[[--Set = {}
Set.mt = {}

function Set.new(t)
	local set = {}
	setmetatable(set, Set.mt)
	for _, l in ipairs(t) do set[l] = true end
	return set
end

function Set.union(a, b)
	local res = Set.new{}
	for k in pairs(a) do res[k] = true end
	for k in pairs(b) do res[k] = true end
	return res
end

function Set.intersection(a, b)
	local res = Set.new{}
	for k in pairs(a) do
		res[k] = b[k]
	end
	return res
end

function Set.tostring(set)
	local s = "{"
	local sep = ""
	for e in pairs(set) do
		s = s .. sep .. e
		sep = ", "
	end
	return s .. "}"
end

function Set.print(s)
	print(Set.tostring(s))
end

s1 = Set.new{1, 2, 3, 4, 5}
s2 = Set.new{8, 6, 4, 2, 0}
Set.print(s1)
Set.print(s2)
Set.print(Set.union(s1, s2))
Set.print(Set.intersection(s1, s2))
--]]

Set = {}
Set.mt = {}
function Set.new(t)
	local set = {}
	setmetatable(set, Set.mt)
	for _, l in ipairs(t) do set[l] = true end
	return set
end

function Set.union(a, b)
	-- 保证两个操作数具有相同的metatable
	if getmetatable(a) ~= Set.mt or getmetatable(b) ~= Set.mt then
		error("metatable is error !")
	local res = Set.new{}
	for k in pairs(a) do res[k] = true end
	for k in pairs(b) do res[k] = true end
	return res
end

function Set.intersection(a, b)
	local res = Set.new{}
	for k in pairs(a) do
		res[k] = b[k]
	end
	return res
end

function Set.tostring(set)
	local s = "{"
	local sep = ""
	for e in pairs(set) do
		s = s .. sep .. e
		sep = ", "
	end
	return s .. "}"
end

function Set.print(s)
	print(Set.tostring(s))
end

Set.mt.__add = Set.union
Set.mt.__mul = Set.intersection

s1 = Set.new{1, 2, 3, 4, 5}
s2 = Set.new{30, 1}
print(getmetatable(s1))
print(getmetatable(s2))
s3 = s1 + s2
print(getmetatable(s3))
Set.print(s3)
Set.print(s2*s1)
