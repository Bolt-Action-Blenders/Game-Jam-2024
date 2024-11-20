var rangedExp = [15, 15, 15, 15];
var meleeExp = [10, 10, 10, 10, 10, 10, 10, 10, 10];

var enemy_objects = [oDemonRegular, oDemonFast, oDemonJuggernaut, oDemonRobot, oDemonWorker, oSpiderFilth, oDemonGun, oDemonDemo, oDemonPyro, oDemonShotgun, oDemonScout, oSummoner, oShitToilet, oTrap];

var closest_enemy = noone;  // Start with no closest enemy
var min_distance = 999999;  // Start with a very large distance
var cooldown_time = 0.1;
global.time++;

// Loop through each enemy type in the array
for (var i = 0; i < array_length(enemy_objects); i++) {
    // Use `with` to access all instances of the current enemy type
    with (enemy_objects[i]) {
        // Calculate distance to the player
        var dist = point_distance(x, y, other.x, other.y);

        // Check if this instance is closer and within range
        if (dist <= oPlayer.range && dist < min_distance) {
            min_distance = dist;
            closest_enemy = id;  // Update closest enemy reference
        }

        // If a closest enemy exists, apply logic
        if (closest_enemy != noone) {
            var enemy_instance = closest_enemy;
            var enemy_x = enemy_instance.x;
            var enemy_y = enemy_instance.y;

            // Calculate direction and alignment
            var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);
            var angle_diff = abs(direction - angle_to_enemy);
            if (angle_diff > 180) angle_diff = 360 - angle_diff;

            // Check if aligned and mouse is pressed
            if (mouse_check_button_pressed(mb_left) && angle_diff < 90) {
                if (global.time - global.last_action_time >= cooldown_time) {
                    // Apply damage to the enemy
                    enemy_instance.demonHealth -= oPlayer.damage + oPlayer.blood;

                    // Apply knockback
                    enemy_instance.knockback_strength = oPlayer.knockback;

                    // Update the last action time
                    global.last_action_time = global.time;

                    // If the enemy's health is <= 0, grant experience and handle removal
                    if (enemy_instance.demonHealth <= 0) {
                        oPlayer.experience += meleeExp[i];  // Add experience
                        instance_destroy(enemy_instance);  // Destroy the defeated enemy
                    }
                }
            }
        }
    }
}