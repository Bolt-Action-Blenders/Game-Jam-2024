var enemy_x = oDemon.x;
var enemy_y = oDemon.y;

// Calculate the angle between the player and the enemy object
var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

var angle_diff = abs(direction - angle_to_enemy && distance_to_enemy <= 2);
if (angle_diff < 45 || angle_diff > 315) {
    oDemon.health -= damage + blood;
} 
