local itemname = "steel-chest"
local graphics = "__modern-steel-chest__/graphics/"
local item = data.raw.item[itemname]
local entity = data.raw.container[itemname]
item.icon = graphics.."icon.png"
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
        frame_count = 7,
        shift = util.by_pixel(0, -2),
        hr_version = {
            filename = graphics.."hr-entity.png",
            priority = "extra-high",
            width = 64,
            height = 74,
            frame_count = 7,
            shift = util.by_pixel(0, -2),
            scale = 0.5
        }
    },
    {
        filename = graphics.."shadow.png",
        priority = "extra-high",
        width = 51,
        height = 25,
        repeat_count = 7,
        shift = util.by_pixel(10, 4),
        draw_as_shadow = true,
        hr_version = {
            filename = graphics.."hr-shadow.png",
            priority = "extra-high",
            width = 102,
            height = 50,
            repeat_count = 7,
            shift = util.by_pixel(10, 4),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}}
