
for color_key, color_data in pairs(adaptation_lib.basic_colors) do
  adaptation_lib.add_item("wool_"..color_key, {
      name = "mcl_wool:"..color_key,
      lists = {"wool"},
      
      color = color_key,
    }, adaptation_lib.auto_take_tile_sounds)
end

adaptation_lib.add_mod("wool", {
    name = "mcl_wool",
    prefix = "mcl_wool:",
    clear_colored_wool_recipe = function (color)
      minetest.clear_craft({
          type = "shapeless",
          --output = "wool:"..color,
          recipe = {"mcl_dye:"..color, "mcl_wool:white"},
        })
    end,
  })

