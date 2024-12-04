if (mouse_check_button_pressed(mb_right)) {
    // Handle oBloodPuddle logic
    var blood_puddle = instance_place(x, y, oBloodPuddle);
    if (blood_puddle != noone) {
        instance_destroy(blood_puddle);
    } else if(oPlayer.lysol) {
        // Enemy processing
        var enemy_x, enemy_y;
        var enemy_objects = oPlayer.Enemies;

        var closest_enemy = noone;
        var min_distance = 999999;
        var cooldown_time = 0.1;

        var enemies_in_range = [];
        var max_range = oPlayer.range * 5;

        // Check all enemy objects
        for (var i = 0; i < array_length(enemy_objects); i++) {
            with (enemy_objects[i]) {
                var dist = point_distance(x, y, other.x, other.y);
                if (dist <= max_range) {
                    array_push(enemies_in_range, id);

                    // Update closest enemy
                    if (dist < min_distance) {
                        min_distance = dist;
                        closest_enemy = id;
                    }
                }
            }
        }

        // Process enemies in range
        if (closest_enemy != noone) {
			show_debug_message("found enemy")
            enemy_x = closest_enemy.x;
            enemy_y = closest_enemy.y;

            // Calculate direction
            var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);
            var angle_diff = abs(direction - angle_to_enemy);
            if (angle_diff > 180) angle_diff = 360 - angle_diff;

            if (mouse_check_button_pressed(mb_right) && angle_diff < 20) {
				show_debug_message("okay")
                if (global.time - last_shot >= cooldown_time) {
					show_debug_message("cooldown is nice")
                    closest_enemy.demonHealth -= oPlayer.damage + oPlayer.blood;
                    closest_enemy.knockback_strength = oPlayer.knockback;
                    last_shot = global.time;

                    // Play sound
                    if (irandom(1)) {
                        audio_play_sound(sound1, 1, false);
                    } else {
                        audio_play_sound(sound2__1_, 1, false);
                    }
                    audio_play_sound(spray, 1, false);

                    // Handle enemy death
                    if (closest_enemy.demonHealth <= 0) {
                        killsSinceDrop++;
                        if (killsSinceDrop >= dropCooldown) {
                            instance_create_depth(enemy_x, enemy_y, 0, oCheese);
                            killsSinceDrop = 0;
                        }
                        for (var l = 0; l < 3; l++) {
                            instance_create_depth(enemy_x, enemy_y, 0, oBloodPuddle);
                        }
                        oPlayer.blood--;
                        oPlayer.experience += 50;
                        instance_destroy(closest_enemy);
						line_start_time = global.time;
                    }
                }
            }
        }

        // Cleanup
        enemies_in_range = [];
    }
}
