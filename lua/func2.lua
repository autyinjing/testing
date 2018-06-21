--[[
function eraseTerminal()
	io.write("\27[2J")
end

function mark(x, y)
	io.write(string.format("\27[%d;%dH*", y, x))
end

TermSize = {w = 80, h = 24}

function plot(f)
	eraseTerminal()
	for i=1, TermSize.w do
		local x = (i/TermSize.w)*2 - 1
		local y = (f(x) + 1)/2 * TermSize.h
		mark(i, y)
	end
	io.read()
end

plot(function(x) return math.sin(x*2*math.pi) end)
--]]

network = {
	{name = "grauna", 	IP = "123.123.1.1"},
	{name = "arraial", 	IP = "123.123.1.21"},
	{name = "lua", 		IP = "123.123.1.31"},
	{name = "derain", 	IP = "123.123.1.13"},
}

for k, v in ipairs(network) do
	print(k, v.name, v.IP)
end

table.sort(network, function(a, b)
	return (a.name > b.name)
end)

for k, v in ipairs(network) do
	print(k, v.name, v.IP)
end
