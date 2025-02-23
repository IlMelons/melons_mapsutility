Blips = {}
local ConfigBlips = lib.load("config.blips")

function RemoveBlips()
    for _, blip in pairs(Blips) do
        RemoveBlip(blip)
    end
    Blips = {}
end

local function DeleteBlip(blipID)
    RemoveBlip(Blips[blipID])
    Blips[blipID] = nil
end
exports("DeleteBlip", DeleteBlip)

local function DeleteMultiBlips(blipID)
    local num = 1
    local toRemove = {}

    while true do
        local currentID = ("%s%d"):format(blipID, num)
        if not Blips[currentID] then break end

        toRemove[num] = currentID
        num += 1
    end

    for _, name in ipairs(toRemove) do
        DeleteBlip(name)
    end
end
exports("DeleteMultiBlips", DeleteMultiBlips)

local function CreateBlip(blipID, data)
    local blip = AddBlipForCoord(data.coords.x, data.coords.y, data.coords.z)
    SetBlipAlpha(blip, data.alpha or 255)
    SetBlipSprite(blip, data.sprite or 1)
    SetBlipColour(blip, data.color or 0)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(data.label or "Blip")
    EndTextCommandSetBlipName(blip)
    SetBlipDisplay(blip, data.display or 2)
    SetBlipScale(blip, data.scale or 1.0)
    Blips[blipID] = blip
end
exports("CreateBlip", CreateBlip)

local function CreateMultiBlips(blipID, data)
    local num = 1
    for _, point in ipairs(data.points) do
        local notDuplicatedID = ("%s%d"):format(blipID, num)
        CreateBlip(notDuplicatedID, {
            coords = point,
            alpha = data.alpha,
            sprite = data.sprite,
            color = data.color,
            label = data.label,
            display = data.display,
            scale = data.scale,
        })
        num += 1
    end
end
exports("CreateMultiBlips", CreateMultiBlips)

function CreateBlips()
    for blipID, blipData in pairs(ConfigBlips.Blips) do
        if blipData.coords then
            CreateBlip(blipID, blipData)
        elseif blipData.points then
            CreateMultiBlips(blipID, blipData)
        end
    end
end

function SetupBlips()
    RemoveBlips()
    CreateBlips()
end