function Notify(title, msg, type)
    lib.notify({
        title = title,
        description = msg,
        position = "top",
        type = type or "inform",
    })
end

function InitMapsUtility()
    SetupBlips()
    SetupElevators()
end

AddEventHandler("onClientResourceStart", function(resourceName)
    if resourceName ~= cache.resource then return end
    InitMapsUtility()
end)

AddEventHandler("onResourceStart", function(resourceName)
    if resourceName ~= cache.resource then return end
    InitMapsUtility()
end)