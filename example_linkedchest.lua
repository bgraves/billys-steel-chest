local linked_chest = util.table.deepcopy(data.raw["container"]["wooden-chest"])
linked_chest.type = "linked-container"
linked_chest.name = "linked-chest"
linked_chest.minable.result = "linked-chest"
linked_chest.circuit_wire_connection_point = nil
linked_chest.circuit_connector_sprites = nil
linked_chest.circuit_wire_max_distance = nil
linked_chest.gui_mode = "admins" -- all, none, admins
linked_chest.icon = "__base__/graphics/icons/linked-chest-icon.png"
linked_chest.picture =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/linked-chest/linked-chest.png",
      priority = "extra-high",
      width = 34,
      height = 38,
      frame_count = 7,
      shift = util.by_pixel(0, -2),
      hr_version =
      {
        filename = "__base__/graphics/entity/linked-chest/hr-linked-chest.png",
        priority = "extra-high",
        width = 66,
        height = 74,
        frame_count = 7,
        shift = util.by_pixel(0, -2),
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/linked-chest/linked-chest-shadow.png",
      priority = "extra-high",
      width = 56,
      height = 24,
      repeat_count = 7,
      shift = util.by_pixel(12, 5),
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/linked-chest/hr-linked-chest-shadow.png",
        priority = "extra-high",
        width = 112,
        height = 46,
        repeat_count = 7,
        shift = util.by_pixel(12, 4.5),
        draw_as_shadow = true,
        scale = 0.5
      }
    }
  }
}
data:extend({linked_chest})