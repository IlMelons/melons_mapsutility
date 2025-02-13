local ConfigIPL = lib.load("config.ipl")

local function UnloadIPL(iplList)
    for _, ipl in ipairs(ConfigIPL.IPL[iplList]) do
        RemoveIpl(ipl)
    end
end

local function LoadIPL(iplList)
    for _, ipl in ipairs(ConfigIPL.IPL[iplList]) do
        RequestIpl(ipl)
    end
end

local function CreateIPLZone(zoneData)
    local zone = lib.zones.box({
        coords = vec3(zoneData.coords.x, zoneData.coords.y, zoneData.coords.z),
        size = zoneData.size,
        rotation = zoneData.coords.w,
        onEnter = function()
            LoadIPL(zoneData.ipl)
        end,
        onExit = function()
            UnloadIPL(zoneData.ipl)
        end,
        debug = zoneData.debug,
    })
end

local function RemoveAllIPL()
    for _, iplList in pairs(ConfigIPL.IPL) do
        for _, ipl in ipairs(iplList) do
            RemoveIpl(ipl)
        end
    end
end

local function CreateIPLZones()
    for _, zoneData in pairs(ConfigIPL.Zones) do
        CreateIPLZone(zoneData)
    end
end

local function EditEntitySet(mapName, setName, action)
    local iplList = ConfigIPL.EntitySets[mapName][setName]
    if not iplList then return end
    if action == "load" then
        LoadIPL(iplList)
    elseif action == "unload" then
        UnloadIPL(iplList)
    end
end
RegisterNetEvent("melons_mapsutility:client:EditEntitySet", EditEntitySet)

local function LoadDefaultEntitySets()
    for _, entityData in pairs(ConfigIPL.EntitySets) do
        LoadIPL(entityData["default"])
    end
end

function SetupIPL()
    RemoveAllIPL()
    CreateIPLZones()
    LoadDefaultEntitySets()
end