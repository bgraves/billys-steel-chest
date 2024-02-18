data.raw.item["steel-chest"].icon = "modern-steel-chest/graphics/icons/modern-steel-chest.png"
data.raw.container["steel-chest"].icon = "modern-steel-chest/graphics/icons/modern-steel-chest-icon.png"
data.raw.container["steel-chest"].picture =
{
  layers =
  {
    {
      filename = "modern-steel-chest/graphics/entity/modern-steel-chest/modern-steel-chest.png",
      priority = "extra-high",
      width = 34,
      height = 38,
      frame_count = 7,
      shift = util.by_pixel(0, -2),
      hr_version =
      {
        filename = "modern-steel-chest/graphics/entity/modern-steel-chest/hr-modern-steel-chest.png",
        priority = "extra-high",
        width = 66,
        height = 74,
        frame_count = 7,
        shift = util.by_pixel(0, -2),
        scale = 0.5
      }
    },
    {
      filename = "modern-steel-chest/graphics/entity/modern-steel-chest/modern-steel-chest-shadow.png",
      priority = "extra-high",
      width = 56,
      height = 24,
      repeat_count = 7,
      shift = util.by_pixel(12, 5),
      draw_as_shadow = true,
      hr_version =
      {
        filename = "modern-steel-chest/graphics/entity/modern-steel-chest/hr-modern-steel-chest-shadow.png",
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
