local u0 = {}
local PetsInfo = loadstring(game:HttpGet("https://raw.githubusercontent.com/FluidLua/Library/refs/heads/main/Game%20Data/Saber%20Simulator/PetInfo.lua"))()
local v1 = {
    Pets50 = {
        Order = 1,
        ItemName = "50 Pets",
        RewardImage = "rbxassetid://71617887503312",
        RewardImageText = "x100",
        RewardText = "100 Shiny Charms",
        PetsNeeded = 50,
        Rewards = {
            {Type = "Charms", Name = "ShinyCharms", Amount = 100},
        },
    },
    Pets100 = {
        Order = 2,
        ItemName = "100 Pets",
        RewardImage = "rbxassetid://112519380742885",
        RewardImageText = "5%",
        RewardText = "+5% Strength",
        PetsNeeded = 100,
        StrengthMulti = 0.05,
    },
    Pets150 = {
        Order = 3,
        ItemName = "150 Pets",
        RewardImage = "rbxassetid://105011545011210",
        RewardImageText = "x100",
        RewardText = "100 Rainbow Charms",
        PetsNeeded = 150,
        Rewards = {
            {Type = "Charms", Name = "RainbowCharms", Amount = 100},
        },
    },
    Pets200 = {
        Order = 4,
        ItemName = "200 Pets",
        RewardImage = "rbxassetid://106039558204203",
        RewardImageText = "5%",
        RewardText = "+5% Crowns",
        PetsNeeded = 200,
        CrownsMulti = 0.05,
    },
    Eggs25 = {
        Order = 5,
        ItemName = "25 Eggs",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        EggsNeeded = 25,
        PetXPMulti = 0.05,
    },
    Pets250 = {
        Order = 6,
        ItemName = "250 Pets",
        RewardImage = "rbxassetid://118922823178453",
        RewardImageText = "x100",
        RewardText = "100 Void Charms",
        PetsNeeded = 250,
        Rewards = {
            {Type = "Charms", Name = "VoidCharms", Amount = 100},
        },
    },
    Pets300 = {
        Order = 7,
        ItemName = "300 Pets",
        RewardImage = "rbxassetid://95486626166242",
        RewardImageText = "5%",
        RewardText = "+5% Luck",
        PetsNeeded = 300,
        LuckMulti = 0.05,
    },
    Pets350 = {
        Order = 8,
        ItemName = "350 Pets",
        RewardImage = "rbxassetid://71617887503312",
        RewardImageText = "x150",
        RewardText = "150 Shiny Charms",
        PetsNeeded = 350,
        Rewards = {
            {Type = "Charms", Name = "ShinyCharms", Amount = 150},
        },
    },
    Pets400 = {
        Order = 9,
        ItemName = "400 Pets",
        RewardImage = "rbxassetid://83444341871101",
        RewardImageText = "x50",
        RewardText = "50 Pet Storage",
        PetsNeeded = 400,
        PetStorage = 50,
    },
    Pets450 = {
        Order = 10,
        ItemName = "450 Pets",
        RewardImage = "rbxassetid://105011545011210",
        RewardImageText = "x150",
        RewardText = "150 Rainbow Charms",
        PetsNeeded = 450,
        Rewards = {
            {Type = "Charms", Name = "RainbowCharms", Amount = 150},
        },
    },
    Eggs50 = {
        Order = 11,
        ItemName = "50 Eggs",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        EggsNeeded = 50,
        PetXPMulti = 0.05,
    },
    Pets500 = {
        Order = 12,
        ItemName = "500 Pets",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        PetsNeeded = 500,
        PetXPMulti = 0.05,
    },
    Pets550 = {
        Order = 13,
        ItemName = "550 Pets",
        RewardImage = "rbxassetid://118922823178453",
        RewardImageText = "x150",
        RewardText = "150 Void Charms",
        PetsNeeded = 550,
        Rewards = {
            {Type = "Charms", Name = "VoidCharms", Amount = 150},
        },
    },
    Pets600 = {
        Order = 14,
        ItemName = "600 Pets",
        RewardImage = "rbxassetid://122924317901658",
        RewardImageText = "5%",
        RewardText = "+5% Coins",
        PetsNeeded = 600,
        CoinsMulti = 0.05,
    },
    Pets650 = {
        Order = 15,
        ItemName = "650 Pets",
        RewardImage = "rbxassetid://71617887503312",
        RewardImageText = "x200",
        RewardText = "200 Shiny Charms",
        PetsNeeded = 650,
        Rewards = {
            {Type = "Charms", Name = "ShinyCharms", Amount = 200},
        },
    },
    Eggs75 = {
        Order = 16,
        ItemName = "75 Eggs",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        EggsNeeded = 75,
        PetXPMulti = 0.05,
    },
    Pets700 = {
        Order = 17,
        ItemName = "700 Pets",
        RewardImage = "rbxassetid://106039558204203",
        RewardImageText = "5%",
        RewardText = "+5% Crowns",
        PetsNeeded = 700,
        CrownsMulti = 0.05,
    },
    Pets750 = {
        Order = 18,
        ItemName = "750 Pets",
        RewardImage = "rbxassetid://105011545011210",
        RewardImageText = "x200",
        RewardText = "200 Rainbow Charms",
        PetsNeeded = 750,
        Rewards = {
            {Type = "Charms", Name = "RainbowCharms", Amount = 200},
        },
    },
    Pets800 = {
        Order = 19,
        ItemName = "800 Pets",
        RewardImage = "rbxassetid://95486626166242",
        RewardImageText = "5%",
        RewardText = "+5% Luck",
        PetsNeeded = 800,
        LuckMulti = 0.05,
    },
    Pets850 = {
        Order = 20,
        ItemName = "850 Pets",
        RewardImage = "rbxassetid://118922823178453",
        RewardImageText = "x200",
        RewardText = "200 Void Charms",
        PetsNeeded = 850,
        Rewards = {
            {Type = "Charms", Name = "VoidCharms", Amount = 200},
        },
    },
    Pets900 = {
        Order = 21,
        ItemName = "900 Pets",
        RewardImage = "rbxassetid://83444341871101",
        RewardImageText = "x50",
        RewardText = "50 Pet Storage",
        PetsNeeded = 900,
        PetStorage = 50,
    },
    Eggs100 = {
        Order = 22,
        ItemName = "100 Eggs",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        EggsNeeded = 100,
        PetXPMulti = 0.05,
    },
    Pets950 = {
        Order = 23,
        ItemName = "950 Pets",
        RewardImage = "rbxassetid://71617887503312",
        RewardImageText = "x250",
        RewardText = "250 Shiny Charms",
        PetsNeeded = 950,
        Rewards = {
            {Type = "Charms", Name = "ShinyCharms", Amount = 250},
        },
    },
    Pets1000 = {
        Order = 24,
        ItemName = "1,000 Pets",
        RewardImage = "rbxassetid://127877308020658",
        RewardImageText = "+1",
        RewardText = "+1 Pet Hatch",
        PetsNeeded = 1000,
        ExtraHatch = 1,
    },
    Pets1050 = {
        Order = 25,
        ItemName = "1,050 Pets",
        RewardImage = "rbxassetid://105011545011210",
        RewardImageText = "x250",
        RewardText = "250 Rainbow Charms",
        PetsNeeded = 1050,
        Rewards = {
            {Type = "Charms", Name = "RainbowCharms", Amount = 250},
        },
    },
    Pets1100 = {
        Order = 26,
        ItemName = "1,100 Pets",
        RewardImage = "rbxassetid://112519380742885",
        RewardImageText = "5%",
        RewardText = "+5% Strength",
        PetsNeeded = 1100,
        StrengthMulti = 0.05,
    },
    Eggs125 = {
        Order = 27,
        ItemName = "125 Eggs",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        EggsNeeded = 125,
        PetXPMulti = 0.05,
    },
    Pets1150 = {
        Order = 28,
        ItemName = "1,150 Pets",
        RewardImage = "rbxassetid://118922823178453",
        RewardImageText = "x250",
        RewardText = "250 Void Charms",
        PetsNeeded = 1150,
        Rewards = {
            {Type = "Charms", Name = "VoidCharms", Amount = 250},
        },
    },
    Pets1200 = {
        Order = 29,
        ItemName = "1,200 Pets",
        RewardImage = "rbxassetid://106039558204203",
        RewardImageText = "5%",
        RewardText = "+5% Crowns",
        PetsNeeded = 1200,
        CrownsMulti = 0.05,
    },
    Pets1250 = {
        Order = 30,
        ItemName = "1,250 Pets",
        RewardImage = "rbxassetid://71617887503312",
        RewardImageText = "x300",
        RewardText = "300 Shiny Charms",
        PetsNeeded = 1250,
        Rewards = {
            {Type = "Charms", Name = "ShinyCharms", Amount = 300},
        },
    },
    Pets1300 = {
        Order = 31,
        ItemName = "1,300 Pets",
        RewardImage = "rbxassetid://95486626166242",
        RewardImageText = "5%",
        RewardText = "+5% Luck",
        PetsNeeded = 1300,
        LuckMulti = 0.05,
    },
    Pets1350 = {
        Order = 32,
        ItemName = "1,350 Pets",
        RewardImage = "rbxassetid://105011545011210",
        RewardImageText = "x300",
        RewardText = "300 Rainbow Charms",
        PetsNeeded = 1350,
        Rewards = {
            {Type = "Charms", Name = "RainbowCharms", Amount = 300},
        },
    },
    Eggs150 = {
        Order = 33,
        ItemName = "150 Eggs",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        EggsNeeded = 150,
        PetXPMulti = 0.05,
    },
    Pets1400 = {
        Order = 34,
        ItemName = "1,400 Pets",
        RewardImage = "rbxassetid://83444341871101",
        RewardImageText = "x50",
        RewardText = "50 Pet Storage",
        PetsNeeded = 1400,
        PetStorage = 50,
    },
    Pets1450 = {
        Order = 35,
        ItemName = "1,450 Pets",
        RewardImage = "rbxassetid://118922823178453",
        RewardImageText = "x300",
        RewardText = "300 Void Charms",
        PetsNeeded = 1450,
        Rewards = {
            {Type = "Charms", Name = "VoidCharms", Amount = 300},
        },
    },
    Pets1500 = {
        Order = 36,
        ItemName = "1,500 Pets",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        PetsNeeded = 1500,
        PetXPMulti = 0.05,
    },
    Pets1550 = {
        Order = 37,
        ItemName = "1,550 Pets",
        RewardImage = "rbxassetid://71617887503312",
        RewardImageText = "x400",
        RewardText = "400 Shiny Charms",
        PetsNeeded = 1550,
        Rewards = {
            {Type = "Charms", Name = "ShinyCharms", Amount = 400},
        },
    },
    Eggs175 = {
        Order = 38,
        ItemName = "175 Eggs",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        EggsNeeded = 175,
        PetXPMulti = 0.05,
    },
    Pets1600 = {
        Order = 39,
        ItemName = "1,600 Pets",
        RewardImage = "rbxassetid://122924317901658",
        RewardImageText = "5%",
        RewardText = "+5% Coins",
        PetsNeeded = 1600,
        CoinsMulti = 0.05,
    },
    Pets1650 = {
        Order = 40,
        ItemName = "1,650 Pets",
        RewardImage = "rbxassetid://105011545011210",
        RewardImageText = "x400",
        RewardText = "400 Rainbow Charms",
        PetsNeeded = 1650,
        Rewards = {
            {Type = "Charms", Name = "RainbowCharms", Amount = 400},
        },
    },
    Pets1700 = {
        Order = 41,
        ItemName = "1,700 Pets",
        RewardImage = "rbxassetid://106039558204203",
        RewardImageText = "5%",
        RewardText = "+5% Crowns",
        PetsNeeded = 1700,
        CrownsMulti = 0.05,
    },
    Pets1750 = {
        Order = 42,
        ItemName = "1,750 Pets",
        RewardImage = "rbxassetid://118922823178453",
        RewardImageText = "x400",
        RewardText = "400 Void Charms",
        PetsNeeded = 1750,
        Rewards = {
            {Type = "Charms", Name = "VoidCharms", Amount = 400},
        },
    },
    Pets1800 = {
        Order = 43,
        ItemName = "1,800 Pets",
        RewardImage = "rbxassetid://95486626166242",
        RewardImageText = "5%",
        RewardText = "+5% Luck",
        PetsNeeded = 1800,
        LuckMulti = 0.05,
    },
    Eggs200 = {
        Order = 44,
        ItemName = "200 Eggs",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        EggsNeeded = 200,
        PetXPMulti = 0.05,
    },
    Pets1850 = {
        Order = 45,
        ItemName = "1,850 Pets",
        RewardImage = "rbxassetid://71617887503312",
        RewardImageText = "x500",
        RewardText = "500 Shiny Charms",
        PetsNeeded = 1850,
        Rewards = {
            {Type = "Charms", Name = "ShinyCharms", Amount = 500},
        },
    },
    Pets1900 = {
        Order = 46,
        ItemName = "1,900 Pets",
        RewardImage = "rbxassetid://83444341871101",
        RewardImageText = "x50",
        RewardText = "50 Pet Storage",
        PetsNeeded = 1900,
        PetStorage = 50,
    },
    Pets1950 = {
        Order = 47,
        ItemName = "1,950 Pets",
        RewardImage = "rbxassetid://105011545011210",
        RewardImageText = "x500",
        RewardText = "500 Rainbow Charms",
        PetsNeeded = 1950,
        Rewards = {
            {Type = "Charms", Name = "RainbowCharms", Amount = 500},
        },
    },
    Pets2000 = {
        Order = 48,
        ItemName = "2,000 Pets",
        RewardImage = "rbxassetid://127877308020658",
        RewardImageText = "+1",
        RewardText = "+1 Pet Hatch",
        PetsNeeded = 2000,
        ExtraHatch = 1,
    },
    Eggs225 = {
        Order = 49,
        ItemName = "225 Eggs",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        EggsNeeded = 225,
        PetXPMulti = 0.05,
    },
    Pets2050 = {
        Order = 50,
        ItemName = "2,050 Pets",
        RewardImage = "rbxassetid://118922823178453",
        RewardImageText = "x500",
        RewardText = "500 Void Charms",
        PetsNeeded = 2050,
        Rewards = {
            {Type = "Charms", Name = "VoidCharms", Amount = 500},
        },
    },
    Pets2100 = {
        Order = 51,
        ItemName = "2,100 Pets",
        RewardImage = "rbxassetid://112519380742885",
        RewardImageText = "5%",
        RewardText = "+5% Strength",
        PetsNeeded = 2100,
        StrengthMulti = 0.05,
    },
    Pets2150 = {
        Order = 52,
        ItemName = "2,150 Pets",
        RewardImage = "rbxassetid://71617887503312",
        RewardImageText = "x600",
        RewardText = "600 Shiny Charms",
        PetsNeeded = 2150,
        Rewards = {
            {Type = "Charms", Name = "ShinyCharms", Amount = 600},
        },
    },
    Pets2200 = {
        Order = 53,
        ItemName = "2,200 Pets",
        RewardImage = "rbxassetid://106039558204203",
        RewardImageText = "5%",
        RewardText = "+5% Crowns",
        PetsNeeded = 2200,
        CrownsMulti = 0.05,
    },
    Eggs250 = {
        Order = 54,
        ItemName = "250 Eggs",
        RewardImage = "rbxassetid://94421359141174",
        RewardImageText = "5%",
        RewardText = "+5% Pet XP",
        EggsNeeded = 250,
        PetXPMulti = 0.05,
    },
    Pets2250 = {
        Order = 55,
        ItemName = "2,250 Pets",
        RewardImage = "rbxassetid://105011545011210",
        RewardImageText = "x600",
        RewardText = "600 Rainbow Charms",
        PetsNeeded = 2250,
        Rewards = {
            {Type = "Charms", Name = "RainbowCharms", Amount = 600},
        },
    },
    Pets2300 = {
        Order = 56,
        ItemName = "2,300 Pets",
        RewardImage = "rbxassetid://95486626166242",
        RewardImageText = "5%",
        RewardText = "+5% Luck",
        PetsNeeded = 2300,
        LuckMulti = 0.05,
    },
}
local v2 = {
    Order = 57,
    ItemName = "2,350 Pets",
    RewardImage = "rbxassetid://118922823178453",
    RewardImageText = "x600",
    RewardText = "600 Void Charms",
    PetsNeeded = 2350,
}
local v3 = {}
local v4 = {Type = "Charms", Name = "VoidCharms", Amount = 600}
v3[1] = v4
v2.Rewards = v3
v1.Pets2350 = v2
v2 = {
    Order = 58,
    ItemName = "2,400 Pets",
    RewardImage = "rbxassetid://83444341871101",
    RewardImageText = "x50",
    RewardText = "50 Pet Storage",
    PetsNeeded = 2400,
    PetStorage = 50,
}
v1.Pets2400 = v2
u0.Items = v1
function u0.IsEggCompleted(p1, p2, p3) -- Line: 840 -- upvalues: PetsInfo (val)
    local v1 = PetsInfo.Eggs[p2]
    if not v1 then
        return
    end
    local Odds = v1.Odds
    local v2 = nil
    local v3 = nil
    for i, j in Odds, v2, v3 do
        if not (PetsInfo:IsSecretPet(i)) and not (table.find(p3.Index, i)) then
            return false
        end
    end
    return true
end
function u0.GetNumEggsCompleted(p1, p2) -- Line: 862 -- upvalues: PetsInfo (val), u0 (val)
    local v1 = 0
    local v2 = 0
    local Eggs = PetsInfo.Eggs
    local v3 = nil
    local v4 = nil
    for i, j in Eggs, v3, v4 do
        v1 = v1 + 1
        if u0:IsEggCompleted(i, p2) then
            v2 = v2 + 1
        end
    end
    return v2, v1
end
function u0.GetNumPetsDiscovered(p1, p2) -- Line: 877 -- upvalues: PetsInfo (val)
    local v1 = 0
    local v2 = 0
    local Pets = PetsInfo.Pets
    local v3 = nil
    local v4 = nil
    for i, j in Pets, v3, v4 do
        v1 = v1 + 1
        if table.find(p2.Index, i) then
            v2 = v2 + 1
        end
    end
    return v2, v1
end
return u0
