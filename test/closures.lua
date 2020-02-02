-- Basic access

local x = 1

print((function()
    return x
end)())

local y = 12

print((function()
    return (function()
        return y
    end)()
end)())

local z = 123

print((function()
    return (function()
        return (function()
            return z
        end)()
    end)()
end)())

-- Modification

local a = 0

;(function(n)
    a = a + n
end)(1)

;(function(n)
    a = a + n
end)(1)

print(a)

local b = 1

;(function()
    (function()
        b = b + 1
    end)();
end)()

print(b)

local c = 1

;(function()
    local function inc()
        c = c + 1
    end

    local function inc2()
        c = c + 10
    end

    inc()
    inc2()
    inc()
end)()

print(c)

-- Not overwriting parameters

local a = 42

print(a)

;(function(x)
    x = 1234
    print(x)
end)(a)

print(a)

-- Closing properly

local y
local x = (function()
    do
        local a = 691
        local b = 692
        local c = 693
        y = function()
            print(a, b, c)
        end
    end

    local a, b, c = 421, 422, 423
    print(a, b, c)
end)()

local a, b, c = 421, 422, 423

y()
print(a, b, c)
