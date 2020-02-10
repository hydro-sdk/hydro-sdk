local x = {}

for i = 1, 5 do
    x[i] = i * 13
end

print(x[4])
print(x[5])

for i = 5, 1, -1 do
    print(x[i])
end

-- iterators

local function fib(max)
    local p = 0
    local c = 0
    return function(a)
        if c == 0 then
            c = 1
            return 1
        end

        local o = p + c
        p = c
        c = o

        if o > max then
            return nil
        end

        return o
    end
end

print("fib")

for n in fib(100) do
    print(n)
end