local u0 = {DECIMALPOINTS = 2}
local u1 = {}
u1.__index = u1
local Suffixes = loadstring(game:HttpGet("https://raw.githubusercontent.com/FluidLua/Library/refs/heads/main/Game%20Data/Saber%20Simulator/Suffixes.lua"))()
local function fixNumber(p1, p2) -- Line: 43
    local v1 = tonumber(p1)
    if 0 < p2 % 1 then
        v1 = v1 * 10 ^ (p2 % 1)
    end
    local v2 = math.floor(p2)
    local v3 = math.sign(v1)
    local v4 = nil
    if v1 == 0 then
        return v1, 0
    elseif v2 ~= 0 then
        if v2 ~= 0 then
            local v5
            if v1 < v3 * 1 then
                v4 = math.abs(v1)
                v5 = math.abs((math.floor((math.log10(v4)))))
                if v5 ~= 0 then
                    v2 = v2 - v5
                    v4 = v4 * 10 ^ v5
                end
            elseif v3 * 1 <= v1 then
                v4 = math.abs(v1)
                if math.floor((math.log10(v4))) ~= 0 then
                    v2 = v2 + math.floor((math.log10(v4)))
                    v4 = v4 / 10 ^ math.floor((math.log10(v4)))
                end
            end
            if v4 == nil then
                return (0 / 0), (0 / 0)
            end
            if v2 < 0 then
                v5 = math.abs(v2)
                v4 = v4 / 10 ^ v5
                v2 = v2 + v5
            end
            return v4 * v3, v2
        elseif v1 == 0 then
            return 0, 0
        end
    elseif v1 < 1 then
        return v1, 0
    end
end
local function convert(p1) -- Line: 91
    local v1
    if typeof(p1) ~= "number" then
        error("Type is not \"number\".")
    end
    local v2 = math.sign(p1)
    local v3 = math.abs(p1)
    local v4 = tostring(v3)
    local v5 = 0
    if string.match(v4, "%.") and not (string.match(v4, "e")) then
        v1 = string.split(v4, ".")
        v4 = v1[1] .. "" .. v1[2]
        v5 = #v1[2]
    end
    local v6 = #v4 - 1 - v5
    if string.match(v4, "e") then
        if string.match(v4, "+") then
            v6 = v4:split("+")[2]
        elseif string.match(v4, "-") then
            v6 = v4:split("e")[2]
        end
        v1 = v4:split("e")[1]
    elseif string.match(v4, "inf") then
        v6 = "inf"
        v1 = "inf"
    elseif string.match(v4, "nan") then
        v6 = "nan"
        v1 = "nan"
    elseif #v4 ~= 1 then
        local v7 = v4:sub(1, 1)
        local v8 = v4:sub(2)
        local v9 = tonumber(v8)
        if 0 >= v9 then
            v1 = v7
        else
            v1 = v7 .. "." .. v8
        end
    else
        v1 = v3
    end
    return v1 * v2, v6
end
local function checkNumber(p1) -- Line: 143 -- upvalues: u0 (val)
    if typeof(p1) ~= "number" and typeof(p1) ~= "string" and typeof(p1) ~= "table" then
        local v1 = typeof(p1)
        error("\"" .. v1 .. "\" is not a valid type. Please only use \"number\", \"string\", or constructed numbers.")
    end
    local v2 = u0.new(p1)
    if v2.first == nil and v2.second == nil then
        error("\"string\" is not correctly formatted. Correctly formatted strings look like \"1,0\".")
    end
    return v2
end
function u1.__add(p1, p2) -- Line: 158 -- upvalues: checkNumber (val), fixNumber (val), u0 (val)
    local v1, v2, v3, v4, v5, v6
    local v7 = checkNumber(p1)
    local v8 = checkNumber(p2)
    v1, v2 = fixNumber(v7.first, v7.second)
    v3, v4 = fixNumber(v8.first, v8.second)
    local v9 = math.abs(v2 - v4)
    if 16 < v9 then
        if math.max(v2, v4) == v2 then
            return u0.new({v1, v2})
        end
        return u0.new({v3, v4})
    end
    v3 = v3 * 10 ^ (-(v2 - v4))
    v5, v6 = fixNumber(v1 + v3, v2)
    v6 = {v5, v6}
    return u0.new(v6)
end
function u1.__sub(p1, p2) -- Line: 179 -- upvalues: checkNumber (val), fixNumber (val), u0 (val)
    local v1, v2, v3, v4, v5, v6
    local v7 = checkNumber(p1)
    local v8 = checkNumber(p2)
    v1, v2 = fixNumber(v7.first, v7.second)
    v3, v4 = fixNumber(v8.first, v8.second)
    local v9 = math.abs(v2 - v4)
    if 16 < v9 then
        if math.max(v2, v4) == v2 then
            return u0.new({v1, v2})
        end
        return u0.new({v3, v4})
    end
    v3 = v3 * 10 ^ (-(v2 - v4))
    v5, v6 = fixNumber(v1 - v3, v2)
    v6 = {v5, v6}
    return u0.new(v6)
end
function u1.__mul(p1, p2) -- Line: 200 -- upvalues: checkNumber (val), fixNumber (val), u0 (val)
    local v1, v2, v3, v4, v5, v6
    local v7 = checkNumber(p1)
    local v8 = checkNumber(p2)
    v1, v2 = fixNumber(v7.first, v7.second)
    v3, v4 = fixNumber(v8.first, v8.second)
    v5, v6 = fixNumber(v1 * v3, v2 + v4)
    v6 = {v5, v6}
    return u0.new(v6)
end
function u1.__div(p1, p2) -- Line: 211 -- upvalues: checkNumber (val), fixNumber (val), u0 (val)
    local v1, v2, v3, v4, v5, v6
    local v7 = checkNumber(p1)
    local v8 = checkNumber(p2)
    v1, v2 = fixNumber(v7.first, v7.second)
    v3, v4 = fixNumber(v8.first, v8.second)
    v5, v6 = fixNumber(v1 / v3, v2 - v4)
    v6 = {v5, v6}
    return u0.new(v6)
end
function u1.__pow(p1, p2) -- Line: 222 -- upvalues: checkNumber (val), u0 (val), fixNumber (val)
    local v1, v2, v3
    local v4 = checkNumber(p1)
    if typeof(p2) == "number" then
        v1 = p2
    else
        v1 = p2:Reverse()
    end
    if v1 == (1 / 0) then
        error(v1 .. " is not a valid power.")
    elseif v1 == v1 and typeof(v1) == "number" then
    end
    local v5 = u0.sign(v4)
    v4 = v4 * v5
    v2, v3 = fixNumber(v4.first, v4.second)
    if v2 ^ v1 == (1 / 0) then
        local v6, v7
        if typeof(v1) ~= "number" then
            v1 = v1:Reverse()
        end
        local v8 = u0.new(1)
        if 1 < v1 then
            local v9, v10
            while 0 < v1 do
                v9 = bit32.band(v1, 1) == 1
                if v9 then
                    v8 = v8 * v4
                end
                v4 = v4 * v4
                v1 = bit32.rshift(v1, 1)
            end
            v9, v10 = fixNumber(v8.first, v8.second)
            v6 = v9
            v7 = v10
        elseif v1 ~= 0 then
            v6 = v2
            v7 = v3
        else
            v6 = 1
            v7 = 0
        end
        return u0.new({v6, v7})
    elseif v3 * v1 ~= (1 / 0) then
        return u0.new({v2 ^ v1, v3 * v1}) * v5
    end
end
function u1.__mod(p1, p2) -- Line: 272 -- upvalues: checkNumber (val), u0 (val)
    local v1
    local v2 = checkNumber(p1)
    local v3 = checkNumber(p2)
    local v4 = u0.sign(v2)
    if v4 ~= 1 then
        v1 = u0.round(v2 / v3)
    else
        v1 = u0.floor(v2 / v3)
    end
    return v2 - v3 * v1
end
function u1.__eq(p1, p2) -- Line: 289 -- upvalues: checkNumber (val)
    local v1 = checkNumber(p1)
    local v2 = checkNumber(p2)
    if v1.first == "nan" or v2.first == "nan" then
        return false
    end
    local v3 = if v1.first == v2.first then v1.second == v2.second else false
    return v3
end
function u1.__lt(p1, p2) -- Line: 299 -- upvalues: checkNumber (val), fixNumber (val)
    local v1, v2, v3, v4, v5
    local v6 = checkNumber(p1)
    local v7 = checkNumber(p2)
    v1, v2 = fixNumber(v6.first, v6.second)
    v3, v4 = fixNumber(v7.first, v7.second)
    if v2 == v4 then
        v5 = v1 < v3
        return v5
    end
    v5 = v2 < v4
    return v5
end
function u1.__le(p1, p2) -- Line: 311 -- upvalues: checkNumber (val), fixNumber (val)
    local v1, v2, v3, v4, v5
    local v6 = checkNumber(p1)
    local v7 = checkNumber(p2)
    v1, v2 = fixNumber(v6.first, v6.second)
    v3, v4 = fixNumber(v7.first, v7.second)
    if v2 == v4 then
        v5 = v1 <= v3
        return v5
    end
    v5 = v2 < v4
    return v5
end
function u1.__unm(p1) -- Line: 323 -- upvalues: checkNumber (val)
    return checkNumber(p1) * -1
end
function u1.__tostring(p1) -- Line: 329
    return p1:GetSuffix(true)
end
function u1.__concat(p1, p2) -- Line: 333
    local v1 = tostring(p1)
    return v1 .. p2
end
function u0.new(p1) -- Line: 361 -- upvalues: fixNumber (val), convert (val), u1 (val)
    local v1
    if typeof(p1) ~= "table" then
        local v2
        if typeof(p1) == "string" then
            local v3, v4
            if tonumber(p1) ~= nil then
                v2, v1 = convert((tonumber(p1)))
                v3 = v2
                v4 = v1
            else
                v2, v1 = fixNumber(table.unpack(p1:split(",")))
                v3 = v2
                v4 = v1
            end
            v1 = {first = v3, second = v4}
            return (setmetatable(v1, u1))
        end
        if typeof(p1) ~= "number" then
            local v5 = typeof(p1)
            error("\"" .. v5 .. "\" is not a valid type. Please only use \"number\", \"string\", \"table\", or constructed numbers.")
            return
        end
        if p1 == (1 / 0) then
            error("INF number is not allowed. Please use \"string\" or \"table\" instead of \"number\" to go above INF.")
        end
        v2, v1 = convert(p1)
        v1 = {first = v2, second = v1}
        return (setmetatable(v1, u1))
    elseif p1.first == nil then
        if typeof(p1[2]) == "string" then
            p1[2] = tonumber(p1[2])
        end
        if typeof(p1[1]) ~= "number" then
            print(p1[1], p1[2])
            v1 = typeof(p1[1])
            print(v1, (typeof(p1[2])))
            error("Both arguments of table must be numbers.")
        elseif typeof(p1[2]) ~= "number" then
            print(p1[1], p1[2])
            v1 = typeof(p1[1])
            print(v1, (typeof(p1[2])))
            error("Both arguments of table must be numbers.")
        end
        v1 = {first = p1[1], second = p1[2]}
        return (setmetatable(v1, u1))
    elseif p1.second ~= nil then
        return p1
    end
end
function u1:Reverse() -- Line: 416 -- upvalues: fixNumber (val)
    local v1, v2
    v1, v2 = fixNumber(self.first, self.second)
    return v1 * 10 ^ v2
end
function u1:GetSuffix(p2) -- Line: 440 -- upvalues: fixNumber (val), u0 (val), Suffixes (val)
    local v1, v2, v3
    if p2 ~= nil then
        v1 = p2
    else
        v1 = true
    end
    v2, v3 = fixNumber(self.first, self.second)
    if v3 < 3 then
        local v4 = tostring(self:Reverse())
        if 1 > v2 then
            return v2
        end
        if 0 >= u0.DECIMALPOINTS then
            return v4:split(".")[1]
        end
        v4 = v4:sub(1, v3 + 2 + u0.DECIMALPOINTS)
        if tonumber(v4:split(".")[2]) == 0 then
            return v4:split(".")[1]
        end
        return v4
    end
    v2 = v2 * 10 ^ (v3 % 3)
    local v5 = math.floor(v3 / 3)
    local v6 = math.floor(v2 * 10 ^ u0.DECIMALPOINTS)
    local v7 = v6 / 10 ^ u0.DECIMALPOINTS
    if not v1 then
        v6 = nil
    else
        v6 = Suffixes[v5]
    end
    if 0 >= v5 then
        return v7
    end
    if v6 ~= nil then
        return v7 .. v6
    end
    v7 = self:ScientificNotation(v1)
    return v7
end
function u1:ScientificNotation(p2, p3) -- Line: 514 -- upvalues: fixNumber (val), u0 (val)
    local v1, v2
    v1, v2 = fixNumber(self.first, self.second)
    v1 = tostring(v1)
    v2 = tostring(v2)
    local v3 = math.floor(v1 * 10 ^ u0.DECIMALPOINTS)
    local v4 = v3 / 10 ^ u0.DECIMALPOINTS
    v3 = tonumber(v2)
    if 1000000 < v3 and p3 ~= false then
        if p2 == true then
            v2 = u0.new((tonumber(v2))):GetSuffix(true)
        elseif p2 ~= nil then
            v2 = u0.new((tonumber(v2))):ScientificNotation(nil, false)
        else
            v2 = u0.new((tonumber(v2))):GetSuffix(true)
        end
    end
    return v4 .. "e+" .. v2
end
function u1.LogarithmNotation(p1) -- Line: 544 -- upvalues: fixNumber (val), u0 (val)
    local v1, v2
    v1, v2 = fixNumber(p1.first, p1.second)
    v1 = tostring(v1)
    v2 = tostring(v2)
    if math.floor(v2 / 3) == 0 then
        local v3 = math.floor(v1 * 10 ^ (v2 % 3) * 10 ^ u0.DECIMALPOINTS)
        return v3 / 10 ^ u0.DECIMALPOINTS
    end
    local v4 = tostring((math.log10(v1)))
    if string.match(v4, "%.") then
        v4 = string.split(v4, ".")[2]:sub(1, 3)
    end
    return "e" .. v2 .. "." .. v4
end
local u27 = {
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
}
function u1.aaNotation(p1) -- Line: 582 -- upvalues: fixNumber (val), u0 (val), u27 (val)
    local v1, v2
    v1, v2 = fixNumber(p1.first, p1.second)
    v1 = v1 * 10 ^ (v2 % 3)
    local v3 = math.floor(v2 / 3)
    if v3 < 5 then
        return p1:GetSuffix()
    end
    local v4 = v3 - 4
    local v5 = v4 % 26
    local v6 = math.ceil(v4 / 26)
    if 26 < v6 or v5 == 0 then
        return p1:ScientificNotation()
    end
    local v7 = math.floor(v1 * 10 ^ u0.DECIMALPOINTS)
    return v7 / 10 ^ u0.DECIMALPOINTS .. u27[v6] .. u27[v5]
end
function u1.ConvertForLeaderboards(p1) -- Line: 623 -- upvalues: fixNumber (val)
    local v1, v2
    v1, v2 = fixNumber(p1.first, p1.second)
    v1 = tostring(v1)
    v2 = tostring(v2)
    return (math.floor(tonumber(v2 .. "." .. v1:gsub("%.", ""):sub(1, 5)) * 10000))
end
function u0.ConvertFromLeaderboards(p1, p2) -- Line: 647 -- upvalues: u0 (val)
    local v1 = tostring(p2 / 10000):split(".")
    local v2 = v1[2]
    local v3 = tostring(v2):sub(1, 1)
    local v4 = tostring(v2):sub(2)
    local v5 = {}
    local v6 = tonumber(v3 .. "." .. v4)
    v5[1] = v6
    v5[2] = (tonumber(v1[1]))
    return u0.new(v5)
end
function u0.floor(p1) -- Line: 672 -- upvalues: checkNumber (val), fixNumber (val), u0 (val)
    local v1
    local v2 = checkNumber(p1)
    _, v1 = fixNumber(v2.first, v2.second)
    if 300 <= v1 then
        return v2
    end
    return u0.new((math.floor((v2:Reverse()))))
end
function u0.round(p1) -- Line: 690 -- upvalues: checkNumber (val), u0 (val), fixNumber (val)
    local v1, v2
    local v3 = checkNumber(p1)
    local v4 = u0.sign(v3)
    v3 = v3 * v4
    v1, v2 = fixNumber(v3.first, v3.second)
    if 300 <= v2 then
        return v3 * v4
    end
    local v5 = math.abs(v1) % 1
    if v5 == 0 then
        return v3 * v4
    end
    if 0.5 <= v5 then
        return u0.new((math.ceil((v3:Reverse())))) * v4
    end
    return u0.new((math.floor((v3:Reverse())))) * v4
end
function u0.ceil(p1) -- Line: 720 -- upvalues: checkNumber (val), fixNumber (val), u0 (val)
    local v1
    local v2 = checkNumber(p1)
    _, v1 = fixNumber(v2.first, v2.second)
    if 300 <= v1 then
        return v2
    end
    return u0.new((math.ceil((v2:Reverse()))))
end
function u0.abs(p1) -- Line: 738 -- upvalues: checkNumber (val), fixNumber (val), u0 (val)
    local v1, v2
    local v3 = checkNumber(p1)
    v1, v2 = fixNumber(v3.first, v3.second)
    local v4 = {}
    local v5 = math.abs(v1)
    v4[1] = v5
    v4[2] = v2
    return u0.new(v4)
end
function u0.clamp(p1, p2, p3) -- Line: 756 -- upvalues: checkNumber (val), fixNumber (val), u0 (val)
    local v1, v2, v3, v4, v5
    local v6 = checkNumber(p1)
    v3, v4 = fixNumber(v6.first, v6.second)
    local v7 = {v3, v4}
    v6 = u0.new(v7)
    if p2 == nil then
        v1 = u0.new(0)
    else
        v1 = checkNumber(p2)
        v5, v7 = fixNumber(v1.first, v1.second)
        v1 = u0.new({v5, v7})
    end
    if p3 == nil then
        v2 = u0.new("1, 1e+308")
    else
        v2 = checkNumber(p3)
        v5, v7 = fixNumber(v2.first, v2.second)
        v2 = u0.new({v5, v7})
    end
    if v6 < v1 then
        return v1
    end
    if v2 < v6 then
        return v2
    end
    return v6
end
function u0.min(...) -- Line: 791 -- upvalues: checkNumber (val)
    local v1 = {...}
    if v1[1] == nil then
        error("InfiniteMath.min requires at least 1 argument.")
    end
    local v2 = v1
    local v3 = nil
    local v4 = nil
    for i, j in v2, v3, v4 do
        v1[i] = checkNumber(j)
    end
    v2 = v1[1]
    v3 = v1
    v4 = nil
    local v5 = nil
    for k, n in v3, v4, v5 do
        if n < v2 then
            v2 = n
        end
    end
    return v2
end
function u0.max(...) -- Line: 821 -- upvalues: checkNumber (val)
    local v1 = {...}
    if v1[1] == nil then
        error("InfiniteMath.max requires at least 1 argument.")
    end
    local v2 = v1
    local v3 = nil
    local v4 = nil
    for i, j in v2, v3, v4 do
        v1[i] = checkNumber(j)
    end
    v2 = v1[1]
    v3 = v1
    v4 = nil
    local v5 = nil
    for k, n in v3, v4, v5 do
        if v2 < n then
            v2 = n
        end
    end
    return v2
end
function u0.sign(p1) -- Line: 851 -- upvalues: checkNumber (val), fixNumber (val)
    local v1 = checkNumber(p1)
    local v2 = fixNumber(v1.first, v1.second)
    v2 = tonumber(v2)
    if 0 < v2 then
        return 1
    end
    if v2 < 0 then
        return -1
    end
    return 0
end
function u0.sqrt(p1) -- Line: 868
    return p1 ^ 0.5
end
function u0.fmod(p1, p2) -- Line: 882 -- upvalues: checkNumber (val), u0 (val)
    local v1 = checkNumber(p1)
    local v2 = checkNumber(p2)
    return v1 - v2 * u0.floor(v1 / v2)
end
function u0.modf(p1) -- Line: 900 -- upvalues: checkNumber (val), u0 (val), fixNumber (val)
    local v1, v2, v3, v4, v5
    local v6 = checkNumber(p1)
    local v7 = u0.sign(v6)
    v6 = v6 * v7
    v1, v2 = fixNumber(v6.first, v6.second)
    local v8 = tostring(v1):split(".")
    if v8[2] == nil then
        return v6
    end
    v1 = v8[2]:sub(1, v2)
    if v2 ~= 0 then
        v3 = v2
    else
        v3 = 2
    end
    if 0 >= v2 then
        v4 = v8[2] / 10 ^ (#v8[2])
    else
        v5 = v8[2]:sub(v3 + 1)
        v4 = v5 / 10 ^ (#v8[2]:sub(v3 + 1))
    end
    v5 = u0.new({v8[1] .. "." .. v1, v2}) * v7
    return v5, v4
end
function u0.log(p1, p2) -- Line: 937 -- upvalues: checkNumber (val), u0 (val), fixNumber (val)
    local v1, v2, v3
    local v4 = checkNumber(p1)
    if u0.sign(v4) == -1 then
        return (0 / 0)
    end
    if p2 ~= nil then
        v1 = p2
    else
        v1 = 2.7182818
    end
    v2, v3 = fixNumber(v4.first, v4.second)
    local v5 = math.log(v2, v1)
    return u0.new(v5 + v3 * math.log(10, v1))
end
function u0.log10(p1) -- Line: 962 -- upvalues: u0 (val)
    return u0.log(p1, 10)
end
return u0
