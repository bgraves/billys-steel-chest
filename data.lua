local itemname = "steel-chest"
local graphics = "__billys-steel-chest__/graphics/"

local item = data.raw["item"][itemname]
item.icon = graphics.."icon.png"

local entity = data.raw["container"][itemname]
entity.icon = graphics.."icon.png"
entity.picture = {layers = {
    {
        filename = graphics.."entity.png",
        priority = "extra-high",
        width = 34,
        height = 38,
        shift = util.by_pixel(0, -2),
        hr_version = {
            filename = graphics.."hr-entity.png",
            priority = "extra-high",
            width = 66,
            height = 74,
            shift = util.by_pixel(0, -2),
            scale = 0.5
        }
    },
    {
        filename = graphics.."shadow.png",
        priority = "extra-high",
        width = 56,
        height = 24,
        repeat_count = 7,
        shift = util.by_pixel(12, 5),
        draw_as_shadow = true,
        hr_version = {
            filename = graphics.."hr-shadow.png",
            priority = "extra-high",
            width = 112,
            height = 46,
            repeat_count = 7,
            shift = util.by_pixel(12, 4.5),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}}

local remnants = data.raw["corpse"][itemname.."-remnants"]
remnants.icon = graphics.."icon.png"
remnants.animation = {
    filename = graphics.."remnants.png",
    line_length = 1,
    width = 60,
    height = 42,
    frame_count = 1,
    direction_count = 1,
    shift = util.by_pixel(10.5, -2.5),
    hr_version = {
        filename = graphics.."hr-remnants.png",
        line_length = 1,
        width = 116,
        height = 82,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(10, -3),
        scale = 0.5
    }
}
