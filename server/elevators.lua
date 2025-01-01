lib.callback.register("melons_mapsutility:server:HasAccess", function(source, planData)
    local hasItem, hasJob = true, true

    if planData.item ~= false then
        if inventory.GetItemCount(source, planData.item) < 1 then
            hasItem = false
        end
    end

    if planData.jobs ~= false then
        hasJob = server.HasGroups(source, planData.jobs)
    end
    return hasItem and hasJob
end)