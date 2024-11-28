if GetResourceState("ox_inventory") ~= "started" then return end

local ox_inventory = exports.ox_inventory

function GetItemCount(source, item)
    local count = ox_inventory:Search(source, "count", item)
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