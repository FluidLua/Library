local u0 = {}
local u1 = {}
local v1 = {PlaceId = 3823781113, IsTesting = false, PlaceType = "Normal"}
u1[1] = v1
u1[2] = {PlaceId = 96522925012827, IsTesting = false, PlaceType = "TradingPlaza"}
u1[3] = {PlaceId = 3914483733, IsTesting = true, PlaceType = "Normal"}
u1[4] = {PlaceId = 80721279700146, IsTesting = true, PlaceType = "TradingPlaza"}
local u6 = nil
local v2 = u1
local v3 = nil
local v4 = nil
for i, j in v2, v3, v4 do
    if j.PlaceId == game.PlaceId then
        u6 = j
        break
    end
end
u0.TestPlace = u6.IsTesting
if not u0.TestPlace then
    v2 = "Save01"
else
    v2 = "Save18"
end
u0.DataVersionKey = v2
u0.Version = "v3.61"
u0.LastRobuxShopDT = DateTime.fromUniversalTime(2026, 7, 14).UnixTimestamp
u0.CurrentEventName = nil
u0.CurrentEventWeekId = nil
u0.CurrentEventWeekEnds = DateTime.fromUniversalTime(2026, 7, 10, 12).UnixTimestamp + 14400
u0.EventMerchantActive = false
u0.EventWheelActive = false
u0.EventObbyActive = false
u0.EventPassActive = false
u0.ClanWeekId = "48"
u0.ClanWeekEnds = DateTime.fromUniversalTime(2026, 8, 28, 12).UnixTimestamp + 14400
u0.AnticheatEnabled = true
u0.TradingEnabled = true
function u0.IsEventWeekActive(p1) -- Line: 84 -- upvalues: u0 (val)
    local v1 = DateTime.now().UnixTimestamp < u0.CurrentEventWeekEnds
    return v1
end
function u0.IsClanWeekActive(p1) -- Line: 88 -- upvalues: u0 (val)
    local v1 = DateTime.now().UnixTimestamp < u0.ClanWeekEnds
    return v1
end
function u0.GetStartPlaceId(p1) -- Line: 92 -- upvalues: u1 (val), u0 (val)
    local v1 = u1
    local v2 = nil
    local v3 = nil
    for i, j in v1, v2, v3 do
        if j.PlaceType == "Normal" and j.IsTesting == u0.TestPlace then
            return j.PlaceId
        end
    end
end
function u0.GetPlaceType(p1) -- Line: 100 -- upvalues: u6 (ref)
    return u6.PlaceType
end
function u0.GetPlaceTypeFromPlaceId(p1, p2) -- Line: 105 -- upvalues: u1 (val)
    local v1 = u1
    local v2 = nil
    local v3 = nil
    for i, j in v1, v2, v3 do
        if j.PlaceId == p2 then
            return j.PlaceType
        end
    end
end
function u0.GetPlaceIdWithType(p1, p2) -- Line: 113 -- upvalues: u6 (ref), u1 (val)
    local v1 = u1
    local v2 = nil
    local v3 = nil
    for i, j in v1, v2, v3 do
        if j.IsTesting == u6.IsTesting and j.PlaceType == p2 then
            return j.PlaceId
        end
    end
end
function u0.IsTradingPlaza(p1) -- Line: 123 -- upvalues: u0 (val)
    local v1 = u0:GetPlaceType() == "TradingPlaza"
    return v1
end
return u0
