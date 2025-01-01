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
        debug = false,
        plans = {
            [1] = {
                title = "Floor 2",
                description = "Bar Open Space",
                zones = {
                    [1] = {coords = vec4(315.8117, -913.8285, 57.70, 134.00), size = vec3(2.3, 2.3, 2.5)},
                },
                locked = false,
                item = false,
                jobs = false,
            },
            [2] = {
                title = "Floor 1",
                description = "Bar & Pool",
                zones = {
                    [1] = {coords = vec4(310.7336, -916.7942, 53.10, 70.00), size = vec3(2.3, 2.3, 2.5)},
                },
                locked = false,
                item = false,
                jobs = false,
            },
            [3] = {
                title = "Ground Floor",
                description = "Lobby",
                zones = {
                    [1] = {coords = vec4(310.7352, -916.7856, 29.80, 70.00), size = vec3(2.3, 2.3, 2.5)},
                },
                locked = false,
                item = false,
                jobs = false,
            },
        },
    },
---------------------------------------------------------------------------------
---@BLIPS ------------------ Copy and Paste the map preset in config/blips.lua --
---------------------------------------------------------------------------------
    ["tropicalheights"] = {
        label = "Tropical Heights",
        coords = vec3(285.2625, -919.7712, 29.1527),
        display = 2,
        sprite = 93,
        color = 27,
        alpha = 255,
        scale = 0.8,
    },
    ["lsia"] = {
        label = "LS International Airport",
        coords = vec3(-1042.53, -2745.48, 21.36),
        display = 2,
        sprite = 307,
        color = 3,
        alpha = 255,
        scale = 0.8,
    },
    ["alamoisland"] = {
        label = "Alamo Island",
        coords = vec3(228.17, 4006.36, 50.15),
        display = 2,
        sprite = 836,
        color = 27,
        alpha = 255,
        scale = 0.8,
    },
---------------------------------------------------------------------------------
}