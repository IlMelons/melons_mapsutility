---------------------------------------------------------------------------------
---@ELEVATORS ---------- Copy and Paste the map preset in config/elevators.lua --
---------------------------------------------------------------------------------
---@diagnostic disable

["medical-center-vespucci"] = {
    label = "Medical Center Vespucci",
    debug = false,
    plans = {
        [1] = {
            title = "Ground Floor",
            description = "",
            zones = {
                [1] = {coords = vec4(-801.4337, -1245.7173, 7.00, 50.00), size = vec3(2.3, 2.3, 2.5)},
                [2] = {coords = vec4(-799.2352, -1243.0962, 7.00, 50.00), size = vec3(2.3, 2.3, 2.5)},
                [3] = {coords = vec4(-838.7696, -1251.4101, 7.00, 320.00), size = vec3(2.3, 2.3, 2.5)},
            },
            locked = false,
            item = false,
            jobs = false,
        },
        [2] = {
            title = "Floor 2",
            description = "",
            zones = {
                [1] = {coords = vec4(-801.2869, -1245.4534, 11.50, 50.00), size = vec3(2.3, 2.3, 2.5)},
                [2] = {coords = vec4(-799.2352, -1243.0962, 11.50, 50.00), size = vec3(2.3, 2.3, 2.5)},
                [3] = {coords = vec4(-836.6617, -1254.2118, 13.40, 320.00), size = vec3(2.3, 2.3, 2.5)},
            },
            locked = false,
            item = false,
            jobs = false,
        },
    },
},
["tropical-heights"] = {
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