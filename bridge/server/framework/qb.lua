if GetResourceState("qb-core") ~= "started" then return end

QBCore = exports["qb-core"]:GetCoreObject()

---@diagnostic disable: duplicate-set-field
server = {}

function server.HasGroups(source, groups)
    local Player = QBCore.Functions.GetPlayer(source)
    if type(groups) == "table" then
        for _, group in pairs(groups) do
            if Player.PlayerData.job.name == group then
                return true
            end
        end
    elseif type(groups) == "string" then
        if Player.PlayerData.job.name == groups then
            return true
        end
    end
    return false
end