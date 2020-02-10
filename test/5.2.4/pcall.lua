local x, y = pcall(function(a, b)
    print(a)
    error(b)
end, "ayy", "md")

print(x, y)

local x, y = pcall(function(a, b)
    print(a)
    return b
end, "69", "420")

print(x, y)