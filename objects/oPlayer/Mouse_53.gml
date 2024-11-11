var rangedExp = [15, 15, 15, 15]
var meleeExp = [10, 10, 10, 10, 10, 10, 10, 10, 10];

var enemy_objects = [oDemonRegular, oDemonFast, oDemonJuggernaut, oDemonRobot, oDemonWorker, oSpiderFilth, oDemonGun, oDemonDemo, oDemonPyro, oDemonShotgun, oDemonScout, oSummoner, oShitToilet, oTrap]; 
var closest_enemy = noone;  // Start with no closest enemy
var min_distance = 999999;  // Start with a very large distance
var cooldown_time = 1;
global.time++;
var range = 10;
    // Calculate the angle between the player and the enemy object
	
for (var i = 0; i < array_length(enemy_objects); i++) {
    // Iterate over all instances of the current enemy object type
    with (enemy_objects[i]) {
        var dist = point_distance(x, y, other.x, other.y);
		show_debug_message(dist)
        // Check if this enemy is closer than the current closest
        if (dist <= range) {
            min_distance = dist;  // Update the minimum distance
            closest_enemy = id;   // Update the closest enemy reference (store the instance ID)
			if (closest_enemy != noone) {
    // Dereference the instance ID to access properties
    var enemy_instance = closest_enemy;  // Use the instance ID to reference the enemy instance
    var enemy_x = enemy_instance.x;
    var enemy_y = enemy_instance.y;

    var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

    // Calculate the difference between the player's direction and the angle to the enemy
    var angle_diff = abs(direction - angle_to_enemy);
    if (angle_diff > 180) angle_diff = 360 - angle_diff; // Ensure the angle difference is within 180 degrees
    // Check if we're within range and if the mouse button is pressed
    if (min_distance <= range && mouse_check_button_pressed(mb_left)) {
            // Check if we're aligned with the enemy (within 45 degrees)
            if (angle_diff < 90 || angle_diff > 270) {
				
				        if (global.time - global.last_action_time >= cooldown_time) {
                // Apply damage to the closest enemy
                enemy_instance.demonHealth -= oPlayer.damage + oPlayer.blood;  // Apply damage to the instance
				 global.last_action_time = global.time;
				 if (demonHealth <= 0){
oPlayer.experience += meleeExp[i]
show_debug_message(oPlayer.experience)
}
            }
        }
    }
}}}}