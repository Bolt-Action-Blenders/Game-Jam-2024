/*
// Create an array of object types (this is fine)
var enemy_objects = [oDemonRegular, oDemonRanged, oTrap]; 
var last_action_time = 0; // last time action was performed
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

    // Check if we're within range and if the mouse button is pressed
    if (min_distance <= range && mouse_check_button_pressed(mb_left)) {
        global.time++;
        show_debug_message("Target clicked");

        // Check cooldown
        if (global.time - last_action_time >= cooldown_time) {
            show_debug_message("Cooldown checks out");
            show_debug_message("Angle difference: " + string(angle_diff));

            // Check if we're aligned with the enemy (within 45 degrees)
            if (angle_diff < 90 || angle_diff > 270) {
                show_debug_message("Attacked demon");

                // Apply damage to the closest enemy
                enemy_instance.health -= damage + blood;  // Apply damage to the instance

                // Update the last action time
                last_action_time = global.time;
            }
        }
    }
}
