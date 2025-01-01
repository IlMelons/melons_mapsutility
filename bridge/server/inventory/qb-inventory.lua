if GetResourceState("qb-inventory") ~= "started" then return end

local qb_inventory = exports["qb-inventory"]

---@diagnostic disable: duplicate-set-field
inventory = {}

function inventory.GetItemCount(source, items)
    local count = qb_inventory:GetItemCount(source, items)

    return count
end