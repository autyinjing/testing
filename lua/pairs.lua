
print("--- 111 ---")
stars = {[1] = "Sun", [2] = "Moon", [5] = 'Earth'}
for i, v in pairs(stars) do
	print(i, v)
end

print("--- 222 ---")
--stars = {"Sun", "Moon", "Earth"}
for i, v in ipairs(stars) do
	print(i, v)
end

print("--- 333 ---")
stars1 = {[3] = "Sun", [2] = "Moon", [5] = "Earth", [1] = "Mars", [8] = "Venus"}
for i, v in pairs(stars1) do
	print(i, v)
end

print("--- 444 ---")
--stars2 = {"Sun", "Moon",  "Earth", "Mars",  "Venus"}
stars2 = {"Sun",  "Earth", "Moon", "Mars",  "Venus"}
for i, v in ipairs(stars2) do
	print(i, v)
end

print("--- 555 ---")
for i, v in pairs(stars2) do
	print(i, v)
end
