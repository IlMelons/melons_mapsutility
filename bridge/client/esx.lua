if GetResourceState("es_extended") ~= "started" then return end

AddEventHandler("esx:playerLoaded", function()
    TriggerEvent("melons_mapsutility:client:Setup")
end)