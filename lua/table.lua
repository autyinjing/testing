list = nil
arr = {"abc", 111, ",./,", "end"}
--for line in io.lines() do
for k, v in ipairs(arr) do
	list = {next=list, value=v}
	print(k, v)
end

l = list
while l do
	print(l.value)
	l = l.next
end
