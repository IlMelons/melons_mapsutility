if GetResourceState("ox_core") ~= "started" then return end

AddEventHandler("ox:playerLoaded", function()
    TriggerEvent("melons_mapsutility:client:Setup")
end)