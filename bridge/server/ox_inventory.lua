if GetResourceState("ox_inventory") ~= "started" then return end

local ox_inventory = exports.ox_inventory

function GetItemCount(source, item)
    local count = ox_inventory:Search(source, "count", item, metadata)
    return count
end