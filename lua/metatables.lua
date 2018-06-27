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
	end
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

--s1 = Set.new{1, 2, 3, 4, 5}
--s2 = Set.new{30, 1}
--print(getmetatable(s1))
--print(getmetatable(s2))
--s3 = s1 + s2
--print(getmetatable(s3))
--Set.print(s3)
--Set.print(s2*s1)

-- 小于等于：如果a中所有元素都存在于b中，说明a<=b
Set.mt.__le = function(a, b)
	for k in pairs(a) do
		if not b[k] then return false end
	end
	return true
end

-- 小于：a小于等于b并且b不小于等于a
Set.mt.__lt = function(a, b)
	return a <= b and not (b <= a)
end

-- 等于：a小于等于b并且b小于等于a
Set.mt.__eq = function(a, b)
	return a <= b and b <= a
end

--s1 = Set.new{2, 4}
--s2 = Set.new{4, 10, 2}
--print(s1 <= s2)
--print(s1 < s2)
--print(s1 >= s1)
--print(s1 > s1)
--print(s1 == (s2 * s1))

Set.mt.__tostring = Set.tostring
--s1 = Set.new{10, 4, 5}
--print(s1)

--other = function(t, k) if k == "foo" then return true end end
--t = setmetatable({}, {__index = other})
--print(t.foo)
--print(t.fo)

other = {}
--t = setmetatable({}, {__newindex = other})
--t = setmetatable({}, {__index = other})
----t = {}
--t.foo = 3
--print(t.foo)
--print(other.foo)

t = setmetatable({}, {
	__newindex = function(t, key, value)
		if type(value) == "number" then
			rawset(t, key, value * value)
			--t[key] = value * value
		else
			rawset(t, key, value)
		end
	end
})
t.foo = "foo"
t.bar = 3
--print(t.foo)
--print(t.bar)

--t = setmetatable({1, 2, 3}, {
	--__mul = function(t, other)
		--new = {}
		--for i = 1, other do
			--for _, v in ipairs(t) do table.insert(new, v) end
		--end
		--return new
	--end
--})
--t = t * 2

--t = setmetatable({}, {
	--__call = function(t, a, b, c, d)
		--return (a + b + c) * d
	--end
--})
--print(t(1, 2, 3, 4))    -- 输出 24

t = setmetatable({1, 2, 3}, {
	__tostring = function(t)
		sum = 0
		for _, v in ipairs(t) do sum = sum + v end
		return "Sum: " .. sum
	end
})
print(t)
