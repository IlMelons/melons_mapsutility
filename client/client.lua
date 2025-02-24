function Notify(title, msg, type)
    lib.notify({
        title = title,
        description = msg,
        position = "top",
        type = type or "inform",
    })
end

function InitMapsUtility()
    SetupSeats()
    SetupBlips()
    SetupElevators()
    SetupIPL()
end

AddEventHandler("onClientResourceStart", function(resourceName)
    local scriptName = cache.resource or GetCurrentResourceName()
    if resourceName ~= scriptName then return end
    InitMapsUtility()
end)