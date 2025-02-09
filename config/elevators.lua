return {
    Elevators = {
        ["fib"] = {
            label = "FIB Headquarter",
            debug = false,
            plans = {
                [1] = {
                    title = "Ground Floor",
                    description = "Entrance and Desk",
                    zones = {
                        [1] = {coords = vec4(136.0807, -761.7469, 46.00, 160.00), size = vec3(2.0, 2.0, 2.5)}
                    },
                    locked = false,
                    item = false,                   -- false to disable check or "item" or {"item1", "item2"}
                    jobs = false,                   -- false to disable check or "job" or{"job1", "job2"}
                },
                [2] = {
                    title = "Floor 47",
                    description = "Legal Affairs",
                    zones = {
                        [1] = {coords = vec4(136.0939, -761.8068, 234.50, 160.00), size = vec3(2.0, 2.0, 2.5)}
                    },
                    locked = false,
                    item = false,
                    jobs = false,
                },
                [3] = {
                    title = "Floor 49",
                    description = "Communications",
                    zones = {
                        [1] = {coords = vec4(136.0755, -761.7881, 242.50, 160.00), size = vec3(2.0, 2.0, 2.5)}
                    },
                    locked = false,
                    item = false,
                    jobs = false,
                }
            },
        },
    },
}
