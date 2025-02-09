local ConfigSit = lib.load("config.sit")
local IsSitting = false

function SetupSeats()
    local models = {}
    for model in pairs(ConfigSit.Models) do
        models[#models+1] = model
    end
    target.AddModels(models)
end

local function RotateOffset(offset, heading)
    local rad = math.rad(heading)
    local cosH = math.cos(rad)
    local sinH = math.sin(rad)

    local newX = offset.x * cosH - offset.y * sinH
    local newY = offset.x * sinH + offset.y * cosH

    return vec3(newX, newY, offset.z)
end

local function IsSeatOccupied(entity)
    local model = GetEntityModel(entity)
    local configModel = ConfigSit.Models[model]
    if not configModel then return end

    local entityNetID = NetworkGetNetworkIdFromEntity(entity)
    local verifySeats = lib.callback.await("melons_mapsutility:server:GetModelSeats", 200, entityNetID)

    if verifySeats == 0 then
        return false, 1
    end

    if verifySeats == configModel.maxseats then
        return true, false
    else
        return false, verifySeats + 1
    end
end

local function NetworkChair(entity, action)
    if not entity then return false end

    local isNetwork = NetworkGetEntityIsNetworked(entity)
    local isLocal = NetworkGetEntityIsLocal(entity)

    if action == "register" and isLocal then
        NetworkRegisterEntityAsNetworked(entity)
        return true
    end
    if action == "unregister" and isNetwork then
        NetworkUnregisterNetworkedEntity(entity)
        return true
    end
end

local function PlaySit(entity, seatID)
    IsSitting = entity
    local entityNetID = NetworkGetNetworkIdFromEntity(entity)
    TriggerServerEvent("melons_mapsutility:server:ModelRegistration", entityNetID, seatID)

    local playerPed = cache.ped or PlayerPedId()
    local model = GetEntityModel(entity)
    local configModel = ConfigSit.Models[model]

    local entityCoords = GetEntityCoords(entity)
    local entityHeading = GetEntityHeading(entity)
    local seatOffset = configModel.seats[seatID].offset
    local rotatedOffset = RotateOffset(seatOffset, entityHeading)
    local position = entityCoords + rotatedOffset
    local heading = entityHeading + seatOffset.w
    SetEntityCoords(playerPed, position.x, position.y, position.z, true, false, false, false)

    if configModel.anim.scenario then
        TaskStartScenarioAtPosition(playerPed, configModel.anim.scenario, position.x, position.y, position.z, heading, 0, true, true)
    end

    local getup = lib.addKeybind({
        name = "get-up",
        description = "Used for get up from a seat",
        defaultKey = "E",
        disabled = true,
        onReleased = function(self)
            lib.hideTextUI()
            ClearPedTasksImmediately(playerPed)
            seatID -= 1
            TriggerServerEvent("melons_mapsutility:server:ModelRegistration", entityNetID, seatID)
            if seatID == 0 then
                NetworkChair(entity, "unregister")
            end
            self:disable(true)
            IsSitting = false
        end
    })

    lib.showTextUI(locale("textui.sit"))
    getup:disable(false)
end

RegisterNetEvent("melons_mapsutility:client:Sit", function(data)
    if not data.entity then return end
    if IsSitting and IsSitting == data.entity then return end

    local model = GetEntityModel(data.entity)
    local configModel = ConfigSit.Models[model]
    if not configModel then return end

    ---@description NETWORK SECTION FOR AVOID ERRORS
    local networkSuccess = NetworkChair(data.entity, "register")
    if networkSuccess then
        local seatOccupied, seatID = IsSeatOccupied(data.entity)
        if seatOccupied then return Notify(locale("notify.title"), locale("notify.seat_occupied"), "error") end

        PlaySit(data.entity, seatID)
    else
        return lib.print.debug("Unable to network entity")
    end
end)