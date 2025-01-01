if GetResourceState("es_extended") ~= "started" then return end

ESX = exports["es_extended"]:getSharedObject()

---@diagnostic disable: duplicate-set-field
server = {}

function server.HasGroups(source, groups)
    local xPlayer = ESX.GetPlayerFromId(source)
    if type(groups) == "table" then
        for _, group in pairs(groups) do
            if xPlayer.job.name == group then
                return true
            end
        end
    elseif type(groups) == "string" then
        if xPlayer.job.name == groups then
            return true
        end
    end

    return false
end