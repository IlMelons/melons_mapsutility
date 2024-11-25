lib.callback.register("melons_mapsutility:server:HasItem", function(source, item)
    if GetItemCount(source, item) > 0 then
        return true
    else
        return false
    end
end)