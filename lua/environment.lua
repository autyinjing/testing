--for n in pairs(_G) do print(n) end

function getfield(f)
	local v = _G
	for w in string.gfind(f, "[%w_]+") do
		print("getfield - w: " .. w)
		v = v[w]
	end
	return v
end

function setfield(f, v)
	local t = _G
	for w, d in string.gfind(f, "([%w_]+)(.?)") do
		print("setfield - d: " .. d)
		if d == "." then
			t[w] = t[w] or {}
			t = t[w]
		else
			t[w] = v
		end
	end
end

--print("--- 111 ---")
--setfield("t.x.y", 10)
--print("--- 222 ---")
--print(t.x.y)
--print("--- 333 ---")
--print(getfield("t.x.y"))

--a = 1
--setfenv(1, {_G = _G})
--_G.print(a)
--_G.print(_G.a)

--a = 1
--local newgt = {}
--setmetatable(newgt, {__index = _G})
--setfenv(1, newgt)
--print(a)
a = 1

function test() 
	a = 10
	print(a)
	print(_G.a)
	_G.a = 20
	print(_G.a)
end
test()
