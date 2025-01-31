Blips = {}
local ConfigBlips = lib.load("config.blips")

function RemoveBlips()
    for _, blip in ipairs(Blips) do
        RemoveBlip(blip)
    end
    Blips = {}
end

local function CreateBlip(data)
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
    Blips[#Blips + 1] = blip
end
exports("CreateBlip", CreateBlip)

local function CreateMultiBlips(data)
    for _, point in ipairs(data.points) do
        CreateBlip({
            coords = point,
            alpha = data.alpha,
            sprite = data.sprite,
            color = data.color,
            label = data.label,
            display = data.display,
            scale = data.scale,
        })
    end
end
exports("CreateMultiBlips", CreateMultiBlips)

function CreateBlips()
    for _, blipData in pairs(ConfigBlips.Blips) do
        if blipData.coords then
            CreateBlip(blipData)
        elseif blipData.points then
            CreateMultiBlips(blipData)
        end
    end
end

function SetupBlips()
    RemoveBlips()
    CreateBlips()
end