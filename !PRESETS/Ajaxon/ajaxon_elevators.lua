---------------------------------------------------------------------------------
---@ELEVATORS ---------- Copy and Paste the map preset in config/elevators.lua --
---------------------------------------------------------------------------------
---@diagnostic disable

["aldorehospital"] = {
    label = "Aldore Hospital",
    debug = false,
    plans = {
        [1] = {
            title = "Rooftop",
            description = "Garden & Helipad",
            zones = {
                [1] = {coords = vec4(-468.5999, -1024.2511, 38.50, 90.00), size = vec3(2.3, 2.3, 2.3)},
                [2] = {coords = vec4(-468.6347, -1027.4954, 38.50, 90.00), size = vec3(2.3, 2.3, 2.3)},
            },
            locked = false,
            item = false,
            jobs = false,
        },
        [2] = {
            title = "Floor 2",
            description = "Offices & Rooms",
            zones = {
                [1] = {coords = vec4(-465.4464, -1025.4980, 33.90, 90.00), size = vec3(2.3, 2.3, 2.3)},
                [2] = {coords = vec4(-465.5065, -1028.9021, 33.90, 90.00), size = vec3(2.3, 2.3, 2.3)},
            },
            locked = false,
            item = false,
            jobs = false,
        },
        [3] = {
            title = "Floor 1",
            description = "Rehabilitation & Rooms",
            zones = {
                [1] = {coords = vec4(-465.4464, -1025.4980, 29.30, 90.00), size = vec3(2.3, 2.3, 2.3)},
                [2] = {coords = vec4(-465.5065, -1028.9021, 29.30, 90.00), size = vec3(2.3, 2.3, 2.3)},
            },
            locked = false,
            item = false,
            jobs = false,
        },
        [4] = {
            title = "Ground Floor",
            description = "Store & Pharmacy & Exams Rooms",
            zones = {
                [1] = {coords = vec4(-465.4464, -1025.4980, 24.50, 90.00), size = vec3(2.3, 2.3, 2.3)},
                [2] = {coords = vec4(-465.5065, -1028.9021, 24.50, 90.00), size = vec3(2.3, 2.3, 2.3)},
            },
            locked = false,
            item = false,
            jobs = false,
        },
        [5] = {
            title = "Floor -1",
            description = "Garage",
            zones = {
                [1] = {coords = vec4(-465.4464, -1025.4980, 19.90, 90.00), size = vec3(2.3, 2.3, 2.3)},
                [2] = {coords = vec4(-465.5065, -1028.9021, 19.90, 90.00), size = vec3(2.3, 2.3, 2.3)},
            },
            locked = false,
            item = false,
            jobs = false,
        },
    },
},