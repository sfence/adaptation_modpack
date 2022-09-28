
-- common/apple tree
adaptation_lib.add_item("wood_common", {
    name = "hades_trees:wood",
    tile = "default_wood.png",
    sounds = hades_sounds.node_sound_wood_defaults(),
    lists = {"wood"},
  })

adaptation_lib.add_item("tree_common", {
    name = "hades_trees:tree",
    sounds = hades_sounds.node_sound_wood_defaults(),
    lists = {"tree"},
  })

adaptation_lib.add_item("leaves_common", {
    name = "hades_trees:leaves",
    sounds = hades_sounds.node_sound_leaves_defaults(),
    lists = {"leaves"},
  })

-- jungle tree
adaptation_lib.add_item("wood_jungle", {
    name = "hades_trees:wood",
    tile = "default_junglewood.png",
    sounds = hades_sounds.node_sound_wood_defaults(),
    lists = {"wood"},
  })

adaptation_lib.add_item("tree_jungle", {
    name = "hades_trees:tree",
    sounds = hades_sounds.node_sound_wood_defaults(),
    lists = {"tree"},
  })

adaptation_lib.add_item("leaves_jungle", {
    name = "hades_trees:leaves",
    sounds = hades_sounds.node_sound_leaves_defaults(),
    lists = {"leaves"},
  })

-- colored wood
for color_key, color_data in pairs(adaptation_lib.basic_colors) do
  adaptation_lib.add_item("wood_colored_"..color_key, {
      name = "hades_trees:colwood_"..color_key,
      lists = {"wood_colored"},
      
      color = color_key,
    })
end

