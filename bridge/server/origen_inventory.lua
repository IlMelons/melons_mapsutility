if GetResourceState("origen_inventory") ~= "started" then return end

local origen_inventory = exports.origen_inventory

function GetItemCount(source, items)
    local item_count = 0
    if type(items) == "table" then
        for _, item in pairs(items) do
            local count = origen_inventory:GetItemTotalAmount(source, item)
            item_count += count
        end
        return item_count
    else
        local count = origen_inventory:GetItemTotalAmount(source, items)
        return count
    end
end