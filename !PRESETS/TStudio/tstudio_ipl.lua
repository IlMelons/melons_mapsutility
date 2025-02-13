---------------------------------------------------------------------------------
---@IPL ---------------------- Copy and Paste the map preset in config/ipl.lua --
---------------------------------------------------------------------------------
---@diagnostic disable

---@description IPL
["legionsquare1"] = {"tstudio_legionsquare_ext_amphi_default"},
["legionsquare2"] = {"tstudio_legionsquare_ext_amphi_band"},
["legionsquare3"] = {"tstudio_legionsquare_ext_amphi_dj"},
["legionsquare4"] = {"tstudio_legionsquare_ext_amphi_speaker"},
["legionsquare5"] = {
    "tstudio_legionsquare_ext_amphi_default",
    "tstudio_legionsquare_ext_amphi_band",
    "tstudio_legionsquare_ext_amphi_dj",
    "tstudio_legionsquare_ext_amphi_speaker",
},

---@description EntitySets
["tstudio_legionsquare"] = {
    ["default"] = "legionsquare1",
    ["band"] = "legionsquare2",
    ["dj"] = "legionsquare3",
    ["speaker"] = "legionsquare4",
    ["cinema"] = "legionsquare5",
}