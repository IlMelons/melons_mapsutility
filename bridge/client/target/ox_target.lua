---@diagnostic disable: lowercase-global, duplicate-set-field

if GetResourceState("ox_target") ~= "started" then return end

local ox_target = exports.ox_target

target = {}

function target.AddModels(models)
    ox_target:addModel(models, {
        {
            label = locale("target.sit"),
            name = "melons_mapsutility:sit",
            icon = "fa-solid fa-chair",
            canInteract = function(entity)
                return DoesEntityExist(entity)
            end,
            event = "melons_mapsutility:client:Sit",
        }
    })
end