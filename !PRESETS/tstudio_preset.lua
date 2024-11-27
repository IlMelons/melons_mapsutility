---------------------------------------------------------------------------------
------------------------------ PRESETS TSTUDIO MAPS -----------------------------
---------------------------------------------------------------------------------
---@diagnostic disable
return {
---------------------------------------------------------------------------------
---@ELEVATORS ---------- Copy and Paste the map preset in config/elevators.lua --
---------------------------------------------------------------------------------
    ["tropicalheights"] = {
        label = "Tropical Heights",
        plans = {
            [1] = {
                title = "Floor 2",
                description = "Bar Open Space",
                teleport = vec4(315.8117, -913.8285, 57.7000, 134.00),
                size = vec3(2.3, 2.3, 2.5),
                locked = false,
                item = "",
            },
            [2] = {
                title = "Floor 1",
                description = "Bar & Pool",
                teleport = vec4(310.7336, -916.7942, 53.10, 70.00),
                size = vec3(2.3, 2.3, 2.5),
                locked = false,
                item = "",
            },
            [3] = {
                title = "Ground Floor",
                description = "Lobby",
                teleport = vec4(310.7352, -916.7856, 29.80, 70.00),
                size = vec3(2.3, 2.3, 2.5),
                locked = false,
                item = "",
            },
        },
    },
---------------------------------------------------------------------------------
---@BLIPS ------------------ Copy and Paste the map preset in config/blips.lua --
---------------------------------------------------------------------------------
    ["tropicalheights"] = {
        label = "Tropical Heights",
        coords = vector3(285.2625, -919.7712, 29.1527),
        display = 2,
        sprite = 93,
        color = 27,
        alpha = 255,
        scale = 0.8,
    },
---------------------------------------------------------------------------------
}