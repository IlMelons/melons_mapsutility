Blips = {}
local Settings = lib.load("config.blips")

function RemoveBlips()
    for _, blip in ipairs(Blips) do
        RemoveBlip(blip)
    end
    Blips = {}
end

function CreateBlips()
    for _, blipData in pairs(Settings.Blips) do
        if blipData.coords then
            local coord = blipData.coords
            local blip = AddBlipForCoord(coord.x, coord.y, coord.z)
            SetBlipAlpha(blip, blipData.alpha or 255)
            SetBlipSprite(blip, blipData.sprite or 1)
            SetBlipColour(blip, blipData.color or 0)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(blipData.label or "Blip")
            EndTextCommandSetBlipName(blip)
            SetBlipDisplay(blip, blipData.display or 2)
            SetBlipScale(blip, blipData.scale or 1.0)
            Blips[#Blips + 1] = blip
        elseif blipData.points then
            for _, point in ipairs(blipData.points) do
                local blip = AddBlipForCoord(point.x, point.y, point.z)
                SetBlipAlpha(blip, blipData.alpha or 255)
                SetBlipSprite(blip, blipData.sprite or 1)
                SetBlipColour(blip, blipData.color or 0)
                SetBlipAsShortRange(blip, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(blipData.label or "Blip")
                EndTextCommandSetBlipName(blip)
                SetBlipDisplay(blip, blipData.display or 2)
                SetBlipScale(blip, blipData.scale or 1.0)
                Blips[#Blips + 1] = blip
            end
        end
    end
end

function SetupBlips()
    RemoveBlips()
    CreateBlips()
end