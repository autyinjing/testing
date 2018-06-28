
--print(string.char(97,98))
--print(string.byte("abc"))
--print(string.byte("abc", 2))
--print(string.byte("abc", -1))

--s = "hello world"
--i, j = string.find(s, "hello")
--print(i, j)
--print(string.sub(s, i, j))
--print(string.find(s, "world"))
--i, j = string.find(s, "l")
--print(i, j)
--print(string.find(s, "lll"))

function test(s)
	local t = {}
	local i = 0
	while true do
		i = string.find(s, "\n", i+1)
		if i == nil then break end
		table.insert(t, i)
	end
	return t
end

--s = "abc\ndef\nghi\njkl"
--print(setmetatable(test(s), {__tostring = function(t)
	--local str = " "
	--for k, v in ipairs(t) do
		--str = str .. "-" .. v
	--end
	--return str
--end}))

--s = string.gsub("Lua is cute", "cute", "great")
--print(s)
--s = string.gsub("all lii", "l", "x")
--print(s)
--s = string.gsub("Lua is great", "perl", "tcl")
--print(s)

--s = string.gsub("all lii", "l", "x", 1)
--print(s)
--print(_, s)
--_, s = string.gsub("all lii", "l", "x", 2)
--print(_, s)
--print(string.gsub("all lii", "l", "x", 2))

--s = "Deadline is 30/05/1999, firm"
--date = "%d%d/%d%d/%d%d%d%d"
--print(string.sub(s, string.find(s, date)))

--print(string.gsub("hello, up-down!", "%A", "."))

--print(string.gsub("one, and two; and three", "%a+", "word"))

--print(string.find("the number 1298 is even", "%d+"))

--test = "int x; /* x */ int y; /* y */"
--print(string.gsub(test, "/%*.*%*/", "<COMMENT>"))
--print(string.gsub(test, "/%*.-%*/", "<COMMENT>"))

--print(string.gsub("a (enclosed in) parentheses) line", "%bae", ""))

--pair = "name = Anna"
--_, _, key, value = string.find(pair, "(%a+)%s*=%s*(%a+)")
--print(key, value)

date = "17/7/1990"
_, _, d, m, y = string.find(date, "(%d+)/(%d+)/(%d+)")
print(d, m, y)
