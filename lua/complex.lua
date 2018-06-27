local P = {}
complex = P
P.__index = P

P.i = {r = 0, i = 1}
function P.new(r, i) 
	--return setmetatable({r = r, i = i}, {__tostring = function(c)
		--return "r: " .. c.r .. " i: " .. c.i end}) 
	return setmetatable({r = r, i = i}, P)
end

function P.add(c1, c2)
	return P.new(c1.r + c2.r, c1.i + c2.i)
end

function P.sub(c1, c2)
	return P.new(c1.r - c2.r, c1.i - c2.i)
end

function P.mul(c1, c2)
	return P.new(c1.r*c2.r - c1.i*c2.i, c1.r*c2.i + c1.i*c2.r)
end

function P.inv(c)
	local n = c.r^2 + c.i^2
	return P.new(c.r/n, c.i/n)
end

function P.__tostring(c)
	return "r: " .. c.r .. " i: " .. c.i 
end

--setmetatable(P, {__tostring = function(c)
	--return "r: " .. c.r .. " i: " .. c.i 
--end})

return complex
