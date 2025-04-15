local Config = lib.load("config.blips")
local Blips = {}

local function DeleteBlip(blipID)
    RemoveBlip(Blips[blipID])
    Blips[blipID] = nil
end
exports("DeleteBlip", DeleteBlip)

local function CreateBlip(blipID, data)
    local blip = AddBlipForCoord(data.coords.x, data.coords.y, data.coords.z)
    SetBlipAlpha(blip, data.alpha or 255)
    SetBlipSprite(blip, data.sprite or 1)
    SetBlipColour(blip, data.color or 0)
    SetBlipAsShortRange(blip, true)
    SetBlipDisplay(blip, data.display or 2)
    SetBlipScale(blip, data.scale or 1.0)

    if data.label then
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(data.label)
        EndTextCommandSetBlipName(blip)
    end

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

local function CreateBlips()
    for blipID, blipData in pairs(Config) do
        if blipData.coords then
            CreateBlip(blipID, blipData)
        elseif blipData.points then
            CreateMultiBlips(blipID, blipData)
        end
    end
end

function SetupBlips()
    CreateBlips()
end