
adaptation_lib.player.formspec_inv = "list[current_player;main;0.5,3;10,4;]"

adaptation_lib.player.attach_player = function(player_name)
    hades_player.player_attached[player_name] = true
  end
adaptation_lib.player.deattach_player = function(player_name)
    hades_player.player_attached[player_name] = nil
  end
adaptation_lib.player.set_animation = function(player, animation, frames)
    hades_player.set_animation(player, animation, frames)
  end

