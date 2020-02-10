local x = 1
local y = 2
local z = 69
local a = 420

print(x + y)
print(x / y)
print(y * a)
print(a % z)

print(1 / 0)
print(0 / 0)
print(-1 / 0)

local function approx(x)
    return math.floor((x * 1000) + 0.5) / 1000
end

print(approx(1 / 3))
print(approx(3 / 5))
print(approx(-1 / 9))