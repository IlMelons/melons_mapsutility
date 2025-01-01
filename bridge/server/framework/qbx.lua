if GetResourceState("qbx_core") ~= "started" then return end

QBX = exports.qbx_core

---@diagnostic disable: duplicate-set-field
server = {}

function server.HasGroups(source, groups)
    return QBX:HasGroup(source, groups)
end