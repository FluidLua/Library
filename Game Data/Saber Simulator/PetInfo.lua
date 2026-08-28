local Pets
local u0 = {}
local InfiniteMath =loadstring(game:HttpGet("https://raw.githubusercontent.com/FluidLua/Library/refs/heads/main/Game%20Data/Saber%20Simulator/InfiniteMath.lua"))()
local UpdateInfo = loadstring(game:HttpGet("https://raw.githubusercontent.com/FluidLua/Library/refs/heads/main/Game%20Data/Saber%20Simulator/UpdateInfo.lua"))()
u0.EGG_REQUIREMENT = 10
u0.GOLDEN_MULTI = 1.5
u0.SHINY_MULTI = 2
u0.RAINBOW_MULTI = 2.5
u0.VOID_MULTI = 3
u0.Pets = loadstring(game:HttpGet("https://raw.githubusercontent.com/FluidLua/Library/refs/heads/main/Game%20Data/Saber%20Simulator/PetInfo/Pets.lua"))()
u0.Eggs = loadstring(game:HttpGet("https://raw.githubusercontent.com/FluidLua/Library/refs/heads/main/Game%20Data/Saber%20Simulator/PetInfo/Eggs.lua"))()
u0.PetShopInfo = loadstring(game:HttpGet("https://raw.githubusercontent.com/FluidLua/Library/refs/heads/main/Game%20Data/Saber%20Simulator/PetInfo/PetShopInfo.lua"))()
u0.Enchants = loadstring(game:HttpGet("https://raw.githubusercontent.com/FluidLua/Library/refs/heads/main/Game%20Data/Saber%20Simulator/PetInfo/Enchants.lua"))()
local v1 = {}
local v2 = {
    Name = "Common",
    Image = "rbxassetid://117998638140155",
    BackgroundImage = "rbxassetid://90369064127268",
    Color = Color3.fromRGB(188, 193, 197),
    OutlineColor = Color3.fromRGB(73, 73, 75),
}
local v3 = Color3.fromRGB(188, 193, 197)
v2.Gradient = ColorSequence.new(v3, Color3.fromRGB(255, 255, 255))
v1[1] = v2
v2 = {
    Name = "Uncommon",
    Image = "rbxassetid://101681619163898",
    BackgroundImage = "rbxassetid://112541696502096",
    Color = Color3.fromRGB(141, 225, 62),
    OutlineColor = Color3.fromRGB(30, 78, 14),
}
v3 = Color3.fromRGB(141, 225, 62)
v2.Gradient = ColorSequence.new(v3, Color3.fromRGB(255, 255, 255))
v1[2] = v2
v2 = {
    Name = "Rare",
    Image = "rbxassetid://71217129344355",
    BackgroundImage = "rbxassetid://109648304807435",
    Color = Color3.fromRGB(51, 228, 255),
    OutlineColor = Color3.fromRGB(26, 60, 81),
}
v3 = Color3.fromRGB(51, 228, 255)
v2.Gradient = ColorSequence.new(v3, Color3.fromRGB(255, 255, 255))
v1[3] = v2
v2 = {
    Name = "Epic",
    Image = "rbxassetid://85204807527224",
    BackgroundImage = "rbxassetid://121633520789714",
    Color = Color3.fromRGB(246, 133, 255),
    OutlineColor = Color3.fromRGB(69, 9, 83),
}
v3 = Color3.fromRGB(246, 133, 255)
v2.Gradient = ColorSequence.new(v3, Color3.fromRGB(255, 255, 255))
v1[4] = v2
v2 = {
    Name = "Legendary",
    Image = "rbxassetid://72954799348276",
    BackgroundImage = "rbxassetid://127302414066952",
    Color = Color3.fromRGB(255, 193, 66),
    OutlineColor = Color3.fromRGB(93, 29, 9),
}
v3 = Color3.fromRGB(255, 193, 66)
v2.Gradient = ColorSequence.new(v3, Color3.fromRGB(255, 255, 255))
v1[5] = v2
v2 = {
    Name = "Mythic",
    Image = "rbxassetid://90375810566006",
    LengthMulti = 1.3,
    BackgroundImage = "rbxassetid://101925613886236",
    PetXP = 10,
    Color = Color3.fromRGB(236, 195, 20),
    OutlineColor = Color3.fromRGB(72, 30, 0),
}
v3 = Color3.fromRGB(236, 195, 20)
v2.Gradient = ColorSequence.new(v3, Color3.fromRGB(255, 255, 255))
v1[6] = v2
v2 = {
    Name = "Godly",
    Image = "rbxassetid://135133438925164",
    LengthMulti = 1.6,
    BackgroundImage = "rbxassetid://102809289611816",
    PetXP = 35,
    Color = Color3.fromRGB(250, 109, 187),
    OutlineColor = Color3.fromRGB(86, 13, 58),
}
v3 = Color3.fromRGB(250, 109, 187)
v2.Gradient = ColorSequence.new(v3, Color3.fromRGB(255, 255, 255))
v1[7] = v2
v2 = {
    Name = "Demonic",
    Image = "rbxassetid://108817778982252",
    LengthMulti = 2,
    BackgroundImage = "rbxassetid://133094414239201",
    PetXP = 100,
    Color = Color3.fromRGB(153, 161, 184),
    OutlineColor = Color3.fromRGB(21, 25, 34),
}
v3 = Color3.fromRGB(153, 161, 184)
v2.Gradient = ColorSequence.new(v3, Color3.fromRGB(255, 255, 255))
v1[8] = v2
v2 = {
    Name = "Astral",
    Image = "rbxassetid://103333899383000",
    LengthMulti = 3,
    BackgroundImage = "rbxassetid://120817528222113",
    PetXP = 350,
    Color = Color3.fromRGB(250, 109, 116),
    OutlineColor = Color3.fromRGB(86, 13, 21),
}
v3 = Color3.fromRGB(255, 207, 212)
v2.Gradient = ColorSequence.new(v3, Color3.fromRGB(255, 255, 255))
v1[9] = v2
u0.Rarities = v1
function u0.IsSecretPet(p1, p2) -- Line: 120 -- upvalues: u0 (val)
    local v1 = u0.Pets[p2].Rarity == 9
    return v1
end
v2 = {}
Pets = u0.Pets
v3 = nil
local v4 = nil
for i, j in Pets, v3, v4 do
    table.insert(v2, i)
end
table.sort(v2, function(p1, p2) -- Line: 126 -- upvalues: u0 (val)
    local v1
    local v2 = u0.Pets[p1]
    local v3 = u0.Pets[p2]
    if v2.Rarity == v3.Rarity then
        v1 = v2.StrengthMulti < v3.StrengthMulti
        return v1
    end
    v1 = v2.Rarity < v3.Rarity
    return v1
end)
u0.Pets_Order_Rarity = v2
v2 = {}
local Pets_2 = u0.Pets
v3 = nil
v4 = nil
for k, n in Pets_2, v3, v4 do
    table.insert(v2, k)
end
table.sort(v2, function(p1, p2) -- Line: 145 -- upvalues: u0 (val)
    local v1 = u0.Pets[p1]
    local v2 = v1.StrengthMulti < u0.Pets[p2].StrengthMulti
    return v2
end)
u0.Pets_Order_Stats = v2
v2 = {}
local Eggs = u0.Eggs
v3 = nil
v4 = nil
for m, i5 in Eggs, v3, v4 do
    table.insert(v2, m)
end
table.sort(v2, function(p1, p2) -- Line: 161 -- upvalues: u0 (val)
    local v1 = u0.Eggs[p1]
    local v2 = {}
    local Odds = v1.Odds
    local v3 = nil
    local v4 = nil
    for i, j in Odds, v3, v4 do
        if not (u0:IsSecretPet(i)) then
            table.insert(v2, {Name = i, Odds = j})
        end
    end
    table.sort(v2, function(p1, p2) -- Line: 171
        local v1 = p1.Odds < p2.Odds
        return v1
    end)
    local v5 = {}
    local Odds_2 = u0.Eggs[p2].Odds
    local v6 = nil
    local v7 = nil
    for k, n in Odds_2, v6, v7 do
        if not (u0:IsSecretPet(k)) then
            table.insert(v5, {Name = k, Odds = n})
        end
    end
    table.sort(v5, function(p1, p2) -- Line: 186
        local v1 = p1.Odds < p2.Odds
        return v1
    end)
    v7 = u0.Pets[v2[1].Name].StrengthMulti < u0.Pets[v5[1].Name].StrengthMulti
    return v7
end)
u0.Eggs_Order = v2
function u0.GetCoinsMulti(p1, p2) -- Line: 203 -- upvalues: u0 (val)
    local CoinsMulti_2, v1
    local Type = p2.Type
    local Class = p2.Class
    local v2 = p2.Rank or 0
    local v3 = u0.Pets[Type]
    if not v3 then
        warn("MISSING", Type)
        return 1
    end
    local CoinsMulti = v3.CoinsMulti
    local GOLDEN_MULTI = 1
    if Class == "Golden" then
        GOLDEN_MULTI = u0.GOLDEN_MULTI
    elseif Class == "Shiny" then
        GOLDEN_MULTI = u0.SHINY_MULTI
    elseif Class == "Rainbow" then
        GOLDEN_MULTI = u0.RAINBOW_MULTI
    elseif Class == "Void" then
        GOLDEN_MULTI = u0.VOID_MULTI
    end
    local v4 = 1
    for i, j in u0:GetPetsEnchants(p2) do
        v1 = u0.Enchants[j]
        CoinsMulti_2 = v1
        if CoinsMulti_2 then
            CoinsMulti_2 = v1.CoinsMulti
        end
        if CoinsMulti_2 then
            v4 = v4 + CoinsMulti_2
        end
    end
    return CoinsMulti * (1 + v2 * 0.01) * GOLDEN_MULTI * v4
end
function u0.GetCrownsMulti(p1, p2) -- Line: 239 -- upvalues: u0 (val)
    local CrownsMulti_2, v1
    local Type = p2.Type
    local Class = p2.Class
    local v2 = p2.Rank or 0
    local v3 = u0.Pets[Type]
    if not v3 then
        warn("MISSING", Type)
        return 1
    end
    local CrownsMulti = v3.CrownsMulti
    local GOLDEN_MULTI = 1
    if Class == "Golden" then
        GOLDEN_MULTI = u0.GOLDEN_MULTI
    elseif Class == "Shiny" then
        GOLDEN_MULTI = u0.SHINY_MULTI
    elseif Class == "Rainbow" then
        GOLDEN_MULTI = u0.RAINBOW_MULTI
    elseif Class == "Void" then
        GOLDEN_MULTI = u0.VOID_MULTI
    end
    local v4 = 1
    for i, j in u0:GetPetsEnchants(p2) do
        v1 = u0.Enchants[j]
        CrownsMulti_2 = v1
        if CrownsMulti_2 then
            CrownsMulti_2 = v1.CrownsMulti
        end
        if CrownsMulti_2 then
            v4 = v4 + CrownsMulti_2
        end
    end
    return CrownsMulti * (1 + v2 * 0.01) * GOLDEN_MULTI * v4
end
function u0.GetStrengthMulti(p1, p2) -- Line: 275 -- upvalues: u0 (val)
    local StrengthMulti_2, v1
    local Type = p2.Type
    local Class = p2.Class
    local v2 = p2.Rank or 0
    local v3 = u0.Pets[Type]
    if not v3 then
        warn("MISSING", Type)
        return 1
    end
    local StrengthMulti = v3.StrengthMulti
    local GOLDEN_MULTI = 1
    if Class == "Golden" then
        GOLDEN_MULTI = u0.GOLDEN_MULTI
    elseif Class == "Shiny" then
        GOLDEN_MULTI = u0.SHINY_MULTI
    elseif Class == "Rainbow" then
        GOLDEN_MULTI = u0.RAINBOW_MULTI
    elseif Class == "Void" then
        GOLDEN_MULTI = u0.VOID_MULTI
    end
    local v4 = 1
    for i, j in u0:GetPetsEnchants(p2) do
        v1 = u0.Enchants[j]
        StrengthMulti_2 = v1
        if StrengthMulti_2 then
            StrengthMulti_2 = v1.StrengthMulti
        end
        if StrengthMulti_2 then
            v4 = v4 + StrengthMulti_2
        end
    end
    return StrengthMulti * (1 + v2 * 0.01) * GOLDEN_MULTI * v4
end
function u0.GetEventCoinMulti(p1, p2, p3) -- Line: 311 -- upvalues: u0 (val), UpdateInfo (val)
    local Type = p2.Type
    local Class = p2.Class
    local v1 = u0.Pets[Type]
    if not v1 then
        warn("MISSING", Type)
        return
    end
    local CurrentEventName = p3
    if not CurrentEventName then
        CurrentEventName = UpdateInfo.CurrentEventName
    end
    if not CurrentEventName or CurrentEventName == "" then
        return 1
    end
    local v2 = v1[CurrentEventName .. "_EventCoinsMulti"]
    if not v2 then
        return 1
    end
    local GOLDEN_MULTI = 1
    if Class == "Golden" then
        GOLDEN_MULTI = u0.GOLDEN_MULTI
    elseif Class == "Shiny" then
        GOLDEN_MULTI = u0.SHINY_MULTI
    elseif Class == "Rainbow" then
        GOLDEN_MULTI = u0.RAINBOW_MULTI
    elseif Class == "Void" then
        GOLDEN_MULTI = u0.VOID_MULTI
    end
    return v2 * (1 + (p2.Rank or 0) * 0.01) * GOLDEN_MULTI
end
function u0.GetEnchantTokenCost(p1, p2) -- Line: 347 -- upvalues: u0 (val)
    local v1 = 1
    local Type = p2.Type
    local v2 = u0.Pets[Type]
    if not v2 then
        warn("MISSING", Type)
        return v1
    end
    local Rarity = v2.Rarity
    if 9 <= Rarity then
        return 7
    end
    if 8 <= Rarity then
        return 5
    end
    if 7 <= Rarity then
        return 3
    end
    if 6 <= Rarity then
        v1 = 2
    end
    return v1
end
function u0.GetPetsEnchants(p1, p2) -- Line: 371
    local v1 = {}
    local Enchant = p2.Enchant
    if Enchant then
        table.insert(v1, Enchant)
    end
    return v1
end
function u0.GetRarity(p1, p2) -- Line: 382 -- upvalues: u0 (val)
    local Type = p2.Type
    local v1 = u0.Pets[Type]
    if v1 then
        return v1.Rarity
    end
    warn("MISSING", Type)
    return 1
end
function u0.GetSwingsForLevelUp(p1, p2) -- Line: 394
    return ((p2 + 1) * 5) ^ 2
end
function u0.GetPetMaxLevel(p1, p2) -- Line: 398 -- upvalues: u0 (val)
    local PetMaxLevelIncrease, v1
    local v2 = 100
    for i, j in u0:GetPetsEnchants(p2) do
        v1 = u0.Enchants[j]
        PetMaxLevelIncrease = v1
        if PetMaxLevelIncrease then
            PetMaxLevelIncrease = v1.PetMaxLevelIncrease
        end
        if PetMaxLevelIncrease then
            v2 = v2 + PetMaxLevelIncrease
        end
    end
    return v2
end
function u0.Sort(p1, p2) -- Line: 413 -- upvalues: u0 (val)
    local v1
    local StrengthMulti = u0:GetStrengthMulti(p1.Data)
    local StrengthMulti_2 = u0:GetStrengthMulti(p2.Data)
    if StrengthMulti ~= StrengthMulti_2 then
        v1 = StrengthMulti_2 < StrengthMulti
        return v1
    end
    local v2 = tonumber(p1.Id)
    v1 = v2 < tonumber(p2.Id)
    return v1
end
function u0.CurrentEventSort(p1, p2) -- Line: 425 -- upvalues: u0 (val)
    local v1
    local EventCoinMulti = u0:GetEventCoinMulti(p1.Data)
    local EventCoinMulti_2 = u0:GetEventCoinMulti(p2.Data)
    if EventCoinMulti ~= EventCoinMulti_2 then
        v1 = EventCoinMulti_2 < EventCoinMulti
        return v1
    end
    local v2 = tonumber(p1.Id)
    v1 = v2 < tonumber(p2.Id)
    return v1
end
function u0.GetEggBasedOnLuck(p1, p2, p3, p4) -- Line: 438 -- upvalues: u0 (val)
    local Name, Percent, v1, v2, v3, v4, v5, v6
    local v7 = u0.Eggs[p2]
    if not p3 or p3 <= 1 or v7.RobuxId then
        return v7
    end
    local v8 = u0.Eggs[p2]
    local v9 = {}
    for k, v in pairs(v8.Odds) do
        table.insert(v9, {Name = k, Percent = v})
    end
    table.sort(v9, function(p1, p2) -- Line: 451
        local v1 = p1.Percent < p2.Percent
        return v1
    end)
    local v10 = 0
    local v11 = {}
    local v12 = 0
    local v13 = v9
    local v14 = nil
    local v15 = nil
    v2 = p3
    for i, j in v13, v14, v15 do
        Name = j.Name
        Percent = j.Percent
        v1 = v2
        v3 = v12 < 3
        v4 = u0:IsSecretPet(Name)
        if v3 and not v4 then
            v12 = v12 + 1
        end
        if v4 and v16 then
            v1 = v1 + v16
        end
        if not v3 then
            v5 = Percent
        else
            v5 = Percent * v1
        end
        v6 = if 100 <= v10 then 0 else math.min(v5, 100 - v10)
        v11[Name] = v6
        v10 = v10 + v6
    end
    v13 = table.clone(v7)
    v13.Odds = v11
    return v13
end
function u0.GetPetFullName(p1, p2, p3) -- Line: 494
    local v1 = p2
    if p3 and p3 ~= "" and p3 ~= "Normal" then
        v1 = p3 .. " " .. v1
    end
    return v1
end
function u0.GetPetInventorySize(p1, p2) -- Line: 503
    local v1 = 0
    local Pets = p2.Pets
    local v2 = nil
    local v3 = nil
    for i, j in Pets, v2, v3 do
        v1 = v1 + 1
    end
    return v1
end
function u0.CanCombine(p1, p2, p3) -- Line: 511
    local v1 = p3.Pets[p2]
    if not v1 or v1.Locked then
        return
    end
    local Class = v1.Class
    if Class == "Void" then
        return
    end
    local v2 = {}
    local Pets = p3.Pets
    local v3 = nil
    local v4 = nil
    for i, j in Pets, v3, v4 do
        if i ~= p2 and not j.Locked and j.Type == v1.Type and j.Class == Class then
            table.insert(v2, i)
        end
    end
    local v5 = 9 <= #v2
    return v5, v2
end
function u0.GetNextClassName(p1, p2) -- Line: 544
    if p2 == nil or p2 == "" then
        return "Golden"
    end
    if p2 == "Golden" then
        return "Shiny"
    end
    if p2 == "Shiny" then
        return "Rainbow"
    end
    if p2 == "Rainbow" then
        return "Void"
    end
end
function u0.GetPetShopEggInfo(p1, p2) -- Line: 556 -- upvalues: u0 (val)
    local PetShopInfo = u0.PetShopInfo
    local v1 = nil
    local v2 = nil
    for i, j in PetShopInfo, v1, v2 do
        if j.EggName == p2 then
            return j, i
        end
    end
end
function u0.GetEggNameFromPet(p1, p2) -- Line: 564 -- upvalues: u0 (val)
    local Eggs = u0.Eggs
    local v1 = nil
    local v2 = nil
    for i, j in Eggs, v1, v2 do
        if j.Odds[p2] then
            return i
        end
    end
end
function u0.GetBestNonEventEggCanOpenName(p1, p2, p3, p4) -- Line: 573 -- upvalues: u0 (val), InfiniteMath (val)
    local Odds, PreviousEggName, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12
    local EGG_REQUIREMENT = u0.EGG_REQUIREMENT
    local v13 = 1
    local v14 = false
    local v15 = 1
    local v16 = -1
    local v17 = p2
    for i = #u0.PetShopInfo, v15, v16 do
        v1 = u0.PetShopInfo[i]
        v2 = v17.EggsOpened[v1.PreviousEggName] or 0
        PreviousEggName = v1.PreviousEggName
        if PreviousEggName then
            PreviousEggName = v2 < EGG_REQUIREMENT
        end
        v3 = table.find(u0.Eggs_Order, v1.EggName)
        v4 = v3 <= v17.BestEggIdxOpenedOld
        v5 = false
        if v9 then
            v7 = InfiniteMath.new(v17[v1.Currency] or 0)
            v6 = InfiniteMath.floor(v7 / InfiniteMath.new(v1.Price))
            v5 = InfiniteMath.new(1) <= v6
        end
        v6 = false
        if v12 then
            v7 = u0.Eggs[v1.EggName]
            if not v7 then
                return
            end
            v8 = true
            Odds = v7.Odds
            v10 = nil
            v11 = nil
            for j, k in Odds, v10, v11 do
                if not (u0:IsSecretPet(j)) and not (table.find(v17.Index, j)) then
                    v8 = false
                    break
                end
            end
            v6 = not v8
        end
        if PreviousEggName and not v4 then
            continue
        end
        if v9 and not v5 then
            continue
        end
        if v12 and not v6 then
            continue
        end
        v13 = i
        v14 = true
        break
    end
    return u0.PetShopInfo[v13].EggName, v14
end
function u0.GetNextEggInShop(p1, p2) -- Line: 626 -- upvalues: u0 (val)
    local v1
    local v2 = 1
    local v3 = -1
    for i = #u0.PetShopInfo, v2, v3 do
        v1 = u0.PetShopInfo[i]
        if v1.PreviousEggName == p2 then
            return v1.EggName
        end
    end
end
function u0.GetPetFromEggWithRarity(p1, p2, p3) -- Line: 635 -- upvalues: u0 (val)
    local Type = "Dog"
    local v1 = u0.Eggs[p2]
    if v1 then
        local v2 = {}
        local Odds = v1.Odds
        local v3 = nil
        local v4 = nil
        for i, j in Odds, v3, v4 do
            if u0.Pets[i].Rarity <= p3 then
                table.insert(v2, {Type = i, Odds = j})
            end
        end
        if 0 < #v2 then
            table.sort(v2, function(p1, p2) -- Line: 647
                local v1 = p1.Odds < p2.Odds
                return v1
            end)
            Type = v2[1].Type
        end
    end
    return Type
end
function u0.GetBestPetOfRarityFromUnlockedEgg(p1, p2, p3) -- Line: 656 -- upvalues: u0 (val)
    local Odds, PreviousEggName, v1, v2, v3, v4, v5, v6, v7
    local EGG_REQUIREMENT = u0.EGG_REQUIREMENT
    local v8 = 1
    local v9 = 1
    local v10 = -1
    for i = #u0.PetShopInfo, v9, v10 do
        v7 = u0.PetShopInfo[i]
        Odds = u0.Eggs[v7.EggName].Odds
        v3 = nil
        v4 = nil
        for j, k in Odds, v3, v4 do
            if u0.Pets[j].Rarity == v6 then
                v8 = i
                break
            end
        end
        if v8 == i then
            v2 = v1.EggsOpened[v7.PreviousEggName] or 0
            PreviousEggName = v7.PreviousEggName
            if PreviousEggName then
                PreviousEggName = v2 < EGG_REQUIREMENT
            end
            v4 = table.find(u0.Eggs_Order, v7.EggName)
            v5 = v4 <= v1.BestEggIdxOpenedOld
            if not PreviousEggName or v5 then
                break
            end
        end
    end
    return u0:GetPetFromEggWithRarity(u0.PetShopInfo[v8].EggName, v6)
end
return u0
