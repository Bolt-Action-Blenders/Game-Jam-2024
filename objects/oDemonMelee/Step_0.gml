var player_x = oPlayer.x;
var player_y = oPlayer.y;
var last_action_time = 0; 
   show_debug_message("ffffffffffffffffffffffffffffffffffffffffffffff")
    show_debug_message(baseDamage[4])
move_towards_point(player_x, player_y, walksp);

if (place_meeting(x, y, oPlayer)) {
	if (global.time - last_action_time >= cooldown_time) {
    oPlayer.health -= (damage * level);
	last_action_time = global.time;
    move_towards_point(x, y, 0); 
}}
