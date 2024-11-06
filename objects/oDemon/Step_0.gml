player_x = obj_player.x;
player_y = obj_player.y;

move_towards_point(player_x, player_y, walksp);

if (place_meeting(x, y, obj_player)) {
    oPlayer.health -= damage;

    audio_play_sound(snd_damage, 1, false);
   
    move_towards_point(x, y, 0); 
}
