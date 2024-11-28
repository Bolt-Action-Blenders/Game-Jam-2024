var rangedExp = [15, 15, 15, 15]; 
var meleeExp = [10, 10, 10, 10, 10, 10, 10, 10, 10];
var enemy_objects = oPlayer.Enemy_objects;

for (var i = 0; i < array_length(enemy_objects); i++) {
    // Use `with` to access all instances of the current enemy type
    with (enemy_objects[i]) {
        // Calculate the distance to the player
        var dist = point_distance(x, y, oPlayer.x, oPlayer.y);

        // Check if the enemy is within range
        if (dist <= oPlayer.range) {
            // Apply effects
            if (global.time - oWater.last_hit >= 0.1) {
                demonHealth -= 5; // Reduce health
                knockback_strength = oPlayer.knockback * 2; // Apply knockback

                // Optional: Visual feedback
                oWater.image_xscale++;
                oWater.image_yscale++;

                // Update the last time this enemy was hit
                other.last_hit = global.time;
				show_debug_message(oWater.last_hit)
				show_debug_message(global.time)
				show_debug_message(self)
            }
        }
    }
}
				instance_destroy()
/*
var rangedExp = [15, 15, 15, 15];
var meleeExp = [10, 10, 10, 10, 10, 10, 10, 10, 10];
var enemy_x;
var enemy_y;
var enemy_objects = [oFinalBoss, oShitDemon, oDemonRegular, oDemonFast, oDemonJuggernaut, oDemonRobot, oDemonWorker, oSpiderFilth, oDemonGun, oDemonDemo, oDemonPyro, oDemonShotgun, oDemonScout, oSummoner, oShitToilet, oTrap];

var closest_enemy = noone;  // Start with no closest enemy
var min_distance = 999999;  // Start with a very large distance

for (var o = 0; o < oPlayer.range; o++){
// Loop through each enemy type in the array
for (var i = 0; i < array_length(enemy_objects); i++) {
    with (enemy_objects[i]) {
        // Calculate distance to the player
        var dist = point_distance(x, y, other.x, other.y);
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

        if (global.time - last_hit >= 0.1) {
            // Apply damage to the closest enemy
            closest_enemy.demonHealth -= 5;
            // Apply knockback
            closest_enemy.knockback_strength = oPlayer.knockback * 2;
				oWater.image_xscale++
						oWater.image_yscale++
            // Update the last action time
            last_hit = global.time;
}
}