--function unpack(t, i)
	--i = i or 1
	--if t[i] then
		--return i, t[i], unpack(t, i + 1)
	--end
--end

--print(unpack({"Aut", 1219, "hello"}))

--printResult = ""

--function print(...)
	--for i, v in ipairs(arg) do
		--printResult = printResult .. tostring(v) .. "\t"
	--end
	--printResult = printResult .. "\n"
	--io.write(printResult)
--end

--print("abc", 1219, "aut")

--function select(n, ...)
	--return arg[n]
--end

--print(string.find("hello hello", " hel"))
--print(select(1, string.find("hello hello", " hel")))
--print(select(2, string.find("hello hello", " hel")))

--function fwrite(fmt, ...)
	--return io.write(string.format(fmt, unpack(arg)))
--end

--fwrite("%d %s %s\n", 1219, "aut", "honey")

--print(string.format("%d %s %s\n", 1219, "aut", "honey"))

--function myrename(old, new)
	--print(old, new)
--end

function myrename(arg)
	print(arg.old, arg.new)
end

--myrename(1, 2)
myrename({new=2, old=1})
