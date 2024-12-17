if GetResourceState("qs-inventory") ~= "started" then return end

local qs_inventory = exports["qs-inventory"]

function GetItemCount(source, items)
    local item_count = 0
    if type(items) == "table" then
        for _, item in pairs(items) do
            local count = qs_inventory:GetItemTotalAmount(source, item)
            item_count += count
        end
        return item_count
    else
        local count = qs_inventory:GetItemTotalAmount(source, items)
        return count
    end
end