local t = {}
t[3] = 10
t[1] = 3
t[4] = 17
t[2] = 7
t["pi"] = 3.14159
t["banana"] = "yellow"


for key,value in ipairs(t) do
    print(key,value)
end