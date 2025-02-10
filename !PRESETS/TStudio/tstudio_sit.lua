---------------------------------------------------------------------------------
---@SIT ---------------------- Copy and Paste the map preset in config/sit.lua --
---------------------------------------------------------------------------------
---@diagnostic disable

---@description TROPICAL HEIGHTS
[`johanni_skybar_asset_chair01`] = {
    maxseats = 1,
    anim = {scenario = "PROP_HUMAN_SEAT_BENCH"},
    seats = {
        [1] = {offset = vec4(0.0, 0.0, 0.5, 90.0)},
    },
},
[`johanni_skybar_asset_ext_sofa01`] = {
    maxseats = 3,
    anim = {scenario = "PROP_HUMAN_SEAT_BENCH"},
    seats = {
        [1] = {offset = vec4(-0.4, 0.0, 0.4, 270.0)},
        [2] = {offset = vec4(-0.35, -0.9, 0.4, 300.0)},
        [3] = {offset = vec4(-0.35, 0.9, 0.4, 240.0)},
    },
},
[`johanni_skybar_asset_sofa02`] = {
    maxseats = 3,
    anim = {scenario = "PROP_HUMAN_SEAT_BENCH"},
    seats = {
        [1] = {offset = vec4(-0.7, 0.0, 0.5, 270.0)},
        [2] = {offset = vec4(-0.4, -0.9, 0.5, 300.0)},
        [3] = {offset = vec4(-0.4, 0.9, 0.5, 240.0)},
    },
},