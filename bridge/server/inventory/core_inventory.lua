if GetResourceState("core_inventory") ~= "started" then return end

local core_inventory = exports.core_inventory

---@diagnostic disable: duplicate-set-field
inventory = {}

function inventory.GetItemCount(source, items)
    local count = core_inventory:getItemCount(source, items)

    return count
end