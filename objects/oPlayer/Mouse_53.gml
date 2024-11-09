var Enemies = {oDemonMelee, oDemonRanged, oTrap};
var last_action_time = 0; // last time action was performed


// for (var i = 0; i < 3; i++){
//var enemy = Enemies[i];
// Initialize variables
var closest_enemy = noone;  // Start with no closest enemy
var min_distance = 999999;  // Start with a very large distance

with (oDemonMelee)
{
    var dist = point_distance(x, y, other.x, other.y);
    
    // Check if this enemy is closer than the current closest
    if (dist < min_distance)
    {
        min_distance = dist;  // Update the minimum distance
        closest_enemy = id;   // Update the closest enemy
    }
}
// Now 'closest_enemy' holds the ID of the closest enemy
// You can now do something with 'closest_enemy', for example, targeting it:
var enemy_x;
var enemy_y;
if (closest_enemy != noone)
{
 enemy_x = closest_enemy.x;
 enemy_y = closest_enemy.y;
}


// Calculate the angle between the player and the enemy object
var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

var angle_diff = abs(direction - angle_to_enemy);
if (min_distance <= range)
if (mouse_check_button_pressed(mb_left)) {
		show_debug_message("Clicked");
if (global.time - last_action_time >= cooldown_time) {
			show_debug_message("Cooldowm good");
if (angle_diff < 45 || angle_diff > 315) {
    show_debug_message("Attacked demon");
    Enemies[i].health -= damage + blood;
    last_action_time = global.time
}}}
 if (closest_enemy <= 0){
             show_debug_message("Killed");
        with (instance_place(Enemies[i].x, Enemies[i].y, Enemies[i])) {
            instance_destroy();
        }
 }
 
	show_debug_message("Attacked demon");
    closest_enemy.health -= damage + blood;
	last_action_time = global.time
	

 /*
var enemy_x = oDemonMelee.x;
var enemy_y = oDemonMelee.y;

// Calculate the angle between the player and the enemy object
var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

var angle_diff = abs(direction - angle_to_enemy && distance_to_enemy <= range);
if (angle_diff < 45 || angle_diff > 315) {
    oDemonMelee.health -= damage + blood;
} 
 if (oDemonMelee.health <= 0){
        with (instance_place(oDemonMelee.x, oDemonMelee.y, oDemonMelee)) {
            instance_destroy();
        }
 }  
 
enemy_x = oDemonRanged.x;
enemy_y = oDemonRanged.y;

angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

angle_diff = abs(direction - angle_to_enemy && distance_to_enemy <= range);
if (angle_diff < 45 || angle_diff > 315) {
    oDemonRanged.health -= damage + blood;
} 
 if (oDemonRanged.health <= 0){
        with (instance_place(oDemonRanged.x, oDemonRanged.y, oDemonRanged)) {
            instance_destroy();
        }
 }  

enemy_x = oTrap.x;
enemy_y = oTrap.y;

angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

angle_diff = abs(direction - angle_to_enemy && distance_to_enemy <= range);
if (angle_diff < 45 || angle_diff > 315) {
    oTrap.health -= damage + blood;
} 
 if (oTrap.health <= 0){
        with (instance_place(oTrap.x, oTrap.y, oTrap)) {
            instance_destroy();
        }
 }  
 /**/