Skip to content
FluidLua
Library
Repository navigation
Code
Issues
Agents
Security and quality
Insights
Settings
Files
Go to file
t
T
Assets
Docs
Game Data/Saber Simulator
PetInfo
Eggs.lua
Enchants.lua
PetShopInfo.lua
Pets.lua
InfiniteMath.lua
PetDexRewardInfo.lua
Suffixes.lua
UpdateInfo.lua
Fluid.lua
q2-95.lua
Library/Game Data/Saber Simulator/PetInfo
/
PetInfo.lua
in
main

Edit

Preview
Indent mode

Spaces
Indent size

2
Line wrap mode

No wrap
Editing PetInfo.lua file contents
  1
  2
  3
  4
  5
  6
  7
  8
  9
 10
 11
 12
 13
 14
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25
 26
 27
 28
 29
 30
 31
 32
 33
 34
 35
 36
 37
 38
 39
 40
 41
 42
 43
 44
 45
 46
 47
 48
 49
 50
 51
 52
 53
 54
 55
 56
 57
 58
 59
 60
 61
 62
 63
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
u0.PetShopInfo = loadstring(game:Httpget("https://raw.githubusercontent.com/FluidLua/Library/refs/heads/main/Game%20Data/Saber%20Simulator/PetInfo/PetShopInfo.lua"))()
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

Use Control + Shift + m to toggle the tab key moving focus. Alternatively, use esc then tab to move to the next interactive element on the page.
 
