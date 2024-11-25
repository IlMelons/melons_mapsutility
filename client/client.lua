function Notify(title, msg, type)
    lib.notify({
        title = title,
        description = msg,
        position = "top",
        type = type or "inform",
    })
end

RegisterNetEvent("melons_mapsutility:client:Setup", function()
    SetupBlips()
    SetupElevators()
end)

AddEventHandler("onResourceStart", function(resource)
    if resource ~= cache.resource then return end
    SetupBlips()
    SetupElevators()
end)