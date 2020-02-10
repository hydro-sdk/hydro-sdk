print(select("#"))
print(select("#", "a", "s", "d", "f"))

local function x(a, ...)
    print(select("#", ...))
end

x("a", "s", "d")
x("a", "s")
x("a", "s", "d", "f", "1", "2", "3")