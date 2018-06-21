Entry{"Donald E. Knuth",
"Literate Programming",
"CSLI",
1992}

Entry{"Jon Bentley",
"More Programming Pearls",
"Addison-Wesley",
1990}

local count = 0
function Entry(b) count = count + 1 end
dofile("data")
print("number of entries: " .. count)
