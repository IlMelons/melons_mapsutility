---------------------------------------------------------------------------------
------------------------------ PRESETS AJAXON MAPS ------------------------------
---------------------------------------------------------------------------------
---@diagnostic disable
return {
---------------------------------------------------------------------------------
---@ELEVATORS ---------- Copy and Paste the map preset in config/elevators.lua --
---------------------------------------------------------------------------------
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
                item = "",
            },
            [2] = {
                title = "Floor 2",
                description = "Offices & Rooms",
                zones = {
                    [1] = {coords = vec4(-465.4464, -1025.4980, 33.90, 90.00), size = vec3(2.3, 2.3, 2.3)},
                    [2] = {coords = vec4(-465.5065, -1028.9021, 33.90, 90.00), size = vec3(2.3, 2.3, 2.3)},
                },
                locked = false,
                item = "",
            },
            [3] = {
                title = "Floor 1",
                description = "Rehabilitation & Rooms",
                zones = {
                    [1] = {coords = vec4(-465.4464, -1025.4980, 29.30, 90.00), size = vec3(2.3, 2.3, 2.3)},
                    [2] = {coords = vec4(-465.5065, -1028.9021, 29.30, 90.00), size = vec3(2.3, 2.3, 2.3)},
                },
                locked = false,
                item = "",
            },
            [4] = {
                title = "Ground Floor",
                description = "Store & Pharmacy & Exams Rooms",
                zones = {
                    [1] = {coords = vec4(-465.4464, -1025.4980, 24.50, 90.00), size = vec3(2.3, 2.3, 2.3)},
                    [2] = {coords = vec4(-465.5065, -1028.9021, 24.50, 90.00), size = vec3(2.3, 2.3, 2.3)},
                },
                locked = false,
                item = "",
            },
            [5] = {
                title = "Floor -1",
                description = "Garage",
                zones = {
                    [1] = {coords = vec4(-465.4464, -1025.4980, 19.90, 90.00), size = vec3(2.3, 2.3, 2.3)},
                    [2] = {coords = vec4(-465.5065, -1028.9021, 19.90, 90.00), size = vec3(2.3, 2.3, 2.3)},
                },
                locked = false,
                item = "",
            },
        },
    },
---------------------------------------------------------------------------------
---@BLIPS ------------------ Copy and Paste the map preset in config/blips.lua --
---------------------------------------------------------------------------------
    ["aldorehospital"] = {
        label = "Aldore Hospital",
        coords = vec3(-520.4157, -965.5557, 23.5280),
        display = 2,
        sprite = 61,
        color = 25,
        alpha = 255,
        scale = 0.8,
    },
    ["coffeeshop"] = {
        label = "Coffee Shop",
        coords = vec3(182.2147, -228.4833, 54.1307),
        display = 2,
        sprite = 93,
        color = 25,
        alpha = 255,
        scale = 0.8,
    },
    ["bunker"] = {
        label = "Bunker",
        coords = vec3(-1510.9072, 1993.3486, 66.9607),
        display = 2,
        sprite = 310,
        color = 25,
        alpha = 255,
        scale = 0.8,
    },
    ["koispa"] = {
        label = "Koi Spa",
        coords = vec3(-1042.1746, -1471.9698, 5.0603),
        display = 2,
        sprite = 197,
        color = 25,
        alpha = 255,
        scale = 0.8,
    },
    ["musclegymnasium"] = {
        label = "Muscle Gymnasium",
        coords = vec3(114.7588, 335.3813, 112.1266),
        display = 2,
        sprite = 311,
        color = 25,
        alpha = 255,
        scale = 0.8,
    },
    ["burtonlsc"] = {
        label = "Burton LSC",
        coords = vec3(-363.6193, -121.5192, 38.6962),
        display = 2,
        sprite = 311,
        color = 25,
        alpha = 255,
        scale = 0.8,
    },
---------------------------------------------------------------------------------
}
