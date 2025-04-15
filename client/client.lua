function Notify(title, msg, type)
    lib.notify({
        title = title,
        description = msg,
        position = "top",
        type = type or "inform",
    })
end

AddEventHandler("onClientResourceStart", function(resourceName)
    local scriptName = cache.resource or GetCurrentResourceName()
    if resourceName ~= scriptName then return end
    SetupBlips()
    SetupElevators()
    SetupSeats()
    SetupIPL()
end)
