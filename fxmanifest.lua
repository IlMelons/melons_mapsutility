fx_version "cerulean"
game "gta5"
lua54 "yes"

name "melons_mapsutility"
description "An optimized resource for Blips and Elevators management"
author "IlMelons"
version "1.9.3"
repository "https://github.com/IlMelons/melons_mapsutility"

ox_lib "locale"

shared_scripts {
    "@ox_lib/init.lua",
}

client_scripts {
    "bridge/client/**/*.lua",
    "client/*.lua",
}

server_scripts {
    "bridge/server/**/*.lua",
    "server/*.lua",
}

files {
    "config/*.lua",
    "locales/*.json",
}
