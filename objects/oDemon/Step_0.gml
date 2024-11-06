var player_x = oPlayer.x;
var player_y = oPlayer.y;

move_towards_point(player_x, player_y, walksp);

if (place_meeting(x, y, oPlayer)) {
    oPlayer.health -= (damage * level) / oPlayer.armour;

    audio_play_sound(snd_damage, 1, false);
   
    move_towards_point(x, y, 0); 
}
