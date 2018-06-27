--print(table.getn{10,2,4})
--print(table.getn{10,2,nil})
--print(table.getn{10,2,nil,n=3})
--print(table.getn{n=1000})

--a = {}
--print(table.getn(a))
--table.setn(a, 10000)
--print(table.getn(a))

a = setmetatable({}, {__tostring = function(t) 
	str = "{"
	for v in ipairs(t) do
		str = str .. v .. ", "
	end
	str = str .. "}"
	return str
end})

table.insert(a, 8)
print(a)
table.insert(a, 7)
print(a)
table.remove(a, 1)
print(a)
