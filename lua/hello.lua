--function fact(n)
	--if n == 0 then
		--return 1
	--else
		--return n * fact(n-1)
	--end
--end

--print("enter a number: ")
--a = io.read("*number")
--print(fact(a))

line = io.read()
n = tonumber(line)
if n == nil then
	error(line .. " is not a vaild number")
else
	print(n*2)
end
print(tostring("abc " .. 10 .. " "))
