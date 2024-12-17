if GetResourceState("core_inventory") ~= "started" then return end

local core_inventory = exports.core_inventory

function GetItemCount(source, items)
    local count = core_inventory:getItemCount(source, items)

    return count
end