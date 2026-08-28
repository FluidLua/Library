local v1, v2
local v3 = {
    "K",
    "M",
    "B",
    "t",
    "q",
    "Q",
    "s",
    "S",
    "o",
    "n",
    "d",
    "U",
    "D",
    "T",
    "Qt",
    "Qd",
    "Sd",
    "St",
    "O",
    "N",
    "v",
    "c",
}
local v4 = {
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
}
local v5 = #v4
local v6 = 1
for i = 1, v5, v6 do
    table.insert(v3, "k" .. v4[i])
end
v5 = #v4
v6 = 1
for j = 1, v5, v6 do
    v1 = #v4
    v2 = 1
    for k = 1, v1, v2 do
        table.insert(v3, "k" .. v4[j] .. v4[k])
    end
end
return v3
