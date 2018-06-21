
print("--- 111 ---")
stars = {[1] = "Sun", [2] = "Moon", [5] = 'Earth'}
for i, v in pairs(stars) do
	print(i, v)
end

print("--- 222 ---")
for i, v in ipairs(stars) do
	print(i, v)
end

print("--- 333 ---")
stars1 = {[1] = "Sun", [2] = "Moon", [3] = "Earth", [4] = "Mars", [5] = "Venus"}
for i, v in pairs(stars1) do
	print(i, v)
end

print("--- 444 ---")
stars2 = {"Sun", "Moon",  "Earth", "Mars",  "Venus"}
for i, v in pairs(stars2) do
	print(i, v)
end
