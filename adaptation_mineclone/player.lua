
adaptation_lib.player.formspec_inv = 
  "list[current_player;main;0,4.5;9,3;9]"..
  mcl_formspec.get_itemslot_bg(0,4.5,9,3)..
  "list[current_player;main;0,7.74;9,1;]"..
  mcl_formspec.get_itemslot_bg(0,7.74,9,1)

adaptation_lib.player.attach_player = function(player_name)
    mcl_player.player_attached[player_name] = true
  end
adaptation_lib.player.deattach_player = function(player_name)
    mcl_player.player_attached[player_name] = nil
  end
adaptation_lib.player.set_animation = function(player, animation, frames)
    mcl_player.player_set_animation(player, animation, frames)
  end

