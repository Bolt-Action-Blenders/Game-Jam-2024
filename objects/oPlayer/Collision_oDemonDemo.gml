//Player attacking code
var enemy_objects = [oDemonRegular, oDemonFast, oDemonJuggernaut, oDemonRobot, oDemonWorker, oSpiderFilth, oDemonGun, oDemonDemo, oDemonPyro, oDemonShotgun, oDemonScout, oTrap]; 
var closest_enemy = noone;  // Start with no closest enemy
var min_distance = 999999;  // Start with a very large distance
// Iterate through the enemy object types to find the closest instance
for (var i = 0; i < array_length(enemy_objects); i++) {
    // Iterate over all instances of the current enemy object type
    with (enemy_objects[i]) {
        var dist = point_distance(x, y, other.x, other.y);

        // Check if this enemy is closer than the current closest
        if (dist < min_distance) {
            min_distance = dist;  // Update the minimum distance
            closest_enemy = id;   // Update the closest enemy reference (store the instance ID)
        }
    }
}

// Now 'closest_enemy' holds the closest enemy object instance (not object type)
if (closest_enemy != noone) {
    // Dereference the instance ID to access properties
    var enemy_instance = closest_enemy;  // Use the instance ID to reference the enemy instance
    var enemy_x = enemy_instance.x;
    var enemy_y = enemy_instance.y;

    // Calculate the angle between the player and the enemy object
    var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

    // Calculate the difference between the player's direction and the angle to the enemy
    var angle_diff = abs(direction - angle_to_enemy);
    if (angle_diff > 180) angle_diff = 360 - angle_diff; // Ensure the angle difference is within 180 degrees
        global.time += 1/fps;
    // Check if we're within range and if the mouse button is pressed
    if (min_distance <= range && mouse_check_button_pressed(mb_left)) {
			show_debug_message(global.time)
			show_debug_message(last_action_time)
					show_debug_message(cooldown_time)
        // Check cooldown
        if (global.time - last_action_time >= cooldown_time) {
            // Check if we're aligned with the enemy (within 45 degrees)
            if (angle_diff < 90 || angle_diff > 270) {
                // Apply damage to the closest enemy
                enemy_instance.demonHealth -= damage + blood;  // Apply damage to the instance
				 last_action_time = global.time;
            }
        }
    }
}

//Demon code
var demonID = 3;
// Initialize last_action_time if not already done elsewhere
var demon_last_action_time;

// Check if the player is within 3 units of the object
if (distance_to_object(oDemonGun) <= ranges[demonID]) {
    // Calculate damage based on the player's level
    var demon_cooldown_time = rangedCooldownTimes[demonID] * fps; // Set the cooldown time (in frames)
    if (current_time - global.last_action_time >= demon_cooldown_time) {
        // Update the last action time to the current time
        global.last_action_time = current_time;
        // Apply damage to the player
		health -= level * rangedBaseDamage[demonID];
        // Update the last action time to the current global time
        demon_last_action_time = global.time;
    }
}
