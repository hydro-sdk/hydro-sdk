if not bit and not bit32 then
    bit = require("bit")
end

bit = bit or bit32

local function chars2num(txt)
    return (txt:byte(1) * 16777216) + (txt:byte(2) * 65536) + (txt:byte(3) * 256) + txt:byte(4)
end

local function limit(num)
    return bit.band(num)
end

local z = 0 
local _hex = {[z] = "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"}

bit.tohex = bit.tohex or function(n)
    local o = ""
    local x = limit(n)
    for i = 0, 3 do
        o = _hex[math.floor(x / 16) % 16] .. _hex[x % 16] .. o
        x = math.floor(x / 256)
    end
    return o
end

local function num2chars(num, l)
    local out = ""
    for l1=1, l or 4 do
        out = string.char(math.floor(num / (256 ^ (l1 - 1))) % 256) .. out
    end
    return out
end

do
    local bxor = bit.bxor
    local ror = bit.rrotate or bit.ror
    local rshift = bit.rshift
    local band = bit.band
    local bnot = bit.bnot

    local k={
        0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
        0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
        0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
        0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
        0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
        0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
        0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
        0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2,
    }

    function sha256(txt)
        local ha = {
            0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
            0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19,
        }

        local len = #txt

        txt = txt .. "\128" .. ("\0"):rep(64 - ((len + 9) % 64)) .. num2chars(8 * len, 8)

        local w = {}

        for chunkind = 1, #txt, 64 do
            local rawchunk = txt:sub(chunkind, chunkind + 63)
            local chunk = {}

            for i = 1, 64, 4 do
                local x = chars2num(rawchunk:sub(i))
                chunk[math.floor(i / 4) + 1] = x
            end

            for i = 1, 16 do
                w[i] = chunk[i]
            end

            for i = 16, 63 do
                local s0 = bxor(ror(w[i - 14], 7), ror(w[i - 14], 18), rshift(w[i - 14], 3))
                local s1 = bxor(ror(w[i - 1], 17), ror(w[i - 1], 19), rshift(w[i - 1], 10))
                w[i + 1] = w[i - 15] + s0 + w[i - 6] + s1
            end

            local a, b, c, d, e, f, g, h = ha[1], ha[2], ha[3], ha[4], ha[5], ha[6], ha[7], ha[8]
            for i = 0, 63 do
                local temp1 = limit((h + bxor(ror(e, 6), ror(e, 11), ror(e, 25))) + (bxor(band(e, f), band(bnot(e), g)) + k[i + 1] + w[i + 1]))
                a, b, c, d, e, f, g, h = temp1 + bxor(ror(a, 2), ror(a, 13),ror(a, 22)) + bxor(band(a, b), band(a, c), band(b, c)), a, b, c, d + temp1, e, f, g
            end
            ha[1], ha[2], ha[3], ha[4], ha[5], ha[6], ha[7], ha[8] = limit(ha[1] + a), limit(ha[2] + b), limit(ha[3] + c), limit(ha[4] + d), limit(ha[5] + e), limit(ha[6] + f), limit(ha[7] + g), limit(ha[8] + h)
        end

        return
        bit.tohex(ha[1]) .. bit.tohex(ha[2]) .. bit.tohex(ha[3]) .. bit.tohex(ha[4]) ..
                bit.tohex(ha[5]) .. bit.tohex(ha[6]) .. bit.tohex(ha[7]) .. bit.tohex(ha[8])
    end
end
