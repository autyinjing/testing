require("complex")

c = complex.add(complex.i, complex.new(10, 20))
--c = setmetatable(c, {__tostring = function(c)
	--return "r: " .. c.r .. " i: " .. c.i 
--end})
--print(c.r .. " " .. c.i)
print(c)

--b = setmetatable({}, {__tostring = function(b) return "abcde" end })
--print(b)
