var enemy_x = oDemonMelee.x;
var enemy_y = oDemonMelee.y;

// Calculate the angle between the player and the enemy object
var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

var angle_diff = abs(direction - angle_to_enemy && distance_to_enemy <= range);
if (angle_diff < 45 || angle_diff > 315) {
    oDemonMelee.health -= damage + blood;
} 
 if (oDemonMelee.health <= 0){
        with (instance_place(oDemonMelee.x, oDemonMelee.y, obj_item)) {
            instance_destroy();
        }
 }  