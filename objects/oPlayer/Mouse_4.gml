var Enemies = {oDemonMelee, oDemonRanged, oTrap};
var last_action_time = 0; // last time action was performed


 for (var i = 0; i < 3; i++){
var enemy_x = Enemies[i].x;
var enemy_y = Enemies[i].y;

// Calculate the angle between the player and the enemy object
var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

var angle_diff = abs(direction - angle_to_enemy && distance_to_enemy <= range);
if (mouse_check_button_pressed(mb_left)) {
        show_debug_message("Clicked");
if (global.time - last_action_time >= cooldown_time) {
            show_debug_message("Cooldowm good");
if (angle_diff < 45 || angle_diff > 315) {
    show_debug_message("Attacked demon");
    Enemies[i].health -= damage + blood;
    last_action_time = global.time
}}}
 if (Enemies[i].health <= 0){
             show_debug_message("Killed");
        with (instance_place(Enemies[i].x, Enemies[i].y, Enemies[i])) {
            instance_destroy();
        }
 }
 }