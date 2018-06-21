--local l = io.read()
--local func = package.loadstring("return \"" .. l .. "\"")
--print("aaaaa " .. func())

--for l in io.lines() do
	--print(l)
--end

--i = 1219
--local f = loadstring("return 10 + " .. i)
--print(f())

--n = assert(io.read("*number"), "err number")
--print(n)

--file = assert(io.open("no-file", "r"))

--local status, err = pcall(function() a = 'a' + 1 end)
--print(err)

--local status, err = pcall(function() error("my error") end)
--print(err)

function foo(str)
	if type(str) ~= "string" then
		error("string expected", 2)
	end
end

foo({x=1})
