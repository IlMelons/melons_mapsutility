local ConfigElevators = lib.load("config.elevators")

Elevators = {}

function ShowElevatorMenu(elevatorPlans, elevatorLabel)
    local menuOptions = {}
    for i = 1, #elevatorPlans do
        local planOption = {
            title = elevatorPlans[i].title,
            description = elevatorPlans[i].description,
            icon = elevatorPlans[i].locked and "fas fa-lock" or "fas fa-lock-open",
            iconColor = elevatorPlans[i].locked and "#FF0000" or "#008000",
            onSelect = function()
                local hasItem = lib.callback.await("melons_mapsutility:server:HasItem", false, elevatorPlans[i].item)
                if elevatorPlans[i].locked and not hasItem then return Notify(locale("notify.title"), locale("notify.need_item"), "error") end
                DoScreenFadeOut(1000)
                Wait(2000)
                SetEntityCoords(PlayerPedId(), elevatorPlans[i].teleport.x, elevatorPlans[i].teleport.y, elevatorPlans[i].teleport.z, false, false, false, false)
                SetEntityHeading(PlayerPedId(), elevatorPlans[i].teleport.w)
                Wait(2000)
                DoScreenFadeIn(1000)
                Notify(locale("notify.title"), locale("notify.reached_plan"), "success")
            end,
            metadata = {
                {label = locale("menu.access"), value = (elevatorPlans[i].locked and locale("menu.locked") or locale("menu.unlocked"))},
            },
        }
        menuOptions[#menuOptions+1] = planOption
    end

    local menuId = "elevator_menu"
    lib.registerContext({
        id = menuId,
        title = elevatorLabel,
        options = menuOptions,
        onExit = function()
        end
    })

    lib.showContext(menuId)
end

function CreateElevator(elevatorName, elevatorData)
    local elevatorPlans = {}
    for _, planData in pairs(elevatorData.plans) do
        local elevatorPlan = lib.zones.box({
            coords = vec3(planData.teleport.x, planData.teleport.y, planData.teleport.z),
            size = vec3(planData.size.x, planData.size.y, planData.size.z),
            rotation = planData.teleport.w,
            onEnter = function()
                lib.showTextUI(ConfigElevators.TextUI, {position = "left-center", icon = "fa-solid fa-building"})
            end,
            onExit = function()
                lib.hideTextUI()
            end,
            inside = function()
                if IsControlJustReleased(0, 38) then
                    ShowElevatorMenu(elevatorData.plans, elevatorData.label)
                end
            end,
            debug = ConfigElevators.Elevators[elevatorName].debug,
        })
        elevatorPlans[planData.title] = elevatorPlan
    end
    Elevators[elevatorName] = elevatorPlans
end

function SetupElevators()
    for elevatorName, elevatorData in pairs(ConfigElevators.Elevators) do
        CreateElevator(elevatorName, elevatorData)
    end
end
