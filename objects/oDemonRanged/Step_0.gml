var player_x = oPlayer.x;
var player_y = oPlayer.y;

// Calculate the angle between the player and the enemy object
var angle_to_player = point_direction(x, y, player_x, player_y);

var angle_diff = abs(direction - angle_to_player && angle_to_player <= range);
if (angle_diff < 45 || angle_diff > 315) {
    oPlayer.health -= damage;
} 