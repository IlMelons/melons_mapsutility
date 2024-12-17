if GetResourceState("ps-inventory") ~= "started" then return end

local ps_inventory = exports["ps-inventory"]

function GetItemCount(source, items)
    local count = ps_inventory:GetItemCount(source, items)

    return count
end