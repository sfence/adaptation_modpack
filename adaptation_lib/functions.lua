
function adaptation_lib.auto_take_by_param(data, def, param)
  for _,key in pairs(param) do
    data[key] = def[key]
  end
end

function adaptation_lib.auto_take_tile_sounds(data, def)
  data.sounds = def.sounds
  data.tiles = def.tiles
  data.tile = def.tiles and def.tiles[1]
end

