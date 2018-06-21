--[[
co = coroutine.create(function()
	print("hi")
end)

print(co)
print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))

co = coroutine.create(function()
	for i = 1, 10 do
		print("co", i)
		coroutine.yield()
	end
end)

coroutine.resume(co)
print(coroutine.status(co))
for i = 1, 9 do
	coroutine.resume(co)
end
print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))

co = coroutine.create(function(a,b,c)
	print("co", a,b,c)
end)
print(coroutine.resume(co, 1, 2, 3))

co = coroutine.create(function(a,b)
	coroutine.yield(a + b, a - b)
end)
print(coroutine.resume(co, 20, 10))

co = coroutine.create(function()
	print("co", coroutine.yield())
end)
coroutine.resume(co)
coroutine.resume(co, 4, 5)

co = coroutine.create(function()
	return 6, 7
end)
print(coroutine.resume(co))

-- 触发协同程序
function receive(prod)
	local status, value = coroutine.resume(prod)
	print("--- 111 ---")
	return value
end

-- 挂起协同程序
function send(x)
	print("--- 222 --- %s", x)
	coroutine.yield(x)
end

-- 生产者
function producer()
	return coroutine.create(function()
		while true do
			print("--- before prod read ---")
			local x = io.read()
			print("--- before prod send ---")
			send(x)
			print("--- after prod send ---")
		end
	end)
end

-- 过滤器
function filter(prod)
	return coroutine.create(function()
		local line = 1
		while true do
			print("--- 333 ---" .. line)
			local x = receive(prod)
			x = string.format("%5d %s", line, x)
			print("--- before filter send ---" .. line)
			send(x)
			print("--- after filter send ---" .. line)
			line = line + 1
		end
	end)
end

-- 消费者
function consumer(prod)
	while true do
		print("--- before consumer ---")
		local x = receive(prod)
		io.write(x, "\n")
	end
end

--consumer(filter(producer()))

a = 1
function test(f)
	--print("before f()" .. a)
	--f()
	--print("after f()" .. a)
	print(f)
end

function tfun()
	print("in f()")
	a = a + 1
	return a
end

test(print("hello"))
--]]

function permgen(a, n)
	if n == 0 then
		printResult(a)
	else
		for i = 1, n do
			a[n], a[i] = a[i], a[n]
			permgen(a, n-1)
			a[n], a[i] = a[i], a[n]
		end
	end
end

function printResult(a)
	for i, v in ipairs(a) do
		io.write(v, " ")
	end
	io.write("\n")
end

permgen({1,2,3,4}, 4)
