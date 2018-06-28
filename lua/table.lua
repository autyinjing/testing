--list = nil
--arr = {"abc", 111, ",./,", "end"}
----for line in io.lines() do
--for k, v in ipairs(arr) do
	--list = {next=list, value=v}
	--print(k, v)
--end

--l = list
--while l do
	--print(l.value)
	--l = l.next
--end

lines = {
	luaH_set = 10,
	luaH_get = 24,
	luaH_present = 48,
}

--a = {}
--for n in pairs(lines) do table.insert(a, n) end
--table.sort(a)
--for i, n in ipairs(a) do print(n) end

function pairsByKeys(t, f)
	local a = {}
	for n in pairs(t) do table.insert(a, n) end
	table.sort(a, f)
	local i = 0
	local iter = function()
		i = i + 1
		if a[i] == nil then return nil
		else return a[i], t[a[i]]
		end
	end
	return iter
end

function compare(s1, s2)
	return s1 > s2
end

for name, line in pairsByKeys(lines, compare) do
	print(name, line)
end
