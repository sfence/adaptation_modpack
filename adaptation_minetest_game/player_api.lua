
adaptation_lib.player.attach_player = function(player_name)
    player_api.player_attached[player_name] = true
  end
adaptation_lib.player.deattach_player = function(player_name)
    player_api.player_attached[player_name] = nil
  end
adaptation_lib.player.set_animation = function(player_name, animation, frames)
    player_api.set_animation(player, animation, frames)
  end

