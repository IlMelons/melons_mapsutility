if GetResourceState("tgiann-inventory") ~= "started" then return end

local tgiann_inventory = exports["tgiann-inventory"]

---@diagnostic disable: duplicate-set-field
inventory = {}

function inventory.GetItemCount(source, items)
    local count = tgiann_inventory:GetItemCount(source, items)

    return count
end