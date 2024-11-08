var player_x = oPlayer.x;
var player_y = oPlayer.y;
var last_action_time = 0; // last time action was performed

move_towards_point(player_x, player_y, walksp);

if (place_meeting(x, y, oPlayer)) {
	if (global.time - last_action_time >= cooldown_time) {
    oPlayer.health -= (damage * level) / oPlayer.armour;
	last_action_time = global.time;
    audio_play_sound(snd_damage, 1, false);
    move_towards_point(x, y, 0); 
}}
