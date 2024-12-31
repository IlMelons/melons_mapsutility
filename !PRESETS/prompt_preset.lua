---------------------------------------------------------------------------------
------------------------------ PRESETS PROMPT MAPS ------------------------------
---------------------------------------------------------------------------------
---@diagnostic disable
return {
---------------------------------------------------------------------------------
---@ELEVATORS ---------- Copy and Paste the map preset in config/elevators.lua --
---------------------------------------------------------------------------------
    ["rockfordpolicedepartment"] = {
        label = "Rockford Police Department",
        debug = false,
        plans = {
            [1] = {
                title = "Rooftop",
                description = "",
                zones = {
                    [1] = {coords = vec4(-579.8720, -130.9076, 52.30, 293.00), size = vec3(2.5, 2.5, 2.4)},
                },
                locked = false,
                item = "",
            },
            [2] = {
                title = "Floor 2",
                description = "",
                zones = {
                    [1] = {coords = vec4(-573.1172, -135.9981, 48.20, 112.50), size = vec3(2.5, 2.5, 2.4)},
                },
                locked = false,
                item = "",
            },
            [3] = {
                title = "Floor 1",
                description = "Meeting Room & Patients Rooms",
                zones = {
                    [1] = {coords = vec4(-572.9024, -135.9096, 43.10, 112.50), size = vec3(2.5, 2.5, 2.4)},
                },
                locked = false,
                item = "",
            },
            [4] = {
                title = "Ground Floor",
                description = "",
                zones = {
                    [1] = {coords = vec4(-572.9712, -129.1511, 38.70, 292.50), size = vec3(2.5, 2.5, 2.4)},
                },
                locked = false,
                item = "",
            },
        },
    },
---------------------------------------------------------------------------------
---@BLIPS ------------------ Copy and Paste the map preset in config/blips.lua --
---------------------------------------------------------------------------------
    ["rockfordpolicedepartment"] = {
        label = "Rockford Police Department",
        coords = vec3(-557.58, -141.39, 38.42),
        display = 2,
        sprite = 60,
        color = 38,
        alpha = 255,
        scale = 0.8,
    },
---------------------------------------------------------------------------------
}