var player_x = oPlayer.x;
var player_y = oPlayer.y;
var cooldown_time = 2;  // cooldown time in seconds
var last_action_time = 0; // last time action was performed

// Calculate the angle between the player and the enemy object
var angle_to_player = point_direction(x, y, player_x, player_y);

var angle_diff = abs(direction - angle_to_player && angle_to_player <= range);
if (angle_diff < 45 || angle_diff > 315) {
if (global.time - last_action_time >= cooldown_time) {
	last_action_time = global.time;
    oPlayer.health -= damage;
} }