
adaptation_lib.add_item("water", {
    name = "fl_liquids:water_source",
    tile = {
        animation = {
          aspect_w = 16,
          aspect_h = 16,
          length = 2,
          type = "vertical_frames"
        },
        name = "farlands_water_source_animated.png",
        backface_culling = false
      },
      tile_noanim = "farlands_water.png",
  })
adaptation_lib.add_item("water_river", {
    name = "fl_liquids:river_water_source",
    tile = {
        animation = {
          aspect_w = 16,
          aspect_h = 16,
          length = 2,
          type = "vertical_frames"
        },
        name = "farlands_river_water_source_animated.png",
        backface_culling = false
      },
      tile_noanim = "farlands_river_water.png",
  })

adaptation_lib.add_item("bucket_empty", {
    name = "fl_bucket:bucket",
  })

adaptation_lib.add_item("bucket_water", {
    name = "fl_bucket:bucket_water",
    lists = {"bucket_water"},
  })
adaptation_lib.add_item("bucket_river_water", {
    name = "fl_bucket:bucket_river_water",
    lists = {"bucket_water"},
  })

