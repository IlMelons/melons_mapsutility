---------------------------------------------------------------------------------
---@ELEVATORS ---------- Copy and Paste the map preset in config/elevators.lua --
---------------------------------------------------------------------------------
---@diagnostic disable

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