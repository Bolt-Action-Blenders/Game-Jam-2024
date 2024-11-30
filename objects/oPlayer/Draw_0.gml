if (mouse_check_button_pressed(mb_right)) {
    var blood_puddle = instance_place(x, y, oBloodPuddle);
    if (blood_puddle != noone) {
        instance_destroy(blood_puddle);
    } else {
        var enemy_x, enemy_y;
        var closest_enemy = noone;
        var min_distance = 999999;
        var max_range = oPlayer.range * 5;

        // Loop through the enemies array
        for (var i = 0; i < array_length(oPlayer.Enemies); i++) {
            var enemy = oPlayer.Enemies[i];
            if (instance_exists(enemy)) { // Ensure the enemy still exists
                var dist = point_distance(oPlayer.x, oPlayer.y, enemy.x, enemy.y);
                if (dist <= max_range && dist < min_distance) {
                    min_distance = dist;
                    closest_enemy = enemy;
                }
            }
        }

        if (closest_enemy != noone) {
            // Set the line coordinates
            line_start_x = oPlayer.x;
            line_start_y = oPlayer.y;
            line_end_x = closest_enemy.x;
            line_end_y = closest_enemy.y;

            // Record the time when the line is drawn
            line_start_time = global.time;
        }
    }
}

// Draw the line if the time is within the range
if (line_start_time != -1 && global.time - line_start_time < 0.5) {
    draw_set_color(c_blue);
    draw_line(line_start_x, line_start_y, line_end_x, line_end_y);
}
