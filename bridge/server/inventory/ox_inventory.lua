if GetResourceState("ox_inventory") ~= "started" then return end

local ox_inventory = exports.ox_inventory

---@diagnostic disable: duplicate-set-field
inventory = {}

function inventory.GetItemCount(source, items)
    local count = ox_inventory:Search(source, "count", items)
    local item_count = 0
    if type(count) == "table" then
        for k, v in pairs(count) do
            item_count += v
        end
        return item_count
    else
        return count
    end
end