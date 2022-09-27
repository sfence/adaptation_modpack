
adaptation_lib.add_item("wood_common", {
    name = "fl_trees:apple_plank",
    tile = "farlands_apple_planks.png",
    sounds = fl_trees.sounds.wood(),
    lists = {"wood"},
  })
adaptation_lib.add_item("wood_jungle", {
    name = "fl_trees:jungle_plank",
    tile = "farlands_jungletree_planks.png",
    sounds = fl_trees.sounds.wood(),
    lists = {"wood"},
  })
adaptation_lib.add_item("wood_pine", {
    name = "fl_trees:pine_plank",
    tile = "farlnads_pine_planks.png",
    sounds = fl_trees.sounds.wood(),
    lists = {"wood"},
  })

adaptation_lib.add_item("tree_common", {
    name = "fl_trees:apple_trunk",
    sounds = fl_trees.sounds.wood(),
    lists = {"tree"},
  })
adaptation_lib.add_item("tree_jungle", {
    name = "fl_trees:jungletree_trunk",
    sounds = fl_trees.sounds.wood(),
    lists = {"tree"},
  })
adaptation_lib.add_item("tree_pine", {
    name = "fl_trees:pine_trunk",
    sounds = fl_trees.sounds.wood(),
    lists = {"tree"},
  })

adaptation_lib.add_item("leaves_common", {
    name = "fl_trees:apple_leaves",
    sounds = sounds and sounds.node_sound_leaves() or nil,
    lists = {"leaves"},
  })
adaptation_lib.add_item("leaves_jungle", {
    name = "fl_trees:jungletree_leaves",
    sounds = sounds and sounds.node_sound_leaves() or nil,
    lists = {"leaves"},
  })
adaptation_lib.add_item("needle_pine", {
    name = "fl_trees:pine_leaves",
    sounds = sounds and sounds.node_sound_leaves() or nil,
    lists = {"needle"},
  })

