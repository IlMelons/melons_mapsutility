if GetResourceState("codem-inventory") ~= "started" then return end

local codem_inventory = exports["codem-inventory"]

function GetItemCount(source, items)
    local item_count = 0
    if type(items) == "table" then
        for _, item in pairs(items) do
            local count = codem_inventory:GetItemsTotalAmount(source, item)
            item_count += count
        end
        return item_count
    else
        local count = codem_inventory:GetItemsTotalAmount(source, items)
        return count
    end
end