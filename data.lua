local itemname = "steel-chest"
local graphics = "__billys-steel-chest__/graphics/"

local item = data.raw["item"][itemname]
item.icon = graphics.."icon.png"

local entity = data.raw["container"][itemname]
entity.icon = graphics.."icon.png"
entity.circuit_wire_connection_point = {
    wire = {
        green = util.by_pixel(13, -11),
        red = util.by_pixel(13, -14)
    },
    shadow = {
        green = util.by_pixel(31, 4),
        red = util.by_pixel(31, 1)
    }
}
entity.picture = {layers = {
    {
        filename = graphics.."entity.png",
        priority = "extra-high",
        width = 32,
        height = 37,
        shift = util.by_pixel(0, -2),
        hr_version = {
            filename = graphics.."hr-entity.png",
            priority = "extra-high",
            width = 64,
            height = 74,
            shift = util.by_pixel(0, -2),
            scale = 0.5
        }
    },
    {
        filename = graphics.."shadow.png",
        priority = "extra-high",
        width = 51,
        height = 25,
        shift = util.by_pixel(10, 4),
        draw_as_shadow = true,
        hr_version = {
            filename = graphics.."hr-shadow.png",
            priority = "extra-high",
            width = 102,
            height = 50,
            shift = util.by_pixel(10, 4),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}}

local remnants = data.raw["corpse"][itemname.."-remnants"]
remnants.icon = graphics.."icon.png"
remnants.animation = {layers = {
    {
        filename = graphics.."remnants.png",
        line_length = 1,
        width = 32,
        height = 37,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        hr_version = {
            filename = graphics.."hr-remnants.png",
            line_length = 1,
            width = 64,
            height = 74,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0, -2),
            scale = 0.5
        }
    },
    {
        filename = graphics.."shadow.png",
        draw_as_shadow = true,
        line_length = 1,
        width = 51,
        height = 25,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(10, 4),
        hr_version = {
            filename = graphics.."hr-shadow.png",
            draw_as_shadow = true,
            line_length = 1,
            width = 102,
            height = 50,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(10, 4),
            scale = 0.5
        }
    },
}}
