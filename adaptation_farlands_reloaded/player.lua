
adaptation_lib.player.formspec_inv = "list[current_player;main;1.5,3;8,4;]"

adaptation_lib.player.attach_player = function(player_name)
    --fl_player.player_attached[player_name] = true
  end
adaptation_lib.player.deattach_player = function(player_name)
    --fl_player.player_attached[player_name] = nil
  end
adaptation_lib.player.set_animation = function(player, animation, frames)
    if fl_player.animations[animation] then
      player:set_animation(fl_player.animations[animation], frames)
    end
  end

