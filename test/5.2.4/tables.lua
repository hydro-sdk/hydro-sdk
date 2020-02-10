local x = {1, 12, 123, 1234, 12345}

print(x[1], x[2], x[3], x[4], x[5])

x[1] = 42

print(x[1])

x[2] = 420

print(x[2])

x[1] = nil

print(x[1])
print(x[2])

x["69"] = 69

print(x["69"])