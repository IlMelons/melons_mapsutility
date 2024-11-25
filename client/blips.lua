Blips = {}
local Settings = lib.load("config.blips")

function RemoveBlips()
    for _, blip in ipairs(Blips) do
        RemoveBlip(blip)
    end
    Blips = {}
end

function CreateBlips()
    for _, v in pairs(Settings.Blips) do
        local blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
        SetBlipAlpha(blip, v.alpha)
        SetBlipSprite(blip, v.sprite)
        SetBlipColour(blip, v.color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.label)
        EndTextCommandSetBlipName(blip)
        SetBlipDisplay(blip, v.display)
        SetBlipScale(blip, v.scale)
        Blips[#Blips + 1] = blip
    end
end

function SetupBlips()
    RemoveBlips()
    CreateBlips()
end