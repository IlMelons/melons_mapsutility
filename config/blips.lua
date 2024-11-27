--------------------------------------------------------------------------------------------------------------------------------------
------------------------ BLIPS CONFIGURATION ------------------------------------------------ BLIPS DISPLAY SETTINGS -----------------
--------------------------------------------------------------------------------------------------------------------------------------
--- label | "blipname"                                                      ------                                                 ---
--- coords | vector3(x, y, z)                                               ------ 0 = Not Displays                                ---
--- display | 0 or 2 or 3 or 5 or 8                                         ------ 2 = Map and Minimap (Selectable on Map)         ---
--- sprite | https://docs.fivem.net/docs/game-references/blips/#blips       ------ 3 = Only Map                                    ---
--- color | https://docs.fivem.net/docs/game-references/blips/#blip-colors  ------ 5 = Only Minimap                                ---
--- alpha | 0 to 255 number (255 is opaque)                                 ------ 8 = Map and Minimap (Not selectable on Map)     ---
--- scale | 0.1 to 1.0 number                                               ------                                                 ---
--------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------
return {
    Blips = {
        ["fib"] = {
            label = "FIB Headquarter",
            coords = vector3(136.08, -761.74, 46.00),
            display = 2,
            sprite = 60,
            color = 40,
            alpha = 255,
            scale = 0.8,
        },
    },
}