--io.write("sin(3) = ", math.sin(3), "\n")
--io.write(string.format("sin(3) = %.4f\n", math.sin(3)))

--io.input("a.txt")
--io.output("b.txt")
--local count = 1
--while true do
	--local line = io.read()
	--if line == nil then break end
	--io.write(string.format("%-6d ", count), line, "\n")
	--count = count + 1
--end

--print(io.open("non-existent file", "r"))
--print(io.open("/etc/passwd", "w"))

--local f = assert(io.open("a.txt", "r"))
--print(f)

--local BUFSIZE = 2^13
--local f = io.input(arg[1])
--local cc, lc, wc = 0, 0, 0

--while true do
	--local lines, rest = f:read(BUFSIZE, "*line")
	--print(lines)
	--print("111")
	--print(rest)
	--if not lines then break end
	--if rest then lines = lines .. rest .. '\n' end
	--cc = cc + string.len(lines)
	--local _, t = string.gsub(lines, "%S+", "")
	--wc = wc + t
	--_, t = string.gsub(lines, "\n", "\n")
	--lc = lc + t
--end

--print(lc, wc, cc)

local f = assert(io.open(arg[1], "rb"))
local block = 10
while true do
	local bytes = f:read(block)
	if not bytes then break end
	for b in string.gfind(bytes, ".") do
		io.write(string.format("%02X ", string.byte(b)))
	end
	io.write(string.rep("  ", block - string.len(bytes) + 1))
	io.write(string.gsub(bytes, "%c", "."), "\n")
end
