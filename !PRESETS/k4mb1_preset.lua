---------------------------------------------------------------------------------
------------------------------ PRESETS K4MB1 MAPS -------------------------------
---------------------------------------------------------------------------------
---@diagnostic disable
return {
---------------------------------------------------------------------------------
---@ELEVATORS ---------- Copy and Paste the map preset in config/elevators.lua --
---------------------------------------------------------------------------------
    ["diamondcasino"] = {
        label = "Diamond Casino",
        debug = false,
        plans = {
            [1] = {
                title = "Rooftop",
                description = "Rooftop",
                zones = {
                    [1] = {coords = vec4(970.0466, 46.3923, 112.80, 58.00), size = vec3(2.3, 2.3, 2.5)},
                    [2] = {coords = vec4(968.4493, 43.8885, 112.80, 58.00), size = vec3(2.3, 2.3, 2.5)},
                },
                locked = false,
                item = false,
                jobs = false,
            },
            [2] = {
                title = "Hotel Floor 2",
                description = "Hotel Rooms",
                zones = {
                    [1] = {coords = vec4(952.9809, 42.7661, 105.00, 328.00), size = vec3(2.3, 2.3, 2.5)},
                    [2] = {coords = vec4(950.4611, 44.4943, 105.00, 328.00), size = vec3(2.3, 2.3, 2.5)},
                },
                locked = false,
                item = false,
                jobs = false,
            },
            [3] = {
                title = "Hotel Floor 1",
                description = "Hotel Rooms",
                zones = {
                    [1] = {coords = vec4(952.9946, 42.9454, 100.80, 328.00), size = vec3(2.3, 2.3, 2.5)},
                    [2] = {coords = vec4(950.4966, 44.4541, 100.80, 328.00), size = vec3(2.3, 2.3, 2.5)},
                },
                locked = false,
                item = false,
                jobs = false,
            },
            [4] = {
                title = "Ground Floor",
                description = "Games Room",
                zones = {
                    [1] = {coords = vec4(952.4318, 41.8299, 81.30, 328.00), size = vec3(2.3, 2.3, 2.5)},
                    [2] = {coords = vec4(949.8458, 43.4567, 81.30, 328.00), size = vec3(2.3, 2.3, 2.5)},
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
    ["diamondcasino"] = {
        label = "Diamond Casino",
        coords = vec3(924.2483, 47.3929, 81.0000),
        display = 2,
        sprite = 679,
        color = 0,
        alpha = 255,
        scale = 0.8,
    },
---------------------------------------------------------------------------------
}
