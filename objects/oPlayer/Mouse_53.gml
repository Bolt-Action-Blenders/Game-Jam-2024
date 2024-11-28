var rangedExp = [15, 15, 15, 15];
var meleeExp = [10, 10, 10, 10, 10, 10, 10, 10, 10];
var enemy_x;
var enemy_y;
var enemy_objects = [oFinalBoss, oShitDemon, oDemonRegular, oDemonFast, oDemonJuggernaut, oDemonRobot, oDemonWorker, oSpiderFilth, oDemonGun, oDemonDemo, oDemonPyro, oDemonShotgun, oDemonScout, oSummoner, oShitToilet, oTrap];

var closest_enemy = noone;  // Start with no closest enemy
var min_distance = 999999;  // Start with a very large distance
var cooldown_time = 0.1;
global.time++;

// List to hold all enemies within a specific range
var enemies_in_range = [];

// Maximum range to consider enemies
var max_range = oPlayer.range;

// Loop through each enemy type in the array
for (var i = 0; i < array_length(enemy_objects); i++) {
    with (enemy_objects[i]) {
        // Calculate distance to the player
        var dist = point_distance(x, y, other.x, other.y);

        // Check if within range
        if (dist <= max_range) {
            array_push(enemies_in_range, id);  // Add this enemy to the range list

            // Update closest enemy if this is the closest so far
            if (dist < min_distance) {
                min_distance = dist;
                closest_enemy = id;  // Update closest enemy reference
            }
        }
    }
}

// Process closest enemy (if any)
if (closest_enemy != noone) {
    enemy_x = closest_enemy.x;
    enemy_y = closest_enemy.y;

    // Calculate direction and alignment
    var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);
    var angle_diff = abs(direction - angle_to_enemy);
    if (angle_diff > 180) angle_diff = 360 - angle_diff;

    // Check if aligned and mouse is pressed
    if (mouse_check_button_pressed(mb_left) && angle_diff < 90) {
        if (global.time - global.last_action_time >= cooldown_time) {
            // Apply damage to the closest enemy
            closest_enemy.demonHealth -= oPlayer.damage + oPlayer.blood;

            // Apply knockback
            closest_enemy.knockback_strength = oPlayer.knockback;

            // Update the last action time
            global.last_action_time = global.time;
			if (irandom_range(1, 2) == 1){
			audio_play_sound(sound1, 1, false)
			} else {
			audio_play_sound(sound2__1_, 1, false)
			}
			 			audio_play_sound(mixkit_fast_sword_whoosh_2792, 1, false)
            // If the closest enemy's health is <= 0, grant experience and handle removal
			i--
            if (closest_enemy.demonHealth <= 0) {
				killsSinceDrop++
				if (killsSinceDrop >= dropCooldown){
						instance_create_depth(enemy_x, enemy_y, 0, oCheese);
						killsSinceDrop = 0;
				}
			oPlayer.experience += 15;
                instance_destroy(closest_enemy);  // Destroy the defeated enemy
            }
        }
    }
}

// Cleanup: No need to keep the list after processing
enemies_in_range = [];
