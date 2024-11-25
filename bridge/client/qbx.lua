if GetResourceState("qbx_core") ~= "started" then return end

AddEventHandler("QBCore:Client:OnPlayerLoaded", function()
    TriggerEvent("melons_mapsutility:client:Setup")
end)